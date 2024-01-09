<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');


$routes->get('/login', 'login::index');
// $routes->get('/login/index', 'login::index', ['filter' => 'tamuFilter']);
$routes->get('/main', 'main::index', ['filter' => 'userFilter']);
// $routes->get('/main/index', 'main::index', ['filter' => 'userFilter']);
