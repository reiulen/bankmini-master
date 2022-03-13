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
                                        <th>Dana Awal Tahun</th>
                                        <th>Nominal</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php
                                        $no = 1
                                    @endphp
                                    @foreach ($d_awal as $row)
                                    <tr class="text-center">
                                        <td>{{ $no++ }}</td>
                                        <td>{{ tahun($row->tahun_akademik->awal) }} - {{ tahun($row->tahun_akademik->akhir) }}</td>
                                        <td>{{ $row->kelas->nama }} {{ $row->kelas->urut_kelas }}</td>
                                        <td>{{ $row->dana_awal_tahun }}</td>
                                        <td>{{ $row->nominal }}</td>
                                        <td>
                                            <div class="dropdown">
                                                <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fas fa-ellipsis-v"></i>
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                                    <a class="dropdown-item" data-toggle="modal" data-target="#modalEdit{{ $row->id }}" role="button"><i class="fas fa-pencil-alt text-primary pr-1" ></i> Edit</a>
                                                    <a class="dropdown-item" role="button" id="hapus{{ $row->id }}" onclick="hapus({{ $row->id }})" data="{{ $row->kelas->kelas }} {{ $row->kelas->nama_kelas }} {{ $row->kelas->urut_kelas }}"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                                    <form action="{{ route('danaawal.destroy', $row->id) }}" method="POST" id="form-hapus{{ $row->id }}">
                                                        @csrf
                                                        @method('delete')
                                                    </form>
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
                <h5 class="modal-title" id="exampleModalLabel">Tambah Dana Awal Tahun</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                </div>
                <div class="modal-body">
                <form action="{{ route('danaawal.store') }}" method="post">
                    @csrf
                    <div class="form-group mb-4">
                        <label>Tahun Akademik</label>
                        <select class="form-control" name="tahun_akademik">
                            <option selected disabled>- Pilih Tahun Akademik -</option>
                            @foreach ($t_akademik as $row)
                            <option value="{{ $row->id }}">{{ tahun($row->awal) }} - {{ tahun($row->akhir) }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group mb-4">
                        <label>Kelas</label>
                        <select class="form-control"  name="kelas">
                            <option selected disabled>- Pilih Kelas -</option>
                            @foreach ($kelas as $row)
                            <option value="{{ $row->id }}">{{ $row->kelas }} {{ $row->nama_kelas }} {{ $row->urut_kelas }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group mb-4">
                        <label>Dana Awal Tahun</label>
                        <select class="form-control" name="danaawaltahun">
                            <option selected disabled>- Pilih Dana Awal Tahun -</option>
                            <option value="DSP">DSP</option>
                            <option value="Infaq">Infaq</option>
                            <option value="Kunjungan Industri">Kunjungan Industri</option>
                            <option value="Prakerin">Prakerin</option>
                        </select>
                    </div>
                    <div class="form-group mb-4">
                        <label>Nominal</label>
                        <input type="text" id="nominal" name="nominal" class="form-control">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
                        <button class="btn btn-primary">Tambah</button>
                    </div>
                </form>
                </div>
            </div>
        </div>
    </div>
  
  <!-- Modal Edit -->
  @foreach ($d_awal as $row)
  <div class="modal fade" id="modalEdit{{ $row->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Edit Dana Awal Tahun</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form action="{{ route('danaawal.update', $row->id) }}" method="post">
            @csrf
            @method('put')
            <div class="modal-body">
                <div class="form-group mb-4">
                    <label>Tahun Akademik</label>
                    <select class="form-control" name="tahun_akademik">
                        <option value="{{ $row->tahun_akademik->id }}" selected>{{ tahun($row->tahun_akademik->awal) }} - {{ tahun($row->tahun_akademik->akhir) }}</option>
                        @foreach ($t_akademik as $ta)
                        <option value="{{ $ta->id }}">{{ tahun($ta->awal) }} - {{ tahun($ta->akhir) }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group mb-4">
                    <label>Kelas</label>
                    <select class="form-control" name="kelas">
                        <option value="{{ $row->kelas->id }}">{{ $row->kelas->kelas }} {{ $row->kelas->nama_kelas }} {{ $row->kelas->urut_kelas }}</option>
                        @foreach ($kelas as $kl)
                        <option value="{{ $kl->id }}">{{ $kl->kelas }} {{ $kl->nama_kelas }} {{ $kl->urut_kelas }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group mb-4">
                    <label>Dana Awal Tahun</label>
                    <select class="form-control" name="danaawaltahun">
                        <option value="{{ $row->dana_awal_tahun }}" selected>{{ $row->dana_awal_tahun }}</option>
                        <option value="DSP">DSP</option>
                        <option value="Infaq">Infaq</option>
                        <option value="Kunjungan Industri">Kunjungan Industri</option>
                        <option value="Prakerin">Prakerin</option>
                    </select>
                </div>
                <div class="form-group mb-4">
                    <label>Nominal</label>
                    <input type="text" name="nominal" value="{{ $row->nominal }}" class="form-control">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
                <button class="btn btn-primary">Simpan</button>
            </div>
        </form>
      </div>
    </div>
  </div>    
  @endforeach
  
  @include('backend.lib.select2')
  @include('backend.lib.datatable')
  @push('script')
  <script src="{{ asset('assets/dist/js/pages/danaawal/index.js') }}"></script>
@endpush
</x-layout>