<?php

use Illuminate\Http\Request;



Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});

Route::apiResource('/reviews', 'ReviewController')->middleware('auth:api');

Route::group(['prefix' => 'reviews', 'middleware' => 'auth:api'], function (){
    Route::apiResource('/{review}/comments', 'CommentController')->middleware('auth:api');
});

Route::post('/register', 'Api\AuthController@register');
Route::post('/login', 'Api\AuthController@login');