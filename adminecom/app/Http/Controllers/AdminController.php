<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\CartOrder;
use App\Models\Visitor;
use App\Models\Contact;

class AdminController extends Controller
{
    public function logout()
    {
        Auth::logout();
        return redirect()->route('login');
    }

    public function profile()
    {
        $adminData = Auth::user();
        return view('backend.admin.profile', compact('adminData'));
    }

    public function profile_update(Request $request)
    {
        $data = User::find(Auth::id());

        $data->name = $request->name;
        $data->email = $request->email;
        
        if($request->file('profile_photo_path'))
        {
            $file = $request->file('profile_photo_path');
            $filename = date('YmdHi') . $file->getClientOriginalName();
            $file->move(public_path('upload/admin_images/'), $filename);

            if($data->profile_photo_path)
            {
                unlink(public_path('upload/admin_images/') . $data->profile_photo_path);
            }

            $data->profile_photo_path = $filename;
        }    

        $data->save();

        $notification = array (
            'message' => 'User Profile Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('admin.profile')->with($notification);
    }

    public function password()
    {
        $adminData = Auth::user();
        return view('backend.admin.password', compact('adminData'));
    }

    public function password_update(Request $request)
    {
        $request->validate([
            'current_password' => 'required',
            'password' => 'required|confirmed'
        ]);

        $hashedPassword = Auth::user()->password;
        if(Hash::check($request->current_password, $hashedPassword))
        {
            $user = User::find(Auth::id());
            $user->password = Hash::make($request->password);
            $user->save();
            Auth::logout();
            return redirect()->route('admin.logout');
        }
        else
        {
            return redirect()->back();
        }
    }

    public function dashboard()
    {
        $orders = CartOrder::count();
        $revenue = CartOrder::sum('total_price');
        $visitors = Visitor::count();
        $messages = Contact::count();
        $orderList = CartOrder::latest()->orderBy('order_date', 'DESC')->limit(6)->get();
        return view('admin.index', compact('orders', 'revenue', 'visitors', 'messages', 'orderList'));
    }
}
