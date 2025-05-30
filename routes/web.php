<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('/components/layouts/app');
});

// Route::group(['controller' => FrontController::class], function () {
//     Route::get('/personas', 'consultarPersonas'); 
// });

// Route::get('/personas', function () {
//     return view('/components/layouts/app');
// });