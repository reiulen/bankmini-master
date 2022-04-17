<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title></title>
    <link rel="icon" type="image/png" href="{{ asset('assets/gambar/logo.png') }}" />
</head>
<body>
    <style>
        *{
            font-family: 'Arial', sans-serif;
        }
        .header{
            padding: 0;
            margin: 0;
            line-height: 2px;
        }

        .header img{
            height: 85px;
            display: block;
            position: absolute;
            top: 10;
            left: 40;
        }

    </style>
        @php
            $setting = \App\Models\Setting::first();
        @endphp
        <div class="header">
            <img src="{{ asset('/assets/gambar/logo-jabar.jpg') }}" />
            {!! $setting->header !!}
        </div>
</body>
</html>
