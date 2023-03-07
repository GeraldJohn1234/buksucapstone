<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Caps1rating extends Model
{
 
    use HasFactory;
    public function capstone1(){
        return $this->belongsTo(Capstone1::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
}
