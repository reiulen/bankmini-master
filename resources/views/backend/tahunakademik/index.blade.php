<x-layout title="Tahun Akademik">
    <x-content-header>
        <div class="col-sm-6">
            <h1> Tahun Akademik</h1>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Tahun Akademik') }}</li>
        </x-breadcumb>
    </x-content-header>

      <!-- Main content -->
      <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header card-outline">
                        <a class="btn btn-primary border-0" data-toggle="modal" data-target="#modalTambah"><i class="fa fa-plus px-1"></i> Tambah Tahun Akademik</a>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered  table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Tanggal Awal</th>
                                    <th>Tanggal Akhir</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $no = 1;
                                @endphp
                                @foreach ($akademik as $row)
                                <tr class="text-center">
                                    <td>{{ $no++ }}</td>
                                    <td>{{ bulan($row->awal) }}</td>
                                    <td>{{ bulan($row->akhir) }}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" data-toggle="modal" data-target="#modalEdit{{ $row->id }}"><i class="fas fa-pencil-alt text-primary pr-1" ></i> Edit</a>
                                                <a class="dropdown-item" role="button" id="hapus{{ $row->id }}" onclick="hapus({{ $row->id }})" data="{{ tanggal($row->tanggal_awal) }} sampai {{ tanggal($row->tanggal_akhir) }}"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                                <form action="{{ route('tahunakademik.destroy', $row->id) }}" method="POST" id="form-hapus{{ $row->id }}">
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

    <!-- Modal View -->

      <div class="modal fade" id="modalTambah" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Tambah Tahun Akademik</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <form action="{{ route('tahunakademik.store')}}" method="post">
                <div class="modal-body">
                    @csrf
                    <div class="form-group mb-4 form-floating">
                        <label>Tanggal Awal</label>
                        <input type="month" name="tanggal_awal" onchange="tanggal(this.value)" class="form-control @error('tanggal_awal') is-invalid @enderror">
                        <x-session-error name="tanggal_awal"></x-session-error>
                    </div>
                    <div class="form-group mb-4 form-floating">
                        <label>Tanggal Akhir</label>
                        <input type="month" name="tanggal_akhir" id="tgl_akhir" class="form-control @error('tanggal_akhir') is-invalid @enderror">
                        <x-session-error name="tanggal_akhir"></x-session-error>
                    </div>
                </div>
                <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Kembali</button>
                <button  class="btn btn-primary">Tambah</button>
                </div>
            </form>
          </div>
        </div>
      </div>

      <!-- Modal Edit -->
      @foreach($akademik as $row)
      <div class="modal fade" id="modalEdit{{ $row->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Edit Tahun Akademik</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('tahunakademik.update', $row->id)}}" method="post">
                    @csrf
                    @method('put')
                    <div class="form-group mb-4 form-floating">
                        <label>Tanggal Awal</label>
                        <input type="month" class="form-control" onchange="tanggal(this.value)" value="{{ $row->awal }}" name="tanggal_awal">
                    </div>
                    <div class="form-group mb-4 form-floating">
                        <label>Tanggal Akhir</label>
                        <input type="month"class="form-control" id="tgl_akhir" value="{{ $row->akhir }}" name="tanggal_akhir">
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

      @include('backend.lib.datatable')
      @push('script')
      <script src="{{ asset('assets/dist/js/pages/tahunakademik/index.js') }}"></script>
    @endpush

</x-layout>




