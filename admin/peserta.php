<?php
session_start();
if (!isset($_SESSION["email_admin"])) {
    header("Location: index.php");
}
include "koneksi.php";
$kon = new Koneksi();

$lomba = $_SESSION['jenislomba'];

// Menambahkan kondisi untuk jenis_lomba 'plc', 'lkti', atau 'ffr'
$get_parameter = '';
if ($lomba == 'plc') {
    $get_parameter = '?lomba=plc';
} elseif ($lomba == 'lkti') {
    $get_parameter = '?lomba=lkti';
} elseif ($lomba == 'ffr') {
    $get_parameter = '?lomba=ffr';
} elseif($lomba == 'lf') {
    $get_parameter = '?lomba=lf';
}

$abc = $kon->kueri("SELECT lp.`id_peserta`, lp.`nama_tim`, lp.`nama`, lp.`nama_anggota1`, lp.`nama_anggota2`, lp.`sekolah`, lp.`email`, lp.`telp`, lp.`pass`, lp.`jenis_lomba`, lp.`bidanglomba`, lp.`judul_abstrak`, lp.`proses`, b.*
FROM `login_peserta` AS lp
LEFT JOIN `tb_bukti` AS b
ON lp.`id_peserta` = b.`id_peserta`
WHERE lp.`id_peserta` > 1 AND lp.`jenis_lomba` = '$lomba'
ORDER BY lp.`proses` DESC");
$no = 0;
?>

<!DOCTYPE html>
<html lang="en">

<?php include "header.php" ?>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <?php include "sidebar.php" ?>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <?php include "topbar.php" ?>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Begin Page Content -->
                    <div class="container-fluid">
                        <div class="card shadow mb-4">

                            <div class="card shadow mb-4">
                                <div class="card-header py-3">
                                    <a href="excelpeserta.php<?= $get_parameter ?>" class="btn btn-outline-success md-10">Export Excel</a>
                                </div>
                                <div class="card-body">

                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>ID</th>
                                                    <th>Nama Tim</th>
                                                    <th>Nama Ketua</th>
                                                    <th>Nama Anggota 1</th>
                                                    <?php if ($lomba != 'plc') : ?>
                                                        <th>Nama Anggota 2</th>
                                                    <?php endif; ?>
                                                    <th>Jenis Lomba</th>
                                                    <th>No HP</th>
                                                    <th>Email</th>
                                                    <th>Sekolah</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <?php foreach ($abc as $data) : $no++; ?>
                                                    <tr>
                                                        <td><?= $no  ?></td>
                                                        <td><?= isset($data['id_peserta']) ? $data['id_peserta'] : (isset($data[1]) ? $data[1] : '') ?></td>
                                                        <td><?= isset($data['nama_tim']) ? $data['nama_tim'] : (isset($data[2]) ? $data[2] : '') ?></td>
                                                        <td><?= isset($data['nama']) ? $data['nama'] : (isset($data[3]) ? $data[3] : '') ?></td>
                                                        <td><?= isset($data['nama_anggota1']) ? $data['nama_anggota1'] : (isset($data[4]) ? $data[4] : '') ?></td>
                                                        <?php if ($lomba != 'plc') : ?>
                                                            <td><?= isset($data['nama_anggota2']) ? $data['nama_anggota2'] : (isset($data[5]) ? $data[5] : '') ?></td>
                                                        <?php endif; ?>
                                                        <td><?= isset($data['jenis_lomba']) ? $data['jenis_lomba'] : (isset($data[10]) ? $data[10] : '') ?></td>
                                                        <td><?= isset($data['telp']) ? $data['telp'] : (isset($data[8]) ? $data[8] : '') ?></td>
                                                        <td><?= isset($data['email']) ? $data['email'] : (isset($data[7]) ? $data[7] : '') ?></td>
                                                        <td><?= isset($data['sekolah']) ? $data['sekolah'] : (isset($data[6]) ? $data[6] : '') ?></td>
                                                    </tr>
                                                <?php endforeach ?>
                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <?php
                    include "footer.php"
                    ?>
