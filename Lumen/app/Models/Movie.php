<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $fillable = ['title', 'short_description', 'poster', 'director_id'];

    public function director()
    {
        return $this->belongsTo(Director::class);
    }
}
