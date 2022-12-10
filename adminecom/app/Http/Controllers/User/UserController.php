<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Exception;
use App\Models\User;
use App\Mail\ForgotMail;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\ForgetRequest;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Mail;

class UserController extends Controller
{
    public function show()
    {
        return auth()->user();
    }
}
