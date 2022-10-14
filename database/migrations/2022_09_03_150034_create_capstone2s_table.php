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
        if(!Schema::hasTable('capstone2s')){
        Schema::create('capstone2s', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('capstone_id')->unsigned();



            $table->string('capstone_link')->nullable();
            $table->string('proto_minutes')->nullable();
            $table->string('proto_matrix')->nullable();
            $table->string('ad_appointment_form')->nullable();
            $table->string('gcash_payment')->nullable();
            $table->string('acceptance_ss')->nullable();

            // capstone_link
            // proto_minutes
            // proto_matrix
            // ad_appointment_form
            // gcash_payment
            // acceptance_ss


            $table->string('status')->nullable();
            $table->date('prototype_date')->nullable(); 
            $table->string('xf1')->nullable(); 
            $table->string('xf2')->nullable(); 
            $table->string('xf3')->nullable(); 

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
        Schema::dropIfExists('capstone2s');
    }
};
