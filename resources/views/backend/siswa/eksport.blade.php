<x-layout tittle="Eksport Siswa">

    @push('css')
        <!-- Select 2 -->
        <link href="{{ asset('assets/plugins/select2/css/select2.min.css') }}" rel="stylesheet" />
        <link href="{{ asset('assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css') }}" rel="stylesheet" />
    @endpush
    
    <x-content-header>
        <div class="col-sm-6">
            <a href="/siswa" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li> 
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Data Siswa') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Eksport Siswa') }}</li>
        </x-breadcumb>
    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Export Data Siswa</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <div class="row mb-4">
                            <div class="col-xl-4 col-lg-5 col-md-6">
                                <select class="form-control exportSiswa">
                                    <option selected disabled>- Pilih Kelas -</option>
                                    <option value="XII RPL">XII RPL</option>
                                    <option value="XI RPL">XI RPL</option>
                                    <option value="X RPL">X RPL</option>
                                </select>
                            </div>
                            <a class="btn btn-primary mt-md-0 mt-2 mx-md-0 mx-2"><i class="fa fa-search pr-1"></i> Cari Kelas</a>
                        </div>
                        <table id="example1" class="table table-bordered  table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>NIS</th>
                                    <th>Nama Lengkap</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Kelas</th>
                                    <th>Tahun Akademik</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>192010568</td>
                                    <td>Reihan Andika Abdipraja Makmur</td>
                                    <td>Laki-laki</td>
                                    <td>12 RPL</td>
                                    <td>2021 - 2022</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>192010568</td>
                                    <td>Reihan Andika AM</td>
                                    <td>Laki-laki</td>
                                    <td>12 RPL</td>
                                    <td>2021 - 2022</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>192010568</td>
                                    <td>Reihan Andika AM</td>
                                    <td>Laki-laki</td>
                                    <td>12 RPL</td>
                                    <td>2021 - 2022</td>
                                </tr>
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
        <!-- Select 2 -->
        <script src="../assets/plugins/select2/js/select2.min.js"></script>
        <script>
            $(function () {
              $("#example1").DataTable({
                "responsive": true, "lengthChange": false, "autoWidth": false,
                "buttons":['copy', 'csv', 'excel', 'pdf', 'print']
              }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            });
            $('.hapusSiswa').click(function(){
              Swal.fire({
                  title: 'Apakah yakin?',
                  text: "Data Reihan Andika AM akan dihapus",
                  icon: 'warning',
                  showCancelButton: true,
                  confirmButtonColor: '#6492b8da',
                  cancelButtonColor: '#d33',
                  confirmButtonText: 'Hapus',
                  cancelButtonText: 'Batal'
                  }).then((result) => {
                  if (result.isConfirmed) {
                      Swal.fire(
                      'Berhasil dihapus!',
                      'Data Reihan Andika AM berhasil dihapus',
                      'success'
                      )
                  }
              });
            });
            $('.exportSiswa').select2();
          </script>
    @endpush
</x-layout>