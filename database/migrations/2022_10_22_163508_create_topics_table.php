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
        Schema::create('topics', function (Blueprint $table) {
            $table->id();

            $table->longText('title')->nullable();
            $table->longText('abstract')->nullable();
            $table->string('client_name')->nullable();
            $table->string('client_location')->nullable();
            $table->string('client_company')->nullable();
            $table->date('date_upload')->nullable();
            $table->integer('uploader_id')->nullable();
            $table->string('group')->nullable();
            $table->string('status')->nullable();

            // title
            // abstract
            // client_name
            // client_location
            // client_company



            
            $table->string('xf1')->nullable();
            $table->string('xf2')->nullable();
            $table->string('xf3')->nullable();
            $table->longText('xf4')->nullable();
            $table->integer('xf5')->nullable();
            $table->integer('xf6')->nullable();
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
        Schema::dropIfExists('topics');
    }
};
