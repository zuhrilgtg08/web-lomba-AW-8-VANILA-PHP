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
          $abc = $kon->kueri("SELECT * FROM tl_lf WHERE id = '1' ");
          $data = $kon->hasil_data($abc);

          // Set default 
        if (!$data) {
            $data = [
                'id' => '1',
                'pendaftaran' => '',
                'penyisihan' => '',
                'lolos' => '',
                'tm' => '',
                'final' => ''
            ];
        }
        //   kalo data tidak ditemukan
          if (!$data) {
                echo "<div class='alert alert-danger'>Data tidak ditemukan!</div>";
                exit;
            }
          ?>

          <form name="form_edit" method="POST" action="tllf_proses.php" enctype="multipart/form-data">
            <input type="hidden" name="aksi" id="aksi" value="edit"/>
            <input type="hidden" name="hid" id="hid" value="<?php echo $data['id']; ?>"/>
            <div class="row justify-content-center">
              <div class="col-xl-12   ">
                <div class="card o-hidden border-0 shadow-lg my-10">
                  <div class="card-body p-0 bg-transparentt">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                      <div class="col-lg">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Edit Jadwal Lomba LF</h1>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4">
                                    <label for="pendaftaran">Pendaftaran</label>
                                    <input type="text" class="form-control" id="pendaftaran" name="pendaftaran" value="<?php echo $data['tgl_daftar']; ?>" required>
    
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="penyisihan">Technical Meeting</label>
                                    <input type="text" class="form-control" id="tm" name="tm" value="<?php echo $data['tgl_tm']; ?>" required>
    
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="lolos">Penyisihan</label>
                                    <input type="text" class="form-control" id="penyisihan" name="penyisihan" value="<?php echo $data['tgl_penyisihan']; ?>" required>
    
                                </div>
                            </div>
                            <div class="form row">
                                <!-- <div class="form-group col-md-4">
                                    <label for="tm">Babak 8 Besar</label>
                                    <input type="text" class="form-control" id="" name="tm" value="<?php echo $data['tgl_tm']; ?>" required>
                                </div> -->
                                <div class="form-group col-md-4">
                                    <label for="final">Final</label>
                                    <input type="text" class="form-control" id="final" name="final" value="<?php echo $data['tgl_final']; ?>" required>
    
                                </div>
                            </div>
                            <div align="center">
                                <button type="submit" class="btn btn-primary mb-4">Simpan</button>
                                <button type="button" class="btn btn-danger btn-user btn-block col-lg-2" onclick="javascript: window.location.href='index.php'; ">Kembali</button>
                            </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
        </div>
        <!-- /.container-fluid -->
        </div>
        <!-- End of Main Content -->
        <?php include "footer.php" ?>
        
                    