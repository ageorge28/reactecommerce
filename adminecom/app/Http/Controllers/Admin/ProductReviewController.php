<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductReview;

class ProductReviewController extends Controller
{
    public function show(Request $request)
    {
        $product_code = $request->product_code;
        $result = ProductReview::where('product_code', $product_code)->orderBy('id', 'DESC')->limit(4)->get();
        return $result;
    }

    public function store(Request $request)
    {
        $product_code = $request->input('product_code');
        $product_name = $request->input('product_name');
        $reviewer_name = $request->input('reviewer_name');
        $review_photo = $request->input('review_photo');
        $reviewer_rating = $request->input('reviewer_rating');
        $reviewer_comments = $request->input('reviewer_comments');
        
        $result = ProductReview::insert([
            'product_code' => $product_code,
            'product_name' => $product_name,
            'reviewer_name' => $reviewer_name,
            'review_photo' => $review_photo,
            'reviewer_rating' => $reviewer_rating,
            'reviewer_comments' => $reviewer_comments
        ]);

        return $result;
    }

    public function index()
    {
        $reviews = ProductReview::all();
        return view('backend.reviews.index', compact('reviews'));
    }

    public function destroy(ProductReview $review)
    {
        $review->delete();
        
        $notification = array (
            'message' => 'Review Deleted Successfully',
            'alert-type' => 'success'
        );

        return redirect()->back()->with($notification);
    }
}
