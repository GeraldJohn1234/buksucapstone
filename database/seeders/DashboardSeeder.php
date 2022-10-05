<?php

namespace Database\Seeders;

use App\Models\Capstonedashboard;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;

class DashboardSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        Capstonedashboard::create([

            'instructor1' => 0,
            'instructor2' => 0,
            'instructor3' => 0,

            'panelist' => 0,
            'students' => 0,
            'adviser' => 0,
            'co_adviser' => 0,
            'archiver' => 0,
            'secretary' => 0,
            'under_develop' => 0,
            'deploy' => 0,
            'unimplemented' => 0,

            'no_group1' => 0,
            'no_propose_def' => 0,
            'under_revision_1' => 0,
            'approved_panels_1' => 0,

            'no_group2' => 0,
            'no_prototype_def' => 0,
            'under_revision_2' => 0,
            'approved_panels_2' => 0,

            'no_group3' => 0,
            'no_final_def' => 0,
            'under_revision_3' => 0,
            'approved_panels_3' => 0,
            'xf1' => 0,
            'xf2' => 0,
            'xf3' => 'data',
            'xf4' => 'data'
        ]);
    }
}