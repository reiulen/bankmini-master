<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;

class PermissionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            'pengguna.index',
            'role.index',
            'jurusan.index',
            'kelas.index',
            'tahunakademik.index',
            'dana.index',
            'siswa.index',
            'siswa.create',
            'siswa.update',
            'siswa.delete',
            'siswa.read',
            'pengguna.create',
            'pengguna.edit',
            'pengguna.delete',
        ];

        foreach($data as $row){
            Permission::create([
                'name' => $row,
                'guard_name' => 'web',
            ]);
        }
    }
}
