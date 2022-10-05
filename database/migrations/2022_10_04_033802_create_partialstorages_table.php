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
        Schema::create('partialstorages', function (Blueprint $table) {
            $table->id();
            $table->longText('ocr')->nullable();
            $table->string('xf1')->nullable();
            $table->integer('xf2')->nullable();
            $table->integer('xf3')->nullable();
            $table->integer('xf4')->nullable();
            $table->string('xf5')->nullable();
            $table->string('xf6')->nullable();
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
        Schema::dropIfExists('partialstorages');
    }
};
