<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductDetail;
use App\Models\ProductList;

class ProductDetailController extends Controller
{
    public function show(Request $request)
    {
        $base_url1 = config('global.thumbnail_url');
        $base_url2 = config('global.image_url');
        
        $product = $request->product;
        
        $productList = ProductList::where('id', $product)->get();
        
        foreach($productList as $productItem)
        {
            $productItem->image = $base_url1 . $productItem->image;
        }

        $productDetails = ProductDetail::where('product_id', $product)->get();

        foreach($productDetails as $productDetail)
        {
            $productDetail->image1 = $base_url2 . $productDetail->image1;
            $productDetail->image2 = $base_url2 . $productDetail->image2;
            $productDetail->image3 = $base_url2 . $productDetail->image3;
            $productDetail->image4 = $base_url2 . $productDetail->image4;
        }

        $item = [
            'productDetails' => $productDetails,
            'productList' => $productList,
        ];
        return $item;
    }
}
