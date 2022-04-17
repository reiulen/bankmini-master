<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            History Tabungan Siswa
                @if($kelas)
                    {{ $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas }}
                @endif
        </title>
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

            #table {
                border-collapse: collapse;
                width: 100%;
                font-size: 11px
            }

            #table td, #table th {
                border: 1px solid #ddd;
                padding: 3px;
            }

            #table tr:nth-child(even){background-color: #f2f2f2;}

            #table tr:hover {background-color: #ddd;}

            #table th {
                padding-top: 10px;
                padding-bottom: 10px;
                text-align: left;
                background-color: #6091ba;
                color: white;
            }

            .tfoot th{
                border: none !important
            }
        </style>
    </head>
    <body>
        @php
        $setting = \App\Models\Setting::first();
        @endphp
        <div class="header">
            <img src="{{ asset('/assets/gambar/logo-jabar.jpg') }}" />
            {!! $setting->header !!}
        </div>
        <div style="text-align:center">
            <h4>
                History Tabungan Siswa
                @if($kelas)
                    {{ $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas }}
                @endif
            </h4>
        </div>
        <table id="table">
            <thead>
                <tr>
                    <th>Tanggal</th>
                    <th>NIS</th>
                    <th>Nama</th>
                    <th>Petugas</th>
                    <th>Tipe</th>
                    <th>Nominal</th>
                    <th>Saldo</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data as $row)
                <tr>
                    <td>{{ tanggal($row->created_at) }}</td>
                    <td scope="row">{{ $row->siswa->nis }}</td>
                    <td>{{ $row->siswa->nama }}</td>
                    <td>{{ $row->petugas->nama }}</td>
                    <td>
                        @if($row->tipe == 1)
                            Debit
                        @else
                        Kredit
                        @endif
                    </td>
                    <td>{{ format_rupiah($row->nominal) }}</td>
                    <td>{{ format_rupiah($row->sisa_saldo) }}</td>
                </tr>
                @endforeach
                @if($data->count() == 0)
                <tr>
                    <td colspan="7" style="text-align: center;">Tidak ada data</td>
                </tr>
                @endif
            </tbody>
        </table>
    </body>
</html>
