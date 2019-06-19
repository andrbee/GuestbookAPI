<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Model\Comment;
use App\Model\Review;
use Faker\Generator as Faker;

$factory->define(Comment::class, function (Faker $faker) {
    return [
        'review' => $faker->paragraph,
        'review_id' => function(){
            return Review::all()->random();
        },
    ];
});
