<?php

namespace App\Http\Controllers\Loan;

use App\Http\Controllers\Controller;
use App\Models\LoanRequest;
use App\Models\LoanReturn;
use App\Models\LoanSetting;
use App\Models\ManualAdjustment;
use App\Models\RewardCenterSetting;
use App\Models\Setting;

use Illuminate\Http\Request;
use Auth;
use Validator;
use Helper;
use App\Models\User;
use Illuminate\Support\Str;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\Hash;
use Session;
use DB;
use PhpParser\Node\Stmt\TryCatch;
use Illuminate\Http\JsonResponse;
use Carbon\Carbon;

class LoanController extends Controller
{
    protected $userid;
    protected $name;
    public function __construct()
    {
        $this->middleware('auth:api');
        $id = auth('api')->user();
        $user = User::find($id->id);
        $this->userid = $user->id;
        $this->name = $user->name;
    }

    public function insertLoanStatus(Request $request)
    {

        $data = array(
            'loan_id'              => $request->loan_id,
            'status'               => $request->loan_status,
        );

        if ($request->loan_status == 2) {
            $data['status'] = 0;
        }

        LoanRequest::where('id', $request->loan_id)->update($data);

        $response = [
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function loanRequestList(Request $request)
    {

        $page           = $request->input('page', 1);
        $pageSize       = $request->input('pageSize', 10);
        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter = (int)$request->selectedFilter;
        $searchEmail    = $request->searchEmail;

        // dd($selectedFilter);
        $query = LoanRequest::orderBy('loan_request.id', 'desc')
            ->join('users', 'loan_request.user_id', '=', 'users.id') // Join condition
            ->select('loan_request.*', 'users.email', 'users.name', 'users.phone_number')
            ->orderBy('loan_request.id', 'desc'); // Sorting by 'id' in descending order

        if (!empty($searchEmail)) {
            $query->where('users.email', $searchEmail);
        }

        // $cleanedSelectedFilter = isset($selectedFilter) ? (int) trim($selectedFilter) : null;

        if ($selectedFilter == 5) {
            $query->whereIn('loan_request.status', [0, 1, 2]);
        } else {
            $query->where('loan_request.status', $selectedFilter);
        }

        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);

        $modifiedCollection = $paginator->getCollection()->map(function ($item) {

            $status = "";
            if ($item->status == 0) {
                $status = "Review";
            } else if ($item->status == 1) {
                $status = "Approved";
            } else if ($item->status == 2) {
                $status = "Rejected";
            }
            //Payment not received
            $userrow = User::find($item->user_id);
            $loanrow = LoanSetting::where('id', $item->loan_id)->first();
            return [
                'id'                => $item->id,
                'loanName'          => !empty($loanrow) ? $loanrow->name : "",
                'thumnail_img'      => !empty($loanrow->thumnail_img) ? url($loanrow->thumnail_img) : "",
                'user_info_name'    => !empty($userrow->name) ?  $userrow->name : "N/A",
                'user_info_email'   => !empty($userrow->email) ?  $userrow->email : "N/A",
                'user_info_phone'   => !empty($userrow->phone_number) ?  $userrow->phone_number : "N/A",
                'created_at'        =>  date("Y-m-d H:i:s", strtotime($item->created_at)),
                'status'            => $status,
                'sts'               => $item->status,
            ];
        });

        // Return the modified collection along with pagination metadata
        return response()->json([
            'data' => $modifiedCollection,
            'current_page' => $paginator->currentPage(),
            'total_pages' => $paginator->lastPage(),
            'total_records' => $paginator->total(),
        ], 200);
    }

    public function sendrequest(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'id'         => 'required|numeric',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        // Check for existing record to prevent duplicate inserts
        $existingRecord = LoanRequest::where('loan_id', $request->id)
            ->where('user_id', $this->userid)
            ->first();

        if ($existingRecord) {
            return response()->json(['message' => 'Already Send Claim'], 409);
        }

        $value_row = LoanSetting::where('id',$request->id)->first();

        $data = array(
            'loan_id'           => $request->id,
            'loan_value'        => !empty($value_row->value) ? $value_row->value : "",
            'user_id'           => $this->userid,
            'status'            => 0,
        );

        LoanRequest::insert($data);

        return response()->json(['message' => 'success'], 200);
    }

    public function loanSettingrows($id)
    {
        $data = LoanSetting::where('id', $id)->first();

        $responseData['id']                     = !empty($data->id) ? $data->id : "";
        $responseData['name']                   = !empty($data->name) ? $data->name : "";
        $responseData['value']                  = !empty($data->name) ? $data->value : "";
        $responseData['status']                 = !empty($data->status) ? $data->status : "";
        $responseData['thumnail_img']           = !empty($data->thumnail_img) ? url($data->thumnail_img) : "";

        return response()->json($responseData);
    }

    public function insertloanSetting(Request $request)
    {
        if (empty($request->id)) {
            $validator = Validator::make($request->all(), [
                'name'           => 'required',
                'value'          => 'required',
                'status'         => 'required',
                'files'          => 'required|image',
            ]);
        } else {
            $validator = Validator::make($request->all(), [
                'name'           => 'required',
                'status'         => 'required',
                'value'          => 'required',
            ]);
        }

        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $data = array(
            'name'                       => $request->name,
            'value'                      => $request->value,
            'status'                     => !empty($request->status) ? $request->status : "",
            //'selected_graph'             => !empty($request->selected_graph) ? $request->selected_graph : "",
        );
        // dd($data);
        if (!empty($request->file('files'))) {
            $files = $request->file('files');
            $fileName = Str::random(20);
            $ext = strtolower($files->getClientOriginalExtension());
            $path = $fileName . '.' . $ext;
            $uploadPath = '/backend/files/';
            $upload_url = $uploadPath . $path;
            $files->move(public_path('/backend/files/'), $upload_url);
            $file_url = $uploadPath . $path;
            $data['thumnail_img'] = $file_url;
        }

        if (empty($request->id)) {
            LoanSetting::insert($data);
        } else {
            LoanSetting::where('id', $request->id)->update($data);
        }

        $response = [
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function allloanCenterlists()
    {

        $rows =  LoanSetting::orderBy('id', 'desc')->get();
        $arryData = [];
        foreach ($rows as $v) {

            $chekrows = LoanRequest::where('user_id', $this->userid)->where('loan_id', $v->id)->first();

            if ($chekrows && $chekrows->status == 1) {
                $loan_status = 1;
            } else if ($chekrows && $chekrows->status == 0) {
                $loan_status = 0;
            } else {
                $loan_status = 3; // 3=defalut 
            }

            $arryData[] = [
                'id'                         => $v->id,
                'name'                       => $v->name,
                'thumnail_img'               => !empty($v->thumnail_img) ? url($v->thumnail_img): "",
                'status'                     => $v->status,
                'loan_status'                => $loan_status,
            ];
        }

        return response()->json(['data' => $arryData], 200);
    }

    public function loanSettingList(Request $request)
    {

        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);

        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter    = $request->selectedFilter;
        // dd($selectedFilter);
        $query =  LoanSetting::orderBy('id', 'desc');

        if ($searchQuery !== null) {
            $query->where('name', 'like', '%' . $searchQuery . '%');
        }

        if (!empty($selectedFilter)) {
            $query->whereIn('status', [0, 1]);
        } else {
            $query->where('status', $selectedFilter);
        }

        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);
        $modifiedCollection = $paginator->getCollection()->map(function ($item) {
            return [
                'id'             => $item->id,
                'name'           => $item->name,
                'value'          => $item->value,
                'thumnail_img'   => !empty($item->thumnail_img) ? url($item->thumnail_img) : "",
                'status'         => $item->status,
            ];
        });

        // Return the modified collection along with pagination metadata
        return response()->json([
            'data' => $modifiedCollection,
            'current_page' => $paginator->currentPage(),
            'total_pages' => $paginator->lastPage(),
            'total_records' => $paginator->total(),
        ], 200);
    }

    public function getAdminSendingLoan()
    {
        $data = ManualAdjustment::where('user_id',$this->userid)->where('adjustment_type',1)->orderBy('manual_adjustment.id', 'desc')->get(); // Base query
        
        $response = [
            'data' => $data
        ];
        return response()->json($response, 200);
    }


    public function loanSendRequest(Request $request)
    {
        try {
            $validator = Validator::make($request->all(), [
                'crypto_wallet_address'  => 'required',
                'network'                => 'required',
                'trxId'                  => 'required',
                'deposit_amount'         => 'required',
                'frm_wallet_address'     => 'required',
            ]);
            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors()], 422);
            }

