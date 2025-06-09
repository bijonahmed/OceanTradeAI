<?php

namespace App\Http\Controllers\Reward;

use App\Http\Controllers\Controller;
use App\Models\BuyToken;
use App\Models\ManualAdjustment;
use App\Models\MiningBalanceSum;
use App\Models\RewardCenterRequest;
use App\Models\RewardCenterSetting;
use App\Models\Setting;
use App\Models\Trade;
use App\Models\TradingCategory;
use App\Models\TradingDuration;
use App\Models\TradingSubCategory;
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

class RewardCenterController extends Controller
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


    public function insertrwardStatus(Request $request)
    {

        $data = array(
            'reward_center_id'              => $request->rewardCenterId,
            'status'                        => $request->reward_status,
        );

        if($request->reward_status == 2){
            $data['status'] = $request->reward_status;
        }

        RewardCenterRequest::where('id', $request->rewardCenterId)->update($data);

        $response = [
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }



    public function rewardRequestList(Request $request)
    {

        $page           = $request->input('page', 1);
        $pageSize       = $request->input('pageSize', 10);
        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter = (int)$request->selectedFilter;
        $searchEmail    = $request->searchEmail;

        // dd($selectedFilter);
        $query = RewardCenterRequest::orderBy('reward_center_request.id', 'desc')
            ->join('users', 'reward_center_request.user_id', '=', 'users.id') // Join condition
            ->select('reward_center_request.*', 'users.email', 'users.name', 'users.phone_number')
            ->orderBy('reward_center_request.id', 'desc'); // Sorting by 'id' in descending order



        if (!empty($searchEmail)) {
            $query->where('users.email', $searchEmail);
        }


        // $cleanedSelectedFilter = isset($selectedFilter) ? (int) trim($selectedFilter) : null;

        if ($selectedFilter == 5) {
            $query->whereIn('reward_center_request.status', [0, 1, 2]);
        } else {
            $query->where('reward_center_request.status', $selectedFilter);
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
            $rewardrow = RewardCenterSetting::where('id', $item->reward_center_id)->first();
            return [
                'id'                => $item->id,
                'rewardCenterName'  => !empty($rewardrow) ? $rewardrow->name : "",
                'thumnail_img'      => !empty($rewardrow) ? url($rewardrow->thumnail_img) : "",
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
        $existingRecord = RewardCenterRequest::where('reward_center_id', $request->id)
            ->where('user_id', $this->userid)
            ->first();

        if ($existingRecord) {
            return response()->json(['message' => 'Already Send Claim'], 409);
        }


        $data = array(
            'reward_center_id'           => $request->id,
            'user_id'                    => $this->userid,
            'status'                     => 0,
        );

        RewardCenterRequest::insert($data);

        return response()->json(['message' => 'success'], 200);
    }

    public function rewardcenterrows($id)
    {
        $data = RewardCenterSetting::where('id', $id)->first();

        $responseData['id']                     = !empty($data->id) ? $data->id : "";
        $responseData['name']                   = !empty($data->name) ? $data->name : "";
        $responseData['value']                  = !empty($data->name) ? $data->value : "";
        $responseData['status']                 = !empty($data->status) ? $data->status : "";
        $responseData['thumnail_img']           = !empty($data->thumnail_img) ? url($data->thumnail_img) : "";

        return response()->json($responseData);
    }

    public function insertrward(Request $request)
    {
        if (empty($request->id)) {
            $validator = Validator::make($request->all(), [
                'name'           => 'required',
                'status'         => 'required',
                'files'        => 'required|image',
            ]);
        } else {
            $validator = Validator::make($request->all(), [
                'name'           => 'required',
                'status'         => 'required',
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
            RewardCenterSetting::insert($data);
        } else {
            RewardCenterSetting::where('id', $request->id)->update($data);
        }

        $response = [
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function allrewardCenterlists()
    {

        $rows =  RewardCenterSetting::orderBy('id', 'desc')->get();

        $arryData = [];
        foreach ($rows as $v) {

            $chekrows = RewardCenterRequest::where('user_id', $this->userid)->where('reward_center_id', $v->id)->first();

            if ($chekrows && $chekrows->status == 1) {
                $reward_status = 1;
            } else if ($chekrows && $chekrows->status == 0) {
                $reward_status = 0;
            } else {
                $reward_status = 3; // 3=defalut 
            }



            $arryData[] = [
                'id'                         => $v->id,
                'name'                       => $v->name,
                'thumnail_img'               => url($v->thumnail_img),
                'status'                     => $v->status,
                'reward_status'              => $reward_status,
            ];
        }

        return response()->json(['data' => $arryData], 200);
    }

    public function rewardSettinglist(Request $request)
    {

        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);

        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter    = $request->selectedFilter;
        // dd($selectedFilter);
        $query =  RewardCenterSetting::orderBy('id', 'desc');

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

    public function getAdminSendingRewards()
    {
        $data = ManualAdjustment::where('user_id',$this->userid)->where('adjustment_type',2)->orderBy('manual_adjustment.id', 'desc')->get(); // Base query
        $response = [
            'data' => $data
        ];
        return response()->json($response, 200);
    }
}
