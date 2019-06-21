<?php

namespace App\Http\Controllers;

use App\Http\Resources\Comment\CommentResource;
use App\Model\Comment;
use App\Model\Review;
use App\Http\Requests\CommentRequest;
use App\Model\Role;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Response;
use Illuminate\Validation\Validator;

class CommentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Review $review)
    {
        return CommentResource::collection($review->comments);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request $request
     * @return \Illuminate\Http\Response
     */
    public function store(CommentRequest $request, Review $review)
    {
        $isAdmin = Role::where('name', 'admin')->first()->id;
        $role = Auth::user()->role_id;

        if ($role !== $isAdmin) {
            return response(['errors' => 'User isn\'t admin'], Response::HTTP_FORBIDDEN);
        }
        $comment = new Comment($request->all());
        $review->comments()->save($comment);

        return response([
            'data' => new CommentResource($comment)
        ], Response::HTTP_CREATED);
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Comment $comment
     * @return \Illuminate\Http\Response
     */
    public function show(Review $review)
    {
        return new CommentResource($review);
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Comment $comment
     * @return \Illuminate\Http\Response
     */
    public function destroy(Comment $comment)
    {
        //
    }
}
