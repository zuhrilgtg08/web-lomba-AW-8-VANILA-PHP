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

if (isset($_POST['tidaksetuju'])) {
    $id = $_POST['id_peserta'];
    $proses = $kon->kueri("UPDATE login_peserta SET proses = 0 WHERE id_peserta = '$id' ");
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

if (isset($_POST['lktitidak'])) {
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
                            $abc = $kon->kueri("SELECT b.*, lp.`id_peserta`, lp.`nama_tim`, lp.`nama`, lp.`nama_anggota1`, lp.`nama_anggota2`, lp.`sekolah`, lp.`email`, lp.`telp`, lp.`pass`, lp.`jenis_lomba`, lp.`bidanglomba`, lp.`judul_abstrak`, lp.`proses`
                            FROM `tb_bukti` AS b
                            LEFT JOIN `login_peserta` AS lp
                            ON b.`id_peserta` = lp.`id_peserta` ORDER BY lp.`id_peserta` DESC;");
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
                                                    <th>No Telp</th>
                                                    <th>Bukti Pembayaran</th>
                                                    <th>Scan Kartu Pelajar</th>
                                                    <th>Bukti Follow</th>
                                                    <th>Bukti Twibon</th>
                                                    <th>Status</th>
                                                    <th>Aksi</th>

                                                </tr>
                                            </thead>


                                            <tbody>
                                                <?php foreach ($abc as $data) : $no++; ?>
                                                    <tr>
                                                        <td><?= $no  ?></td>
                                                        <td><?= $data['nama_tim']; ?></td>
                                                        <td><?= $data['nama_ketua']; ?></td>
                                                        <td><?= $data['jenis_lomba']; ?></td>
                                                        <td><?= $data['telp']; ?></td>
                                                        <td>
                                                            <?php
                                                            $buktiPath = str_replace('admin/', '', $data['bukti']);
                                                            $fileExtension = pathinfo($buktiPath, PATHINFO_EXTENSION);

                                                            if (in_array(strtolower($fileExtension), ['jpg', 'jpeg', 'png'])) {
                                                                echo '<a href="' . $buktiPath . '" target="_blank"><img src="' . $buktiPath . '" alt="Bukti" style="max-width: 50px; max-height: 50px;"></a>';
                                                            } elseif (strtolower($fileExtension) == 'pdf') {
                                                                echo '<a href="' . $buktiPath . '" target="_blank">Unduh PDF</a>';
                                                            } else {
                                                                echo 'Belum terisi';
                                                            }
                                                            ?>
                                                        </td>

                                                        <td>
                                                            <?php
                                                            $kartuPath = str_replace('admin/', '', $data['buktikartu']);
                                                            $fileExtension = pathinfo($kartuPath, PATHINFO_EXTENSION);

                                                            if (in_array(strtolower($fileExtension), ['jpg', 'jpeg', 'png'])) {
                                                                echo '<a href="' .  $kartuPath . '" target="_blank"><img src="' .  $kartuPath . '" alt="Bukti" style="max-width: 50px; max-height: 50px;"></a>';
                                                            } elseif (strtolower($fileExtension) == 'pdf') {
                                                                echo '<a href="' . $kartuPath . '" target="_blank">Unduh PDF</a>';
                                                            } else {
                                                                echo 'Belum terisi';
                                                            }
                                                            ?>
                                                        </td>

                                                        <td>
                                                            <?php
                                                            $followPath = str_replace('admin/', '', $data['buktifollow']);
                                                            $fileExtension = pathinfo($followPath, PATHINFO_EXTENSION);

                                                            if (in_array(strtolower($fileExtension), ['jpg', 'jpeg', 'png'])) {
                                                                echo '<a href="' . $followPath . '" target="_blank"><img src="' . $followPath . '" alt="Bukti" style="max-width: 50px; max-height: 50px;"></a>';
                                                            } elseif (strtolower($fileExtension) == 'pdf') {
                                                                echo '<a href="' . $followPath . '" target="_blank">Unduh PDF</a>';
                                                            } else {
                                                                echo 'Belum terisi';
                                                            }
                                                            ?>
                                                        </td>

                                                        <td>
                                                            <?php
                                                            $twibbonPath = str_replace('admin/', '', $data['buktitwiboon']);
                                                            $fileExtension = pathinfo($twibbonPath, PATHINFO_EXTENSION);

                                                            if (in_array(strtolower($fileExtension), ['jpg', 'jpeg', 'png'])) {
                                                                echo '<a href="' . $twibbonPath . '" target="_blank"><img src="' . $twibbonPath . '" alt="Bukti" style="max-width: 50px; max-height: 50px;"></a>';
                                                            } elseif (strtolower($fileExtension) == 'pdf') {
                                                                echo '<a href="' . $twibbonPath . '" target="_blank">Unduh PDF</a>';
                                                            } else {
                                                                echo 'Belum terisi';
                                                            }
                                                            ?>
                                                        </td>
                                                        <td>
                                                            <?php
                                                            $idcek = $data['id_peserta'];
                                                            $cek = $kon->kueri("SELECT jenis_lomba FROM login_peserta WHERE id_peserta = '$idcek' ");
                                                            $lombaa = $kon->hasil_data($cek);
                                                            $lomba = '';
                                                            if ($lombaa) {
                                                                $lomba = $lombaa['jenis_lomba'];
                                                            }
                                                            
                                                            if ($lomba == 'lkti') {
                                                                if ($data['proses'] < '4') {
                                                                    echo '<span class="badge badge-danger">Belum Tersetujui</span>';
                                                                } elseif ($data['proses'] > '4') {
                                                                    echo '<span class="badge badge-primary">Tersetujui</span>';
                                                                }
                                                            } else {
                                                                if ($data['proses'] < '1') {
                                                                    echo '<span class="badge badge-danger">Belum Tersetujui</span>';
                                                                } elseif ($data['proses'] > '1') {
                                                                    echo '<span class="badge badge-primary">Tersetujui</span>';
                                                                }
                                                            }
                                                            ?>
                                                        </td>

                                                        <td>


                                                            <?php if ($lomba == 'lkti') { ?>
                                                                <form action="" method="post">
                                                                    <input type="hidden" name="id_peserta" value="<?= $data['id_peserta'] ?>">
                                                                    <?php
                                                                    $id = $data['id_peserta'];
                                                                    $cek = $kon->kueri("SELECT proses FROM login_peserta WHERE id_peserta = '$id' ");
                                                                    $result = $kon->hasil_data($cek);
                                                                    if ($result) {
                                                                        if ($result['proses'] == '3') {
                                                                            echo '<input type="submit" name="lkti" class="btn btn-primary btn-sm" value="Setujui"> ';
                                                                        } else if ($result['proses'] > '3') {
                                                                            echo '<input type="submit" name="lktitidak" class="btn btn-danger" value="Tidak Setuju"> ';
                                                                        }
                                                                    }
                                                                    ?>
                                                                </form>
                                                            <?php } else { ?>
                                                                <form action="" method="post">
                                                                    <input type="hidden" name="id_peserta" value="<?= $data['id_peserta'] ?>">
                                                                    <?php
                                                                    $id = $data['id_peserta'];
                                                                    $cek = $kon->kueri("SELECT proses FROM login_peserta WHERE id_peserta = '$id' ");
                                                                    $result = $kon->hasil_data($cek);
                                                                    if ($result) {
                                                                        if ($result['proses'] == '1') {
                                                                            echo '<input type="submit" name="setuju" class="btn btn-primary" value="Setujui"> ';
                                                                        } else if ($result['proses'] > '1') {
                                                                            echo '<input type="submit" name="tidaksetuju" class="btn btn-danger" value="Tidak Setuju"> ';
                                                                        }
                                                                    }
                                                                    ?>
                                                                </form>
                                                            <?php } ?>
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