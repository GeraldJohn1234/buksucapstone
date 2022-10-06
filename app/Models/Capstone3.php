<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Capstone3 extends Model
{
    use HasFactory;
    public $incrementing = false;

    // protected $fillable = [
    //     'status',
    // ];

    public function capstone(){
        return $this->belongsTo(Capstone::class);
    }
    public function caps3rating(){
        return $this->hasOne(Caps3rating::class,'capstone3_id');
    }
}