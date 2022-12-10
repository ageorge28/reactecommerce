<?php

namespace App\Http\Controllers\Admin;

use App\Models\Subcategory;
use App\Models\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SubcategoryController extends Controller
{
    public function index()
    {
        $subcategories = Subcategory::all();
        return view('backend.subcategories.index', compact('subcategories'));
    }

    public function create()
    {
        $categories = Category::all();
        return view('backend.subcategories.create', compact('categories'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'subcategory_name' => 'required',
            'category_name' => 'required'
        ], [
            'subcategory_name.required' => 'Please enter the subcategory name'
        ]);

        Subcategory::insert([
            'subcategory_name' => $request->subcategory_name,
            'category_name' => $request->category_name
        ]);

        $notification = array (
            'message' => 'Subcategory Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('admin.subcategories')->with($notification);
    }

    public function edit(Subcategory $subcategory)
    {
        $categories = Category::all();
        return view('backend.subcategories.edit', compact('subcategory', 'categories'));
    }

    public function update(Subcategory $subcategory, Request $request)
    {
        $request->validate([
            'subcategory_name' => 'required',
            'category_name' => 'required'
        ], [
            'subcategory_name.required' => 'Please enter the subcategory name'
        ]);

        $subcategory->update([
            'subcategory_name' => $request->subcategory_name,
            'category_name' => $request->category_name,
        ]);

        $notification = array (
            'message' => 'Subcategory Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('admin.subcategories')->with($notification);
    }

    public function destroy(Subcategory $subcategory)
    {
        $subcategory->delete();
        
        $notification = array (
            'message' => 'Subcategory Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }

    public function ajax($category)
    {
        $subcategories = Subcategory::where('category_name', $category)->get();
        return json_encode($subcategories);
    }
}
