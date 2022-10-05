<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Caps2rating extends Model
{
    use HasFactory;
    public function capstone2(){
        return $this->belongsTo(Capstone2::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
}
