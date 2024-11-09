<?php

use App\Models\Product;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Artisan;
use App\Http\Controllers\ProductController;

Route::get('/', function () {
    return to_route('products.index');
})->name('home');


Route::get('/products', [ProductController::class, 'index'])->name('products.index');
Route::get('/products/create', [ProductController::class, 'create'])->name('products.create');
Route::post('/products', [ProductController::class, 'store'])->name('products.store');
Route::get('/products/{id}', [ProductController::class, 'show'])->name('products.show');
Route::get('/products/{id}/edit', [ProductController::class, 'edit'])->name('products.edit');
Route::put('/products/{id}', [ProductController::class, 'update'])->name('products.update');
Route::delete('/products/{id}', [ProductController::class, 'destroy'])->name('products.destroy');


Route::get('/createdummyproducts', function () {
    if (Product::count() > 0) {
        foreach (Product::all() as $product) {
            if ($product->image) {
                File::delete(public_path($product->image));
            }
        }
    }
    Artisan::call('migrate:fresh --seed');
    return to_route('products.index');
})->name('createdummyproducts');
