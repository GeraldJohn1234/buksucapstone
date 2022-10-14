<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class FacultySeeder2 extends Seeder
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
            'name' => 'rald',
            'mname' => 'S.',
            'lname' => 'Hiponia',
            'uid' => '1801100000',
            'gender' => 'Male',
            'email' => 'faculty2@gmail.com',
            'password' => Hash::make('facultyfaculty'),
        ]);

        // $user->attachRole('faculty');
        // $user->attachRole('instructor');
        $user->attachRoles(['secretary', 'panel', 'faculty', 'instructor', 'adviser']);
    }
}
