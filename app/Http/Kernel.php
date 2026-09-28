<?php

namespace App\Http;

use Illuminate\Foundation\Http\Kernel as HttpKernel;

class Kernel extends HttpKernel
{
    protected $routeMiddleware = [
        'checklogin' => \App\Http\Middleware\CheckLogin::class,
    ];

}
?>