<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;
use Laratrust\Traits\LaratrustUserTrait;
use Laravel\Scout\Searchable;
use Kyslik\ColumnSortable\Sortable;
use OwenIt\Auditing\Contracts\Auditable;

class User extends Authenticatable implements Auditable
{
    use LaratrustUserTrait;
    use HasApiTokens, HasFactory, Notifiable, Searchable, Sortable;
    use \OwenIt\Auditing\Auditable;
    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $primaryKey = 'id';
    // protected $primaryKey = 'id';
    protected $fillable = [
        'name',

        'mname',
        'lname',
        'uid',
        'year',
        'gender',
        'email',
        'password',
        'photo'
    ];


    public function toSearchableArray()
    {
        return [
            'name' => $this->name,
            'mname' => $this->mname,
            'lname' => $this->lname,
            'email' => $this->email,
            'year' => $this->year,

        ];
    }

    public function tosortableArray()
    {
        return [
            'name' => $this->name,
            'mname' => $this->mname,
            'lname' => $this->lname,
            'email' => $this->email,
            'year' => $this->year,
        ];
    }




    public function capstone(){
        return $this->belongsToMany(Capstone::class)->withPivot('role_person');
    }

    public function getId()
    {
        return $this->id;
    }

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array<int, string>
     */
    protected $hidden = [
        'password',
        'remember_token',
    ];

    /**
     * The attributes that should be cast.
     *
     * @var array<string, string>
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];
}
