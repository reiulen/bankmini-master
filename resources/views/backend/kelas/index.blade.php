<x-layout title="Kelas">
    <x-content-header>
        <div class="col-sm-6">
            <h1> Kelas</h1>
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
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-header card-outline">
                            <a class="btn btn-primary border-0 btn-tambah"><i class="fa fa-plus px-1"></i> Tambah Kelas</a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered  table-hover">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Kelas</th>
                                        <th>Jurusan</th>
                                        <th>Nama</th>
                                        <th>Aksi</th>
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
                <div class="col-md-5 form-inputan" style="display:none">
                    <div class="card">
                        <div class="card-header card-outline">
                            <h3 class="card-title">Form Isian Kelas</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="alert-error"></div>
                            <form action="{{ route('kelas.store')}}" method="post" id="form">
                                <input type="hidden" name="id" value="0" />
                                <div class="form-group mb-3">
                                    <label>Kelas</label>
                                    <select class="form-control" name="kelas">
                                        <option selected disabled>- Pilih Kelas -</option>
                                        <option value="10">10</option>
                                        <option value="11">11</option>
                                        <option value="12">12</option>
                                    </select>
                                    <x-session-error name="kelas"></x-session-error>
                                </div>
                                <div class="form-group mb-3">
                                    <label>Jurusan</label>
                                    <select class="form-control" name="jurusan">
                                        <option selected disabled>- Pilih Kelas -</option>
                                        @foreach ($jurusan as $row)
                                        <option value="{{ $row->id }}">{{ $row->jurusan . ' (' .$row->nama. ')' }}</option>
                                        @endforeach
                                    </select>
                                    <x-session-error name="jurusan"></x-session-error>
                                </div>
                                <div class="form-group mb-4">
                                    <label>Urut Kelas</label>
                                    <select class="form-control" name="urut_kelas">
                                        <option selected disabled>-Pilih Urut Kelas -</option>
                                        <option value="1">1 </option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option>
                                        <option value="5">5</option>
                                        <option value="6">6</option>
                                    </select>
                                    <x-session-error name="urut_kelas"></x-session-error>
                                </div>
                                <button class="btn btn-primary"><i class="fa fa-save"></i>&nbsp; Simpan</button>
                                <button type="button" class="btn btn-secondary btn-kembali"><i class="fas fa-times"></i>&nbsp; Batal</button>
                            </form>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
        </section>


      @include('backend.lib.datatable')
      @include('backend.lib.select2')
      @push('script')
      <script src="{{ asset('assets/dist/js/pages/kelas/index.js') }}"></script>
    @endpush

</x-layout>
