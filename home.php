<?php

if (!isset($_SESSION['email_peserta'])) {
    header('Location: halamanutama.php');
    exit;
}

include 'koneksi.php';
$kon = new Koneksi();

$abc = $kon->kueri("SELECT * FROM tl_ffr");
$ffr = $kon->hasil_data($abc);
$xyz = $kon->kueri("SELECT * FROM tl_lkti");
$lkti = $kon->hasil_data($xyz);
$qwe = $kon->kueri("SELECT * FROM tl_plc");
$plc = $kon->hasil_data($qwe);
$asd = $kon->kueri("SELECT * FROM aksiupload WHERE id = '1' ");
$aksi = $kon->hasil_data($asd);
$nilaiplc = $kon->kueri("SELECT * FROM aksiupload WHERE id = '1' ");
$umumplc = $kon->hasil_data($nilaiplc);
$xyz = $kon->kueri(" SELECT * FROM tb_point WHERE seleksi = 'seleksi1' ORDER BY points DESC ");
$jumlah1 = $kon->jumlah_data($xyz);
$point = isset($_SESSION['jenislomba']) ? $_SESSION['jenislomba'] : '';
$qwe = $kon->kueri("SELECT * FROM pengumuman_lkti");
$jumlahlolos = $kon->jumlah_data($qwe);
$lolos = isset($_SESSION['jenislomba']) ? $_SESSION['jenislomba'] : '';
ini_set('display_errors', '1');
// die;
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Automation Week</title>
    <!-- Favicon-->
    <link href="image/logo-aw.png" rel="icon">
    <!-- Font Awesome icons (free version)-->
    <script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" crossorigin="anonymous"></script>
    <!-- Google fonts-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
    <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link rel="stylesheet" href="css/upload.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.11.4/css/dataTables.bootstrap4.min.css">
    <link href="css/styles.css" rel="stylesheet" />

</head>

