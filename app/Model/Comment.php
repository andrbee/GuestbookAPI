<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Comment extends Model
{
    protected $fillable = [
        'review'
    ];
    public function review()
    {
        return $this->belongsTo(Review::class);
    }
}
