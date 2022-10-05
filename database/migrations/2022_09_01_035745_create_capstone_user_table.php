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
        Schema::create('capstone_user', function (Blueprint $table) {
            // $table->increments('id');
            $table->integer('capstone_id')->unsigned();
            $table->integer('user_id')->unsigned();
            $table->string('role_person')->nullable();
            // $table->timestamps();
            // $table->unsignedBigInteger('capstone_id');
            // $table->unsignedBigInteger('user_id');

            $table->foreign('capstone_id')->references('id')->on('capstones')->onDelete('cascade');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
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
        Schema::dropIfExists('capstone_user');
    }
    
};