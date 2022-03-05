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
                                        <td>1</td>
                                        <td>2022-2023</td>
                                        <td>10</td>
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
                                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#modalEdit"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
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
                                                    <a class="dropdown-item" href="#" data-toggle="modal" data-target="#modalEdit"><i class="fas fa-pencil-alt text-primary pr-1"></i> Edit</a>
                                                    <a class="dropdown-item" href="#"><i class="fas fa-trash text-danger pr-1"></i> Hapus</a>
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
</x-layout>