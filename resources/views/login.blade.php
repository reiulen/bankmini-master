<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Login | Bank Mini SMKN 1 Ciamis</title>
  <link rel="icon" type="image/png" href="assets/gambar/logo.png" />

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/fontawesome-free/css/all.min.css') }}">
  <!-- icheck bootstrap -->
  <link rel="stylesheet" href="{{ asset('assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css') }}">
  <!-- Theme style -->
  <link rel="stylesheet" href="{{ asset('assets/dist/css/adminlte.min.css') }}">
  <!-- Custom CSS -->
  <link rel="stylesheet" href="{{ asset('assets/dist/css/custom.css') }}">

</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="card mb-3" style="margin-top: -30px">
        <div class="card-body">
            <ul class="nav nav-pills justify-content-center">
                <li class="nav-item">
                  <a class="nav-link btn-siswa active" href="#" role="button">Siswa</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link btn-pengelola" href="#" role="button">Pengelola</a>
                </li>
            </ul>
        </div>
    </div>
  <!-- /.login-logo -->
  <div class="card card-outline card-primary">
    <div class="card-header text-center">
        <p class="text-center"><img src="{{ asset('assets/gambar/logo.png') }}" alt="Logo SMK" style="height: 70px;" /></p>
      <a href="{{ route('login.index') }}" class="h1"><b>Bank</b>Mini</a>
    </div>
    <div class="card-body" id="siswa">
        @if (session('type') == 'siswa')
        <div class="alert bg-blue" role="alert">
          {{ session('pesan') }}
          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        @endif
        <form action="{{ route('login.proses') }}" method="POST">
          @csrf
          <input type="hidden" name="siswa" value="hai"/>
          <div class="input-group mb-3">
              {{ Request()->expectsJson() }}
            <input type="text" name="nis" class="form-control" placeholder="NIS" required>
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="text" name="tgl_lahir" class="form-control" placeholder="Tanggal Lahir" required>
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-calendar"></span>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-8">
              <div class="icheck-primary">
                <input type="checkbox" name="remember" id="remember">
                <label for="remember">
                  Ingat Saya
                </label>
              </div>
            </div>
            <!-- /.col -->
            <div class="col-4">
              <button type="submit" class="btn btn-primary btn-block bg-blue btn-masuk">Masuk</button>
            </div>
            <!-- /.col -->
          </div>
        </form>
      </div>
    <div class="card-body" id="pengelola" style="display: none;">
      @if (session('type') == 'pengelola')
      <div class="alert bg-blue" role="alert">
        {{ session('pesan') }}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      @endif
      <form action="{{ route('login.proses') }}" method="POST">
        @csrf
        <input type="hidden" name="pengelola" value="hai"/>
        <div class="input-group mb-3">
          <input type="email" name="email" class="form-control" placeholder="Email" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-envelope"></span>
            </div>
          </div>
        </div>
        <div class="input-group mb-3">
          <input type="password" name="password" class="form-control" placeholder="Kata sandi" required>
          <div class="input-group-append">
            <div class="input-group-text">
              <span class="fas fa-lock"></span>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-8">
            <div class="icheck-primary">
              <input type="checkbox" name="remember" id="remember">
              <label for="remember">
                Ingat Saya
              </label>
            </div>
          </div>
          <!-- /.col -->
          <div class="col-4">
            <button type="submit" class="btn btn-primary btn-block bg-blue btn-masuk">Masuk</button>
          </div>
          <!-- /.col -->
        </div>
      </form>

      <p class="mb-1">
        <a href="">Lupa kata sandi</a>
      </p>
    </div>
    <!-- /.card-body -->
  </div>
  <!-- /.card -->
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="{{ asset('assets/plugins/jquery/jquery.min.js') }}"></script>
<!-- Bootstrap 4 -->
<script src="{{ asset('assets/plugins/bootstrap/js/bootstrap.bundle.min.js') }}"></script>
<!-- AdminLTE App -->
<script src="{{ asset('assets/dist/js/adminlte.min.js') }}"></script>
<script src="{{ asset('assets/plugins/inputmask/inputmask.js') }}"></script>
<script src="{{ asset('assets/dist/js/pages/login/login.js') }}"></script>
@if (session('type') == 'pengelola')
    <script>
        domStrings.btnPengelola.addClass('active');
        domStrings.btnSiswa.removeClass('active');
        domStrings.cSiswa.slideUp();
        domStrings.cPengelola.slideDown();
    </script>
@endif
</body>
</html>
