<!-- Main Sidebar Container -->
        <aside class="main-sidebar sidebar-dark-primary elevation-4">
            <!-- Brand Logo -->
            <a href="{{ route('dashboard') }}" class="brand-link">
                <img src="{{ asset($setting->logo) }}" alt="{{ $setting->sekolah }} Logo" class="brand-image shadow-lg" />
                <span class="brand-text h4">{{ $setting->judul_situs }}</span>
            </a>

            <!-- Sidebar -->
            <div class="sidebar os-host os-theme-light os-host-resize-disabled os-host-transition os-host-scrollbar-horizontal-hidden os-host-scrollbar-vertical-hidden">
                <!-- Sidebar user panel -->
                <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                    <div class="image">
                        <img src="{{ asset(Auth::user() ?  Auth::user()->avatar : Auth::guard('siswa')->user()->foto ) }}" class="img-circle elevation-2" style="width: 40px;" alt="User Image" />
                    </div>
                    <div class="dropdown">
                        <a class="user-nama" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <p>{{ Str::substr(Auth::user() ? Auth::user()->nama : Auth::guard('siswa')->user()->nama, 0, 18) }}</p>
                            <p class="level text-muted">{{ Auth::user() ? Auth::user()->roles[0]->name : Auth::guard('siswa')->user()->nis  }}</p>
                        </a>
                        <div class="dropdown-menu bg-dark border-0 shadow-lg" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#"><i class="fa fa-user text-primary pr-1"></i> Profil</a>
                            @can('ubahpassword')
                            <a class="dropdown-item" href="#"><i class="fa fa-lock text-success pr-1"></i> Ubah Password</a>
                            @endcan
                            <div class="dropdown-divider"></div>
                            <a role="button" class="dropdown-item logout" data-nama="{{ $setting->judul_situs }}"><i class="fa fa-sign-out-alt text-danger pr-1"></i> Keluar</a>
                        </div>
                    </div>
                </div>
                <!-- SidebarSearch Form -->
                <div class="form-inline">
                    <div class="input-group" data-widget="sidebar-search">
                        <input class="form-control form-control-sidebar" type="search" placeholder="Search..." aria-label="Search" />
                    <div class="input-group-append">
                        <button class="btn btn-sidebar">
                            <i class="fas fa-search fa-fw"></i>
                        </button>
                    </div>
                    </div>
                </div>
                <!-- Sidebar Menu -->
                <nav class="mt-2">
                  <ul class="nav nav-pills nav-sidebar flex-column nav-flat nav-child-indent" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                    with font-awesome or any other icon font library -->
                    <li class="nav-header">MENU UTAMA</li>
                    <li class="nav-item">
                        <a href="{{ route('dashboard') }}" class="nav-link {{ set_active(['dashboard']) }}">
                            <i class="nav-icon fas fa-tachometer-alt"></i>
                            <p>{{ __('Dashboard') }}</p>
                        </a>
                    </li>
                    @can('pengelola')
                    <li class="nav-header">PILIHAN MENU</li>
                    @canany(['pengguna.index', 'role.index', 'kenaikan.index'])
                    <li class="nav-item nav-item {{ set_menu_open(['pengguna.index', 'pengguna.create', 'pengguna.edit', 'kenaikan.index']) }}">
                        <a href="#" class="nav-link {{ set_active(['pengguna.index', 'pengguna.create', 'pengguna.edit', 'kenaikan.index']) }}">
                            <i class="nav-icon fas fa-copy"></i>
                            <p>
                                Data Master
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('pengguna.index')
                            <li class="nav-item">
                                <a href="{{ route('pengguna.index') }}" class="nav-link {{ set_active_sub(['pengguna.index', 'pengguna.create', 'pengguna.edit']) }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ __('Pengguna') }}</p>
                                </a>
                            </li>
                            @endcan
                            @can('kenaikan.index')
                            <li class="nav-item">
                                <a href="{{ route('kenaikan.index') }}" class="nav-link {{ set_active_sub(['kenaikan.index']) }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ __('Kenaikan Siswa') }}</p>
                                </a>
                            </li>
                            @endcan
                        </ul>
                    </li>
                    @endcanany
                    @canany(['jurusan.index', 'kelas.index', 'tahunakademik.index', 'danaawal.index'])
                    <li class="nav-item nav-item {{ set_menu_open(['tahunakademik.index', 'kelas.index', 'danaawal.index', 'jurusan.index']) }}">
                        <a href="#" class="nav-link {{ set_active(['tahunakademik.index', 'kelas.index', 'danaawal.index', 'jurusan.index']) }}">
                            <i class="fas fa-clone nav-icon"></i>
                            <p>
                                Referensi
                                <i class="fas fa-angle-left right"></i>
                            </p>
                        </a>
                        <ul class="nav nav-treeview">
                            @can('jurusan.index')
                            <li class="nav-item">
                                <a href="{{ route('jurusan.index') }}" class="nav-link {{ set_active_sub(['jurusan.index']) }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ __('Jurusan') }}</p>
                                </a>
                            </li>
                            @endcan
                            @can('kelas.index')
                            <li class="nav-item">
                                <a href="{{ route('kelas.index') }}" class="nav-link {{ set_active_sub(['kelas.index']) }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ __('Kelas') }}</p>
                                </a>
                            </li>
                            @endcan
                            @can('tahunakademik.index')
                            <li class="nav-item">
                                <a href="{{ route('tahunakademik.index')}}" class="nav-link {{ set_active_sub(['tahunakademik.index']) }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ __('Tahun Akademik') }}</p>
                                </a>
                            </li>
                            @endcan
                            @can('danaawal.index')
                            <li class="nav-item">
                                <a href="{{ route('danaawal.index')}}" class="nav-link {{ set_active_sub(['danaawal.index']) }}">
                                    <i class="far fa-circle nav-icon"></i>
                                    <p>{{ __('Dana Awal Tahun') }}</p>
                                </a>
                            </li>
                            @endcan
                        </ul>
                    </li>
                    @endcanany
                    @can('siswa.index')
                    <li class="nav-item">
                        <a href="{{ route('siswa.index') }}" class="nav-link
                                                                            {{
                                                                                set_active([
                                                                                    'siswa.index', 'siswa.create', 'siswa.edit','siswa.show',
                                                                                    'tabungan.index', 'tabungan.create', 'tabungan.edit',
                                                                                    'pembayaran.index', 'pembayaran.create', 'pembayaran.edit', 'pembayaran.tagihan',
                                                                                ])
                                                                            }}">
                            <i class="nav-icon fas fa-user-graduate"></i>
                            <p>{{ __('Siswa') }}</p>
                        </a>
                    </li>
                    @endcan
                    @canany(['laporantabungan.index', 'laporantunggakan.index'])
                    <li class="nav-item nav-item {{ set_menu_open(['laptabungan.index', 'laporantunggakan.index', 'laporantunggakan.sisatagihan']) }}">
                        <a href="#" class="nav-link {{ set_active(['laptabungan.index', 'laporantunggakan.index', 'laporantunggakan.sisatagihan']) }}">
                        <i class="fas fa-book nav-icon"></i>
                          <p>
                            {{ __('Laporan') }}
                            <i class="fas fa-angle-left right"></i>
                          </p>
                      </a>
                      <ul class="nav nav-treeview">
                        @can('laporantabungan.index')
                        <li class="nav-item">
                          <a href="{{ route('laptabungan.index') }}" class="nav-link {{ set_active_sub(['laptabungan.index']) }}">
                            <i class="far fa-circle nav-icon"></i>
                              <p>{{ __('Tabungan') }}</p>
                          </a>
                        </li>
                        @endcan
                        @can('laporantunggakan.index')
                        <li class="nav-item">
                          <a href="{{ route('laporantunggakan.index') }}" class="nav-link {{ set_active_sub(['laporantunggakan.index', 'laporantunggakan.sisatagihan']) }}">
                            <i class="far fa-circle nav-icon"></i>
                              <p>{{ __('Tunggakan') }}</p>
                          </a>
                        </li>
                        @endcan
                      </ul>
                    </li>
                    @endcanany
                    @endcan
                    <li class="nav-item nav-item {{ set_menu_open(['statistiktabungan.index', 'statistikpembayaran.index']) }}">
                        <a href="#" class="nav-link {{ set_active(['statistiktabungan.index', 'statistikpembayaran.index']) }}">
                        <i class="fas fa-chart-bar nav-icon"></i>
                          <p>
                            {{ __('Statistik') }}
                            <i class="fas fa-angle-left right"></i>
                          </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <a href="{{ route('statistiktabungan.index') }}" class="nav-link {{ set_active_sub(['statistiktabungan.index']) }}">
                            <i class="far fa-circle nav-icon"></i>
                              <p>{{ __('Tabungan') }}</p>
                          </a>
                        </li>
                        @can('statistik.pembayaran')
                        <li class="nav-item">
                          <a href="{{ route('statistikpembayaran.index') }}" class="nav-link {{ set_active_sub(['statistikpembayaran.index']) }}">
                            <i class="far fa-circle nav-icon"></i>
                              <p>{{ __('Pembayaran') }}</p>
                          </a>
                        </li>
                        @endcan
                      </ul>
                    </li>
                    <li class="nav-item nav-item {{ set_menu_open(['historytabungan.index', 'tunggakan.index', 'historytransaksi.index', 'historytransaksi.tagihan']) }}">
                        <a href="#" class="nav-link {{ set_active(['historytabungan.index', 'tunggakan.index', 'historytransaksi.index', 'historytransaksi.tagihan']) }}">
                        <i class="fa fa-edit nav-icon"></i>
                          <p>
                            {{ __('History') }}
                            <i class="fas fa-angle-left right"></i>
                          </p>
                      </a>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <a href="{{ route('historytabungan.index') }}" class="nav-link {{ set_active_sub(['historytabungan.index']) }}">
                            <i class="far fa-circle nav-icon"></i>
                              <p>{{ __('Tabungan') }}</p>
                          </a>
                        </li>
                      </ul>
                      <ul class="nav nav-treeview">
                        <li class="nav-item">
                          <a href="{{ route('historytransaksi.index') }}" class="nav-link {{ set_active_sub(['historytransaksi.index', 'historytransaksi.tagihan']) }}">
                            <i class="far fa-circle nav-icon"></i>
                              <p>{{ __('Pembayaran') }}</p>
                          </a>
                        </li>
                      </ul>
                    </li>
                    @can('pengelola')
                    <li class="nav-item nav-item {{ set_menu_open(['setting.index', 'role.index', 'role.create', 'role.edit']) }}">
                        <a href="#" class="nav-link {{ set_active(['setting.index', 'role.index', 'role.create', 'role.edit']) }}">
                        <i class="fa fa-cog nav-icon"></i>
                          <p>
                            {{ __('Setting') }}
                            <i class="fas fa-angle-left right"></i>
                          </p>
                      </a>
                       <ul class="nav nav-treeview">
                        @can('setting.index')
                        <li class="nav-item">
                            <a href="{{ route('setting.index') }}" class="nav-link {{ set_active_sub(['setting.index']) }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Situs') }}</p>
                            </a>
                        </li>
                        @endcan
                        @can('role.index')
                        <li class="nav-item">
                            <a href="{{ route('role.index') }}" class="nav-link {{ set_active_sub(['role.index', 'role.create', 'role.edit']) }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>{{ __('Role & Permission') }}</p>
                            </a>
                        </li>
                        @endcan
                       </ul>
                    </li>
                    @endcan
                  </ul>
              </nav>
                <!-- /.sidebar-menu -->
            </div>
            <!-- /.sidebar -->
        </aside>
