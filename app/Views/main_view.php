<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- animasi -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />
    <title>Halaman Utama</title>
</head>

<style>
    body {
        background-image: url(<?php echo base_url('image/bg.jpg') ?>);
        background-size: cover;
        background-position: center;
        height: 100vh;
        margin: 0px;
        padding: 20px;
        /* display: flex; */
        align-items: center;
        justify-content: center;
        color: white;
        font-family: Arial, Helvetica, sans-serif;
    }

    .container {
        margin-top: 20px;

    }

    .card-header {
        background-color: #7393B3;
        text-align: center;
    }

    .card-header h3 {
        font-size: 30px;
        font-weight: bold;
    }

    @media print {
        @page{
            margin-top: 30px;
            margin-bottom: 10px;
        }
        footer, tr:nth-child(8), a#debug-icon-link{
            display: none;
        }
    }
</style>

<body>

    <div class="container animate__animated animate__zoomIn">
        <div class="card">
            <div class="card-header">
                <h3>IDENTITAS PESERTA DIDIK</h3>
            </div>

            <div class="card-body">
                <table class="table">
                    <tr>
                        <td style="font-weight: bold;">NAMA LENGKAP</td>
                        <td>:</td>
                        <td><?= $nama_lengkap ?></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;">NISN</td>
                        <td>:</td>
                        <td><?= $nisn ?></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;">KELAS</td>
                        <td>:</td>
                        <td><?= $kelas ?></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;">TEMPAT/TANGGAL LAHIR</td>
                        <td>:</td>
                        <td><?= $tempat_lahir ?> / <?= $tanggal_lahir ?></td>
                    </tr>
                    <tr>
                        <td style="font-weight: bold;">ASAL SEKOLAH</td>
                        <td>:</td>
                        <td><?= $asal_sekolah ?></td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="font-weight: bold;">
                            Status Kelulusan Dinyatakan
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="font-family: Arial Black, Helvetica, sans-serif;">
                            <h1><?= $status_dinyatakan ?></h1>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="3" align="center" style="font-weight: bold;">
                            <!-- <a class="btn btn-warning" href="/main2/download/< ?= $berkas ?>">Download SKL</a> -->
                            <!-- <a class="btn btn-success" href="/main2/nilai/< ?= $berkas ?>">Download Nilai 5 Semester</a> -->
                            <a class="btn btn-success" href="#" id="printPage">Cetak</a>
                            <a href="<?php echo site_url('login/logout'); ?>" class="btn btn-primary ms-5">LOGOUT</a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
</body>

<script>
    document.getElementById("printPage").addEventListener("click", function() {
        window.print();
    })
</script>

<footer class="bg-body-tertiary text-center text-lg-start">
    <!-- Copyright -->
    <div class="text-center p-1" style="background-color: rgba(0, 0, 0, 0.05);">
        © 2023 Copyright:
        <a href="https://www.instagram.com/bahruddinrm_/" style="text-decoration: none; color: white;">Br</a> | All Right Reserved
    </div>
    <!-- Copyright -->
</footer>

</html>