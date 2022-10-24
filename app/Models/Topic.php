<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Laravel\Scout\Searchable;
use Kyslik\ColumnSortable\Sortable;

class Topic extends Model
{
    use HasFactory, Searchable;

    //  protected $fillable = [
    //     'title','abstract',
    // ];

     public function toSearchableArray()
    {
        return [
            'client_name' => $this->client_name,
            'title' => $this->title,
            'abstract' => $this->abstract
        ];
    }

    public function tosortableArray()
    {
        return [
            'client_name' => $this->client_name,
            'title' => $this->title,
            'created_at' => $this->created_at,
            'status' => $this->status,
        ];
    }
}
