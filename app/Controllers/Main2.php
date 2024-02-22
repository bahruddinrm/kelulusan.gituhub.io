<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Main2 extends BaseController
{
    public function index()
    {
        $LoginModel = new \App\Models\LoginModel();

        $data =
            [
                'nisn' => $this->request->getVar('nisn'),
                'nis' => $this->request->getVar('nis'),
                'nama_lengkap' => $this->request->getVar('nama_lengkap'),
                'kelas' => $this->request->getVar('kelas'),
                'tempat_lahir' => $this->request->getVar('tempat_lahir'),
                'tanggal_lahir' => $this->request->getVar('tanggal_lahir'),
                'asal_sekolah' => $this->request->getVar('asal_sekolah'),
                'status_dinyatakan' => $this->request->getVar('status_dinyatakan'),
                'berkas' => $this->request->getVar('berkas'),
            ];
        return view('main_view', $data);
    }

    public function download($nisn)
    {
        $LoginModel = new \App\Models\LoginModel();
        $berkas = $LoginModel->find($nisn);
        return $this->response->download('berkas/'.$berkas->berkas,null);
    }

    public function logout()
    {
        session()->destroy();
        return redirect()->to('/login');
    }
}
