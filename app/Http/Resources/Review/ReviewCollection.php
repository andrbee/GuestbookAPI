<?php

namespace App\Http\Resources\Review;

use Illuminate\Http\Resources\Json\Resource;
use App\Model\User;
use App\Model\Role;

class ReviewCollection extends Resource
{
    /**
     * Transform the resource collection into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $user = User::where('id', $this->user_id)->first();
        return [
            'name' => $this->name,
            'author' => [
                'name' => $user->name,
                'role' => Role::where('id', $user->role_id)->first()->name,
            ],
            'count_comments' => $this->comments->count(),
            'href' => [
                'link' => route('reviews.show', $this->id)
            ]
        ];
    }
}
