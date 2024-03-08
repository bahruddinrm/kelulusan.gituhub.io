<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 align='center'>EDIT PESERTA DIDIK</h2>
            <form action="/admin/update" method="post" enctype="multipart/form-data">
                <div class="row mb-3">
                    <label for="nisn" class="col-sm-2 col-form-label">NISN</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nisn" name="nisn" value="<?= $detail['nisn']; ?>" readonly>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="nis" class="col-sm-2 col-form-label">NIS</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nis" name="nis" value="<?= $detail['nis']; ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="nama_lengkap" class="col-sm-2 col-form-label">Nama Lengkap</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nama_lengkap" name="nama_lengkap" value="<?= $detail['nama_lengkap'] ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="kelas" class="col-sm-2 col-form-label">Kelas</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="kelas" name="kelas" value="<?= $detail['kelas'] ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="tempat_lahir" class="col-sm-2 col-form-label">Tempat Lahir</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="tempat_lahir" name="tempat_lahir" value="<?= $detail['tempat_lahir'] ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="tanggal_lahir" class="col-sm-2 col-form-label">Tanggal Lahir</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="tanggal_lahir" name="tanggal_lahir" value="<?= $detail['tanggal_lahir'] ?>">
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="berkas" class="col-sm-2 col-form-label">Berkas</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="berkas" name="berkas" value="<?= $detail['berkas'] ?>">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary mt-3">UPDATE</button>
            </form>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>