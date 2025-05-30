<?php

use App\Models\Persona;

function getRoute($model){
    $ModelRoutes = [
        'Persona' => Persona::class,
    ];

    return $ModelRoutes[$model];
}