@extends('layouts.app')

@section('content')
    <div class="rounded border p-4 shadow">
        <h4 class="rounded mb-4 p-2 text-center bg-dark text-white">Products</h4>
        <div class="row">
            <div class="col-md-4 mb-2">
                <form method="GET" action="{{ route('products.index') }}">
                    <div class="input-group mb-3">
                        <input type="search" class="form-control form-control-sm" placeholder="Search by Product ID or Description"
                            aria-label="Search by Product ID or Description" aria-describedby="search_button" name="search" value="{{ $search }}">
                        <input hidden type="text" name="sort" value="{{ $sort }}">
                        <input hidden type="text" name="direction" value="{{ $direction }}">
                        <button class="btn btn-sm btn-dark" type="submit" id="search_button">Search</button>
                    </div>
                </form>
            </div>
            <div class="col-md-6 mb-2">
                <a href="{{ route('products.index', ['sort' => 'name', 'direction' => $sort == 'name' && $direction == 'asc' ? 'desc' : 'asc', 'search' => $search]) }}"
                    class="btn btn-sm btn-dark">
                    Sort by Name
                </a>
                <a href="{{ route('products.index', ['sort' => 'price', 'direction' => $sort == 'price' && $direction == 'asc' ? 'desc' : 'asc', 'search' => $search]) }}"
                    class="btn btn-sm btn-dark">Sort by Price
                </a>
                <a href="{{ route('products.index') }}" class="btn btn-sm btn-dark">
                    <i class="fa fa-refresh"></i> Reset
                </a>
            </div>
            <div class="col-md-2 mb-2 text-end">
                <a href="{{ route('products.create') }}" class="btn btn-sm btn-dark"><i class="fa fa-plus"></i> Add New Product</a>
            </div>
        </div>

        @if (count($products) > 0)
            <div class="table-responsive">
                <table class="table table-hover table-bordered table-vcenter">
                    <thead class="table-primary">
                        <tr>
                            <th>Product ID</th>
                            <th>
                                Name
                                @if ($sort == 'name')
                                    @if ($direction == 'asc')
                                        <span class="float-end"><i class="fa fa-arrow-up"></i></span>
                                    @else
                                        <span class="float-end"><i class="fa fa-arrow-down"></i></span>
                                    @endif
                                @endif
                            </th>
                            <th style="max-width: 300px">Description</th>
                            <th>
                                @if ($sort == 'price')
                                    @if ($direction == 'asc')
                                        <span><i class="fa fa-arrow-up"></i></span>
                                    @else
                                        <span><i class="fa fa-arrow-down"></i></span>
                                    @endif
                                @endif
                                <span class="float-end">Price</span>
                            </th>
                            <th class="text-end">Stock</th>
                            <th class="text-center" style="min-width: 120px;">Image</th>
                            <th class="text-center" style="min-width: 150px;">Actions</th>
                        </tr>
                    </thead>
                    <tbody class="text-secondary">
                        @foreach ($products as $product)
                            <tr>
                                <td>{{ $product->product_id }}</td>
                                <td class="fw-bold">{{ $product->name }}</td>
                                <td style="max-width: 300px">{{ $product->description }}</td>
                                <td class="text-end text-primary">{{ number_format($product->price, 2, '.', '') }}</td>
                                <td class="text-end text-info">{{ $product->stock }}</td>
                                <td class="text-center" style="min-width: 120px;"><img
                                        src="{{ $product->image ? asset($product->image) : asset('product/default-product.png') }}" alt="Product Image"
                                        class="img-thumbnail" style="width: 100px; height: 100px; object-fit: cover;"></td>
                                <td class="text-center" style="min-width: 150px;">
                                    <a title="View Product Details" href="{{ route('products.show', $product->id) }}" class="btn btn-sm btn-info"><i
                                            class="fa fa-eye"></i></a>
                                    <a title="Edit Product Informations" href="{{ route('products.edit', $product->id) }}"
                                        class="btn btn-sm btn-primary"><i class="fa fa-edit"></i></a>
                                    <form action="{{ route('products.destroy', $product->id) }}" method="POST" style="display:inline;">
                                        @csrf
                                        @method('DELETE')
                                        <button title="Delete Product" type="submit" class="btn btn-sm btn-danger"
                                            onclick="return confirm('Are you sure you want to delete this product?')"><i class="fa fa-trash"></i></button>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
                {{ $products->withQueryString()->links() }}
            </div>
        @else
            <div class="bg-dark text-white rounded p-2 text-center">No products found.</div>
        @endif
    </div>
@endsection
