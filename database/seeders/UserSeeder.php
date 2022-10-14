<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        $user = User::create([
            'name' => 'John',

            'mname' => 'Sison',
            'lname' => 'Admin',
            'uid' => '1801100000',
            'gender' => 'Male',
            'email' => 'archiver@gmail.com',
            'password' => Hash::make('archiverarchiver'),
        ]);

        $user->attachRole('archiver');
    }
}
