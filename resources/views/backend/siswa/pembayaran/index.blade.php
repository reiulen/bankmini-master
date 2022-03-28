<x-layout title="Pembayaran">
    <x-content-header>
        <div class="col-sm-6">
          <a href="{{ route('siswa.index') }}" class="btn btn-primary"><i class="fa fa-arrow-left"></i>&nbsp;Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('siswa.index') }}">{{ __('Siswa') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Pembayaran') }}</li>
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
                      <a class="btn btn-primary border-0" href="{{ route('pembayaran.create', $siswa->nis) }}"><i class="fa fa-plus px-1"></i> Tambah Pembayaran</a>
                      <a class="btn btn-primary border-0" href="{{ route('pembayaran.tagihan', $siswa->nis) }}"><i class="fa fa-eye px-1"></i> Lihat Sisa Tagihan</a>
                    </div>
                    <div>
                      <p style="font-size: 15px" class="text-end py-2 py-md-0"><b> {{ $siswa->nama }}</b><br />NIS: {{ $siswa->nis }}<br />Kelas: {{ $siswa->kelas->kelas .' ' . $siswa->kelas->jurusan->nama. ' ' .$siswa->kelas->urut_kelas}}</p>
                    </div>
                  </div>
                </div>
                <!-- /.card-header -->
                <div class="card-body">
                  <table id="example1" class="table table-bordered table-hover">
                    <thead>
                      <tr>
                        <th>Tanggal</th>
                        <th>Kode</th>
                        <th>Pembayaran</th>
                        <th>Petugas</th>
                        <th>Keterangan</th>
                        <th>Nominal</th>
                        <th>Sisa Tagihan</th>
                        <th>Aksi</th>
                      </tr>
                    </thead>
                    <tbody>
                      @foreach ($pembayaran as $row)
                      <tr>
                        <td>{{ tanggal($row->created_at) }}</td>
                        <td>{{ $row->kode }}</td>
                        <td>{{ $row->danaawal->dana }}</td>
                        <td>{{ $row->petugas->nama }}</td>
                        <td>{{ $row->keterangan }}</td>
                        <td>{{ format_rupiah($row->nominal) }}</td>
                        <td>{{ format_rupiah($row->sisa_tagihan) }}</td>
                        <td>
                          <div class="dropdown">
                            <button class="btn btn-none" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <i class="fas fa-ellipsis-v"></i>
                            </button>
                            <div class="dropdown-menu dropdown-menu-right border-0" aria-labelledby="dropdownMenuButton">
                              <a class="dropdown-item" href="{{ route('pembayaran.edit', [$siswa->nis, $row->id]) }}"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                              <a class="dropdown-item" role="button" id="hapus{{ $row->id }}" onclick="hapus({{ $row->id }})" data="{{ $row->kode }}"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                              <form action="{{ route('pembayaran.delete', [$row->id, $siswa->nis]) }}" method="POST" id="form-hapus{{ $row->id }}">
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

      @include('backend.lib.datatable')

      @push('script')
      <script>
        $(function () {
          $('#example1')
            .DataTable({
              responsive: true,
              lengthChange: true,
              autoWidth: false,
            });
        });
      </script>
      @endpush

</x-layout>
