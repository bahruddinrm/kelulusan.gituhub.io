<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- IMPORT BOOTSTRAP -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- IMPORT ICON -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <style>
        /* Tambahkan gaya CSS tambahan di sini */
        body {
            background-color: #f8f9fa;
        }

        .center-box {
            margin: auto;
            margin-top: 20vh;
            /* Sesuaikan dengan kebutuhan Anda */
            max-width: 400px;
            /* Sesuaikan dengan lebar maksimum kotak */
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #dee2e6;
            border-radius: 5px;
        }
    </style>


    <title>Login</title>
</head>

<body>
    <div class="continer mt-5 col-5 center-box">
        <div class="card">
            <div class="card-header bg-primary text-white">
                LOGIN
            </div>
            <div class="card-body">
                <form action="" method="post">
                    <div class="mb-3">
                        <label for="nisn" class="form-label">
                            NISN
                        </label>
                        <input type="text" name="nisn" class="form-control" id="inputnisn" value="<?php echo session()->getFlashdata('nisn'); ?>" placeholder="Masukkan NISN...">
                    </div>
                    <div class="mb-3">
                        <label for="nis" class="form-label">
                            NIS
                        </label>
                        <input type="text" name="nis" class="form-control" id="inputnis" value="<?php echo session()->getFlashdata('nis'); ?>" placeholder="Masukkan NIS...">
                    </div>
                    <div class="mb-3">
                        <input type="submit" name="login" class="btn btn-primary" value="LOGIN">
                    </div>
                    <?php if (session()->getFlashdata('error')) { ?>
                        <div class="alert alert-danger" align='center'>
                            <?php echo session()->getFlashdata('error') ?>
                            <p>silahkan hibungi <a href="https://wa.me/6282298080855">admin</a></p>
                        </div>
                    <?php } ?>
                </form>
            </div>
        </div>
    </div>
</body>

</html>