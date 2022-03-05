<x-layout title="Laporan Tunggkan">

    @push('css')
        <link rel="stylesheet" href="{{ asset('assets/dist/css/tabs.css') }}" />
    @endpush

        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-3">
                    <div class="col-sm-6">
                        <h1>Laporan Tunggakan</h1>
                    </div>
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Laporan Pemasukan</li>
                        </ol>
                    </div>
                </div>
                <div class="card">
                   <div class="card-body">
                        <div class="row btn-laporan">
                            <button class="btn btn-primary mx-1" onclick="openPage('Home', this, )" id="perkelas">Perkelas</button>
                            <button class="btn btn-none mx-1" onclick="openPage('News', this,)" id="keseluruhan">Keseluruhan</button>
                        </div>
                   </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>

                <!-- Main content 1-->
                <section class="content tabcontent" id="Home">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-12">
                                <div class="card card-outline">
                                    <div class="card-header">
                                        <form class="row">
                                            <div class="col-md-3">
                                                <label>Tanggal Awal</label>
                                                <input class="form-control" type="date" name="tgl_awal">
                                            </div>
                                            <div class="col-md-3">
                                                <label>Tanggal Akhir</label>
                                                <input class="form-control" type="date" name="tgl_akhir">
                                            </div>
                                            <div class="col-md-3 my-auto">
                                                <button class="btn btn-primary"><i class="fa fa-search pr-1"></i> Cari</button>
                                            </div>
                                            <div class="col-md-3 m-auto">
                                                <h5>Total : Rp. 250.000.000</h5>
                                            </div>
                                        </form>
                                    </div>
                                    <div class="card-body">
                                        <table id="example1" class="table table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>NIS</th>
                                                    <th>Kelas</th>
                                                    <th>Tanggal</th>
                                                    <th>Petugas</th>
                                                    <th>Keterangan</th>
                                                    <th>Kredit</th>
                                                    <th>Debet</th>
                                                    <th>Saldo</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>192010552</td>
                                                    <td>RPL</td>
                                                    <td>20 Juni 2022</td>
                                                    <td>Reihan Andhika AM</td>
                                                    <td>Infaq</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>Rp. 3.250.000</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>192010552</td>
                                                    <td>RPL</td>
                                                    <td>20 Juni 2022</td>
                                                    <td>Reihan Andhika AM</td>
                                                    <td>Tabungan KI</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>Rp. 250.000 </td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>192010553</td>
                                                    <td>RPL</td>
                                                    <td>10 Mei 2022</td>
                                                    <td>Reihan Andhika AM</td>
                                                    <td>Bayar SPP</td>
                                                    <td></td>
                                                    <td></td>
                                                    <td>Rp. 150.000</td>
                                                </tr>
                                                <tfoot class="table table-hover">
                                                    <tr>
                                                        <th class="border-right-0"></th>
                                                        <th class="border-right-0"></th>
                                                        <th class="border-right-0"></th>
                                                        <th class="border-right-0"></th>
                                                        <th class="border-right-0"></th>
                                                        <th class="border-right-0"></th>
                                                        <th class="border-right-0"></th>
                                                        <th style="text-align: right;">Sisa Saldo</th>
                                                        <th style="min-width: 134px; width: 134px; max-width: 134px;">Rp. 3.650.000</th>
                                                    </tr>
                                                </tfoot>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <!-- /.card -->
                            </div>
                            <!-- /.col -->
                        </div>
                        <!-- /.row -->
                    </div>
                    <!-- /.container-fluid -->
                </section>
                <!-- /.content -->
                <section class="content tabcontent" id="News">
                    <div class="container-fluid">
                        <div class="row">
                                <div class="col-12">
                                    <div class="card card-outline">
                                        <div class="card-header">
                                            <form class=" row">
                                                <div class="col-md-3">
                                                    <label>Tanggal Awal</label>
                                                    <input class="form-control" type="date" name="tgl_awal">
                                                </div>
                                                <div class="col-md-3">
                                                    <label>Tanggal Akhir</label>
                                                    <input class="form-control" type="date" name="tgl_akhir">
                                                </div>
                                                <div class="col-md-3 my-auto">
                                                    <button class="btn btn-primary"><i class="fa fa-search pr-1"></i> Cari</button>
                                                </div>
                                                <div class="col-md-3 m-auto">
                                                    <h5>Total : Rp. 250.000.000</h5>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="card-body">
                                            <table id="example2" class="table table-bordered table-hover text-center">
                                                <thead class="b-head">
                                                    <tr>
                                                        <th class="border-right-0">No</th>
                                                        <th class="border-right-0">NIS</th>
                                                        <th class="border-right-0">Tanggal Transaksi</th>
                                                        <th class="border-right-0">Keterangan</th>
                                                        <th class="border-right-0">Debet</th>
                                                        <th class="border-right-0">Kredit</th>
                                                        <th class="border-right-0">Saldo</th>
                                                        </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">1</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">192010551</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">Kamis, 20 Juni 2022</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">Infaq</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">Rp. 3.250,000</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0"></td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">Rp. 3.250.000</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">2</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">192010552</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">Kamis, 20 Juni 2022</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">Tabungan KI</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">Rp. 200.000</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0"></td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0"> Rp. 250.000</td>
                                                    </tr>
                                                    <tr>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">3</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">192010553</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">Jum'at, 10 Mei 2022</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">Bayar SPP</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0"></td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0">Rp. 150.000</td>
                                                        <td class="border-right-0 border-bottom-0 border-top-0"> Rp. 150.000</td>
                                                    </tr>
                                                    <tfoot class="table table-hover b-head">
                                                        <tr>
                                                            <th class="border-right-0"></th>
                                                            <th class="border-right-0"></th>
                                                            <th class="border-right-0"></th>
                                                            <th class="border-right-0"></th>
                                                            <th class="border-right-0"></th>
                                                            <th style="text-align: right;" class="border-right-0">Sisa Saldo</th>
                                                            <th style="min-width: 134px; width: 134px; max-width: 134px;">Rp. 3.650.000</th>
                                                        </tr>
                                                    </tfoot>
                                                </tbody>
                                            </table>
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
                <!-- /.content -->
    @include('backend.lib.datatable')
    @push('script')
    <script src="{{ asset('assets/plugins/datatables-buttons/js/dataTables.buttons.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/jszip/jszip.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/pdfmake/pdfmake.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/pdfmake/vfs_fonts.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables-buttons/js/buttons.html5.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables-buttons/js/buttons.print.min.js') }}"></script>
    <script src="{{ asset('assets/plugins/datatables-buttons/js/buttons.colVis.min.js') }}"></script>
        <script>
        $(function () {
            $("#example1").DataTable({
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false,
            "info": false,
            "buttons": ["copy", "csv", "excel", "pdf", "print"]
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            $("#example2").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
                "info": false,
                "buttons": ["copy", "csv", "excel", "pdf", "print"]
            }).buttons().container().appendTo('#example2_wrapper .col-md-6:eq(0)');
            const keseluruhan = $('#keseluruhan');
            const perkelas = $('#perkelas');
            perkelas.click(function(){
                keseluruhan.removeClass('btn-primary');
                perkelas.addClass('btn-primary');
                perkelas.removeClass('btn-none');
                keseluruhan.addClass('btn-none');
            });
            keseluruhan.click(function(){
                keseluruhan.addClass('btn-primary');
                keseluruhan.removeClass('btn-none');
                perkelas.removeClass('btn-primary');
                perkelas.addClass('btn-none');
            });
        });
        function openPage(pageName, elmnt) {
            // Hide all elements with class="tabcontent" by default */
            var i, tabcontent, tablinks;
            tabcontent = document.getElementsByClassName("tabcontent");
            for (i = 0; i < tabcontent.length; i++) {
                tabcontent[i].style.display = "none";
            }

            // Remove the background color of all tablinks/buttons
            tablinks = document.getElementsByClassName("tablink");
            for (i = 0; i < tablinks.length; i++) {
                tablinks[i].style.backgroundColor = "";
            }

            // Show the specific tab content
            document.getElementById(pageName).style.display = "block";
            }

            // Get the element with id="defaultOpen" and click on it
            document.getElementById("perkelas").click();
        </script>
    @endpush
</x-layout>
