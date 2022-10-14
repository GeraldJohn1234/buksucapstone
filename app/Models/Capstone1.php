<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Capstone1 extends Model
{
    use HasFactory;
    public $incrementing = false;
 

    // protected $fillable = [
    //     'status',
    //     'capstone_file',
    //     'capstone_ocr'   
    // ];

    public function capstone(){
        return $this->belongsTo(Capstone::class);
    }
    public function caps1rating(){
        return $this->hasOne(Caps1rating::class,'capstone1_id');
    }
}