<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\VisitorController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\SiteInfoController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ProductListController;
use App\Http\Controllers\Admin\HomeSliderController;
use App\Http\Controllers\Admin\ProductDetailController;
use App\Http\Controllers\Admin\NotificationController;
use App\Http\Controllers\User\AuthController;
use App\Http\Controllers\User\UserController;
use App\Http\Controllers\User\ResetController;
use App\Http\Controllers\User\ForgotController;
use App\Http\Controllers\Admin\ProductReviewController;
use App\Http\Controllers\Admin\ProductCartController;
use App\Http\Controllers\Admin\FavouriteController;
use App\Http\Controllers\Admin\CartOrderController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

Route::get('/visitor/store', [VisitorController::class, 'store']);

Route::post('/contact/store', [ContactController::class, 'store']);

Route::get('/siteinfo/show', [SiteInfoController::class, 'show']);

Route::get('/category/index', [CategoryController::class, 'index']);

Route::get('/products/remark/{remark}', [ProductListController::class, 'remark']);

Route::get('/products/category/{category}', [ProductListController::class, 'category']);

Route::get('/products/subcategory/{category}/{subcategory}', [ProductListController::class, 'subcategory']);

Route::get('/slider/index', [HomeSliderController::class, 'index']);

Route::get('/products/show/{product}', [ProductDetailController::class, 'show']);

Route::get('/notification/index', [NotificationController::class, 'index']);

Route::get('/products/search/{key}', [ProductListController::class, 'search']);

Route::get('/products/similar/{subcategory}', [ProductListController::class, 'similar']);


// Review Routes
Route::get('/reviews/show/{product_code}', [ProductReviewController::class, 'show']);
Route::post('/reviews/store', [ProductReviewController::class, 'store']);

/////////////// USER LOGIN API /////////////////////

// Login Routes
Route::post('/login', [AuthController::class, 'login']);
Route::post('/register', [AuthController::class, 'register']);

// Forgot password routes
Route::post('/forgot', [ForgotController::class, 'forgot']);
Route::post('/reset', [ResetController::class, 'reset']);

// Current user data
Route::get('/user', [UserController::class, 'show'])->middleware('auth:api');

/////////////// END USER LOGIN API ///////////////////

// Product Cart Routes
Route::post('/cart/add', [ProductCartController::class, 'store']);
Route::get('/cart/count/{email}', [ProductCartController::class, 'count']);
Route::get('/cart/{email}', [ProductCartController::class, 'index']);
Route::get('/cart/remove/{id}', [ProductCartController::class, 'delete']);
Route::get('/cart/increment/{id}', [ProductCartController::class, 'increment']);
Route::get('/cart/decrement/{id}', [ProductCartController::class, 'decrement']);

// Order Routes
Route::post('/order/store', [CartOrderController::class, 'store']);
Route::get('/order/{email}', [CartOrderController::class, 'index']);
Route::get('/order/paid/{order}', [CartOrderController::class, 'paid']);

// Favourite Routes
Route::get('/favourites/add/{product_code}/{email}', [FavouriteController::class, 'store']);
Route::get('/favourites/{email}', [FavouriteController::class, 'index']);
Route::get('/favourites/remove/{product_code}/{email}', [FavouriteController::class, 'destroy']);
Route::get('/favourites/count/{email}', [FavouriteController::class, 'count']);

