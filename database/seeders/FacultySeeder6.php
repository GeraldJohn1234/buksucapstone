<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class FacultySeeder6 extends Seeder
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
            'name' => 'Dems',
            'mname' => 'S.',
            'lname' => 'Victor',
            'uid' => '1801100000',
            'gender' => 'Male',
            'email' => 'faculty6@gmail.com',
            'password' => Hash::make('facultyfaculty'),
        ]);

        $user->attachRoles(['secretary', 'panel', 'faculty', 'instructor', 'adviser']);
    }
}
