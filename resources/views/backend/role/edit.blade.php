<x-layout title="Edit Role">
    <x-content-header>
        <div class="col-sm-6">
            <a href="{{ route('role.index') }}" class="btn btn-primary"><i class="fas fa-arrow-left px-1"></i> Kembali</a>
        </div>
        <x-breadcumb>
            <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">{{ __('Home') }}</a></li>
            <li class="breadcrumb-item"><a href="{{ route('role.index') }}">{{ __('Role') }}</a></li>
            <li class="breadcrumb-item active">{{ __('Edit Role') }}</li>
        </x-breadcumb>
    </x-content-header>
    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
            <div class="col-12">
                <div class="card card-outline">
                    <div class="card-header">
                        <h5>Edit Role</h5>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <form action="{{ route('role.update', $role->id) }}" method="post">
                            @csrf
                            <div class="form-group">
                                <div class="col-md-4">
                                    <label>Role</label>
                                    <input type="text" name="jenis" class="form-control @error('jenis') is-invalid @enderror" value="{{ old('jenis') ? old('jenis') : $role->name }}" required>
                                    <x-session-error name="jenis"></x-session-error>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-4">
                                    <button class="btn btn-primary">Simpan</button>
                                </div>
                            </div>
                            <div class="row">
                                    @php
                                        $last = "";
                                        $no = 0;
                                    @endphp
                                    @foreach ($permission as $item)
                                    @php
                                        $prefix = explode(".",$item->name);
                                    @endphp
                                    @if ($last != $prefix[0])
                                        @if ($no != 0)
                                            </table>
                                            </div>
                                        @endif
                                <div class="col-md-3">
                                    <table class="table table-hover">
                                        @php
                                        $last = $prefix[0];
                                        @endphp
                                        <thead>
                                            <tr>
                                                <th>
                                                    <label>
                                                        <input class="check-all" type="checkbox" name="{{$last}}"
                                                            id="{{$last}}" data-permission="{{$last}}">
                                                            Pilih Semua {{$last}}</label>
                                                </th>
                                            </tr>
                                        </thead>
                                        @endif
                                        <tr>
                                            <td>
                                                <label>
                                                    <input type="checkbox" name="permission[]" id={{$item->name}}"
                                                    value="{{$item->id}}" data-permission="{{$last}}"
                                                    {{$role->hasPermissionTo($item->name) ? "checked" : ""}} >
                                                    {{$item->name}}
                                                </label>
                                            </td>
                                        </tr>
                                        @php
                                        $no++;
                                        @endphp
                                        @endforeach
                                    </table>
                                </div>
                        </form>
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

    @push('script')
        <script>
            document.addEventListener('DOMContentLoaded', function () {
            $('.check-all').on('change', function () {
                var permission = $(this).data('permission');
                if ($(this).is(':checked')) {
                    $('input[data-permission="' + permission + '"]').prop('checked', true);
                } else {
                    $('input[data-permission="' + permission + '"]').prop('checked', false);
                }
            });

            $('.check-all-permission').on('click', function () {
                if ($(this).is(':checked')) {
                    $('.check-all').prop('checked', true).change();
                } else {
                    $('.check-all').prop('checked', false).change();
                }
            });
        });
        </script>
    @endpush

</x-layout>
