<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Caps3rating extends Model
{
    use HasFactory;
    public function capstone3(){
        return $this->belongsTo(Capstone3::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
}
