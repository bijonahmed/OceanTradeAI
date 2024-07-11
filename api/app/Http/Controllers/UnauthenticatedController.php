<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Mail\TestMail;
use App\Models\Category;
use Illuminate\Http\Request;
use Auth;
use Validator;
use Helper;
use App\Models\Product;
use App\Models\Sliders;
use App\Models\Post;
use App\Models\ProductCategory;
use App\Models\Categorys;
use App\Models\VerifyEmail;
use App\Models\Setting;
use App\Models\User;
use App\Models\ProductAdditionalImg;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Str;
use App\Rules\MatchOldPassword;
use Illuminate\Support\Facades\Hash;
use DB;
use File;
use Mail;
use PhpParser\Node\Stmt\TryCatch;
use function Ramsey\Uuid\v1;

class UnauthenticatedController extends Controller
{
    protected $frontend_url;
    protected $userid;


    public function allCategory(Request $request)
    {
        $categories = Categorys::with('children.children.children.children.children')->where('parent_id', 0)->get();
        return response()->json($categories);
    }

    public function generateUniqueRandomNumber()
    {
        $numbers = [];

        while (count($numbers) < 4) {
            $randomNumber = rand(1000, 9999);
            if (!in_array($randomNumber, $numbers)) {
                $numbers[] = $randomNumber;
            }
        }

        return $numbers[0]; // Since we're generating only one number, return the first (and only) element of the array
    }

    public function checkEmail(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'email' => 'required|email|unique:verifyEmail,email',
        ]);
        if ($validator->fails()) {
            return response()->json(['errors' => $validator->errors()], 422);
        }

        $uniqueNumber = $this->generateUniqueRandomNumber();
        $data = [
            'email' => $request->email,
            'code'  => $uniqueNumber,
            'status' => 0,
        ];


        VerifyEmail::create($data);

        $details = [
            'title' => 'One-Time Password (OTP) Verification',
            'body'  => 'This is a test email using Mailtrap.',
            'otp'   => $uniqueNumber
        ];

        Mail::to($request->email)->send(new TestMail($details));

        $response = [
            'message' => 'Sending Vertification Email'
        ];
        return response()->json($response, 200);
      
    }



    public function getCategory()
    {

        $mainCategories = Categorys::where('status', 1)
            ->where('parent_id', 0)
            ->get();

        $categoryTree = [];

        foreach ($mainCategories as $mainCategory) {
            $subCategories = Categorys::where('status', 1)
                ->where('parent_id', $mainCategory->id)
                ->get();

            $subCategoryArray = [];
            foreach ($subCategories as $subCategory) {
                $subCategoryArray[] = [
                    'id'            => $subCategory->id,
                    'name'          => $subCategory->name,
                    'slug'          => $subCategory->slug,
                    'bg_images'     => !empty($subCategory->bg_images) ? url($subCategory->bg_images) : "",
                    'logo'          => !empty($subCategory->file) ? url($subCategory->file) : "",
                    // Add more fields if needed
                ];
            }

            $categoryTree[] = [
                'id'           => $mainCategory->id,
                'name'         => $mainCategory->name,
                'slug'         => $mainCategory->slug,
                'subcategories' => $subCategoryArray,
            ];
        }

        return response()->json($categoryTree, 200);
    }
}
