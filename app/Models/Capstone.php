<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Casts\Attribute;
// use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Laravel\Scout\Searchable;
use Kyslik\ColumnSortable\Sortable;

class Capstone extends Model
{
    // use HasFactory, Searchable;
    use HasFactory, Searchable;


    protected $fillable = [
        'groupname',
        'title',
        'abstract'
    ];

    public function user(){
        return $this->belongsToMany(User::class)->withPivot('role_person');
        // return $this->belongsToMany(User::class,'capstone_user','capstone_id','user_id' );
    }
    public function toSearchableArray()
    {
        return [
            'groupname' => $this->groupname,
            'title' => $this->title,
            'abstract' => $this->abstract,
            'xf3' => $this->xf3,
            'xf2' => $this->xf2,
            'xf1' => $this->xf1,

        ];
    }

    public function tosortableArray()
    {
        return [
            'groupname' => $this->groupname,
            'title' => $this->title,
            'abstract' => $this->abstract,
            'xf3' => $this->xf3,
            'xf2' => $this->xf2

        ];
    }
    // public $sortable = ['id', 'groupname', 'title', 'abstract','start_date','xf1','created_at', 'updated_at'];

    
// Full texts
// id	
// groupname Descending 1	  SCHOOL YEAR 
// title	 
// abstract



    public function capstone1(){
        return $this->hasOne(Capstone1::class,'capstone_id');
    }
    public function capstone2(){
        return $this->hasOne(Capstone2::class,'capstone_id');
    }
    public function capstone3(){
        return $this->hasOne(Capstone3::class,'capstone_id');
    }
    // protected function name(): Attribute
    // {
    //     return Attribute::make(
    //         get: fn ($value) => url('/upload/'.$value),
    //     );
    // }

}
