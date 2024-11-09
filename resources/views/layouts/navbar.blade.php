<header>
    <nav class="navbar navbar-expand-md fixed-top navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand text-info" href="{{ route('home') }}">Product Management System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link {{ $breadcrumb['current']['name'] == 'Products' ? 'active' : '' }}" aria-current="page"
                            href="{{ route('products.index') }}">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link {{ $breadcrumb['current']['name'] == 'Create New Product' ? 'active' : '' }}"
                            href="{{ route('products.create') }}">Add Product</a>
                    </li>
                </ul>
                <a href="{{ route('createdummyproducts') }}" class="btn btn-outline-info mx-2"
                    onclick="return confirm('Are you sure you want to create dummy products? This will delete all the existing products and create 100 new ones.')">Create
                    Dummy Product</a>
                <form method="GET" action="{{ route('products.index') }}" class="d-flex">
                    <input type="search" class="form-control me-2" placeholder="Search" aria-label="Search" aria-describedby="navbar_search"
                        value="" name="search">
                    <button class="btn btn-outline-info" type="submit" id="navbar_search">Search</button>
                </form>
            </div>
        </div>
    </nav>
</header>
