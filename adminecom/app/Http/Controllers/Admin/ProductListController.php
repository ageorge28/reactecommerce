<?php

namespace App\Http\Controllers\Admin;

use Carbon\Carbon;
use App\Models\Brand;
use App\Models\Category;
use App\Models\ProductList;
use App\Models\Subcategory;
use Illuminate\Http\Request;
use App\Models\ProductDetail;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;

class ProductListController extends Controller
{
    public function remark(Request $request)
    {
        $remark = $request->remark;
        if($remark == 'FEATURED')
        {
            $productlist = ProductList::where('remark', $remark)->limit(6)->get();
        }
        else
        {
            $productlist = ProductList::where('remark', $remark)->limit(8)->get();
        }

        $base_url = config('global.thumbnail_url');
        foreach($productlist as $item)
        {
            $item->image = $base_url . $item->image;
        }

        return $productlist;
    }
    public function category(Request $request)
    {
        $category = $request->category;
        $productlist = ProductList::where('category', $category)->get();
        $base_url = config('global.thumbnail_url');
        foreach($productlist as $item)
        {
            $item->image = $base_url . $item->image;
        }
        return $productlist;
    }
    public function subcategory(Request $request)
    {
        $category = $request->category;
        $subcategory = $request->subcategory;
        $productlist = ProductList::where('category', $category)->where('subcategory', $subcategory)->get();
        $base_url = config('global.thumbnail_url');
        foreach($productlist as $item)
        {
            $item->image = $base_url . $item->image;
        }
        return $productlist;
    }

    public function search(Request $request)
    {
        $key = $request->key;
        $productList = ProductList::where('title', 'LIKE', "%{$key}%")->orWhere('brand', 'LIKE', "%{$key}%")->get();
        $base_url = config('global.thumbnail_url');
        foreach($productList as $item)
        {
            $item->image = $base_url . $item->image;
        }
        return $productList;
    }

    public function similar(Request $request)
    {
        $subcategory = $request->subcategory;
        $productList = ProductList::where('subcategory', $subcategory)->orderBy('id', 'DESC')->limit(6)->get();
        $base_url = config('global.thumbnail_url');
        foreach($productList as $item)
        {
            $item->image = $base_url . $item->image;
        }
        return $productList;
    }

    public function index()
    {

        $products = ProductList::all()->paginate(10);
        return view('backend.products.index', compact('products'));
    }

    public function create()
    {
        $categories = Category::all();
        $subcategories = Subcategory::all();
        $brands = Brand::latest()->orderBy('brand_name', 'ASC')->get();
        return view('backend.products.create', compact('categories', 'subcategories', 'brands'));      
    }

