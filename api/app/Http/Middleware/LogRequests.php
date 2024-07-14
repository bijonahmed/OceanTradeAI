<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Log;
use Illuminate\Support\Facades\DB;
use Tymon\JWTAuth\Facades\JWTAuth;
use Tymon\JWTAuth\Exceptions\JWTException;


class LogRequests
{
    public function handle($request, Closure $next)
    {

        $userId = null;

        try {
            if ($user = JWTAuth::parseToken()->authenticate()) {
                $userId = $user->id;
            }
        } catch (JWTException $e) {
            // Handle the exception if the token is invalid or expired
            // For logging purposes, we can leave $userId as null
        } 

        $requestData = [
            'method'        => $request->method(),
            'url'           => $request->fullUrl(),
            'ip_address'    => $request->ip(),
            'user_agent'    => $request->header('User-Agent'),
            'user_id'       => $userId,
        ];
        DB::table('logs')->insert($requestData);
        //Log::info('Incoming Request', $requestData);

        return $next($request);
    }
}
