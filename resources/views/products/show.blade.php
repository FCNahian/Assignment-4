@extends('layouts.app')

@section('content')
    <div class="rounded border p-4 shadow">
        <h4 class="rounded mb-4 p-2 text-center bg-dark text-white">Product Details</h4>
        <div class="row">
            <div class="col-md-8 mb-2 text-secondary">
                <p><strong>Product ID:</strong> {{ $product->product_id }}</p>
                <p><strong>Name:</strong> {{ $product->name }}</p>
                <p><strong>Description:</strong> {{ $product->description }}</p>
                <p><strong>Price:</strong> {{ number_format($product->price, 2, '.', '') }}</p>
                <p><strong>Stock:</strong> {{ $product->stock }}</p>
                <p><strong>Created:</strong> {{ date('d/m/Y', strtotime($product->created_at)) }}, <strong>Last Updated:</strong>
                    {{ date('d/m/Y', strtotime($product->updated_at)) }}</p>
                <div>
                    <a title="Edit Product Informations" href="{{ route('products.edit', $product->id) }}" class="btn btn-primary"><i class="fa fa-edit"></i>
                        Edit</a>
                    <form action="{{ route('products.destroy', $product->id) }}" method="POST" class="d-inline">
                        @csrf
                        @method('DELETE')
                        <button title="Delete Product" type="submit" class="btn btn-danger"
                            onclick="return confirm('Are you sure you want to delete this product?')"><i class="fa fa-trash"></i> Delete</button>
                    </form>
                </div>
            </div>
            <div class="col-md-4 mb-2 text-center">
                <img src="{{ $product->image ? asset($product->image) : asset('product/default-product.png') }}" alt="Product Image" class="img-thumbnail"
                    style="height: 180px; width: 180px; object-fit: cover;">
            </div>
        </div>
        <a href="{{ route('products.index') }}" class="text-white fw-bold">
            <div class="m-0 mt-5 rounded p-2 bg-dark text-center">
                Back To Products
            </div>
        </a>
    @endsection
