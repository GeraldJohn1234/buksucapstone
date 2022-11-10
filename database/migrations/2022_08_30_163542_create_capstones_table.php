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
        Schema::create('capstones', function (Blueprint $table) {
            $table->increments('id');
            $table->string('groupname');
            $table->string('title');
            $table->longText('abstract');

            $table->date('start_date')->nullable(); 
            $table->string('xf1')->nullable(); 
            $table->string('xf2')->nullable(); 
            $table->string('xf3')->nullable(); 
            $table->string('xf4')->nullable(); 
            $table->string('xf5')->nullable(); 
            $table->string('name')->nullable();
            $table->string('path')->nullable();
            $table->timestamps();


            // $table->increments('id');
            // $table->integer('capstone_id');
            // $table->integer('user_id');
            
            // $table->foreign('capstone_id')
            //     ->references('id')
            //     ->on('capstones')
            //     ->onDelete('cascade');

            // $table->foreign('user_id')
            //     ->references('id')
            //     ->on('users')
            //     ->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Schema::disableForeignKeyConstraints();
        Schema::dropIfExists('capstones');
    }
};
