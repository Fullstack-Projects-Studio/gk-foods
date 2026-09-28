<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\MainController;
use App\Http\Controllers\AdminController;

Route::get('/', [MainController::class, 'index'])->name('index');
Route::get('/home', [MainController::class, 'index'])->name('home');
Route::get('/about-us', [MainController::class, 'about'])->name('about-us');
Route::get('/brands', [MainController::class, 'brands'])->name('brands');
Route::get('/contact', [MainController::class, 'contact'])->name('contact');
Route::get('/checkout', [MainController::class, 'checkout'])->name('checkout');
Route::get('/product-category/{id}', [MainController::class, 'product_category'])->name('product-category');
Route::get('/brand-category/{id}', [MainController::class, 'brand_category'])->name('brand-category');
Route::get('/product-detail/{id}', [MainController::class, 'product_detail'])->name('product-detail');
Route::post('/add-to-cart', [MainController::class, 'addToCart'])->name('add-to-cart');
Route::get('/remove-from-cart/{id}', [MainController::class, 'removeFromCart'])->name('remove-from-cart'); 
Route::get('/get-from-cart', [MainController::class, 'getFromCart'])->name('get-from-cart'); 
Route::post('/place_order', [MainController::class, 'place_order'])->name('place_order');  
Route::get('/menu', [MainController::class, 'menu'])->name('menu'); 
Route::post('/send-enquiry', [MainController::class, 'sendMail'])->name('send.enquiry');