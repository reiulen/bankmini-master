<x-layout title="Kelas">
    
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
                                    @php
                                      $no = 1;
                                    @endphp
                                    @foreach ($kelas as $row)
                                    <tr>
                                      <td>{{ $no++ }}</td>
                                      <td>
                                          {{ $row->kelas }}
                                      </td>
                                      <td>{{ $row->nama }}</td>
                                      <td>{{ $row->nama_kelas }} {{ $row->urut_kelas }}</td>
                                      <td>
                                            <div class="dropdown">
                                                <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fas fa-ellipsis-v"></i>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#modalEdit{{ $row->id }}"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                                                    <a class="dropdown-item hapusPengguna" href=""><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
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
          <form action="{{ route('kelas.store') }}" method="post">
            @csrf
              <div class="form-group mb-4">
                  <div class="form-floating">
                      <select class="form-control @error('kelas') is-invalid  @enderror" name="kelas">
                          <option selected disabled>- Pilih Kelas -</option>
                          <option value="10">10</option>
                          <option value="11">11</option>
                          <option value="12">12</option>
                      </select>
                      <label>Kelas</label>
                      @error('kelas')
                        {{ $message }}
                      @enderror
              </div>
              </div>
              <div class="form-group mb-4">
                      <div class="form-floating mt-3">
                              <input class="form-control @error('nama') is-invalid  @enderror" type="text" name="nama" id="" value="">
                              <label for="">Nama</label>
                              @error('nama')
                                {{ $message }}
                              @enderror
                      </div>
              </div>
              <div class="row">
                  <div class="form-group mb-4 col-md-6">
                      <div class="form-floating">
                          <input type="text @error('nama_kelas') is-invalid  @enderror" name="nama_kelas" class="form-control">
                          <label>Nama Kelas</label>
                          @error('nama_kelas')
                            {{ $message }}
                          @enderror
                      </div>
                      </div>
                  <div class="form-group mb-4 col-md-6">
                      <div class="form-floating">
                          <select class="form-control @error('urut_kelas') is-invalid  @enderror" name="urut_kelas">
                              <option selected disabled>- Urutan -</option>
                              <option value="1">1 </option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                              <option value="4">4</option>
                          </select>
                          <label>Urut Kelas</label>
                          @error('ururt_kelas')
                            {{ $message }}
                          @enderror
                  </div>
                  </div>
              </div> 
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
                <button type="submit" class="btn btn-primary">Tambah</button>
              </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  
    @foreach ($kelas as $row)
         <!-- Modal Edit -->
    <div class="modal fade" id="modalEdit{{ $row->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Edit Kelas</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form action="{{ route('kelas.update', $row->id) }}" method="post">
              @csrf
              @method('put')
              <div class="form-group mb-4">
                <div class="form-floating">
                  <select class="form-control @error('kelas') is-invalid @enderror" name="kelas">
                    <option selected value="{{ $row->kelas }}">- {{ $row->kelas }} -</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                  </select>
                  <label>Kelas</label>
                    @error('kelas')
                      {{ $message }}
                    @enderror
                </div>
              </div>
              <div class="form-group mb-4">
                <div class="form-floating">
                  <input type="text" name="nama" value="{{ $row->nama }}" class="@error('nama') is-invalid @enderror form-control" />
                  <label>Jurusan</label>
                    @error('nama')
                      {{ $message }}
                    @enderror
                </div>
              </div>
              <div class="row">
                <div class="form-group mb-4 col-md-6">
                  <div class="form-floating">
                    <input type="text" name="nama_kelas" value="{{ $row->nama_kelas }}" class="form-control @error('nama_kelas') is-invalid @enderror" />
                    <label>Nama Kelas</label>
                    @error('nama_kelas')
                      {{ $message }}
                    @enderror
                  </div>
                </div>
                <div class="form-group mb-4 col-md-6">
                  <div class="form-floating">
                    <select class="form-control @error('urut_kelas') is-invalid @enderror" name="urut_kelas">
                      <option selected value="{{ $row->urut_kelas }}">- {{ $row->urut_kelas }} -</option>
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                    </select>
                    <label>Urut Kelas</label>
                    @error('urut_kelas')
                      {{ $message }}
                    @enderror
                  </div>
                </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
                <button type="submit" class="btn btn-primary">Simpan</button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    @endforeach

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