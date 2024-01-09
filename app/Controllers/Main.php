<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Main extends BaseController
{
    public function index()
    {
        return view('main_view');
    }

    public function logout()
    {
        session()->destroy();
        return redirect()->to('/login');    
    }
}
