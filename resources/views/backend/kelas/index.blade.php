<x-layout>
    
    @push('css')
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    @endpush
    <x-content-header>
        <div class="col-sm-6">
            <h1> Data Kelas</h1>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li> 
            <li class="breadcrumb-item active">{{ __('Kelas') }}</li>
        </x-breadcumb>

    </x-content-header>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card card-outline">
                        <div class="card-header">
                            <a class="btn btn-primary border-0" data-toggle="modal" data-target="#modalTambah"><i class="fa fa-plus px-1" ></i> Tambah Kelas</a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Kelas</th>
                                        <th>Jurusan</th>
                                        <th>Nama Kelas</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>
                                            12
                                        </td>
                                        <td>Rekayasa Perangkat Lunak</td>
                                        <td>RPL</td>
                                        <td>
                                            <div class="dropdown">
                                                <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fas fa-ellipsis-v"></i>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#modalEdit"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                                                    <a class="dropdown-item hapusPengguna" href=""><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
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
          <h5 class="modal-title" id="exampleModalLabel">Tambah Kelas</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form action="#" method="post">
              <div class="form-group mb-4">
                  <div class="form-floating">
                      <select class="form-control" name="kelas">
                          <option selected disabled>- Pilih Kelas -</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                      </select>
                      <label>Kelas</label>
              </div>
              </div>
              <div class="form-group mb-4">
                      <div class="form-floating mt-3">
                              <input class="form-control" type="text" name="" id="" value="">
                              <label for="">Nama</label>
                          </div>
              </div>
              <div class="row">
                  <div class="form-group mb-4 col-md-6">
                      <div class="form-floating">
                          <input type="text" name="jurusan" class="form-control">
                          <label>Nama Kelas</label>
                      </div>
                      </div>
                  <div class="form-group mb-4 col-md-6">
                      <div class="form-floating">
                          <select class="form-control" name="kelas">
                              <option selected disabled>- Urutan -</option>
                              <option value="1">1 </option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                          </select>
                          <label>Urut Kelas</label>
                  </div>
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
              <h5 class="modal-title" id="exampleModalLabel">Edit Kelas</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form action="#" method="post">
                <div class="form-group mb-4">
                  <div class="form-floating">
                    <select class="form-control" name="kelas">
                      <option selected disabled>- Pilih Kelas -</option>
                      <option value="10">10</option>
                      <option value="11">11</option>
                      <option value="12">12</option>
                    </select>
                    <label>Kelas</label>
                  </div>
                </div>
                <div class="form-group mb-4">
                  <div class="form-floating">
                    <input type="text" name="jurusan" class="form-control" />
                    <label>Jurusan</label>
                  </div>
                </div>
                <div class="row">
                  <div class="form-group mb-4 col-md-6">
                    <div class="form-floating">
                      <input type="text" name="jurusan" class="form-control" />
                      <label>Nama Kelas</label>
                    </div>
                  </div>
                  <div class="form-group mb-4 col-md-6">
                    <div class="form-floating">
                      <select class="form-control" name="kelas">
                        <option selected disabled>- Urutan -</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                      </select>
                      <label>Urut Kelas</label>
                    </div>
                  </div>
                </div>
              </form>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
              <button type="button" class="btn btn-primary">Simpan</button>
            </div>
          </div>
        </div>
      </div>

      @include('backend.lib.datatable')

        @push('script')

        <script>
            $(function () {
              $("#example1").DataTable({
                "responsive": true, "lengthChange": true, "autoWidth": false,
              }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            });
            $('.hapusPengguna').click(function(){
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