<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Halaman Utama</title>
</head>

<body>

    <div class="container mt-4" style="min-height: 100vh;">
        <div class="card">
            <div class="card-header bg-success text-white" align="center">
                <h6>IDENTITAS PESERTA DIDIK</h6>
            </div>

            <div class="card-body">
                <table class="table">
                    <tr class="success">
                        <td>NAMA LENGKAP</td>
                        <td>:</td>
                        <td><?php echo session()->get('nama_lengkap'); ?></td>
                    </tr>
                    <tr>
                        <td>NISN</td>
                        <td>:</td>
                        <td><?php echo session()->get('nisn'); ?></td>
                    </tr>
                    <tr>
                        <td>KELAS</td>
                        <td>:</td>
                        <td><?php echo session()->get('kelas'); ?></td>
                    </tr>
                    <tr>
                        <td>TEMPAT/TANGGAL LAHIR</td>
                        <td>:</td>
                        <td><?php echo session()->get('tempat_lahir'); ?> / <?php echo session()->get('tanggal_lahir'); ?></td>
                    </tr>
                    <tr>
                        <td>ASAL SEKOLAH</td>
                        <td>:</td>
                        <td><?php echo session()->get('asal_sekolah'); ?></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            Status Kelulusan Dinyatakan
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center">
                            <h1><?php echo session()->get('status_dinyatakan'); ?></h1>
                        </td>
                    </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <a href="<?= base_url();?> /download/download" class="btn btn-warning me-5">CETAK SKL</a>
                                <a href="<?php echo site_url('main/logout'); ?>" class="btn btn-primary ms-5">LOGOUT</a>
                            </td>
                        </tr>
                </table>
            </div>
        </div>
    </div>
</body>

<footer class="bg-body-tertiary text-center text-lg-start">
    <!-- Copyright -->
    <div class="text-center p-1" style="background-color: rgba(0, 0, 0, 0.05);">
        © 2023 Copyright:
        <a class="text-body" href="https://www.instagram.com/bahruddinrm_/">Br</a> | All Right Reserved
    </div>
    <!-- Copyright -->
</footer>

</html>