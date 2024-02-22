<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Login extends BaseController
{
    public function index()
    {
        $ModelLogin = new \App\Models\LoginModel();
        $login = $this->request->getPost('login');
        if ($login) {
            $nisn = $this->request->getPost('nisn');
            $nis = $this->request->getPost('nis');

            // ERROR JIKA TIDAK MENGINPUTKAN APAPUN
            if ($nisn == '' or $nis == '') {
                $err = 'Silahkan masukkan nisn dan nis';
            }

            // ERROR JIKA USERNAME TIDAK TERDAFTAR
            $user = $ModelLogin->where('nisn', $nisn)->first();
            if (!$user) {
                $err = 'SISWA TIDAK TERDAFTAR DI SMP N 1 PEKALONGAN';
            }

            // ERROR JIKA PASSWORD TIDAK SESUAI
            if (empty($err)) {
                $data = $ModelLogin->where('nisn', $nisn)->first();
                if ($data['nis'] != $nis) {
                    $err = 'PASSWORD (NIS) TIDAK SESUAI';
                }
            }
            if (empty($err)) {
                $dataSesi = [
                    'nisn' => $data['nisn'],
                    'nis' => $data['nis'],
                    'nama_lengkap' => $data['nama_lengkap'],
                    'kelas' => $data['kelas'],
                    'tempat_lahir' => $data['tempat_lahir'],
                    'tanggal_lahir' => $data['tanggal_lahir'],
                    'asal_sekolah' => $data['asal_sekolah'],
                    'status_dinyatakan' => $data['status_dinyatakan'],
                    'berkas' => $data['berkas'],
                ];
                session()->set($dataSesi);
                return redirect()->to('/login/main');
            }
            if ($err) {
                session()->setFlashdata('nisn', $nisn);
                session()->setFlashdata('error', $err);
                return redirect()->to('login');
            }
        }
        return view('login_view');
    }

    public function main()
    {
        return view('main_view');
    }

    public function logout()
    {
        session()->destroy();
        return redirect()->to('/login');
    }
}
