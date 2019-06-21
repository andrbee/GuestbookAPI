<?php
/**
 * Created by PhpStorm.
 * User: andrbee
 * Date: 19.06.2019
 * Time: 1:19
 */

namespace App\Exceptions;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Illuminate\Auth\AuthenticationException;
use Illuminate\Database\Eloquent\ModelNotFoundException;

trait ExceptionTrait
{
    public function apiException($request,$e)
    {
        if ($this->isModel($e)) {
            return $this->ModelResponse();
        }
        if ($this->isHttp($e)) {
            return $this->HttpResponse();
        }
        if ($this->isAuth($e)) {
            return $this->AuthResponse();
        }

        return parent::render($request, $e);
    }

    protected function isModel($e)
    {
        return $e instanceof ModelNotFoundException;
    }

    protected function isHttp($e)
    {
        return $e instanceof NotFoundHttpException;
    }

    protected function isAuth($e)
    {
        return $e instanceof AuthenticationException;
    }

    protected function ModelResponse()
    {
        return response()->json(
            ['errors' => 'Model not found'],
            Response::HTTP_NOT_FOUND);
    }

    protected function HttpResponse()
    {
        return response()->json(
            ['errors' => 'Route not found'],
            Response::HTTP_NOT_FOUND);
    }

    protected function AuthResponse()
    {
        return response()->json(
            ['errors' => 'User is unauthenticated'],
            Response::HTTP_FORBIDDEN);
    }

}