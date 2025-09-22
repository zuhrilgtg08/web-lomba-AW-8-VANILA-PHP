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
          $abc = $kon->kueri("SELECT * FROM tl_ffr WHERE id = '1' ");
          $data = $kon->hasil_data($abc);
          ?>

          <form name="form_edit" method="POST" action="tlffr_proses.php" enctype="multipart/form-data">
            <input type="hidden" name="aksi" id="aksi" value="edit" />
            <input type="hidden" name="hid" id="hid" value="<?php echo $data['id']; ?>" />
            <div class="row justify-content-center">
              <div class="col-xl-12">
                <div class="card o-hidden border-0 shadow-lg my-10">
                  <div class="card-body p-0 bg-transparentt">
                    <!-- Nested Row within Card Body -->
                    <div class="row">
                      <div class="col-lg">
                        <div class="p-5">
                          <div class="text-center">
                            <h1 class="h4 text-gray-900 mb-4 ">Time Line FFR</h1>
                          </div>

                          <div class="form-row">
                            <div class="form-group col-md-4">
                              <label for="inputCity">Pendaftaran & Pembayaran</label>
                              <input type="text" class="form-control" name="pendaftaran" value="<?= $data['tgl_pendaftaran']; ?>" required>
                            </div>
                            <div class="form-group col-md-4">
                              <label for="inputCity">Technical Meeting</label>
                              <input type="text" class="form-control" name="tm" value="<?= $data['tgl_tm']; ?>">
                            </div>
                            <div class="form-group col-md-4">
                              <label for="inputCity">Babak Penyisihan</label>
                              <input type="text" class="form-control" name="penyisihan" value="<?= $data['tgl_penyisihan']; ?>" required>
                            </div>
                          </div>

                          <div class="form-row">
                            <div class="form-group col-md-4">
                              <label for="inputCity">Babak Final</label>
                              <input type="text" class="form-control" name="final" value="<?= $data['tgl_final']; ?>" required>
                            </div>
                          </div>

                          <div align="center">
                            <button type="submit" class="btn btn-dark btn-user btn-block col-lg-3 mb-3">Simpan</button>
                            <button type="button" class="btn btn-danger btn-user btn-block col-lg-3 mb-3" onclick="javascript: window.location.href='index.php'; ">Kembali</button>
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
        <!-- End of Main Content -->

        <!-- Footer -->
        <?php
        include "footer.php"
        ?>
      </div>
    </div>
  </div>
</body>

</html>