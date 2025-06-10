<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;

Route::get('/', [HomeController::class, 'index']);
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\SearchController;

Route::get('/chuyen-muc/{id}', [CategoryController::class, 'show']);
Route::get('/san-pham/{id}', [ProductController::class, 'show']);
Route::get('/tim-kiem', [SearchController::class, 'index']);
