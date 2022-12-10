<?php

namespace App\Http\Controllers\Admin;

use App\Models\Category;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;

class CategoryController extends Controller
{

    public function index()
    {

        $base_url = config('global.category_url');

        $categories = Category::all();
        $categoryDetails = [];
        
        foreach($categories as $value)
        {
            $subcategories = Subcategory::where('category_name', $value->category_name)->get();
            $item = [
                'category_name' => $value->category_name,
                'category_image' => $base_url . $value->category_image,
                'subcategory_name' => $subcategories
            ];
            array_push($categoryDetails, $item);
        }

        return $categoryDetails;
    }

    public function all()
    {
        $categories = Category::all();
        return view('backend.categories.index', compact('categories'));
    }

    public function create()
    {
        return view('backend.categories.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'category_name' => 'required',
            'category_image' => 'required'
        ], [
            'category_name.required' => 'Please enter the category name'
        ]);

        $image = $request->file('category_image');
        $filename = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)->resize(128, 128)->save('upload/categories/' . $filename);
        $save_url = $filename;

        Category::insert([
            'category_name' => $request->category_name,
            'category_image' => $save_url
        ]);

        $notification = array (
            'message' => 'Category Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('admin.categories')->with($notification);
    }

    public function edit(Category $category)
    {
        return view('backend.categories.edit', compact('category'));
    }

    public function update(Category $category, Request $request)
    {
        $request->validate([
            'category_name' => 'required',
        ], [
            'category_name.required' => 'Please enter the category name'
        ]);

        $image = $request->file('category_image');
        if($image)
        {
            $filename = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)->resize(128, 128)->save('upload/categories/' . $filename);
            $save_url = $filename;
            if(file_exists('upload/categories/' . $category->category_image))
            {
                unlink('upload/categories/' . $category->category_image);  
            }
        }
        else
        {
            $save_url = $category->category_image;
        }

        $category->update([
            'category_name' => $request->category_name,
            'category_image' => $save_url
        ]);

        $notification = array (
            'message' => 'Category Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('admin.categories')->with($notification);
    }

    public function destroy(Category $category)
    {
        unlink('upload/categories/' . $category->category_image);  

        $category->delete();
        
        $notification = array (
            'message' => 'Category Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
}
