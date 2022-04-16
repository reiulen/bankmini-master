<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Cetak Kwitansi Tabungan {{ $siswa->nama }}</title>
    <style media="screen">
        body {
            font-family: 'Arial', sans-serif;
            font-weight: 400;
            font-style: italic;
        }

        table {
            border-collapse: collapse;
            border: 1px dashed black;
            margin-bottom: 20px;
            width: 95%;
        }

        td {
            padding: 8px 30px;
            font-size: 13px;
        }

        .jumlah td span{
            text-align: center !important;
            align-items: center !important;
        }

        .kotak5 {
            font-size: 14px;
            border: 1px solid;
            padding: 10px 15px;
            width: 200px;
            height: 30px;
            -ms-transform: skewX(-20deg);
            -webkit-transform: skewX(-20deg);
            transform: skewX(-20deg);
        }

        .page-break {
            page-break-after: always;
        }

    </style>
</head>
<body>
    @php
        $no = 1;
    @endphp
        @foreach ($tabungan as $row)
        <table>
            <tr>
                <td>Nomor : {{ $row->kode }}</td>
            </tr>
            <tr>
                <td>Sudah Terima Dari &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : {{ $row->siswa->nama }}</td>
                <td>Kelas : {{ $row->kelas->kelas . ' ' . $row->siswa->jurusan->nama }}</td>
            </tr>
            <tr>
                <td>Banyaknya Uang &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: &nbsp;<span class="kotak5">{{ ucwords(penyebut($row->nominal)) }} Rupiah</span></td>
            </tr>
            <tr>
                <td>Untuk Pembayaran &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : {{ $row->tipe == '1' ? 'Debit' : 'Kredit' }} Tabungan</td>
            </tr>
            <tr>
                <td style="font-size: 15px;">Jumlah &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="kotak5">{{ format_rupiah($row->nominal) }}</span></td>
                <td>
                    Ciamis, {{ $row->created_at->format('d-m-Y') }}<br/><br/>
                    <span style="font-size: 11px;">Bendahara Komite</span>
                    <br/><br/><br/><br/><br/>
                    Wawan Setiawan
                </td>
            </tr>
        </table>
        @if($no++ % 3 == 0)
            <div class="page-break"></div>
        @endif
        @endforeach

</body>
</html>
