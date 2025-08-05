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
          <?php 
          include "koneksi.php";
          $kon = new Koneksi();
          $id = @$_REQUEST['idpoint'];
          $abc = $kon->kueri("SELECT * FROM tb_point WHERE id = '$id' ");
          $data = $kon->hasil_data($abc);
          ?>
          <form name="form_edit" method="POST" action="poin_proses.php" enctype="multipart/form-data">
            <input type="hidden" name="aksi" id="aksi" value="edit"/>
            <input type="hidden" name="hid" id="hid" value="<?php echo $data['id']; ?>"/>
            <div class="row justify-content-center">

              <div class="col-xl-6   ">

                <div class="card o-hidden border-0 shadow-lg my-10">
                  <div class="card-body p-0 bg-transparentt"  >
                    <!-- Nested Row within Card Body -->
                    <div class="row">

                      <div class="col-lg">
                        <div class="p-5">
                          <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4 " >Edit Point FFR</h1>
                          </div>


                          <div class="form-group">
                            <label for="formGroupExampleInput">Nama Tim</label>
                            <input type="text" class="form-control" name="nama" id="formGroupExampleInput" placeholder="Nama Tim" value="<?= $data['nama_tim'];  ?>" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Asal Sekolah</label>
                            <input type="text" class="form-control" name="sekolah" id="formGroupExampleInput2" placeholder="Asal Sekolah" value="<?= $data['asal_sekolah']; ?>" required>
                          </div>
                          <div class="form-group">
                            <label for="formGroupExampleInput2">Point Awal</label>
                            <input type="number" class="form-control" id="formGroupExampleInput2" placeholder="Poin Awal" name="point" value="<?= $data['points']; ?>" required>
                          </div>

                          <div class="form-group">
                            <label for="formGroupExampleInput2">Pilih Seleksi</label>
                            <select name="seleksi" class="custom-select mr-sm-2">

                             <?php

                             $abc = $kon->kueri ("SELECT id, seleksi FROM tb_point WHERE id = '$id' ");
                             
                         



                             

                             while ($seleksi = $kon->hasil_data($abc)) {
                              echo "<option value='$seleksi[id]' ";
                              if ($data['id'] == $seleksi['seleksi']){
                                echo "selected";
                              }
                              echo ">$seleksi[seleksi]</option>";
                              if ($seleksi['seleksi'] == 'seleksi1') {
                                echo "<option value ='seleksi2'>seleksi2</option>";
                              }else if ($seleksi['seleksi'] == 'hide'){
                                echo "<option value ='seleksi2'>seleksi2</option>";
                                echo "<option value = 'seleksi1'>seleksi1</option>";
                              }else{
                                echo "<option value = 'seleksi1'>seleksi1</option>";
                                
                              }
                            }

                            ?>
                           
                          </select>

                        </div>

                        <div align="center">
                          <button type="submit" class="btn btn-dark btn-user btn-block col-lg-3 mb-3" >Simpan</button>
                          <button type="button" class="btn btn-danger btn-user btn-block col-lg-3 mb-3" onclick="javascript: window.location.href='pointffr.php'; ">Kembali</button>
                        </div>
                      </form>

                      <!-- issiiiiii -->

                    </div>
                    <!-- End of Main Content -->

                    <!-- Footer -->
                    <?php
                    include "footer.php"
                  ?>