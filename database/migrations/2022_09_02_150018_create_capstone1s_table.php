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
        if (!Schema::hasTable('capstone1s')) {
            Schema::create('capstone1s', function (Blueprint $table) {
                $table->increments('id');
                $table->integer('capstone_id')->unsigned();


                $table->string('revise_manuscript')->nullable();
                $table->string('action_done')->nullable();
                $table->string('mou')->nullable();
                $table->string('title_proposal_form')->nullable();
                $table->string('adviser_appointmentform')->nullable();
                $table->string('ppt')->nullable();
                $table->string('recorded_proposal')->nullable();
                $table->string('minutes')->nullable();
                $table->string('gcash_ss_file')->nullable();
                $table->string('acceptance_of_panel')->nullable();


                $table->longText('capstone_ocr')->nullable();  

                $table->string('status')->nullable();
                $table->date('propose_date')->nullable(); 
                $table->string('xf1')->nullable(); 
                $table->string('xf2')->nullable(); 
                $table->string('xf3')->nullable(); 
                $table->string('minutes1')->nullable();

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
        Schema::dropIfExists('capstone1s');
    }
};
