<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('capstonedashboards', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('instructor1')->nullable();
            $table->integer('instructor2')->nullable();
            $table->integer('instructor3')->nullable();

            $table->integer('panelist')->nullable();
            $table->integer('students')->nullable();
            $table->integer('adviser')->nullable();
            $table->integer('co_adviser')->nullable();
            $table->integer('archiver')->nullable();
            $table->integer('secretary')->nullable();


            $table->integer('under_develop')->nullable();
            $table->integer('deploy')->nullable();
            $table->integer('unimplemented')->nullable();


            $table->integer('no_group1')->nullable();
            $table->integer('no_propose_def')->nullable();
            $table->integer('under_revision_1')->nullable();
            $table->integer('approved_panels_1')->nullable();

            $table->integer('no_group2')->nullable();
            $table->integer('no_prototype_def')->nullable();
            $table->integer('under_revision_2')->nullable();
            $table->integer('approved_panels_2')->nullable();

            $table->integer('no_group3')->nullable();
            $table->integer('no_final_def')->nullable();
            $table->integer('under_revision_3')->nullable();
            $table->integer('approved_panels_3')->nullable();

            $table->integer('xf1')->nullable(); 
            $table->integer('xf2')->nullable();  

            $table->string('xf3')->nullable(); 
            $table->string('xf4')->nullable(); 
 
            $table->timestamps();








        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('capstonedashboards');
    }
};
