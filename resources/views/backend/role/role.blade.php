<div class="card shadow mb-4">
    <!-- Card Header - Dropdown -->
    <div class="card-header">
        <a class="btn btn-primary border-0" href="{{ route('role.create') }}"><i class="fa fa-plus px-1"></i> Tambah Role</a>
    </div>
    <!-- Card Body -->
    <div class="card-body">
        <table id="example1" class="table table-bordered  table-hover">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Nama</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @php
                    $no = 1;
                @endphp
                @foreach ($role as $row)
                    <tr>
                        <td>{{ $no++ }}</td>
                        <td>{{ $row->name }}</td>
                        <td>
                            <div class="dropdown">
                                <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-ellipsis-v"></i>
                                </button>
                                <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                                    <a class="dropdown-item" href="{{ route('role.edit', $row->id) }}"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                                    <a class="dropdown-item" role="button" id="hapus{{ $row->id }}" onclick="hapus({{ $row->id }})" data="{{ $row->name }}"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                    <form action="{{ route('role.delete', $row->id) }}" method="POST" id="form-hapus{{ $row->id }}">
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
</div>
