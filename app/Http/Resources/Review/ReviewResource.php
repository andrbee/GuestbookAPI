<?php

namespace App\Http\Resources\Review;

use Illuminate\Http\Resources\Json\JsonResource;
use App\Model\User;
use App\Model\Role;

class ReviewResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        $user = User::where('id', $this->user_id)->first();
        return [
            'name' => $this->name,
            'text' => $this->description,
            'author' => [
                'name' => $user->name,
                'role' => Role::where('id', $user->role_id)->first()->name,
            ],
            'href' => [
                'comments' => route('comments.index', $this->id)
            ]
        ];
    }
}