            $setting = Setting::find(1);
            $checkSetting = $setting->minimum_deposit_amount;

            if ($request->deposit_amount <= $checkSetting) {
                return response()->json(['errors' => ['deposit_amount' => ['Your deposit amount is low']]], 422);
            }

            $uniqueID = 'LOAN.' . $this->generateUnique4DigitNumber();
            $data = array(
                'loanID'      => $uniqueID,
                'depscription'   => $uniqueID,
                'deposit_amount' => $request->deposit_amount,
                'payment_method' => $request->network,
                'trxId'          => $request->trxId,
                'to_crypto_wallet_address'   => $request->crypto_wallet_address,
                'frm_wallet_address'         => $request->frm_wallet_address,
                'status'         => 0,
                'user_id'        => $this->userid
            );

            $last_Id = LoanReturn::insertGetId($data);
            
            $tran['user_id']     = $this->userid;
            $tran['referrance_name'] = 'loan_return_request';
            $tran['last_Id']     = $last_Id;
            $tran['type']        = 2; //Pay 
            $tran['amount']      = $request->deposit_amount;
            $tran['status']      = 0;
            //TransactionHistory::insert($tran);

            return response()->json($last_Id);
        } catch (QueryException $e) {
            // Log the error or handle it as needed
            return response()->json(['error' => 'Database error occurred.'], 500);
        } catch (\Exception $e) {
            // Handle other exceptions
            return response()->json(['error' => 'An unexpected error occurred.'], 500);
        }
    }

    function generateUnique4DigitNumber($existingNumbers = [])
    {
        do {
            $uniqueNumber = str_pad(mt_rand(0, 9999), 4, '0', STR_PAD_LEFT);
        } while (in_array($uniqueNumber, $existingNumbers));

        return md5($uniqueNumber);
    }
}
