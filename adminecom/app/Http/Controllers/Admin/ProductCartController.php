<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\ProductCart;
use App\Models\ProductList;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ProductCartController extends Controller
{
    public function store(Request $request)
    {
        $email = $request->input('email');
        $product_code = $request->input('product_code');
        $size = $request->input('size');
        $color = $request->input('color');
        $quantity = $request->input('quantity');
      
        $productDetails = ProductList::where('product_code', $product_code)->first(); 
        
        $price = $productDetails->price;
        $special_price = $productDetails->special_price;
        $image = $productDetails->image;
        $product_name = $productDetails->title;

        if($special_price == null)
        {
            $total_price = $price * $quantity;
            $unit_price = $price;
        }
        else
        {
            $total_price = $special_price * $quantity;
            $unit_price = $special_price;
        }

        $result = ProductCart::insert([
            'image' => $image,
            'email' => $email,
            'product_name' => $product_name,
            'product_code' => $product_code,
            'size' => "Size: " . $size,
            'color' => "Color: " . $color,
            'quantity' => $quantity,
            'unit_price' => $unit_price,
            'total_price' => $total_price,
            'created_at' => Carbon::now()
        ]);

        return $result;
    }

    public function count($email, Request $request)
    {
        $result = ProductCart::where('email', $email)->count();
        return $result;
    }

    public function index(Request $request)
    {
        $base_url = config('global.thumbnail_url');
        $email = $request->email;
        $result = ProductCart::where('email', $email)->get();
        foreach($result as $item)
        {
            $item->image = $base_url . $item->image;
        }
        return $result;
    }

    public function delete(Request $request)
    {
        $id = $request->id;
        $result = ProductCart::where('id', $id)->delete();
        return $result;
    }

    public function increment(Request $request)
    {
        $id = $request->id;
        $productCart = ProductCart::find($id);
        $newQuantity  = $productCart->quantity + 1;
        $total_price = $newQuantity * $productCart->unit_price;
        $result = $productCart->update([
            'quantity' => $newQuantity,
            'total_price' => $total_price
        ]);
        return $result;
    }

    public function decrement(Request $request)
    {
        $id = $request->id;
        $quantity = $request->quantity;
        $productCart = ProductCart::find($id);
        $newQuantity  = $productCart->quantity == 0 ? 0 : $productCart->quantity - 1;
        $total_price = $newQuantity * $productCart->unit_price;
        if($newQuantity == 0)
        {
            $result = $productCart->delete();
            return $result;
        }
        else
        {
            $result = $productCart->update([
                'quantity' => $newQuantity,
                'total_price' => $total_price
            ]);
            return $result;    
        }
    }

}
