<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder3 extends Seeder
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
            'name' => 'Phebe',
            'mname' => 'Alcairo',
            'lname' => 'Billones',
            'uid' => '1801100000',
            'gender' => 'Female',
            'email' => 'student3@gmail.com',
            'password' => Hash::make('studentstudent'),
        ]);

        $user->attachRole('student');
    }
}
