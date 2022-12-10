<?php

namespace App\Http\Controllers\Admin;

use App\Models\HomeSlider;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;

class HomeSliderController extends Controller
{
    public function index()
    { 
        $base_url = config('global.slider_url');
        $result = HomeSlider::all();
        foreach($result as $item)
        {
            $item->slider_image = $base_url . $item->slider_image;
        }
        return $result;
    }

    public function all()
    {
        $sliders = HomeSlider::all();
        return view('backend.sliders.index', compact('sliders'));
    }

    public function create()
    {
        return view('backend.sliders.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'slider_image' => 'required',
        ]);

        $image = $request->file('slider_image');
        $filename = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)->resize(1024, 379)->save('upload/sliders/' . $filename);
        $save_url = $filename;

        HomeSlider::insert([
            'slider_image' => $save_url
        ]);

        $notification = array (
            'message' => 'Slide Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('admin.sliders')->with($notification);
    }

    public function edit(HomeSlider $slider)
    {
        return view('backend.sliders.edit', compact('slider'));
    }

    public function update(HomeSlider $slider, Request $request)
    {
        $request->validate([
            'slider_image' => 'required',
        ]);

        $image = $request->file('slider_image');
        if($image)
        {
            $filename = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)->resize(1024, 379)->save('upload/sliders/' . $filename);
            $save_url = $filename;
            if(file_exists('upload/sliders' . $slider->slider_image))
            {
                unlink('upload/sliders/' . $slider->slider_image);  
            }
        }
        else
        {
            $save_url = $slider->slider_image;
        }

        $slider->update([
            'slider_image' => $save_url
        ]);

        $notification = array (
            'message' => 'Slider Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('admin.sliders')->with($notification);
    }

    public function destroy(HomeSlider $slider)
    {
        unlink('upload/sliders/' . $slider->slider_image);  

        $slider->delete();
        
        $notification = array (
            'message' => 'Slider Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
}
