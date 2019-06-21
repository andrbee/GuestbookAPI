<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class User extends Model
{
    public function reviews()
    {
        return $this->hasMany(Review::class);
    }

    public function role()
    {
        return $this->belongsTo(Role::class);
    }
}
