<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Admin extends BaseController
{
    public function index()
    {
        $AdminLogin = new \App\Models\AdminModel();
        $admin = $this->request->getPost('login');
        if ($admin) {
            $username = $this->request->getPost('username');
            $password = $this->request->getPost('password');

            //error tidak menginput apapun
            if ($username == '' or $password == '') {
                $err = 'SILAHKAN MASUKKAN USERNAME DAN PASSWORD';
            }

            //error jika username tidak terdaftar
            $user = $AdminLogin->where('username', $username)->first();
            if (!$user) {
                $err = 'ADMIN TIDAK TERDAFTAR';
            }

            //error jiak password tidak sesuai
            if (empty($err)) {
                $data = $AdminLogin->where('username', $username)->first();
                if ($data['username'] != $password) {
                    $err = 'PASSWORD TIDAK SESUAI';
                }
            }
            if (empty($err)) {
                $datasesi = [
                    'username' => $data['username'],
                    'password' => $data['password'],
                    'nama_lengkap' => $data['nama_lengkap']
                ];
                session()->set($datasesi);
                return redirect()->to('/admin/dashboard');
            }
            if ($err) {
                session()->setFlashdata('username', $username);
                session()->setFlashdata('error', $err);
                return redirect()->to('admin');
            }
        }
        return view('login_admin_view');
    }
    
    public function dashboard()
    {
        $LoginModel = new \App\Models\LoginModel();
        $AdminLogin = new \App\Models\AdminModel();

        $keyword = $this->request->getVar('keyword');
        if ($keyword) {
            $siswa = $LoginModel->cari($keyword);
        } else {
            $siswa = $LoginModel;
        }

        $data =
            [
                'title' => 'DASHBOARD',
                'siswa' => $siswa->paginate(10, 'siswa'),
                'pager' => $siswa->pager
            ];
        return view('dashboard_admin_view', $data);
    }

    public function input()
    {
        $data =
            [
                'title' => 'INPUT',
            ];
        return view('input_admin_view', $data);
    }

    public function simpan()
    {
        $LoginModel = new \App\Models\LoginModel();
        $siswa = $LoginModel->findAll();

        $data =
            [
                'nisn' => $this->request->getVar('nisn'),
                'nis' => $this->request->getVar('nis'),
                'nama_lengkap' => $this->request->getVar('nama_lengkap'),
                'kelas' => $this->request->getVar('kelas'),
                'tempat_lahir' => $this->request->getVar('tempat_lahir'),
                'tanggal_lahir' => $this->request->getVar('tanggal_lahir'),
                'berkas' => $this->request->getVar('berkas')
            ];
        $LoginModel->insert($data);
        return redirect()->to('admin/dashboard');
    }

    public function delete($nisn)
    {
        $LoginModel = new \App\Models\LoginModel();
        $LoginModel->delete($nisn);
        session()->setFlashdata('pesan', "Data $nisn berhasil dihapus");
        return redirect()->to('admin/dashboard');
    }

    public function detail($nisn)
    {
        $LoginModel = new \App\Models\LoginModel();
        $detail = $LoginModel->where(['nisn' => $nisn])->first();
        $data =
            [
                'title' => 'detail',
                'detail' => $detail
            ];
        return view('detail_admin_view', $data);
    }

    public function edit($nisn)
    {
        $LoginModel = new \App\Models\LoginModel();

        $detail = $LoginModel->find($nisn);

        $data =
            [
                'title' => 'edit',
                'detail' => $detail
            ];

        return view('edit_admin_view', $data);
    }

    public function update()
    {
        $LoginModel = new \App\Models\LoginModel();
        $siswa = $LoginModel->findAll();
        $data =
            [
                'nisn' => $this->request->getVar('nisn'),
                'nis' => $this->request->getVar('nis'),
                'nama_lengkap' => $this->request->getVar('nama_lengkap'),
                'kelas' => $this->request->getVar('kelas'),
                'tempat_lahir' => $this->request->getVar('tempat_lahir'),
                'tanggal_lahir' => $this->request->getVar('tanggal_lahir'),
                'berkas' => $this->request->getVar('berkas'),
            ];
        $LoginModel->save($data);
        session()->setFlashdata('pesan', "Data berhasil diubah");
        return redirect()->to('admin/dashboard');
    }

    public function logout()
    {
        session()->destroy();
        return redirect()->to('admin');
    }
}
