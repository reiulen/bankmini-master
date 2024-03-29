<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Pekerjaan;
use App\Models\TabunganSiswa;
use App\Models\PembayaranSiswa;
use Illuminate\Database\Seeder;
use Database\Seeders\PekerjaanSeeder;
use Database\Seeders\PermissionSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call([
        //     KelasSeeder::class,
        //     // JurusanSeeder::class,
        //     // RoleSeeder::class,
        //     // PekerjaanSeeder::class,
        //     // PermissionSeeder::class,
        // ]);

        TabunganSiswa::factory(10000)->create();
    }
}
