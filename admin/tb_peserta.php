<?php
session_start();
if (!isset($_SESSION["email_admin"])) {
    header("Location: index.php");
}
include "koneksi.php";
$kon = new Koneksi();

if (isset($_POST['setuju'])) {
    $id = $_POST['id_peserta'];
    $proses = $kon->kueri("UPDATE login_peserta SET proses = 2 WHERE id_peserta = '$id' ");
    if ($proses == true) {
        header("Location: tb_bayar.php");
        exit();
    }
}
if (isset($_POST['lkti'])) {
    $id = $_POST['id_peserta'];
    $proses = $kon->kueri("UPDATE login_peserta SET proses = 4 WHERE id_peserta = '$id' ");
    if ($proses == true) {
        header("Location: tb_bayar.php");
        exit();
    }
}

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

                            <?php
                            $abc = $kon->kueri("SELECT b.*, lp.`id_peserta`, lp.`nama_tim`, lp.`nama`, lp.`nama_anggota1`, lp.`nama_anggota2`, lp.`sekolah`, lp.`email`, lp.`telp`, lp.`pass`, lp.`jenis_lomba`, lp.`bidanglomba`, lp.`judul_abstrak`, lp.`proses`
                            FROM `tb_bukti` AS b
                            LEFT JOIN `login_peserta` AS lp
                            ON b.`id_peserta` = lp.`id_peserta`
                            WHERE lp.`id_peserta` > 1
                            ORDER BY lp.`proses` DESC");
                            $no = 0;
                            ?>

                            <div class="card shadow mb-4">

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>No</th>
                                                    <th>Nama Tim</th>
                                                    <th>Nama Ketua</th>
                                                    <th>Jenis Lomba</th>
<th>Sekolah</th>
                                                    

                                                </tr>
                                            </thead>


                                            <tbody>
                                                <?php foreach ($abc as $data) : $no++; ?>
                                                    <tr>
                                                        <td><?= $no  ?></td>
                                                        <td><?= $data['nama_tim']; ?></td>
                                                        <td><?= $data['nama_ketua']; ?></td>
                                                        <td><?= $data['jenis_lomba']; ?></td>
 <td><?= $data['sekolah']; ?></td>
                                                       

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