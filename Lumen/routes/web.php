<?php

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->get('/api/movies', 'MovieController@index');
$router->get('/api/movies/{id}', 'MovieController@show');