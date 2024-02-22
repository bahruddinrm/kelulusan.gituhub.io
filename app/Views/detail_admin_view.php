<?= $this->extend('layout/template'); ?>
<?= $this->section('content'); ?>

<div class="container">
    <table class="table">
        <h1 align='center'><?= $detail['nama_lengkap']; ?></h1>
        <tr>
            <td style="font-weight: bold;">NISN / NIS</td>
            <td>:</td>
            <td><?= $detail['nisn']; ?> / <?= $detail['nis']; ?></td>
        </tr>
        <tr>
            <td style="font-weight: bold;">kelas</td>
            <td>:</td>
            <td><?= $detail['kelas']; ?></td>
        </tr>
        <tr>
            <td style="font-weight: bold;">Tempat, Tanggal Lahir</td>
            <td>:</td>
            <td><?= $detail['tempat_lahir']; ?>, <?= $detail['tanggal_lahir']; ?> </td>
        </tr>
        <tr>
            <td style="font-weight: bold;">Asal Sekolah</td>
            <td>:</td>
            <td><?= $detail['asal_sekolah']; ?></td>
        </tr>
        <tr>
            <td style="font-weight: bold;">Status</td>
            <td>:</td>
            <td><?= $detail['status_dinyatakan']; ?></td>
        </tr>
        <tr>
            <td style="font-weight: bold;">Link Berkas</td>
            <td>:</td>
            <td><?= $detail['berkas']; ?></td>
        </tr>
    </table>
    <a href="/admin/dashboard" class="btn btn-success">Kembali</a>
</div>

<?= $this->endSection(); ?>