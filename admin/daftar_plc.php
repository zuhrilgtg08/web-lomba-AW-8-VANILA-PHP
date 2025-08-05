<?php
session_start();
if (!isset($_SESSION["email_admin"])) {
 header("Location: index.php");
 exit;
}
include "koneksi.php";
$kon = new Koneksi ();
 $asd = $kon->kueri("SELECT * FROM aksiupload WHERE id = '2' ");
$aksi = $kon->hasil_data($asd);

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
               <?php if ($aksi['status'] == 'on'){ ?>
                <a href="hapusupload.php?aksi=statusoff&id=1"class="btn btn-outline-danger" >Tutup Upload</a>
              <?php }else{ ?>
                <a href="hapusupload.php?aksi=statuson&id=1"class="btn btn-outline-primary" >Buka Upload</a>
              <?php } ?>
                <a href="excel.php"  class="btn btn-outline-success md-10" >Export Excel</a>
              </div>
              <?php 

              $abc = $kon->kueri("SELECT * FROM daftar_plc");
              $no=0;
              ?>
              
              <div class="card shadow mb-4">

                <div class="card-body">
                  <div class="table-responsive">
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                      <thead>
                        <tr>
                          <th>No</th>
                          <th>Email</th>
                          <th>Nomor Telp</th>
                          <th>Nama Tim</th>
                          <th>Nama Ketua</th>
                          <th>Asal Sekolah</th>
                          <th>Aksi</th>
                        </tr>
                      </thead>


                      <tbody>
                        <?php foreach ($abc as $data): $no++;?>
                          <tr>
                            <td><?= $no  ?></td>
                            <td><?= $data['email'];?></td>
                            <td><?= $data['telp']; ?></td>
                            <td><?= $data['nama_tim']; ?></td>
                            <td><?= $data['nama_ketua']; ?></td>
                            <td><?= $data['asal_sekolah']; ?></td>                         
                            <td>

                              <a href="hapusupload.php?aksi=hapus&id=<?=$data['id_plc']?>" onclick="return confirm('Apakah <?=$data["nama_tim"]?> mau dihapus ?? '); " class="btn btn-xs bg-danger waves-effect text-white" ><i class="fas fa-trash"></i></a>

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