<body id="page-top">
    <!-- Navigation-->
    <nav style="background-color: #BC0301;" class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
        <div class="container">
            <div>
                <div class="rounded-circle-container d-flex align-items-center">
                <img class="rounded-circle img-fluid mr-2" src="image/ppns1.jpg" alt="PPNS" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/DIKTI.png" alt="DIKTI" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/LOGO BLU_SPEEDCIRCLE.png" alt="BLU" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/hima.jpg" alt="HIMA" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/BSO.png" alt="HIMA" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/logo-aw.png" alt="Automation Week" style="width: 40px; height: 40px;"/>
                </div>
            </div>
            <a href="index.php" style="text-decoration: none; text-align: right; ">
            <h4 class="text-white text-title mx-3 my-2" style="margin-left: 50px;">Automation Week</h4>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fas fa-bars ms-1"></i>
            </button>

            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                    <li class="nav-item"><a class="nav-link" href="#jenislomba">Jenis Lomba</a></li>
                    <?php if ($_SESSION['jenislomba'] == 'lkti') : ?>
                        <?php if ($jumlahlolos >= 1) : ?>
                            <li class="nav-item"><a class="nav-link" href="#lolos">Pengumuman Lolos</a></li>
                        <?php endif ?>
                    <?php endif ?>
                    <?php if ($_SESSION['jenislomba'] == 'plc') : ?>
                        <li class="nav-item"><a class="nav-link" href="#upload">Upload File</a></li>
                    <?php endif ?>
                    <?php if ($_SESSION['jenislomba'] == 'ffr') : ?>
                        <li class="nav-item"><a class="nav-link" href="#video">Video Trial</a></li>
                        <?php if ($jumlah1 >= 1) { ?>
                            <li class="nav-item"><a class="nav-link" href="#point">Point Seleksi</a></li>
                        <?php } ?>
                    <?php endif ?>
                    <li class="nav-item"><a class="nav-link" href="#timeline">Timeline</a></li>

                    <?php
                    if (!isset($_SESSION['email_peserta'])) { ?>
                        <li class="nav-item"><a class="nav-link" href="registrasi.php">Login</a></li>
                    <?php
                    } else { ?>
                        <li class="nav-item"><a class="nav-link" href="logout.php">Logout</a></li>
                        </a>
                    <?php } ?>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Masthead-->
    <header class="masthead">
        <div class="container">
            <h1>Automation Week VIII</h1>
            <div class="masthead-heading text-uppercase"><i>"BUILDING THE FUTURE WITH TECHNOLOGY"</i></div>
            <a class="btn btn-danger btn-xl text-uppercase" href="#jenislomba">More Info</a>
        </div>
    </header>

    <!-- Reigistrasi-->
    <?php
    $idpeserta = $_SESSION['email_peserta'];
    $bayar = $kon->kueri("SELECT * FROM login_peserta WHERE id_peserta = '$idpeserta' ");
    $data = $kon->hasil_data($bayar);
    $proses = $data['proses'];
    if ($proses == 0 || $proses == 1 || $proses == 2 || $proses == 3) {
        include_once 'home/pembayaran/uploadbukti.php';
    } else 
        
    ?>


        <section class="page-section" id="jenislomba">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Automation Week VIII</h2>
                    <h3 class="section-subheading text-muted">Automation Week merupakan event tahunan terbesar dari Himpunan Mahasiswa Teknik Otomasi Politeknik Perkapalan Negeri Surabaya. Pada Automation Week ke VIII ini kompetisi yang akan dilombakan meliputi Lomba Karya Tulis Ilmiah (LKTI), Fire Fighting Roboboat (FFR), Programmable Logic Controller (PLC) dan Line Follower (LF) tingkat SMA/SMK/MA sederajat dan berskala Nasional.

                    </h3>
                </div>

                <div class="row text-center">
                    <?php
                    $sesi = $_SESSION['jenislomba'];
                    if ($sesi == 'lkti') {
                        include_once 'home/lkti/lkti.php';
                    } elseif ($sesi == 'ffr') {
                        include_once 'home/ffr/ffr.php';
                    } elseif ($sesi == 'plc') {
                        include_once 'home/plc/plc.php';
                    } elseif ($sesi == 'lf') {
                        include_once 'home/lf/lf.php';
                    } ?>
                </div>
            </div>
        </section>


        <?php include_once 'home/ffr/tbpoint.php'; ?>

        <?php include_once 'home/lkti/pengumuman.php' ?>
        <!-- About -->
        <?php
        $sesi = $_SESSION['jenislomba'];
        if ($sesi == 'lkti') {
            include_once 'home/lkti/timeline.php';
        } elseif ($sesi == 'ffr') {
            include_once 'home/ffr/timeline.php';
        } elseif ($sesi == 'plc') {
            include_once 'home/plc/timeline.php';
        } elseif ($sesi == 'lf') {
            include_once 'home/lf/timeline.php';
        } else { ?>
        <?php } ?>
    <?php //} ?>




    <?php include_once 'home/template/cp.php'; ?>
    <!-- Footer-->
    <footer class="footer py-4" style="background-color : #D4ECDD;">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4 text-lg-start">Copyright &copy; Automation Week 8 </div>
                <div class="col-lg-4 my-3 my-lg-0">
                    <a class="btn rounded-circle  btn-dark btn-social mx-2" href="https://www.youtube.com/channel/UCXepgfxFNcLQcMHgyTrykjw"><i class="fab fa-youtube"></i></a>
                    <a class="btn rounded-circle btn-dark btn-social mx-2" href="https://www.instagram.com/automationweek/"><i class="fab fa-instagram"></i></a>
                </div>
            </div>
        </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.11.3/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/plug-ins/1.11.4/i18n/id.json"></script>
    <script>
        $(document).ready(function() {
            $('#example').DataTable();
        });

        $(document).ready(function() {
            $('#example1').DataTable();
        });

        $(document).ready(function() {
            $('#example2').DataTable();
        });
    </script>
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>

</html>