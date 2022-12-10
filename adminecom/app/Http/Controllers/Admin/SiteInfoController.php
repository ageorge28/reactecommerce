<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SiteInfo;

class SiteInfoController extends Controller
{
    public function show()
    {
        $result = SiteInfo::first();
        return $result;
    }

    public function edit()
    {
        $siteinfo = SiteInfo::first();
        return view('backend.siteinfo.edit', compact('siteinfo'));
    }

    public function update(Request $request)
    {
        $siteinfo = SiteInfo::first();
        $request->validate([
            'about' => 'required',
            'refund' => 'required',
            'purchase' => 'required',
            'privacy' => 'required',
            'address' => 'required',
            'email' => 'required',
            'android' => 'required',
            'ios' => 'required',
            'facebook' => 'required',
            'twitter' => 'required',
            'instagram' => 'required',
            'copyright' => 'required',          
        ]);

        $siteinfo->update([
            'about' => $request->about,
            'refund' => $request->refund,
            'profile' => $request->profile,
            'purchase' => $request->purchase,
            'privacy' => $request->privacy,
            'address' => $request->address,
            'email' => $request->email,
            'android' => $request->android,
            'ios' => $request->ios,
            'facebook' => $request->facebook,
            'twitter' => $request->twitter,
            'instagram' => $request->instagram,
            'copyright' => $request->copyright      
        ]);

        return redirect()->back();
    }


}
