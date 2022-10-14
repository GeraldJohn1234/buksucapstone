<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class UserSeeder1 extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $user = User::create([
            'name' => 'Gerald John',

            'mname' => 'Sison',
            'lname' => 'Admin',
            'uid' => '1801100000',
            'gender' => 'Male',
            'email' => 'student1@gmail.com',
            'password' => Hash::make('studentstudent'),
        ]);

        $user->attachRole('student');
    }
}
