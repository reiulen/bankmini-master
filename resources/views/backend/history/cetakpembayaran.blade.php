<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            History Pembayaran Siswa
                @if($kelas)
                    {{ $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas }}
                @endif
        </title>
        <style>
            *{
                font-family: 'Arial', sans-serif;
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
        <div style="text-align:center">
            <h4>
                History Pembayaran Siswa
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
                    <th>Pembayaran</th>
                    <th>Petugas</th>
                    <th>Keterangan</th>
                    <th>Nominal</th>
                    <th>Sisa Tagihan</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data as $row)
                <tr>
                    <td>{{ tanggal($row->created_at) }}</td>
                    <td>{{ $row->siswa->nis }}</td>
                    <td>{{ $row->siswa->nama }}</td>
                    <td>{{ $row->danaawal->dana }}</td>
                    <td>{{ $row->petugas->nama }}</td>
                    <td>{{ $row->keterangan }}</td>
                    <td>{{ format_rupiah($row->nominal) }}</td>
                    <td>{{ format_rupiah($row->sisa_tagihan) }}</td>
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
