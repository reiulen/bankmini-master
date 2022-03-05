<x-layout title="Dana Awal Tahun">
    <x-content-header>
        <div class="col-sm-6">
            <h1> Dana Awal Tahun </h1>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Dana Awal Tahun') }}</li>
        </x-breadcumb>
    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card card-outline">
                        <div class="card-header">
                            <a class="btn btn-primary border-0" data-toggle="modal" data-target="#modalTambah"><i class="fa fa-plus px-1" ></i> Tambah Dana Awal Tahun</a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered  table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Tahun Akademik</th>
                                        <th>Kelas</th>
                                        <th>DSP</th>
                                        <th>Infaq</th>
                                        <th>Kunjungan Industri</th>
                                        <th>Prakerin</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>2</td>
                                        <td>2022-2023</td>
                                        <td>11</td>
                                        <td>Rp. 2.000.000</td>
                                        <td>Rp. 2.000.000</td>
                                        <td>Rp. 2.000.000</td>
                                        <td>Rp. 2.000.000</td>
                                        <td>
                                            <div class="dropdown">
                                                <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fas fa-ellipsis-v"></i>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" data-toggle="modal" data-target="#modalEdit"><i class="fas fa-pencil-alt text-primary pr-1" ></i> Edit</a>
                                                    <a class="dropdown-item danaawal" href="#"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                                </div>
                                            </div>
                                        </td>
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
        <!-- Modal Tambah -->
<div class="modal fade" id="modalTambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Tambah Dana Awal Tahun</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="#" method="post">
              <div class="form-group mb-4">
                  <div class="form-floating">
                      <select class="form-control" name="tahun_akademik">
                          <option selected disabled>- Pilih Tahun Akademik -</option>
                          <option value="2019-2020">2019-2020</option>
                          <option value="2020-2021">2020-2021</option>
                          <option value="2021-2022">2021-2022</option>
                      </select>
                      <label>Tahun Akademik</label>
              </div>
              </div>
              <div class="form-group mb-4">
                  <div class="form-floating">
                      <select class="form-control" name="kelas">
                          <option selected disabled>- Pilih Kelas -</option>
                          <option value="X">X</option>
                          <option value="XI">XI</option>
                          <option value="XII">XII</option>
                      </select>
                      <label>Kelas</label>
              </div>
              </div>
              <div class="form-group mb-4">
                  <div class="form-floating">
                      <select class="form-control" name="danaawaltahun">
                          <option selected disabled>- Pilih Dana Awal Tahun -</option>
                          <option value="DSP">DSP</option>
                          <option value="Infaq">Infaq</option>
                          <option value="Kunjungan Industri">Kunjungan Industri</option>
                          <option value="Prakerin">Prakerin</option>
                      </select>
                      <label>Dana Awal Tahun</label>
                  </div>
              </div>
              <div class="form-group mb-4">
                  <div class="form-floating">
                      <input type="text" name="nominal" class="form-control">
                      <label>Nominal</label>
              </div>
              </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
          <button type="button" class="btn btn-primary">Tambah</button>
        </div>
      </div>
    </div>
  </div>
  
  <!-- Modal Edit -->
  <div class="modal fade" id="modalEdit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Edit Dana Awal Tahun</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="#" method="post">
              <div class="form-group mb-4">
                      <div class="form-floating">
                              <select class="form-control" name="tahun_akademik">
                                  <option selected disabled>- Pilih Tahun Akademik -</option>
                                  <option value="2019-2020">2019-2020</option>
                                  <option value="2020-2021">2020-2021</option>
                                  <option value="2021-2022">2021-2022</option>
                              </select>
                              <label>Tahun Akademik</label>
                      </div>
              </div>
              <div class="form-group mb-4">
                      <div class="form-floating">
                              <select class="form-control" name="kelas">
                                  <option selected disabled>- Pilih Kelas -</option>
                                  <option value="X">X</option>
                                  <option value="XI">XI</option>
                                  <option value="XII">XII</option>
                              </select>
                              <label>Kelas</label>
                      </div>
              </div>
              <div class="form-group mb-4">
                      <div class="form-floating">
                              <select class="form-control" name="danaawaltahun">
                                  <option selected disabled>- Pilih Dana Awal Tahun -</option>
                                  <option value="DSP">DSP</option>
                                  <option value="Infaq">Infaq</option>
                                  <option value="Kunjungan Industri">Kunjungan Industri</option>
                                  <option value="Prakerin">Prakerin</option>
                              </select>
                              <label>Dana Awal Tahun</label>
                          </div>
              </div>
              <div class="form-group mb-4">
                      <div class="form-floating">
                              <input type="text" name="nominal" class="form-control">
                              <label>Nominal</label>
                      </div>
              </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
          <button type="button" class="btn btn-primary">Simpan</button>
        </div>
      </div>
  </div>      @include('backend.lib.bootstrap5')
  @include('backend.lib.datatable')
  @push('script')
  <!-- DataTables  & Plugins -->
    

  
  <script>
    $(function () {
      $("#example1").DataTable({
        "responsive": true, "lengthChange": true, "autoWidth": false,
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });
    $('.danaawal').click(function(){
      Swal.fire({
          title: 'Apakah yakin?',
          text: "Dana Awal Tahun Akan Dihapus",
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
              "Tahun Dana Awal Tahun berhasil dihapus",
              'success',
              )
          }
      });
    });
  </script>
@endpush
</x-layout>