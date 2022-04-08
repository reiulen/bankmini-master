<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            Laporan Tungakan Siswa
            @if($jurusan)
                {{ $jurusan->jurusan }}
            @endif
            @if($kelas)
                {{ $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas }}
            @endif
            @if($tahunakademik)
                TA {{ tahun($tahunakademik->awal). ' - ' .tahun($tahunakademik->akhir) }}
            @endif
        </title>
        <style>
            *{
                font-family: 'Arial', sans-serif;
            }
            #table {
                border-collapse: collapse;
                width: 100%;
            }

            #table td, #table th {
                border: 1px solid #ddd;
                padding: 8px;
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
            <h3>
                Laporan Tungakan Siswa
                @if($jurusan)
                    {{ $jurusan->jurusan }}
                @endif
                @if($kelas)
                    {{ $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas }}
                @endif
                @if($tahunakademik)
                    TA {{ tahun($tahunakademik->awal). ' - ' .tahun($tahunakademik->akhir) }}
                @endif
            </h3>
        </div>
        <table id="table">
            <thead>
                <tr>
                    <th>NIS</th>
                    <th>Nama</th>
                    @foreach ($dana as $row)
                    <th>{{ $row->dana }}</th>
                    @endforeach
                </tr>
            </thead>
            <tbody>
                @foreach ($siswa as $rows)
                <tr>
                    <td>{{ $rows->nis }}</td>
                    <td>{{ $rows->nama }}</td>
                    @foreach ($dana as $row)
                    @php
                    $tagihan = $pembayaran->where('dana_awal_id', $row->id)
                                ->where('siswa_id', $rows->id)
                                ->sum('nominal');
                    @endphp
                    <td>{{ format_rupiah(preg_replace("/[^0-9]/", "", $tagihan - $row->nominal)) }}</td>
                    @endforeach
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    @php
                        $jumlah = $dana->sum('nominal') * $siswa->count() - $pembayaran->sum('nominal');
                    @endphp
                    <th colspan="{{ $dana->count() + 1 }}" style="text-align: right;">Sisa Tunggakan :</th>
                    <th class="total-saldo">
                        {{ format_rupiah($jumlah) }}
                    </th>
                </tr>
            </tfoot>
        </table>
    </body>
</html>
