<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Management System | {{ $breadcrumb['current']['name'] }}</title>

    <link rel="shortcut icon" href="{{ asset('favicon.png') }}">
    <link rel="icon" type="image/png" sizes="192x192" href="{{ asset('favicon.png') }}">
    <link rel="apple-touch-icon" sizes="180x180" href="{{ asset('favicon.png') }}">

    @include('layouts.assets')
</head>

<body class="">
    @include('layouts.navbar')

    <main class="flex-shrink-0" style="margin-top: 56px; margin-bottom: 72px">
        @include('layouts.breadcrumb')
        <div class="container">

            @include('layouts.alerts')

            @yield('content')
        </div>
    </main>

    @include('layouts.footer')
</body>

</html>
