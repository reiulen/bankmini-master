<x-layout>
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
                        <div class="col-md-3 my-auto">
                            <a class="btn btn-primary" data-toggle="modal" data-target="#modalFilter" ><i class="fa fa-filter"></i>&nbsp; Filter</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->
        </section>
            <section class="content laporan" style="display: none">
                <div class="container-fluid">
                    <div class="row">
                            <div class="col-12">
                                <div class="card card-outline">
                                    <div class="card-header">
                                        <div class="row justify-content-between">
                                            <div class="row btn-laporan mx-2">
                                                <button class="btn btn-primary mx-1"><i class="fa fa-file-pdf"></i>&nbsp; Cetak PDF</button>
                                                <button class="btn btn-primary mx-1"><i class="fa fa-file-pdf"></i>&nbsp; Cetak Excel</button>
                                            </div>
                                            <div>
                                                <h5>Total : Rp. 250.000.000</h5>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <table id="example1" class="table table-bordered table-hover">
                                            <thead class="b-head">
                                                <tr>
                                                    <th>NIS</th>
                                                    <th>Nama</th>
                                                </tr>
                                            </thead>
                                            <tbody>

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

    <div class="modal fade" id="modalFilter" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Filter Tunggakan</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <form id="form-filter">
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Jurusan</label>
                        <div class="col-md-9">
                            <select class="form-control filter" multiple name="jurusan">
                                @foreach ($jurusan as $row)
                                <option value="{{ $row->id }}">{{ $row->nama }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Kelas</label>
                        <div class="col-md-9">
                            <select class="form-control filter" multiple name="kelas">
                                @foreach ($kelas as $row)
                                    <option value="{{ $row->id }}">{{ $row->kelas . ' ' . $row->jurusan->nama .' '. $row->urut_kelas }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Tahun Akademik</label>
                        <div class="col-md-9">
                            <select class="form-control filter" multiple name="tahun_akademik">
                                @foreach ($tahunakademik as $row)
                                <option value="{{ $row->id }}">{{ tahun($row->awal). ' - ' .tahun($row->akhir) }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-3">Urut Berdasarkan</label>
                        <div class="col-md-9">
                            <select class="form-control filter" name="by">
                                <option value="">Pilih</option>
                                <option value="nama|ASC">A-Z</option>
                                <option value="nama|DESC">Z-A</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group row mb-4">
                        <label class="col-md-8"></label>
                        <div class="col-md-4">
                            <button class="btn btn-primary">Terapkan Filter</button>
                        </div>
                    </div>
                </form>
            </div>
          </div>
        </div>
    </div>

            @include('backend.lib.select2')
            @include('backend.lib.datatable')
            @push('script')
            <script src="{{ asset('assets/dist/js/pages/laporantunggakan/index.js') }}"></script>
            @endpush
</x-layout>
