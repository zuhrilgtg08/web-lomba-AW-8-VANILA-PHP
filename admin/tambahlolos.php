<?php
session_start();
if (!isset($_SESSION["email_admin"])) {
 header("Location: index.php");
 exit;
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

          <form name="form_edit" method="POST" action="lolos_proses.php" enctype="multipart/form-data">
            <input type="hidden" name="aksi" id="aksi" value="tambah"/>
            <div class="row justify-content-center">

              <div class="col-xl-6   ">

                <div class="card o-hidden border-0 shadow-lg my-10">
                  <div class="card-body p-0 bg-transparentt"  >
                    <!-- Nested Row within Card Body -->
                    <div class="row">

                      <div class="col-lg">
                        <div class="p-5">
                          <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4 " >Tambah Peserta Lolos</h1>
                          </div>


                          <div class="form-group">
                            <label for="formGroupExampleInput">Nama Tim</label>
                            <input type="text" class="form-control" name="nama_tim" id="formGroupExampleInput" placeholder="Nama Tim" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput">Nama Tim</label>
                            <input type="text" class="form-control" name="nama_ketua" id="formGroupExampleInput" placeholder="Nama Ketua" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Asal Sekolah</label>
                            <input type="text" class="form-control" name="asal_sekolah" id="formGroupExampleInput2" placeholder="Asal Sekolah" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Judul Abstrak</label>
                            <textarea class="form-control" name="judul" rows="5"></textarea>
                          </div>





                          <div align="center">
                            <button type="submit" class="btn btn-dark btn-user btn-block col-lg-3 mb-3" >Simpan</button>
                            <button type="button" class="btn btn-danger btn-user btn-block col-lg-3 mb-3" onclick="javascript: window.location.href='loloslkti.php'; ">Kembali</button>
                          </div>
                        </form>

                        <!-- issiiiiii -->

                      </div>
                      <!-- End of Main Content -->

                      <!-- Footer -->
                      <?php
                      include "footer.php"
                    ?>