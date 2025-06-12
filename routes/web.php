<?php

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('/components/layouts/app');
});

Route::get('/test', function () {
    return view('test');
});