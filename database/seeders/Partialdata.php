<?php

namespace Database\Seeders;

use App\Models\Partialstorage;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class Partialdata extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Partialstorage::create([
            'id' => 1,
            'ocr' => " ",
            'xf1' => "",
            'xf2' => 0,
            'xf3' => 0,
            'xf4' => 0,
            'xf5' => "",
            'xf6' => "",
       
        ]);
    }
}
