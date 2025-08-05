<?php
session_start();
if (!isset($_SESSION["email_admin"])) {
    header("Location: index.php");
}
include "koneksi.php";
$kon = new Koneksi();
$asd = $kon->kueri("SELECT * FROM aksiupload WHERE id = '2' ");
$aksi = $kon->hasil_data($asd);

if (isset($_POST['btnstatus'])) {
    if ($aksi['status'] == 'on') {
        $status = 'off';
        $abs = $kon->kueri("UPDATE aksiupload SET status = '$status' WHERE id = '2' ");
        
        if($abs == true){
            header("Location: pengumuman_plc.php");
            exit();
        }
    } else if ($aksi['status'] == 'off') {
        $status = 'on';
        $abs = $kon->kueri("UPDATE aksiupload SET status = '$status' WHERE id = '2' ");
        header("Location: pengumuman_plc.php");
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
                            <div class="card-header py-3">
                                <!-- <a href="tambah_plc" class="btn btn-outline-info">Tambah Peserta</a> -->
                                <?php if ($aksi['status'] == 'on') { ?>
                                    <form method="POST">
                                        <input type="submit" class="btn btn-danger" name="btnstatus" value="Tutup Pengumuman">
                                    </form>
                                <?php } else { ?>
                                    <form method="POST">
                                        <input type="submit" class="btn btn-primary" name="btnstatus" value="Buka Pengumuman">
                                    </form>
                                <?php } ?>
                            </div>
                            <?php
                            $abc = $kon->kueri("SELECT * FROM pengumuman_plc");
                            $no = 0;
                            ?>

                            <div class="card shadow mb-4">

                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                            <thead>
                                                <tr>
                                                    <th>Ranking</th>
                                                    <th>Nama Tim</th>
                                                    <th>Nilai Akhir</th>

                                                </tr>
                                            </thead>


                                            <tbody>
                                                <?php foreach ($abc as $data) : $no++; ?>
                                                    <tr>
                                                        <td><?= $no  ?></td>
                                                        <td><?= $data['nama_tim']; ?></td>
                                                        <td><?= $data['nilai_akhir']; ?></td>


                                                        <!-- <td>

                              <a href="hapusupload.php?aksi=hapus&id=<?= $data['id_plc'] ?>" onclick="return confirm('Apakah <?= $data["nama_tim"] ?> mau dihapus ?? '); " class="btn btn-xs bg-danger waves-effect text-white" ><i class="fas fa-trash"></i></a>

                            </td> -->

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