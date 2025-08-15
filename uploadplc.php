<?php
session_start();
if (!isset($_SESSION["email_peserta"])) {
   header("Location: halamanutama.php");
   exit;
}

include "koneksi.php";
$kon = new Koneksi();
$id = $_SESSION['email_peserta'];
//$result = $kon->kueri("SELECT * FROM id = '$id' ");
$result = $kon->kueri("SELECT * FROM login_peserta ");
$data = $kon->hasil_data($result);
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Automation Week - Upload</title>
    <link href="image/logo-aw.png" rel="icon">
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/cssupload.css">
</head>
</head>
<body>
    
        <div class="container card-0 justify-content-center ">
            <div class="card-body px-sm-4 px-0">
                <div class="row justify-content-center mb-5">
                    <div class="col-md-10 col">
                        <h3 class="font-weight-bold ml-md-0 mx-auto text-center text-sm-left"> Upload File PLC </h3>
                    </div>
                </div>

<form name="form_masuk" method="POST" action="uploadplc_proses.php" enctype="multipart/form-data">

    <input type="hidden" name="aksi" id="aksi" value="tambah">
                <div class="row justify-content-center round">
                    <div class="col-lg-10 col-md-12 ">
                        <div class="card shadow-lg card-1">
                            <div class="card-body inner-card">
                                <div class="row justify-content-center">
                                    <div class="col-lg-5 col-md-6 col-sm-12">
                                        <div class="form-group"><label for="first-name">Email</label><input type="email" class="form-control" id="first-name" name="temail" placeholder="Email" disabled value="<?= $_SESSION['email_peserta1']; ?>" > </div>

                                        <div class="form-group"> <label for="Mobile-Number">Nomor Telepon/WA</label> <input type="number" class="form-control" name="tno" id="Mobile-Number" placeholder="Nomor Telepon" > </div>

                                        <div class="form-group"> <label for="inputEmail4">Nama Anggota</label> 

                                           <input type="text" class="form-control" name="tanggota" id="last-name" placeholder="Nama Anggota" required>
                                           <p>Contoh : Eko,Agus,dst</p>
                                       </div>

                                   </div>
                                   <div class="col-lg-5 col-md-6 col-sm-12">
                                    <div class="form-group"> <label for="last-name">Nama Tim</label> 
                                       <input type="text" class="form-control" name="ttim" id="Mobile-Number" placeholder="Nama Tim"  value="<?= $data['nama_tim'];?>">
                                   </div>

                                   <div class="form-group"> <label for="phone">Nama Ketua</label> <input type="text" class="form-control" id="email" name="tketua" placeholder="Nama Ketua"></div>
                                   <div class="form-group"> <label for="Evaluate Budget">Asal Sekolah</label> <input type="text" class="form-control" name="tsekolah" id="Evaluate Budget" placeholder="Asal Sekolah"> </div>          
                               </div>
                           </div>
                           <div class="row justify-content-center">
                            <div class="col-md-12 col-lg-10 col-12">
                                <div class="form-group files"><label class="my-auto">Upload File </label> 
                                    <input type="file" name="ffile" id="ffile"></div>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-12 col-lg-10 col-12">
                                <div class="row justify-content-end mb-5">
                                    <div class="col-lg-4 col-auto ">

                                    </div>

                                </div>
                                 <button class="btn btn-info" type="submit">Simpan</button>
                                
                                <a href="index.php" class="btn btn-warning">Kembali</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>

</body>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<!-- * *                               SB Forms JS                               * *-->
<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
<script>
    $(document).ready(function(){
        $(".files").attr('data-before',"Drag file here or click the above button");
        $('input[type="file"]').change(function(e){
            var fileName = e.target.files[0].name;
            $(".files").attr('data-before',fileName);

        });
    });
</script>
</html>