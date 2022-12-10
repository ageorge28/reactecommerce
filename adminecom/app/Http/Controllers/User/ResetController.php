<?php

namespace App\Http\Controllers\User;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\ResetRequest;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;

class ResetController extends Controller
{
    public function reset(ResetRequest $request)
    {
        $email = $request->email;
        $token = $request->token;
        $password = Hash::make($request->password);

        $emailCheck = DB::table('password_resets')->where('email', $email)->first();
        $tokenCheck = DB::table('password_resets')->where('token', $token)->first();

        if(!$emailCheck)
        {
            return response([
                'message' => 'Email not found'
            ], 401);
        }

        if(!$tokenCheck)
        {
            return response([
                'message' => 'Pin Code Invalid'
            ], 401);
        }

        DB::table('users')->where('email', $email)->update([
            'password' => $password
        ]);

        DB::table('password_resets')->where('email', $email)->delete();

        return response([
            'message' => 'Password reset successfully'
        ], 200);
    }
}
