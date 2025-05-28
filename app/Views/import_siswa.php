<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h2 align='center'>TAMBAH PESERTA DIDIK</h2>
            <form action="<?php echo base_url('admin/import_siswa'); ?>" method="post" enctype="multipart/form-data">
                <div class="mb-3">
                    <label for="file" class="form-label">Pilih File Excel</label>
                    <input type="file" name="file" class="form-control" accept=".xls,.xlsx" required>
                </div>
                <div class="row">
                    <div class="col">
                        <button type="submit" class="btn btn-primary">Import</button>
                    </div>
                    <div class="col">
                        <a href="/admin/dashboard" class="btn btn-danger float-right">Kembali</a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<?= $this->endSection(); ?>