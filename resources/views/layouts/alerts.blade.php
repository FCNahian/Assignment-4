@if (Session::has('success'))
    @foreach (Session::get('success') as $message)
        <div class="m-1 alert alert-success alert-dismissible" role="alert">
            <p class="mb-0"><span class="badge rounded-pill bg-success">Success</span> {{ $message }}</p>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endforeach
@endif

@if (Session::has('error'))
    @foreach (Session::get('error') as $message)
        <div class="m-1 alert alert-danger alert-dismissible" role="alert">
            <p class="mb-0"><span class="badge rounded-pill bg-danger">Error</span> {{ $message }}</p>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endforeach
@endif

@if (Session::has('message'))
    @foreach (Session::get('message') as $message)
        <div class="m-1 alert alert-primary alert-dismissible" role="alert">
            <p class="mb-0"><span class="badge rounded-pill bg-primary">Message</span> {{ $message }}</p>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    @endforeach
@endif
