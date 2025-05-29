<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<style>
    .table-hover tbody tr:hover {
        background-color: #f1f1f1;
    }

    .table td,
    .table th {
        vertical-align: middle;
    }
</style>

<div class="container mt-4">

    <?php if (session()->getFlashdata('pesan')) : ?>
        <div class="alert alert-success alert-dismissible fade show" role="alert">
            <?= session()->getFlashdata('pesan'); ?>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>
    <?php endif ?>

    <div class="d-flex justify-content-between align-items-center mb-3">
        <h2 class="fw-bold text-primary">Data Siswa</h2>
        <a href="/admin/import_siswa_view" class="btn btn-sm btn-primary shadow-sm" title="Import Siswa">
            <i class="bi bi-file-earmark-arrow-up"></i> Import Siswa
        </a>
    </div>

    <form action="" method="post" class="mb-3">
        <div class="input-group">
            <input type="text" class="form-control shadow-sm" placeholder="Cari berdasarkan nama/NISN..." name="keyword">
            <button class="btn btn-outline-primary" type="submit"><i class="bi bi-search"></i> Cari</button>
        </div>
    </form>

    <div class="table-responsive">
        <table class="table table-bordered table-hover shadow-sm">
            <thead class="table-light">
                <tr>
                    <th>NISN</th>
                    <th>NIS</th>
                    <th>Nama Lengkap</th>
                    <th>Kelas</th>
                    <th>Tempat Lahir</th>
                    <th>Tanggal Lahir</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($siswa as $s) : ?>
                    <tr>
                        <td><?= $s['nisn']; ?></td>
                        <td><?= $s['nis']; ?></td>
                        <td><?= $s['nama_lengkap']; ?></td>
                        <td><?= $s['kelas']; ?></td>
                        <td><?= $s['tempat_lahir']; ?></td>
                        <td><?= $s['tanggal_lahir']; ?></td>
                        <td>
                            <a href="/admin/detail/<?= $s['nisn']; ?>" class="btn btn-sm btn-success" title="Detail">
                                <i class="bi bi-info-circle"></i>
                            </a>
                            <a href="/admin/edit/<?= $s['nisn']; ?>" class="btn btn-sm btn-warning" title="Edit">
                                <i class="bi bi-pencil-square"></i>
                            </a>
                            <a href="/admin/delete/<?= $s['nisn']; ?>" class="btn btn-sm btn-danger" title="Hapus"
                                onclick="return confirm('Apakah yakin ingin menghapus <?= $s['nisn']; ?>?')">
                                <i class="bi bi-trash"></i>
                            </a>
                        </td>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>

    <div class="mt-3">
        <?= $pager->links('siswa', 'siswa_pagination'); ?>
    </div>

</div>

<?php if (session()->getFlashdata('pesan')) : ?>
    <script>
        Swal.fire({
            icon: 'success',
            title: 'Berhasil!',
            text: '<?= session()->getFlashdata('pesan'); ?>',
            showConfirmButton: false,
            timer: 2000
        });
    </script>
<?php endif; ?>

<?= $this->endSection(); ?>