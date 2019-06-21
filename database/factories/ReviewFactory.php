<?php

/* @var $factory \Illuminate\Database\Eloquent\Factory */

use App\Model\Review;
use App\Model\User;
use Faker\Generator as Faker;

$factory->define(Review::class, function (Faker $faker) {
    return [
        'name' => $faker->word,
        'description' => $faker->paragraph,
        'user_id' => function () {
            return User::all()->random();
        },
    ];
});
