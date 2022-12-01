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
    {if(!Schema::hasTable('caps3ratings')){
        Schema::create('caps3ratings', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('capstone3_id')->unsigned();
            $table->integer('user_id')->unsigned();

            $table->integer('background')->nullable();
            $table->integer('backgrounds')->nullable();
            $table->integer('obj1')->nullable();
            $table->integer('obj2')->nullable();
            $table->integer('obj3')->nullable();
            $table->integer('s1')->nullable();
            $table->integer('s2')->nullable();
            $table->integer('sc')->nullable();
            $table->integer('df')->nullable();
            $table->integer('lr1')->nullable();
            $table->integer('lr2')->nullable();
            $table->integer('meth1')->nullable();
            $table->integer('meth2')->nullable();
            $table->integer('meth3')->nullable();
            $table->integer('ref1')->nullable();
            $table->integer('format')->nullable();
            $table->integer('oralCom')->nullable();
            $table->integer('ppt')->nullable();
            $table->integer('attire')->nullable();
            $table->integer('resp')->nullable();
            $table->integer('total')->nullable();
            $table->integer('statusrate')->nullable();

            
            $table->string('xf1')->nullable(); 
            $table->string('xf2')->nullable(); 
            $table->string('xf3')->nullable(); 
            $table->string('xf4')->nullable();
            $table->string('xf5')->nullable();
            $table->string('xf6')->nullable();
            

            $table->foreign('capstone3_id')->references('id')->on('capstone3s')->onUpdate('cascade')->onDelete('cascade');
            $table->foreign('user_id')->references('id')->on('users')->onUpdate('cascade')->onDelete('cascade');
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
        Schema::dropIfExists('caps3ratings');
    }
};
