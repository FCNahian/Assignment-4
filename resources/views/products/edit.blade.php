@extends('layouts.app')

@section('content')
    <div class="rounded border p-4 shadow">
        <h4 class="rounded mb-4 p-2 text-center bg-dark text-white">Edit Product Informations</h4>
        <form action="{{ route('products.update', $product->id) }}" class="needs-validation" novalidate action="{{ route('products.store') }}" method="POST"
            enctype="multipart/form-data">
            @method('PUT')
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" placeholder="Product ID" name="product_id"
                            value="{{ old('product_id', $product->product_id) }}" required autofocus>
                        <label class="form-label text-secondary">Product ID <span class="text-danger">*</span></label>
                        @error('product_id')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" placeholder="Product Name" name="name" value="{{ old('name', $product->name) }}"
                            required>
                        <label class="form-label text-secondary">Product Name <span class="text-danger">*</span></label>
                        @error('name')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="number" step="0.01" class="form-control" placeholder="Price" name="price"
                            value="{{ old('price', $product->price) }}" required>
                        <label class="form-label text-secondary">Price <span class="text-danger">*</span></label>
                        @error('price')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="number" step="1" class="form-control" placeholder="Stock" name="stock"
                            value="{{ old('stock', $product->stock) }}">
                        <label class="form-label text-secondary">Stock</label>
                        @error('stock')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <textarea class="form-control" placeholder="Description" name="description" style="height: 80px;">{{ old('description', $product->description) }}</textarea>
                        @error('description')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror <label class="form-label text-secondary">Description</label>
                    </div>
                </div>
                <div class="col-md-4">
                    <label class="form-label text-secondary">Product Image</label>
                    <input type="file" accept="image/*" class="form-control form-control-sm {{ $errors->has('image') ? 'is-invalid' : '' }}"
                        placeholder="Upload Image" name="image" onchange="imagePreview(this)">
                    @error('image')
                        <span class="text-danger">{{ $message }}</span>
                    @enderror
                    @if ($product->image)
                        <div class="form-check">
                            <input class="form-check-input is-invalid" type="checkbox" value="1" name="remove_image">
                            <label class="form-check-label text-danger">Delete Image</label>
                        </div>
                    @endif
                </div>
                <div class="col-md-2 text-center">
                    <img src="{{ $product->image ? asset($product->image) : asset('product/default-product.png') }}" alt="Profile Image"
                        class="img-thumbnail mt-2" id="image_preview" style="height: 100px; width: 100px; object-fit: cover;">
                </div>
                <div class="col-md-12 text-end">
                    <a href="{{ route('products.show', $product->id) }}" class="btn btn-info mt-3"><i class="fa fa-arrow-left"></i> Back To Product</a>
                    <button type="submit" class="btn btn-dark mt-3">UPDATE</button>
                </div>
            </div>
        </form>
    </div>
@endsection
