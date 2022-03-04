<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title> {{ $title }} | Bank Mini SMKN 1 Ciamis</title>
    <link rel="icon" type="image/png" href="{{ asset('assets/gambar/logo.png') }}" />

    <!-- Font Google -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet" />
    <!-- Font Awesome -->
    <link rel="stylesheet" href="{{ asset('assets/plugins/fontawesome-free/css/all.min.css') }}" />
    @stack('css')
    <!-- Theme style -->
    <link rel="stylesheet" href="{{ asset('assets/dist/css/adminlte.min.css') }}" />
    <!-- SweetAlert2 -->
    <link rel="stylesheet" href="{{ asset('assets/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css') }}">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="{{ asset('assets/dist/css/custom.css') }}" />
    <script src="https://kit.fontawesome.com/d04c18bbdb.js" crossorigin="anonymous"></script>
    <meta name="csrf-field" content="{{ csrf_token() }}" />

  </head>
  <body class="sidebar-mini layout-fixed layout-navbar-fixed">

    <div class="wrapper">
        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center">
          <img class="animation__shake" src="{{ asset('assets/gambar/logo.png') }}" alt="AdminLTELogo" height="60" width="60" />
          <h1>{{ __('Bank Mini') }}</h1>
        </div>
        <x-navbar></x-navbar>
        <x-sidebar></x-sidebar>
        <div class="content-wrapper">
            {{ $slot }}
        </div>
    </div>

    <footer class="main-footer" style="font-size: 14px;">
        Copyright &copy;community {{ date('Y') }}
      </footer>
    </div>
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="{{ asset('assets/plugins/jquery/jquery.min.js') }}"></script>
    <!-- Bootstrap 4 -->
    <script src="{{ asset('assets/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
    @stack('script')
    <!-- SweetAlert2 -->
    <script src="{{ asset('assets/plugins/sweetalert2/sweetalert2.min.js') }}"></script>
    <!-- AdminLTE App -->
    <script src="{{ asset('assets/dist/js/adminlte.js') }}"></script>
    {{-- <script>
        const navlink = $('.nav-link');
        navlink.each(function(){
            const href = $(this).attr('href');
            if(href == window.location){
                $(this).addClass('active');
            }
        });
    </script> --}}
    @if (session('pesan'))
        <script>
          Swal.fire(
          '{{ session('pesan') }}',
          '{{ session('pesan1') }}',
          'success'
          );
        </script>
    @endif
  </body>
</html>
