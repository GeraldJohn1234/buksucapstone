<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\User::factory(10)->create();
        $this->call(LaratrustSeeder::class);
        $this->call(AdminData::class);
        $this->call(DashboardSeeder::class);
        $this->call(Partialdata::class);

        $this->call(UserSeeder::class);
        $this->call(UserSeeder1::class);
        $this->call(UserSeeder2::class);
        $this->call(UserSeeder3::class);
        $this->call(UserSeeder4::class);

        $this->call(FacultySeeder1::class);
        $this->call(FacultySeeder2::class);
        $this->call(FacultySeeder3::class);
        $this->call(FacultySeeder4::class);
        $this->call(FacultySeeder5::class);
        $this->call(FacultySeeder6::class);
        $this->call(FacultySeeder7::class);
        $this->call(FacultySeeder8::class);

    }
}
 