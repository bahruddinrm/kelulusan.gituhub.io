<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- import bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- import icon -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <!-- animasi -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <title>Login</title>
</head>

<style>
    body {
        background-image: url(<?php echo base_url('image/bg.jpg') ?>);
        background-size: cover;
        background-position: center;
        height: 100vh;
        margin: 0px;
        padding: 20px;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-family: Arial, Helvetica, sans-serif;
    }

    .container {
        background-color: transparent;
        backdrop-filter: blur(20px);
        border: 1.5px solid white;
        border-radius: 10px;
        padding: 30px;
        width: max-content;
        --animate-duration: .5s;
    }

    .container h1 {
        text-align: center;
        margin: 0px 0px 10px 0px;
        padding: 10px 0px 0px 0px;
        font-size: 30px;
        font-weight: bold;
    }

    .container p {
        font-size: 12px;
        text-align: center;
        margin-bottom: 30px;
    }

    .input-box {
        width: auto;
        text-align: center;
        background: transparent;
        margin-bottom: 20px;
    }

    .input-box input {
        margin-left: 5px;
        background-color: transparent;
        border: none;
        outline: none;
        border-bottom: 2px solid white;
        color: white;
    }

    .input-box input::placeholder {
        color: white;
        align-items: center;
    }

    .alert {
        height: 40px;
    }

    .alert p {
        color: white;
        margin: 0;
        padding: 0;
    }

    .alert a {
        color: white;

    }

    .button {
        margin-top: 50px;
        background: transparent;
        text-align: center;
        width: auto;
    }

    .button input {
        background-color: white;
        width: 100px;
        border: 1px solid white;
        color: #333;
        font-weight: bold;
    }

    .button input:hover {
        color: #333;
        text-decoration: underline;
    }

    .logo img {
        height: 100px;
        width: 100px;
    }
</style>

<body>
    <div class="container col-12 mt-5 animate__animated animate__zoomIn">
        <div class="logo" style="text-align: center;"><img src="/image/logo.png" alt="smpn_1_pekalongan"></div>
        <h1>SELAMAT DATANG</h1>
        <p>Pengumuman Kelulusan SMP Negeri 1 Pekalongan</p>
        <!-- <h3 style="text-align: center;">Pengumuman Kelulusan </h3>
        <h3 style="text-align: center;">Akan Dibuka Pada Jam 15:00 WIB</h3> -->
        <form action="" method="post">
            <div class="input-box col-6">
                <i class="bx bxs-user"></i>
                <input type="text" name="nisn" id="inputnisn" value="<?php echo session()->getFlashdata('nisn'); ?>" placeholder="username" required>
            </div>
            <div class="input-box col-6">
                <i class="bx bxs-lock-alt"></i>
                <input type="password" name="nis" id="inputnis" value="<?php echo session()->getFlashdata('nis'); ?>" placeholder="password" required>
            </div>
            <?php if (session()->getFlashdata('error')) { ?>
                <div class="alert">
                    <p><?php echo session()->getFlashdata('error') ?></p>
                    <p>silahkan hubungi <a href="https://wa.me/6282226827891?">admin</a></p>
                </div>
            <?php } ?>
            <div class="button col-3">
                <input type="submit" name="login" class="btn btn-sm" value="LOGIN">
            </div>
        </form>
    </div>
</body>

</html>