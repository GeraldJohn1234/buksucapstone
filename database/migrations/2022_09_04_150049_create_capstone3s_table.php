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
    {if(!Schema::hasTable('capstone3s')){
        Schema::create('capstone3s', function (Blueprint $table) {
            $table->increments('id');
            // $table->integer('capstone_id')->unsigned();
            $table->integer('capstone_id')->unsigned();

            
            $table->string('final_docu')->nullable();
            $table->string('proto_minutes')->nullable();
            $table->string('proto_matrix')->nullable();
            $table->string('ppt')->nullable();
            $table->string('software_demo')->nullable();
            $table->string('gcash_payment')->nullable();
            $table->string('acceptance_ss')->nullable();
            $table->string('githublink')->nullable(); 

            $table->string('status')->nullable();
            $table->date('final_date')->nullable(); 
            // final_docu  
            // proto_minutes
            // proto_matrix
            // ppt
            // software_demo
            // gcash_payment
            // acceptance_ss
            // githublink

            
            // final_date
            // status

            $table->string('xf1')->nullable(); 
            $table->string('xf2')->nullable(); 
            $table->string('xf3')->nullable(); 
            $table->string('minutes1')->nullable();
            $table->string('xf4')->nullable();
            $table->string('xf5')->nullable();
            $table->string('xf6')->nullable();
            

            $table->foreign('capstone_id')->references('id')->on('capstones')->onUpdate('cascade')->onDelete('cascade');
            $table->timestamps();
        });
    }
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('capstone3s');
    }
};
