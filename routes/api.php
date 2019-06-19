<?php

use Illuminate\Http\Request;



Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('/reviews', 'ReviewController');

Route::group(['prefix' => 'reviews'], function (){
    Route::apiResource('/{review}/comments', 'CommentController');
});
