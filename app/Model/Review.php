<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    public function comments()
    {
        return $this->hasMany(Comment::class);
    }
}
