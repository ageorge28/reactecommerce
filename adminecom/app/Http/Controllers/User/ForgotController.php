<?php

namespace App\Http\Controllers\User;

use Exception;
use App\Models\User;
use App\Mail\ForgotMail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Http\Requests\ForgetRequest;
use Illuminate\Support\Facades\Mail;

class ForgotController extends Controller
{
    public function forgot(ForgetRequest $request)
    {
        $email = $request->email;

        if(User::where('email', $email)->doesntExist())
        {
            return response([
                'message' => 'Invalid email'
            ], 401);
        }
        // Generate randomn token
        $token = rand(10, 100000);

        try
        {
            DB::table('password_resets')->insert([
                'email' => $email,
                'token' => $token
            ]);

            // Mail sent to user
            Mail::to($email)->send(new ForgotMail($token));

            return response([
                'message' => 'Reset password mail sent to your email'
            ], 200);
        }
        catch(Exception $exception)
        {
            return response([
                'message' => $exception->getMessage()
            ], 400);
        }
    }
}
