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
        header("Location: lktipenilaian.php");
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
                            WHERE lp.`jenis_lomba` = 'lkti';
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
                                                    <th>File Abstrak</th>
                                                    <th>Scan Kartu Pelajar</th>
                                                    <th>Bukti Follow</th>
                                                    <th>Bukti Twibon</th>
                                                    <th>Aksi</th>

                                                </tr>
                                            </thead>


                                            <tbody>
                                                <?php foreach ($abc as $data) : $no++; ?>
                                                    <tr>
                                                        <td><?= $no  ?></td>
                                                        <td><?= $data['nama_tim']; ?></td>
                                                        <td><?= $data['nama_ketua']; ?></td>
                                                        <td>
                                                            <?php
                                                            $buktiPath = str_replace('admin/', '', $data['fileabstrak']);
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

                                                        <td>
                                                            <?php
                                                            $kartuPath = str_replace('admin/', '', $data['buktikartu']);
                                                            $fileExtension = pathinfo($kartuPath, PATHINFO_EXTENSION);

                                                            if (in_array(strtolower($fileExtension), ['jpg', 'jpeg', 'png'])) {
                                                                echo '<img src="' . $kartuPath . '" alt="Kartu Pelajar"  style="max-width: 50px; max-height: 50px;">';
                                                            } elseif (strtolower($fileExtension) == 'pdf') {
                                                                echo '<a href="' . $kartuPath . '" target="_blank">Unduh PDF</a>';
                                                            } else {
                                                                echo 'Jenis berkas tidak didukung';
                                                            }
                                                            ?>
                                                        </td>

                                                        <td>
                                                            <?php
                                                            $followPath = str_replace('admin/', '', $data['buktifollow']);
                                                            $fileExtension = pathinfo($followPath, PATHINFO_EXTENSION);

                                                            if (in_array(strtolower($fileExtension), ['jpg', 'jpeg', 'png'])) {
                                                                echo '<img src="' . $followPath . '" alt="Bukti Follow Instagram"  style="max-width: 50px; max-height: 50px;">';
                                                            } elseif (strtolower($fileExtension) == 'pdf') {
                                                                echo '<a href="' . $followPath . '" target="_blank">Unduh PDF</a>';
                                                            } else {
                                                                echo 'Jenis berkas tidak didukung';
                                                            }
                                                            ?>
                                                        </td>

                                                        <td>
                                                            <?php
                                                            $twibbonPath = str_replace('admin/', '', $data['buktitwiboon']);
                                                            $fileExtension = pathinfo($twibbonPath, PATHINFO_EXTENSION);

                                                            if (in_array(strtolower($fileExtension), ['jpg', 'jpeg', 'png'])) {
                                                                echo '<img src="' . $twibbonPath . '" alt="Bukti Twibbon"  style="max-width: 50px; max-height: 50px;">';
                                                            } elseif (strtolower($fileExtension) == 'pdf') {
                                                                echo '<a href="' . $twibbonPath . '" target="_blank">Unduh PDF</a>';
                                                            } else {
                                                                echo 'Jenis berkas tidak didukung';
                                                            }
                                                            ?>
                                                        </td>

                                                        <td>
                                                            <form action="" method="post">
                                                                <!-- Include a hidden input field for id_peserta -->
                                                                <input type="hidden" name="id_peserta" value="<?= $data['id_peserta'] ?>">
                                                                <?php
                                                                $id = $data['id_peserta'];
                                                                $cek = $kon->kueri("SELECT proses FROM login_peserta WHERE id_peserta = '$id' ");
                                                                $data = $kon->hasil_data($cek);
                                                                if ($data['proses'] == '1') {
                                                                    echo '<input type="submit" name="lolos" class="btn btn-primary" value="Lolos"> ';
                                                                } else {
                                                                    echo '<button type="#" class="btn btn-success">Tersetujui</button>';
                                                                }
                                                                ?>
                                                            </form>

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