<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class ProductController extends Controller
{
    public function index(Request $request)
    {
        $query = Product::query();

        $search = '';
        $sort = 'id';
        $direction = 'desc';

        if ($request->search) {
            $search = $request->search;
            $query->where('product_id', 'like', '%' . $search . '%')
                ->orWhere('description', 'like', '%' . $search . '%');
        }

        if ($request->has('sort')) {
            $sort = $request->get('sort');
            $direction = $request->get('direction', 'asc');
        }

        $query->orderBy($sort, $direction);

        $products = $query->paginate(10);

        $breadcrumb = [
            'root' => [
                'url' => route('home'),
                'name' => 'Home',
            ],
            'current' => [
                'name' => 'Products',
            ],
        ];

        return view('products.index', compact('products', 'search', 'sort', 'direction', 'breadcrumb'));
    }

    public function create()
    {
        $breadcrumb = [
            'root' => [
                'url' => route('home'),
                'name' => 'Home',
            ],
            'middle' => [
                'url' => route('products.index'),
                'name' => 'Products',
            ],
            'current' => [
                'name' => 'Create New Product',
            ],
        ];

        return view('products.create', compact('breadcrumb'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'product_id' => 'required|string|max:255|unique:products',
            'name' => 'required|string|max:255',
            'price' => 'required|numeric|min:0',
            'description' => 'nullable|string|max:1000',
            'stock' => 'nullable|integer|min:0',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imageName = time() . '.' . $image->getClientOriginalExtension();
            $image->move(public_path('product'), $imageName);
            $imagePath = 'product/' . $imageName;
        } else {
            $imagePath = null;
        }

        $product = Product::create([
            'product_id' => $request->product_id,
            'name' => $request->name,
            'description' => $request->description,
            'price' => $request->price,
            'stock' => $request->stock,
            'image' => $imagePath,
        ]);

        return to_route('products.show', $product->id)->with('success', ['Product created successfully.']);
    }

    public function show($id)
    {
        if (!Product::where('id', $id)->exists()) {
            return redirect()->route('products.index')->with('error', ['Product not found.']);
        }

        $product = Product::find($id);

        $breadcrumb = [
            'root' => [
                'url' => route('home'),
                'name' => 'Home',
            ],
            'middle' => [
                'url' => route('products.index'),
                'name' => 'Products',
            ],
            'current' => [
                'name' => 'Product Details',
            ],
        ];
        return view('products.show', compact('product', 'breadcrumb'));
    }

    public function edit($id)
    {
        if (!Product::where('id', $id)->exists()) {
            return redirect()->route('products.index')->with('error', ['Product not found.']);
        }

        $product = Product::find($id);

        $breadcrumb = [
            'root' => [
                'url' => route('home'),
                'name' => 'Home',
            ],
            'middle' => [
                'url' => route('products.index'),
                'name' => 'Products',
            ],
            'current' => [
                'name' => 'Create New Product',
            ],
        ];

        return view('products.edit', compact('product', 'breadcrumb'));
    }

    public function update(Request $request, $id)
    {
        if (!Product::where('id', $id)->exists()) {
            return redirect()->route('products.index')->with('error', ['Product not found.']);
        }

        $request->validate([
            'product_id' => 'required|unique:products,product_id,' . $id,
            'name' => 'required|string|max:255',
            'price' => 'required|numeric|min:0',
            'description' => 'nullable|string|max:1000',
            'stock' => 'nullable|integer|min:0',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'remove_image' => 'nullable',
        ]);

        $product = Product::find($id);

        if ($request->remove_image != '1') {
            if ($request->hasFile('image')) {
                if ($product->image && File::exists(public_path($product->image))) {
                    File::delete(public_path($product->image));
                }

                $image = $request->file('image');
                $imageName = time() . '.' . $image->getClientOriginalExtension();
                $image->move(public_path('product'), $imageName);
                $imagePath = 'product/' . $imageName;
            } else {
                $imagePath = $product->image;
            }
        } else {
            File::delete(public_path($product->image));
            $imagePath = null;
        }

        $product->update([
            'product_id' => $request->product_id,
            'name' => $request->name,
            'description' => $request->description,
            'price' => $request->price,
            'stock' => $request->stock,
            'image' => $imagePath,
        ]);

        return to_route('products.show', $id)->with('success', ['Product updated successfully.']);
    }

    public function destroy($id)
    {
        if (!Product::where('id', $id)->exists()) {
            return redirect()->route('products.index')->with('error', ['Product not found.']);
        }

        $product = Product::find($id);

        $product->delete();

        return to_route('products.index')->with('success', ['Product deleted successfully.']);
    }
}
