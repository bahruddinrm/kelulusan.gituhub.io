<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Download extends BaseController
{
    public function download()
    {
        $ModelLogin = new \App\Models\LoginModel();
        $berkas = $this->request->getVar('nisn');
        $data = $ModelLogin->find('berkas');

        return $this->response->download('berkas/skl/' . $data->berkas, null);
    }

    public function proses_download()
    {
        $ModelLogin = new \App\Models\LoginModel();
    }
}
