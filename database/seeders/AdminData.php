<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdminData extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        // DB::table('users')->insert([
            // 'name' => 'Admin',

            // 'mname' => 'Admin',
            // 'lname' => 'Admin',
            // 'uid' => '1801100000',
            // 'gender' => 'Male',
            // 'email' => 'a1d2m3i4n@gmail.com',
            // 'password' => Hash::make('a1d2m3i4n'),

        // ]);

        $user = User::create([
            'name' => 'Admin',

            'mname' => 'Admin',
            'lname' => 'Admin',
            'uid' => '1801100000',
            'gender' => 'Male',
            'email' => 'a1d2m3i4n@gmail.com',
            'password' => Hash::make('a1d2m3i4n'),
        ]);

        $user->attachRole('administrator');
        // event(new Registered($user));

    }
}
