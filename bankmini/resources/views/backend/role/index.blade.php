<x-layout title="Role & Permisson">

   <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-3">
                <div class="col-sm-6">
                    <h1>Role & Permisson</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ route('dashboard') }}">Home</a></li>
                        <li class="breadcrumb-item item">{{ __('Role & Permisson') }}</li>
                    </ol>
                </div>
            </div>
            <div class="card">
               <div class="card-body">
                    <ul class="nav nav-pills" role="tablist">
                        <li class="nav-item mx-1"><a class="nav-link active" data-toggle="tab" href="#home">Role</a></li>
                        <li class="nav-item mx-1"><a class="nav-link" data-toggle="tab" href="#permission">Permission</a>
                        </li>
                    </ul>
               </div>
            </div>
        </div>
        <!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
          <div class="row">
            <div class="col-12">
                <div class="tab-content" id="nav-tabContent">
                    <div id="home" class="tab-pane fade show active">
                    @include('backend.role.role')
                    </div>
                    <div id="permission" class="tab-pane">
                    @include('backend.permission.permission')
                    </div>
                </div>
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
              })
              $("#example2").DataTable({
                "responsive": true, "lengthChange": true, "autoWidth": false,
              })
            });
          </script>
    @endpush

</x-layout>
