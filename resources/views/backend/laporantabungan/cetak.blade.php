<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>
            Laporan Tabungan Siswa
                @if($jurusan)
                    {{ $jurusan->jurusan }}
                @endif
                @if($kelas)
                    {{ $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas }}
                @endif
                @if($tahunakademik)
                TA.   {{ tahun($tahunakademik->awal). ' - ' .tahun($tahunakademik->akhir) }}
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
            <h3>
                Laporan Tabungan Siswa
                @if($jurusan)
                    {{ $jurusan->jurusan }}
                @endif
                @if($kelas)
                    {{ $kelas->kelas . ' ' . $kelas->jurusan->nama .' '. $kelas->urut_kelas }}
                @endif
                @if($tahunakademik)
                TA.   {{ tahun($tahunakademik->awal). ' - ' .tahun($tahunakademik->akhir) }}
                @endif
            </h3>
        </div>
        <table id="table">
            <thead>
                <tr>
                    <th>NIS</th>
                    <th>Nama</th>
                    <th>Kelas</th>
                    <th>Debit</th>
                    <th>Kredit</th>
                    <th>Saldo</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($data as $row)
                <tr>
                    <td scope="row">{{ $row->nis }}</td>
                    <td>{{ $row->nama }}</td>
                    <td>{{ $row->kelas->kelas . ' ' . $row->jurusan->nama . ' ' . $row->kelas->urut_kelas }}</td>
                    <td class="debit">
                        @php
                        $debit = $tabungan->where('siswa_id', $row->id)->where('tipe','1')->sum('nominal');
                        @endphp
                        {{ format_rupiah($debit) }}
                    </td>
                    <td class="kredit">
                        @php
                        $kredit = $tabungan->where('siswa_id', $row->id)->where('tipe','2')->sum('nominal');
                        @endphp
                        {{ format_rupiah($kredit) }}
                    </td>
                    <td class="saldo">
                        @php
                        $saldo = $debit - $kredit;
                        @endphp
                        {{  format_rupiah($saldo) }}
                    </td>
                </tr>
                @endforeach
            </tbody>
            <tfoot>
                <tr>
                    @php
                        $tabungandata = $tabungan->whereIn('siswa_id', $data->pluck('id')->toArray());
                        $totaldebit = $tabungandata->where('tipe', '1')->sum('nominal');
                        $totalkredit = $tabungandata->where('tipe', '2')->sum('nominal');
                        $sisasaldo = $totaldebit - $totalkredit;
                    @endphp
                    <th colspan="3" style="text-align: center;">TOTAL</th>
                    <th class="totaldebit">
                        {{ format_rupiah($totaldebit) }}
                    </th>
                    <th class="totalkredit">
                        {{ format_rupiah($totalkredit) }}
                    </th>
                    <th class="total-saldo">
                        {{ format_rupiah($sisasaldo) }}
                    </th>
                </tr>
            </tfoot>
        </table>
        {{-- <script type="text/javascript">
            const domStrings = {
                saldo: document.querySelectorAll('.saldo'),
                thTotalSaldo: document.querySelector('.total-saldo'),
                debit: document.querySelectorAll('.debit'),
                kredit: document.querySelectorAll('.kredit'),
                THdebit: document.querySelector('.totaldebit'),
                THkredit: document.querySelector('.totalkredit'),
            }

            let totalSaldo = [];
            domStrings.saldo.forEach(function (i, v) {
                totalSaldo.push(parseInt(replaceString(i.innerText)));
            });

            let total = totalSaldo.reduce((val, nilaiSekarang)=>{
                return val + nilaiSekarang
            },0)
            domStrings.thTotalSaldo.innerText = "Rp. " + formatRupiah(`${total}`);


            //debit
            let debit = [];
            domStrings.debit.forEach(function (i, v) {
                debit.push(parseInt(replaceString(i.innerText)));
            });

            let totalDebit = debit.reduce((val, nilaiSekarang)=>{
                return val + nilaiSekarang
            },0)

            domStrings.THdebit.innerText = "Rp. " + formatRupiah(`${totalDebit}`);


             //kredit
            let kredit = [];
            domStrings.kredit.forEach(function (i, v) {
                kredit.push(parseInt(replaceString(i.innerText)));
            });


            let totalKredit = kredit.reduce((val, nilaiSekarang)=>{
                return val + nilaiSekarang
            },0)

            console.log(totalKredit)
            domStrings.THkredit.innerText = "Rp. " + formatRupiah(`${totalKredit}`);






            function replaceString(val) {
                return val.replace(/[^0-9]/g, "");
            }
             function getSum(total, num) {
                return total + num;
            }

            /* Fungsi formatRupiah */
            function formatRupiah(angka, prefix) {
                var number_string = angka.replace(/[^,\d]/g, "").toString(),
                    split = number_string.split(","),
                    sisa = split[0].length % 3,
                    rupiah = split[0].substr(0, sisa),
                    ribuan = split[0].substr(sisa).match(/\d{3}/gi);

                // tambahkan titik jika yang di input sudah menjadi angka ribuan
                if (ribuan) {
                    separator = sisa ? "." : "";
                    rupiah += separator + ribuan.join(".");
                }

                rupiah = split[1] != undefined ? rupiah + "," + split[1] : rupiah;
                return prefix == undefined ? rupiah : rupiah ? "Rp. " + rupiah : "";
            }
        </script> --}}
    </body>
</html>
