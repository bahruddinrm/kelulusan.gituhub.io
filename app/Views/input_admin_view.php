<?= $this->extend('layout/template'); ?>
<?= $this->section('content') ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 align='center'>TAMBAH PESERTA DIDIK</h2>
            <form action="/admin/simpan" method="post" enctype="multipart/form-data">
                <div class="row mb-3">
                    <label for="nisn" class="col-sm-2 col-form-label">NISN</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nisn" name="nisn" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="nis" class="col-sm-2 col-form-label">nis</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nis" name="nis" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="nama_lengkap" class="col-sm-2 col-form-label">nama_lengkap</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nama_lengkap" name="nama_lengkap" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="kelas" class="col-sm-2 col-form-label">kelas</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="kelas" name="kelas" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="tempat_lahir" class="col-sm-2 col-form-label">tempat_lahir</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="tempat_lahir" name="tempat_lahir" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="tanggal_lahir" class="col-sm-2 col-form-label">tanggal_lahir</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="tanggal_lahir" name="tanggal_lahir" required>
                    </div>
                </div>
                <div class="row mb-3">
                    <label for="berkas" class="col-sm-2 col-form-label">berkas</label>
                    <div class="col-sm-10">
                        <input type="file" class="form-control" id="berkas" name="berkas">
                    </div>
                </div>
                <button type="submit" class="btn btn-primary mt-3">SIMPAN</button>
            </form>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>