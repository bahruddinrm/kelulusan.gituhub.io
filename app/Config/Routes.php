<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('/coba', 'Coba::index');


$routes->get('/login', 'login::index');
// $routes->get('/login/index', 'login::index', ['filter' => 'tamuFilter']);
$routes->get('/login/main', 'login::main', ['filter' => 'userFilter']);
// $routes->get('/main/index', 'main::index', ['filter' => 'userFilter']);

$routes->get('/admin', 'admin::index');
// $routes->get('/login/index', 'login::index', ['filter' => 'tamuFilter']);
$routes->get('/admin/dashboard', 'admin::dashboard', ['filter' => 'adminLogoutFilter']);
$routes->get('/admin/input', 'admin::input', ['filter' => 'adminLogoutFilter']);
// $routes->get('/main/index', 'main::index', ['filter' => 'userFilter']);
