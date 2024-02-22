<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
    <?php if (session()->getFlashdata('pesan')) : ?>
        <div class="alert alert-success" role="alert">
            <?= session()->getFlashdata('pesan'); ?>
        </div>
    <?php endif ?>
    <table class="table">
        <h1 align='center'>Data Siswa</h1>
        <div class="row">
            <div class="col-sm-5">
                <form action="" method="post">
                    <div class="input-group mb-3">
                        <input type="text" class="form-control" placeholder="cari..." name="keyword">
                        <button class="btn btn-outline-secondary" type="submit">Cari</button>
                    </div>
                </form>
            </div>
        </div>
        <thead>
            <tr>
                <th scope="col">NISN</th>
                <th scope="col">NIS</th>
                <th scope="col">Nama Lengkap</th>
                <th scope="col">Kelas</th>
                <th scope="col">Tempat Lahir</th>
                <th scope="col">Tanggal Lahir</th>
                <th scope="col">Aksi</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($siswa as $s) : ?>
                <tr>
                    <th scope="row"><?= $s['nisn']; ?></th>
                    <td><?= $s['nis']; ?></td>
                    <td><?= $s['nama_lengkap']; ?></td>
                    <td><?= $s['kelas']; ?></td>
                    <td><?= $s['tempat_lahir']; ?></td>
                    <td><?= $s['tanggal_lahir']; ?></td>
                    <td>
                        <a href="/admin/detail/<?= $s['nisn']; ?>" class="btn btn-success"><i class='bx bx-detail'></i></a>
                        <a href="/admin/edit/<?= $s['nisn']; ?>" class="btn btn-warning"><i class='bx bx-edit'></i></a>
                        <a href="/admin/delete/<?= $s['nisn']; ?>" class="btn btn-danger" onclick="return confirm('apakah yakin akan hapus <?= $s['nisn']; ?> ?')"><i class='bx bx-message-alt-x'></i></a>
                    </td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <?= $pager->links('siswa', 'siswa_pagination'); ?>
</div>

<?= $this->endSection(); ?>