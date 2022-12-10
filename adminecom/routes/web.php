<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\SubcategoryController;
use App\Http\Controllers\Admin\BrandController;
use App\Http\Controllers\Admin\HomeSliderController;
use App\Http\Controllers\Admin\ProductListController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\ProductReviewController;
use App\Http\Controllers\Admin\SiteInfoController;
use App\Http\Controllers\Admin\CartOrderController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::middleware([
    'auth:sanctum',
    config('jetstream.auth_session'),
    'verified'
])->group(function () {

    Route::get('/dashboard', [AdminController::class, 'dashboard'])->name('dashboard');
});

Route::get('/logout', [AdminController::class, 'logout'])->name('admin.logout');

Route::prefix('admin')->group(function () {
    Route::get('/user/profile', [AdminController::class, 'profile'])->name('admin.profile');
    Route::post('/user/profile/update', [AdminController::class, 'profile_update'])->name('admin.profile.update');
    Route::get('/user/password', [AdminController::class, 'password'])->name('admin.password');
    Route::post('/user/password/update', [AdminController::class, 'password_update'])->name('admin.password.update');
});

Route::prefix('categories')->group(function () {
    Route::get('/', [CategoryController::class, 'all'])->name('admin.categories');
    Route::get('/create', [CategoryController::class, 'create'])->name('admin.categories.create');
    Route::post('/store', [CategoryController::class, 'store'])->name('admin.categories.store');
    Route::get('/edit/{category}', [CategoryController::class, 'edit'])->name('admin.categories.edit');
    Route::post('/update/{category}', [CategoryController::class, 'update'])->name('admin.categories.update');
    Route::get('/delete/{category}', [CategoryController::class, 'destroy'])->name('admin.categories.delete');
});

Route::prefix('subcategories')->group(function () {
    Route::get('/', [SubcategoryController::class, 'index'])->name('admin.subcategories');
    Route::get('/create', [SubcategoryController::class, 'create'])->name('admin.subcategories.create');
    Route::post('/store', [SubcategoryController::class, 'store'])->name('admin.subcategories.store');
    Route::get('/edit/{subcategory}', [SubcategoryController::class, 'edit'])->name('admin.subcategories.edit');
    Route::post('/update/{subcategory}', [SubcategoryController::class, 'update'])->name('admin.subcategories.update');
    Route::get('/delete/{subcategory}', [SubcategoryController::class, 'destroy'])->name('admin.subcategories.delete');
    Route::get('/ajax/{category}', [SubcategoryController::class, 'ajax'])->name('admin.subcategories.ajax');
});

Route::prefix('sliders')->group(function () {
    Route::get('/', [HomeSliderController::class, 'all'])->name('admin.sliders');
    Route::get('/create', [HomeSliderController::class, 'create'])->name('admin.sliders.create');
    Route::post('/store', [HomeSliderController::class, 'store'])->name('admin.sliders.store');
    Route::get('/edit/{slider}', [HomeSliderController::class, 'edit'])->name('admin.sliders.edit');
    Route::post('/update/{slider}', [HomeSliderController::class, 'update'])->name('admin.sliders.update');
    Route::get('/delete/{slider}', [HomeSliderController::class, 'destroy'])->name('admin.sliders.delete');
});

Route::prefix('products')->group(function () {
    Route::get('/', [ProductListController::class, 'index'])->name('admin.products');
    Route::get('/create', [ProductListController::class, 'create'])->name('admin.products.create');
    Route::post('/store', [ProductListController::class, 'store'])->name('admin.products.store');
    Route::get('/edit/{product}', [ProductListController::class, 'edit'])->name('admin.products.edit');
    Route::post('/update/{product}', [ProductListController::class, 'update'])->name('admin.products.update');
    Route::get('/delete/{product}', [ProductListController::class, 'destroy'])->name('admin.products.delete');
});

Route::prefix('brands')->group(function () {
    Route::get('/', [BrandController::class, 'index'])->name('admin.brands');
    Route::get('/create', [BrandController::class, 'create'])->name('admin.brands.create');
    Route::post('/store', [BrandController::class, 'store'])->name('admin.brands.store');
    Route::get('/edit/{brand}', [BrandController::class, 'edit'])->name('admin.brands.edit');
    Route::post('/update/{brand}', [BrandController::class, 'update'])->name('admin.brands.update');
    Route::get('/delete/{brand}', [BrandController::class, 'destroy'])->name('admin.brands.delete');
});

Route::prefix('contacts')->group(function () {
    Route::get('/', [ContactController::class, 'index'])->name('admin.contacts');
    Route::get('/delete/{contact}', [ContactController::class, 'destroy'])->name('admin.contacts.delete');
});

Route::prefix('reviews')->group(function () {
    Route::get('/', [ProductReviewController::class, 'index'])->name('admin.reviews');
    Route::get('/delete/{review}', [ProductReviewController::class, 'destroy'])->name('admin.reviews.delete');
});

Route::prefix('siteinfo')->group(function () {
    Route::get('/edit', [SiteInfoController::class, 'edit'])->name('admin.siteinfo.edit');
    Route::post('/update', [SiteInfoController::class, 'update'])->name('admin.siteinfo.update');
});

Route::prefix('orders')->group(function () {
    Route::get('/pending', [CartOrderController::class, 'pending'])->name('admin.orders.pending');
    Route::get('/processing', [CartOrderController::class, 'processing'])->name('admin.orders.processing');
    Route::get('/completed', [CartOrderController::class, 'completed'])->name('admin.orders.completed');
    Route::get('/show/{order}', [CartOrderController::class, 'show'])->name('admin.orders.show');
    Route::get('/process/{order}', [CartOrderController::class, 'process'])->name('admin.orders.process');
    Route::get('/complete/{order}', [CartOrderController::class, 'complete'])->name('admin.orders.complete');
    
});