    public function store(Request $request)
    {
        $request->validate([
            'title' => 'required',
            'price' => 'required',
            'image' => 'required',
            'category' => 'required',
            'subcategory' => 'required',
            'remark' => 'required',
            'brand' => 'required',
            'product_code' => 'required',
            'image1' => 'required',
            'image2' => 'required',
            'image3' => 'required',
            'image4' => 'required',
            'short_description' => 'required',     
        ]);



        $image = $request->file('image');
        $filename = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
        Image::make($image)->resize(711, 960)->save('upload/products/thumbnails/' . $filename);
        $save_url = $filename;

        $image1 = $request->file('image1');
        $filename1 = hexdec(uniqid()) . '.' . $image1->getClientOriginalExtension();
        Image::make($image1)->resize(711, 960)->save('upload/products/images/' . $filename1);
        $save_url1 = $filename1;

        $image2 = $request->file('image2');
        $filename2 = hexdec(uniqid()) . '.' . $image2->getClientOriginalExtension();
        Image::make($image2)->resize(711, 960)->save('upload/products/images/' . $filename2);
        $save_url2 = $filename2;

        $image3 = $request->file('image3');
        $filename3 = hexdec(uniqid()) . '.' . $image3->getClientOriginalExtension();
        Image::make($image3)->resize(711, 960)->save('upload/products/images/' . $filename3);
        $save_url3 = $filename3;

        $image4 = $request->file('image4');
        $filename4 = hexdec(uniqid()) . '.' . $image4->getClientOriginalExtension();
        Image::make($image4)->resize(711, 960)->save('upload/products/images/' . $filename4);
        $save_url4 = $filename4;

        $product_id = ProductList::insertGetId([
            'title' => $request->title,
            'price' => $request->price,
            'special_price' => $request->special_price,
            'category' => $request->category,
            'subcategory' => $request->subcategory,
            'remark' => $request->remark,
            'brand' => $request->brand,
            'product_code' => $request->product_code,
            'image' => $save_url,
            'created_at' => Carbon::now()        
        ]);

        ProductDetail::insert([
            'product_id' => $product_id,
            'image1' => $save_url1,
            'image2' => $save_url2,
            'image3' => $save_url3,
            'image4' => $save_url4,
            'short_description' => $request->short_description,
            'long_description' => $request->long_description,
            'color' => $request->color,
            'size' => $request->size,
            'created_at' => Carbon::now()               
        ]);

        $notification = array (
            'message' => 'Product Inserted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('admin.products')->with($notification);

    }

    public function edit(ProductList $product)
    {
        $categories = Category::all();
        $subcategories = Subcategory::all();
        $brands = Brand::latest()->orderBy('brand_name', 'ASC')->get();
        $productDetail = ProductDetail::where('product_id', $product->id)->first();
        return view('backend.products.edit', compact('categories', 'subcategories', 'brands', 'product', 'productDetail'));   
    }

    public function update(ProductList $product, Request $request)
    {
        $productDetail = ProductDetail::where('product_id', $product->id)->first();

        $request->validate([
            'title' => 'required',
            'price' => 'required',
            'category' => 'required',
            'subcategory' => 'required',
            'remark' => 'required',
            'brand' => 'required',
            'product_code' => 'required',
            'short_description' => 'required',     
        ]);

        $image = $request->file('image');
        if($image)
        {
            $filename = hexdec(uniqid()) . '.' . $image->getClientOriginalExtension();
            Image::make($image)->resize(711, 960)->save('upload/products/thumbnails/' . $filename);
            $save_url = $filename;
            if(file_exists('upload/products/thumbnails/' . $product->image))
            {
                unlink('upload/products/thumbnails/' . $product->image);  
            }   
        }
        else
        {
            $save_url = $product->image;
        }

        $image1 = $request->file('image1');
        if($image1)
        {
            $filename1 = hexdec(uniqid()) . '.' . $image1->getClientOriginalExtension();
            Image::make($image1)->resize(711, 960)->save('upload/products/images/' . $filename1);
            $save_url1 = $filename1;
            if(file_exists('upload/products/images/' . $productDetail->image1))
            {
                unlink('upload/products/images/' . $productDetail->image1);  
            }   
        }
        else
        {
            $save_url1 = $productDetail->image1;
        }

        $image2 = $request->file('image2');
        if($image2)
        {
            $filename2 = hexdec(uniqid()) . '.' . $image2->getClientOriginalExtension();
            Image::make($image2)->resize(711, 960)->save('upload/products/images/' . $filename2);
            $save_url2 = $filename2;
            if(file_exists('upload/products/images/' . $productDetail->image2))
            {
                unlink('upload/products/images/' . $productDetail->image2);  
            }   
        }
        else
        {
            $save_url2 = $productDetail->image2;
        }


        $image3 = $request->file('image3');
        if($image3)
        {
            $filename3 = hexdec(uniqid()) . '.' . $image3->getClientOriginalExtension();
            Image::make($image3)->resize(711, 960)->save('upload/products/images/' . $filename3);
            $save_url3 = $filename3;
            if(file_exists('upload/products/images/' . $productDetail->image3))
            {
                unlink('upload/products/images/' . $productDetail->image3);  
            }   
        }
        else
        {
            $save_url3 = $productDetail->image3;
        }

        $image4 = $request->file('image4');
        if($image4)
        {
            $filename4 = hexdec(uniqid()) . '.' . $image4->getClientOriginalExtension();
            Image::make($image4)->resize(711, 960)->save('upload/products/images/' . $filename4);
            $save_url4 = $filename4;
            if(file_exists('upload/products/images/' . $productDetail->image4))
            {
                unlink('upload/products/images/' . $productDetail->image4);  
            }   
        }
        else
        {
            $save_url4 = $productDetail->image4;
        }

        $product->update([
            'title' => $request->title,
            'price' => $request->price,
            'special_price' => $request->special_price,
            'category' => $request->category,
            'subcategory' => $request->subcategory,
            'remark' => $request->remark,
            'brand' => $request->brand,
            'product_code' => $request->product_code,
            'image' => $save_url,
            'created_at' => Carbon::now()        
        ]);

        $productDetail->update([
            'product_id' => $product->id,
            'image1' => $save_url1,
            'image2' => $save_url2,
            'image3' => $save_url3,
            'image4' => $save_url4,
            'short_description' => $request->short_description,
            'long_description' => $request->long_description,
            'color' => $request->color,
            'size' => $request->size,
            'created_at' => Carbon::now()               
        ]);

        $notification = array (
            'message' => 'Product Updated Successfully',
            'alert-type' => 'success'
        );

        return redirect()->route('admin.products')->with($notification);

    }

    public function destroy(ProductList $product)
    {
        $productDetail = ProductDetail::where('product_id', $product->id)->first();

        if(file_exists('upload/products/thumbnails/' . $product->image))
        {
            unlink('upload/products/thumbnails/' . $product->image);  
        }   

        if(file_exists('upload/products/images/' . $productDetail->image1))
        {
            unlink('upload/products/images/' . $productDetail->image1);  
        }  

        if(file_exists('upload/products/images/' . $productDetail->image2))
        {
            unlink('upload/products/images/' . $productDetail->image2);  
        }  

        if(file_exists('upload/products/images/' . $productDetail->image3))
        {
            unlink('upload/products/images/' . $productDetail->image3);  
        }  

        if(file_exists('upload/products/images/' . $productDetail->image4))
        {
            unlink('upload/products/images/' . $productDetail->image4);  
        }  

        $productDetail->delete();
        $product->delete();
        
        $notification = array (
            'message' => 'Product Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
}
