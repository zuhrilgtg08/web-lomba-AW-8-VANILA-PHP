<?php
session_start();
if (!isset($_SESSION["email_admin"])) {
    header("Location: index.php");
}
include "koneksi.php";
$kon = new Koneksi();
if (isset($_POST['lolos'])) {
    $id = $_POST['id_peserta'];
    $proses = $kon->kueri("UPDATE login_peserta SET proses = 2 WHERE id_peserta = '$id' ");
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
                            $abc = $kon->kueri("SELECT b.*, lp.`id_peserta`, lp.`nama_tim`, lp.`nama`, lp.`nama_anggota1`, lp.`nama_anggota2`, lp.`sekolah`, lp.`email`, lp.`telp`, lp.`pass`, lp.`jenis_lomba`, lp.`demo`,  lp.`bidanglomba`, lp.`judul_abstrak`, lp.`proses`
                            FROM `tb_bukti` AS b
                            LEFT JOIN `login_peserta` AS lp
                            ON b.`id_peserta` = lp.`id_peserta`
                            WHERE lp.jenis_lomba = 'lkti' AND (proses = '4' OR proses = '3');;
                            ");
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
                                                    <th>Telp</th>
                                                    <th>Bukti Bayar</th>
                                                    <th>File Full Paper</th>
                                                    <th>Demo</th>
                                                    <th>Status Pembayaran</th>

                                                </tr>
                                            </thead>


                                            <tbody>
                                                <?php foreach ($abc as $data) : $no++; ?>
                                                    <tr>
                                                        <td><?= $no  ?></td>
                                                        <td><?= $data['nama_tim']; ?></td>
                                                        <td><?= $data['nama_ketua']; ?></td>
                                                        <td><?= $data['telp']; ?></td>

                                                        <td>
                                                            <?php
                                                            $buktiPath = str_replace('admin/', '', $data['bukti']);
                                                            $fileExtension = pathinfo($buktiPath, PATHINFO_EXTENSION);

                                                            if (in_array(strtolower($fileExtension), ['jpg', 'jpeg', 'png'])) {
                                                                echo '<img src="' . $buktiPath . '" alt="Bukti"  style="max-width: 50px; max-height: 50px;">';
                                                            } elseif (strtolower($fileExtension) == 'pdf') {
                                                                echo '<a href="' . $buktiPath . '" target="_blank" class="btn btn-primary">Unduh PDF</a>';
                                                            } else {
                                                                echo 'Jenis berkas tidak didukung';
                                                            }
                                                            ?>
                                                        </td>
                                                        </td>
                                                        <td>
                                                            <?php
                                                            $buktiPath = str_replace('admin/', '', $data['filepaper']);
                                                            $fileExtension = pathinfo($buktiPath, PATHINFO_EXTENSION);

                                                            if (in_array(strtolower($fileExtension), ['jpg', 'jpeg', 'png'])) {
                                                                echo '<img src="' . $buktiPath . '" alt="Bukti"  style="max-width: 50px; max-height: 50px;">';
                                                            } elseif (strtolower($fileExtension) == 'pdf') {
                                                                echo '<a href="' . $buktiPath . '" target="_blank" class="btn btn-primary">Unduh PDF</a>';
                                                            } else {
                                                                echo 'Jenis berkas tidak didukung';
                                                            }
                                                            ?>
                                                        </td>
                                                        <td><?= $data['demo']; ?></td>

                                                        <td>
                                                            <?php
                                                            if ($data['proses'] == '3') {
                                                                echo "Menunggu persetujuan pembayaran";
                                                            } elseif ($data['proses'] == '4') {
                                                                echo "Pembayaran sukses";
                                                            }
                                                            ?>
                                                        </td>



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