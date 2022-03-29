<?php

namespace Database\Seeders;

use App\Models\User;
use App\Models\Pekerjaan;
use Illuminate\Database\Seeder;
use Database\Seeders\PekerjaanSeeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(PekerjaanSeeder::class);
        User::create([
            'avatar' => 'upload/avatar/user.png',
            'nama' => 'Reihan Andika AM',
            'email' => 'reiandika10@gmail.com',
            'avatar' => 'upload/avatar/user.png',
            'password' => bcrypt('admin'),
        ]);
    }
}
