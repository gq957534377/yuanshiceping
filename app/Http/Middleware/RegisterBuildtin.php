<?php

namespace App\Http\Middleware;

use Closure;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Illuminate\Http\Request;

class RegisterBuildtin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        Form::registerBuiltinFields();

        Form::collectFieldAssets();

        Grid::registerColumnDisplayer();

        return $next($request);
    }
}
