<x-layout title="Tabungan">


    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('siswa.index') }}" class="btn btn-primary"><i class="fa fa-arrow-left"></i>&nbsp;Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Data Siswa') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Tabungan') }}</li>
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
                            <div class="col-md">
                                <a class="btn btn-primary border-0" href="{{ route('tabungan.create', [$siswa->nis]) }}"><i class="fa fa-plus px-1"></i> Tambah Tabungan</a>
                            </div>
                            <div>
                                <p style="font-size: 14px ;" class="text-end"><b>{{ $siswa->nama }}</b><br>NIS: {{ $siswa->nis }}</p>    
                            </div>
                        </div>
                        
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered  table-hover">
                            <thead>
                                <tr>
                                    <th>Kode</th>
                                    <th>Tanggal</th>
                                    <th>Petugas</th>
                                    <th>Tipe</th>
                                    <th>Nominal</th>
                                    <th>Saldo</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($tabungan as $row)
                                <tr class="text-center">
                                    <td>{{ $row->kode }}</td>
                                    <td>{{ $row->tanggal }}</td>
                                    <td>{{ $row->petugas }}</td>
                                    <td>{{ $row->tipe }}</td>
                                    <td>{{ $row->nominal }}</td>
                                    <td>{{ $row->saldo }}</td>
                                    <td>
                                        <div class="dropdown">
                                            <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="{{ route('tabungan.edit', ['4', '3']) }}"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                                                {{-- <a class="dropdown-item" role="button" id="hapus{{ $row->id }}" onclick="hapus({{ $row->id }})" data="{{ $row->nama }}"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                                <form action="{{ route('pengguna.delete', $row->id) }}" method="POST" id="form-hapus{{ $row->id }}">
                                                    @csrf
                                                    @method('delete')
                                                </form> --}}
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
        <script>
            $(function () {
                $("#example1").DataTable({
                    "responsive": true, "lengthChange": true, "autoWidth": false,
                });
            });
        </script>
    @endpush

</x-layout>