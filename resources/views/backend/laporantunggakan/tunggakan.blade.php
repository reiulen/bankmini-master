
            <section class="content laporan">
                <div class="container-fluid">
                    <div class="row">
                            <div class="col-12">
                                <div class="card card-outline">
                                    <div class="card-header">
                                        <div class="row justify-content-between">
                                            <div class="row btn-laporan mx-2">
                                                <a href="" class="btn btn-primary mx-1 cetak-pdf"><i class="fa fa-file-pdf"></i>&nbsp; Cetak PDF</a>
                                                <a href="" class="btn btn-primary mx-1 cetak-excel"><i class="fa fa-file-pdf"></i>&nbsp; Cetak Excel</a>
                                            </div>
                                            <div>
                                                <h5>
                                                    @php
                                                        $jumlah = $dana->sum('nominal') * $siswa->count() - $pembayaran->sum('nominal');
                                                    @endphp
                                                    Sisa Tunggakan : {{ format_rupiah($jumlah) }}
                                                </h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div id="table"></div>
                                    </div>
                                    <!-- /.card-body -->
                                </div>
                                <!-- /.card -->
                            </div>
                            <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
            </section>
            <script>
            $("#table").Grid({
                    columns: ['NIS', 'Nama', @foreach ($dana as $row) '{{ $row->dana }}', @endforeach],
                    search: true,
                    sort: true,
                    pagination: {
                        limit: 10
                    },
                    language: {
                        'search': {
                        'placeholder': '🔍 cari nama...'
                        },
                        'pagination': {
                        'previous': '<',
                        'next': '>',
                        'showing': 'Menampilkan',
                        'to': 'sampai',
                        'of': 'dari',
                        'results': 'Data'
                        }
                    },
                   data : [
                           @foreach ($siswa as $rows)
                           ['{{ $rows->nis }}',
                           '{{ $rows->nama }}',
                           @foreach ($dana as $row)
                            @php
                                $tagihan = $pembayaran->where('dana_awal_id', $row->id)
                                            ->where('siswa_id', $rows->id)
                                            ->sum('nominal')
                            @endphp
                           '{{ format_rupiah(preg_replace("/[^0-9]/", "", $tagihan - $row->nominal)) }}',
                           @endforeach ],
                           @endforeach

                   ]
                });
                $('.cetak-excel').attr('href', `${url}/laporantunggakan/cetak-excel?${$("#form-filter").serialize()}`);
                $('.cetak-pdf').attr('href', `${url}/laporantunggakan/cetak-pdf?${$("#form-filter").serialize()}`);
            </script>

