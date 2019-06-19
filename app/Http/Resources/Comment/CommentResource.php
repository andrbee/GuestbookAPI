<?php

namespace App\Http\Resources\Comment;

use Illuminate\Http\Resources\Json\JsonResource;

class CommentResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
//            'author' => $this->name,
            'text' => $this->review,
            'href' => [
                'link' => route('reviews.show', $this->review_id)
            ]
        ];
    }
}
