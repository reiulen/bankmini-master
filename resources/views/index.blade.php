<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" type="image/png" href="{{ asset('assets/gambar/logo.png') }}" />

    <!-- Font Google -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700;800&display=swap" rel="stylesheet" />

    <!-- Plugin CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    <link href="https://cdn.lineicons.com/2.0/LineIcons.css" rel="stylesheet" />

    <!-- Front Css -->
    <link rel="stylesheet" href="{{ asset('assets/dist/css/front.css') }}" />

    <title>Bank Mini SMKN 1 Ciamis</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#"><img src="{{ asset('assets/gambar/logo-motto.png') }}" class="d-inline-block align-top logo-smk" /></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" href="#">Beranda</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Tentang</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">FAQ</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">Kontak</a>
            </li>
          </ul>
          <a href="{{ route('login.index') }}" class="btn btn-primary px-4 py-2 btn-masuk bg-blue">Masuk</a>
        </div>
      </div>
    </nav>

    <section class="main-content banner">
      <div class="container">
        <div class="row">
          <div class="col-md-12 rounded-3">
            <img src="{{ asset('assets/gambar/banner.jpg') }}" class="d-block w-70" style="border-radius: 15px" />
          </div>
        </div>
      </div>
    </section>

    <footer class="mt-100 p-5">
      <div class="container">
        <div class="row">
          <div class="col-md-1 d-none d-md-block">
            <img src="{{ asset('assets/gambar/logo.png') }}" class="img-fluid" />
          </div>
          <div class="col-md-5">
            <p class="footer-nama">Bank Mini SMK Negeri 1 Ciamis</p>
            <hr />
            <p class="footer-kontak">
              <b>Kontak Kami</b><br />
              Call Center : (0265) 771204<br />
              Email : surat@smkn1cms.net
            </p>
            <hr />
            <p class="footer-sosmed">
              <a href="#" class="text-decoration-none text-white"> <i class="lni lni-instagram"></i></a>
              &nbsp;
              <a href="#" class="text-decoration-none text-white"><i class="lni lni-facebook-original"></i></a>
              &nbsp;
              <a href="#" class="text-decoration-none text-white"><i class="lni lni-twitter-original"></i></a>
            </p>
          </div>
          <div class="col-md-4 ms-auto d-md-block d-none">
            <ul style="list-style: none">
              <a href="/" class="text-white"><li>Beranda</li></a>
              <a href="" class="text-white"><li class="mt-3">Tentang Kami</li></a>
              <a href="" class="text-white"><li class="mt-3">Hubungi Kami</li></a>
              <a href="" class="text-white"><li class="mt-3">FAQ</li></a>
              <a href="{{ route('login.index') }}" class="text-white"><li class="mt-3">Masuk - Login</li></a>
            </ul>
          </div>
        </div>
      </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script>
      window.addEventListener('scroll', function () {
        var header = document.querySelector('nav');
        header.classList.toggle('sticky', window.scrollY > 0);
      });
    </script>
  </body>
</html>
