<x-layout title="Pengguna">
    <x-content-header>
        <div class="col-sm-6">
            <h1> Data Pengguna</h1>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Pengguna') }}</li>
        </x-breadcumb>
    </x-content-header>

    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header card-outline">
                        <a href="{{ route('pengguna.create') }}" class="btn btn-primary border-0"><i class="fa fa-plus px-1"></i> Tambah Pengguna</a>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered  table-hover">
                            <thead>
                                <tr>
                                    <th>No</th>
                                    <th>Avatar</th>
                                    <th>Nama</th>
                                    <th>Email</th>
                                    <th>Level</th>
                                    <th>Aktifitas</th>
                                    <th>Aksi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @php
                                    $no = 1
                                @endphp
                                @foreach ($user as $row)
                                <tr>
                                    <td>{{ $no++ }}</td>
                                    <td class="text-center"><img src="{{ asset($row->avatar) }}" class="rounded-circle shadow-lg img-thumbnail" style="height: 60px;"></td>
                                    <td>
                                        {{ $row->nama }}
                                    </td>
                                    <td>{{ $row->email }}</td>
                                    <td><span class="badge {{ badge_level($row->level) }} rounded- py-2 px-3">{{ $row->level }}</span></td>
                                    <td>Logout 3 menit yang lalu</td>
                                    <td>
                                        <div class="dropdown">
                                            <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                <i class="fas fa-ellipsis-v"></i>
                                            </button>
                                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                                <a class="dropdown-item" href="{{ route('pengguna.edit', $row->id) }}"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                                                <a class="dropdown-item" data-toggle="modal" data-target="#modalView{{ $row->id }}" href="#"><i class="fas fa-eye text-success pr-1"></i> Lihat</a>
                                                <a class="dropdown-item" role="button" id="hapus{{ $row->id }}" onclick="hapus({{ $row->id }})" data="{{ $row->nama }}"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                                <form action="{{ route('pengguna.delete', $row->id) }}" method="POST" id="form-hapus{{ $row->id }}">
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
    @foreach ($user as $row )
    <div class="modal fade" id="modalView{{ $row->id }}" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLabel">Lihat Pengguna</h5>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="image-user text-center mb-2">
                  <img class="img-thumbnail rounded-circle" style="height: 120px;" src="{{ asset($row->avatar)  }}">
              </div>
              <table class="table">
                  <tbody>
                      <tr>
                          <th class="table-active">Nama</th>
                        <td>{{ $row->nama }}</td>
                    </tr>
                    <tr>
                        <th class="table-active">Email</th>
                        <td>{{ $row->email }}</td>
                    </tr>
                    <tr>
                        <th class="table-active">Level</th>
                        <td><span class="badge {{ badge_level($row->level) }} rounded- py-2 px-3">{{ $row->level }}</span></td>
                    </tr>
                    <tr>
                        <th class="table-active">Aktifitas</th>
                        <td>Logout 3 menit yang lalu</td>
                    </tr>
                    <tr>
                        <th class="table-active">Bergabung Sejak</th>
                        <td>{{ $row->created_at->diffForHumans() }}</td>
                    </tr>
                </tbody>
              </table>
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
            })
        });
        </script>
    @endpush

</x-layout>
