@extends('layouts.app')

@section('content')
    <div class="rounded border p-4 shadow">
        <h4 class="rounded mb-4 p-2 text-center bg-dark text-white">Create Product</h4>
        <form action="{{ route('products.store') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control form-control-sm {{ $errors->has('product_id') ? 'is-invalid' : '' }}"
                            placeholder="Product ID" name="product_id" value="{{ old('product_id') }}" required autofocus>
                        <label class="form-label text-secondary">Product ID <span class="text-danger">*</span></label>
                        @error('product_id')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control form-control-sm {{ $errors->has('name') ? 'is-invalid' : '' }}"
                            placeholder="Product Name" name="name" value="{{ old('name') }}" required>
                        <label class="form-label text-secondary">Product Name <span class="text-danger">*</span></label>
                        @error('name')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="number" step="0.01" class="form-control form-control-sm {{ $errors->has('price') ? 'is-invalid' : '' }}"
                            placeholder="Price" name="price" value="{{ old('price') }}" required>
                        <label class="form-label text-secondary">Price <span class="text-danger">*</span></label>
                        @error('price')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <input type="number" step="1" class="form-control form-control-sm {{ $errors->has('stock') ? 'is-invalid' : '' }}"
                            placeholder="Stock" name="stock" value="{{ old('stock') }}">
                        <label class="form-label text-secondary">Stock</label>
                        @error('stock')
                            <span class="text-danger">{{ $message }}</span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-floating mb-3">
                        <textarea class="form-control form-control-sm {{ $errors->has('description') ? 'is-invalid' : '' }}" placeholder="Description" name="description"
                            style="height: 100px;">{{ old('description') }}</textarea>
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
                </div>
                <div class="col-md-2 text-center">
                    <img src="{{ asset('product/default-product.png') }}" alt="Profile Image" class="img-thumbnail mt-2" id="image_preview"
                        style="height: 100px; width: 100px; object-fit: cover;">
                </div>
                <div class="col-md-12 text-end">
                    <button type="submit" class="btn btn-dark mt-3 float-end">CREATE</button>
                </div>
            </div>
        </form>
    </div>
@endsection
