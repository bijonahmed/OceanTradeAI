<?php

namespace App\Http\Controllers\Trading;

use App\Http\Controllers\Controller;
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

class TradingController extends Controller
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

    public function saveSubCategory(Request $request)
    {

        if (empty($request->id)) {
            $validator = Validator::make($request->all(), [
                'category_id'       => 'required',
                'name'              => 'required',
                'selected_graph'    => 'required',
                'min_trade'         => 'required|numeric',
                'trading_fee'       => 'required|numeric',
                'trading_amunt'     => 'required|numeric',
                'status'            => 'required',
                'files'             => 'required|file|mimes:jpg,png,pdf|max:2048', // Add your file validation here

            ]);
            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors()], 422);
            }
        } else {

            $validator = Validator::make($request->all(), [
                'category_id'       => 'required',
                'name'              => 'required',
                'selected_graph'    => 'required',
                'min_trade'         => 'required|numeric',
                'trading_fee'       => 'required|numeric',
                'trading_amunt'     => 'required|numeric',
                'status'            => 'required',

            ]);
            if ($validator->fails()) {
                return response()->json(['errors' => $validator->errors()], 422);
            }
        }
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->input('name'))));
        $data = array(
            'category_id'                => $request->category_id,
            'name'                       => $request->name,
            'selected_graph'             => $request->selected_graph,
            'min_trade'                  => $request->min_trade,
            'trading_fee'                => $request->trading_fee,
            'trading_amunt'              => $request->trading_amunt,
            // 'slug'                     => $slug,
            'status'                     => !empty($request->status) ? $request->status : "",
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
            TradingSubCategory::insert($data);
        } else {
            TradingSubCategory::where('id', $request->id)->update($data);
        }

        $response = [
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function tradingCategoryRow($id)
    {
        $data = TradingCategory::where('id', $id)->first();

        $responseData['id']                     = !empty($data->id) ? $data->id : "";
        $responseData['name']                   = !empty($data->name) ? $data->name : "";
        $responseData['status']                 = !empty($data->status) ? $data->status : "";
        $responseData['selected_graph']         = !empty($data->status) ? $data->selected_graph : "";
        $responseData['thumnail_img']           = !empty($data->thumnail_img) ? url($data->thumnail_img) : "";
        $responseData['banner_images']          = !empty($data->banner_images) ? url($data->banner_images) : "";

        return response()->json($responseData);
    }

    public function tradingDurationRow($id)
    {
        $data = TradingDuration::where('id', $id)->first();
        $responseData['id']                     = !empty($data->id) ? $data->id : "";
        $responseData['name']                   = !empty($data->name) ? $data->name : "";
        $responseData['status']                 = !empty($data->status) ? $data->status : "";
        $responseData['percentage']             = !empty($data->percentage) ? $data->percentage : "";
        $responseData['hours']                  = !empty($data->hours) ? $data->hours : "";

        return response()->json($responseData);
    }

    public function tradingSubCategoryRow($id)
    {

        $data  = TradingSubCategory::where('id', $id)->first();
        $responseData['id']                     = !empty($data->id) ? $data->id : "";
        $responseData['category_id']            = !empty($data->category_id) ? $data->category_id : "";
        $responseData['min_trade']              = !empty($data->min_trade) ? $data->min_trade : "";
        $responseData['name']                   = !empty($data->name) ? $data->name : "";
        $responseData['trading_amunt']          = !empty($data->trading_amunt) ? $data->trading_amunt : "";
        $responseData['selected_graph']         = !empty($data->selected_graph) ? $data->selected_graph : "";
        $responseData['status']                 = !empty($data->status) ? $data->status : "";
        $responseData['trading_fee']            = !empty($data->trading_fee) ? $data->trading_fee : "";
        $responseData['thumnail_img']           = !empty($data->thumnail_img) ? url($data->thumnail_img) : "";
        return response()->json($responseData);
    }

    public function updateCategory(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'name'           => 'required',
            'status'         => 'required',
            'files'          => 'required',
            'selected_graph' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->input('name'))));
        $data = array(
            'name'                       => $request->name,
            'slug'                       => $slug,
            'status'                     => !empty($request->status) ? $request->status : "",
            //  'selected_graph'             => !empty($request->selected_graph) ? $request->selected_graph : "",
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

        // dd($data);
        if (!empty($request->file('banner_images'))) {
            $files = $request->file('banner_images');
            $fileName = Str::random(20);
            $ext = strtolower($files->getClientOriginalExtension());
            $path = $fileName . '.' . $ext;
            $uploadPath = '/backend/files/';
            $upload_url = $uploadPath . $path;
            $files->move(public_path('/backend/files/'), $upload_url);
            $file_url = $uploadPath . $path;
            $data['banner_images'] = $file_url;
        }

        TradingCategory::where('id', $request->id)->update($data);
        //TradingCategory::insert($data);
        $response = [
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function saveDuration(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'name'           => 'required',
            'status'         => 'required',
            'percentage'     => 'required',
            'hours'          => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $data = array(
            'name'                       => $request->name,
            'percentage'                 => $request->percentage,
            'status'                     => !empty($request->status) ? $request->status : "",
            'hours'                      => !empty($request->hours) ? $request->hours : "",
        );

        if (empty($request->id)) {
            TradingDuration::insert($data);
        } else {
            TradingDuration::where('id', $request->id)->update($data);
        }

        $response = [
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function saveCategory(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'name'           => 'required',
            'status'         => 'required',
            'files'          => 'required',
            'selected_graph' => 'required',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }
        $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->input('name'))));
        $data = array(
            'name'                       => $request->name,
            'slug'                       => $slug,
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

        // dd($data);
        if (!empty($request->file('banner_images'))) {
            $files = $request->file('banner_images');
            $fileName = Str::random(20);
            $ext = strtolower($files->getClientOriginalExtension());
            $path = $fileName . '.' . $ext;
            $uploadPath = '/backend/files/';
            $upload_url = $uploadPath . $path;
            $files->move(public_path('/backend/files/'), $upload_url);
            $file_url = $uploadPath . $path;
            $data['banner_images'] = $file_url;
        }

        TradingCategory::insert($data);
        $response = [
            'message' => 'success'
        ];
        return response()->json($response, 200);
    }

    public function tradingdurationList(Request $request)
    {

        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);

        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter    = $request->selectedFilter;
        // dd($selectedFilter);
        $query =  TradingDuration::orderBy('trading_duration.id', 'desc');

        if ($searchQuery !== null) {
            $query->where('trading_duration.name', 'like', '%' . $searchQuery . '%');
        }

        if (!empty($selectedFilter)) {
            $query->whereIn('trading_duration.status', [0, 1]);
        } else {
            $query->where('trading_duration.status', $selectedFilter);
        }

        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);
        $modifiedCollection = $paginator->getCollection()->map(function ($item) {
            return [
                'id'             => $item->id,
                'name'           => $item->name,
                'hours'          => $item->hours,
                'percentage'     => $item->percentage,
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

    public function alltradingsubCategoryList(Request $request)
    {

        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);

        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter    = $request->selectedFilter;
        // dd($selectedFilter);
        $query =  TradingSubCategory::orderBy('trading_subcategory.id', 'desc')
            ->join('trading_category', 'trading_subcategory.category_id', '=', 'trading_category.id')
            ->select('trading_category.name as categoryName', 'trading_subcategory.*');

        if ($searchQuery !== null) {
            $query->where('trading_category.name', 'like', '%' . $searchQuery . '%');
        }

        if (!empty($selectedFilter)) {
            $query->whereIn('trading_subcategory.status', [0, 1]);
        } else {
            $query->where('trading_subcategory.status', $selectedFilter);
        }

        $paginator = $query->paginate($pageSize, ['*'], 'page', $page);
        $modifiedCollection = $paginator->getCollection()->map(function ($item) {
            return [
                'id'             => $item->id,
                'status'         => $item->status,
                'categoryName'   => $item->categoryName,
                'selected_graph' => $item->selected_graph,
                'name'           => $item->name,
                'slug'           => $item->slug,
                'trading_amunt'  => $item->trading_amunt,
                'min_trade'      => $item->min_trade,
                'trading_fee'    => $item->trading_fee,
                'images'         => url($item->thumnail_img),
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

    public function alltraCatList()
    {

        $rows = TradingCategory::orderBy('id', 'desc')->get();
        return response()->json(['data' => $rows], 200);
    }

    public function alltradingCategoryList(Request $request)
    {

        $page = $request->input('page', 1);
        $pageSize = $request->input('pageSize', 10);

        // Get search query from the request
        $searchQuery    = $request->searchQuery;
        $selectedFilter    = $request->selectedFilter;
        // dd($selectedFilter);
        $query = TradingCategory::orderBy('id', 'desc')
            ->select('trading_category.*');

        if ($searchQuery !== null) {
            $query->where('trading_category.name', 'like', '%' . $searchQuery . '%');
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
                'status'         => $item->status,
                'name'           => $item->name,
                'slug'           => $item->slug,
                'images'         => url($item->images),
                'banner_images'  => url($item->banner_images),
                'selected_graph' => $item->selected_graph,
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

    // public function update(Request $request)
    // {
    //    // dd($request->all());
    //     $validator = Validator::make($request->all(), [
    //         'status'           => 'required',
    //     ]);
    //     if ($validator->fails()) {
    //         return response()->json(['errors' => $validator->errors()], 422);
    //     }
    //     $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->input('name'))));
    //     $data = array(

    //         'description_full'           => !empty($request->description_full) ? $request->description_full : "",
    //         'status'                     => !empty($request->status) ? $request->status : "",
    //         'entry_by'                   => $this->userid
    //     );
    //     // dd($data);
    //     if (!empty($request->file('files'))) {
    //         $files = $request->file('files');
    //         $fileName = Str::random(20);
    //         $ext = strtolower($files->getClientOriginalExtension());
    //         $path = $fileName . '.' . $ext;
    //         $uploadPath = '/backend/files/';
    //         $upload_url = $uploadPath . $path;
    //         $files->move(public_path('/backend/files/'), $upload_url);
    //         $file_url = $uploadPath . $path;
    //         $data['thumnail_img'] = $file_url;
    //     }

    //     $data['id'] = $request->id;

    //     ///dd($data);
    //     //Post::create($data);
    //     $post = Post::find($request->id);
    //     $post->update($data);
    //     $resdata['product_id'] = $post->id;
    //     return response()->json($resdata);
    // }

    // public function userRequestPost(Request $request)
    // {
    //     //dd($request->all());
    //     $validator = Validator::make($request->all(), [
    //         'description_full'     => 'required',
    //      //  'files.*' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048', // Example mime types and max size
    //     ]);
    //     if ($validator->fails()) {
    //         return response()->json(['errors' => $validator->errors()], 422);
    //     }
    //     $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $this->name)));
    //     $data = array(
    //         'name'                       => $this->name,
    //         'slug'                       => $slug,
    //         'description_full'           => !empty($request->description_full) ? $request->description_full : "",
    //         'status'                     => 0, //!empty($request->status) ? $request->status : "",
    //         'entry_by'                   => $this->userid
    //     );
    //     // dd($data);
    //     if (!empty($request->file('files'))) {
    //         $files = $request->file('files');
    //         $fileName = Str::random(20);
    //         $ext = strtolower($files->getClientOriginalExtension());
    //         $path = $fileName . '.' . $ext;
    //         $uploadPath = '/backend/files/';
    //         $upload_url = $uploadPath . $path;
    //         $files->move(public_path('/backend/files/'), $upload_url);
    //         $file_url = $uploadPath . $path;
    //         $data['thumnail_img'] = $file_url;
    //     }
    //     //Post::create($data);
    //     $resdata['post_id'] = Post::insertGetId($data);
    //     return response()->json($resdata);
    // }

    // public function save(Request $request)
    // {
    //     //dd($request->all());
    //     $validator = Validator::make($request->all(), [
    //       //  'name'           => 'required',
    //         //  'categoryId'     => 'required',
    //     ]);
    //     if ($validator->fails()) {
    //         return response()->json(['errors' => $validator->errors()], 422);
    //     }
    //     $slug = strtolower(trim(preg_replace('/[^A-Za-z0-9-]+/', '-', $request->input('name'))));
    //     $data = array(
    //         'name'                       => $request->name,
    //         'slug'                       => $slug,
    //         'description_full'           => !empty($request->description_full) ? $request->description_full : "",
    //         'status'                     => 1, //!empty($request->status) ? $request->status : "",
    //         'entry_by'                   => $this->userid
    //     );
    //     // dd($data);
    //     if (!empty($request->file('files'))) {
    //         $files = $request->file('files');
    //         $fileName = Str::random(20);
    //         $ext = strtolower($files->getClientOriginalExtension());
    //         $path = $fileName . '.' . $ext;
    //         $uploadPath = '/backend/files/';
    //         $upload_url = $uploadPath . $path;
    //         $files->move(public_path('/backend/files/'), $upload_url);
    //         $file_url = $uploadPath . $path;
    //         $data['thumnail_img'] = $file_url;
    //     }
    //     //Post::create($data);
    //     $resdata['product_id'] = Post::insertGetId($data);
    //     return response()->json($resdata);
    // }

    // public function allPostList(Request $request)
    // {

    //     $page = $request->input('page', 1);
    //     $pageSize = $request->input('pageSize', 10);

    //     // Get search query from the request
    //     $searchQuery    = $request->searchQuery;
    //     // dd($selectedFilter);
    //     $query = Post::orderBy('id', 'desc')
    //         ->select('posts.*');

    //     if ($searchQuery !== null) {
    //         $query->where('posts.name', 'like', '%' . $searchQuery . '%');
    //     }

    //     $paginator = $query->paginate($pageSize, ['*'], 'page', $page);
    //     $modifiedCollection = $paginator->getCollection()->map(function ($item) {
    //         return [
    //             'id'            => $item->id,
    //             'name'          => substr($item->name, 0, 250),
    //             'status'        => $item->status,
    //         ];
    //     });

    //     // Return the modified collection along with pagination metadata
    //     return response()->json([
    //         'data' => $modifiedCollection,
    //         'current_page' => $paginator->currentPage(),
    //         'total_pages' => $paginator->lastPage(),
    //         'total_records' => $paginator->total(),
    //     ], 200);
    // }

    // public function postCategoryData(Request $request)
    // {

    //     $id =  $request->id;
    //     $data = Post::where('posts.categoryId', $id)
    //         ->select('posts.*', 'post_category.name as category_name')
    //         ->join('post_category', 'posts.categoryId', '=', 'post_category.id')
    //         ->get();

    //     $arryData = [];
    //     foreach ($data as $v) {
    //         $arryData[] = [
    //             'id'                         => $v->id,
    //             'name'                       => $v->name,
    //             'question'                   => $v->question,
    //             'answer'                     => $v->answer,
    //             'description_full'           => strip_tags($v->description_full),
    //             'images'                     => url($v->thumnail_img),
    //         ];
    //     }
    //     $responseData['data']  = $arryData;
    //     return response()->json($responseData);
    // }
}
