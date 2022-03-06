<x-layout title="Data Siswa">

    <x-content-header>
        <div class="col-sm-6">
            <h1>Data Siswa</h1>
        </div>

        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">Home</a></li>
            <li class="breadcrumb-item item">{{ __('Data Siswa') }}</li>
        </x-breadcumb>
    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header card-outline">
                        <div class="row">
                            <a class="btn btn-primary border-0" href="{{ route('siswa.create') }}"><i class="fa fa-plus px-1"></i> Tambah Siswa</a>
                            <div class="dropdown ml-auto">
                                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Opsi Data
                                </button>
                                <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="import_siswa.html">Import Data Siswa</a>
                                    <a class="dropdown-item" href="{{ route('siswa.eksport') }}">Eksport Data Siswa</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered  table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>NIS</th>
                                    <th>Nama Lengkap</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Kelas</th>
                                    <th>Tahun Akademik</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $no = 1
                                @endphp
                                @foreach ($siswa as $row)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td>{{ $row->nis }}</td>
                                    <td>{{ $row->nama }}</td>
                                    <td>{{ $row->jenis_kelamin }}</td>
                                    <td>{{ $row->tingkat_kelas }} {{ $row->kelas->nama }} {{ $row->kelas->urut_kelas }}</td>
                                    <td>2021 - 2022</td>
                                    <td>
                                        <div class="dropdown">
                                            <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="{{ route('siswa.edit', '4') }}"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                                                <a class="dropdown-item" href="{{ route('siswa.show', '4') }}"><i class="fas fa-eye text-success pr-1"></i> Lihat</a>
                                                <a class="dropdown-item hapusSiswa" href="#"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                                <a class="dropdown-item" href="{{ route('pembayaran.index') }}"><i class="fas fa-coins text-warning pr-1"></i> Pembayaran</a>
                                                <a class="dropdown-item" href="{{ route('tabungan.index') }}"><i class="fas fa-book text-secondary pr-1"></i> Tabungan</a>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                                @endforeach
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
        <!-- DataTables  & Plugins -->
        <script src="../assets/plugins/datatables/jquery.dataTables.min.js"></script>
        <script src="../assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
        <script src="../assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
        <script src="../assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
        <script src="../assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>

        <script>
            $(function () {
              $("#example1").DataTable({
                "responsive": true, "lengthChange": true, "autoWidth": false,
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
          </script>
    @endpush

</x-layout>