<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Favourite;
use App\Models\ProductList;

class FavouriteController extends Controller
{
    public function store(Request $request)
    {
        $product_code = $request->product_code;
        $email = $request->email;
        $productDetails = ProductList::where('product_code', $product_code)->first(); 

        $result = Favourite::insert([
            'product_id' => $productDetails->id,
            'product_name' => $productDetails->title,
            'image' => $productDetails->image,
            'product_code' => $product_code,
            'email' => $email
        ]);

        return $result;
    }

    public function index(Request $request)
    {
        $email = $request->email;
        $result = Favourite::where('email', $email)->get();

        $base_url = config('global.thumbnail_url');
        foreach($result as $item)
        {
            $item->image = $base_url . $item->image;
        }
        return $result;
    }

    public function count($email, Request $request)
    {
        $result = Favourite::where('email', $email)->count();
        return $result;
    }

    public function destroy(Request $request)
    {
        $product_code = $request->product_code;
        $email = $request->email;
        $productDetails = Favourite::where('product_code', $product_code)->where('email', $email)->first(); 
        $result = $productDetails->delete();
        return $result;
    }
}
