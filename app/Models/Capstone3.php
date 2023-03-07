<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use OwenIt\Auditing\Contracts\Auditable;

class Capstone3 extends Model implements Auditable
{
    use HasFactory;
    use \OwenIt\Auditing\Auditable;
    public $incrementing = false;

    public function capstone(){
        return $this->belongsTo(Capstone::class);
    }
    public function caps3rating(){
        return $this->hasOne(Caps3rating::class,'capstone3_id');
    }
}