<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class FacultySeeder1 extends Seeder
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
            'mname' => 'S.',
            'lname' => 'Sison',
            'uid' => '1801100000',
            'gender' => 'Male',
            'email' => 'faculty1@gmail.com',
            'password' => Hash::make('facultyfaculty'),
        ]);

        // $user->attachRole('faculty');
        // $user->attachRole('instructor');
        $user->attachRoles(['secretary', 'panel', 'faculty', 'instructor', 'adviser']);
    }
}
