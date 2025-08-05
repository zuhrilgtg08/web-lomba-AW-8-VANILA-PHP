<?php
    include 'koneksi.php';
    $kon = new Koneksi();
    $abc = $kon->kueri("SELECT * FROM tl_ffr");
    $ffr = $kon->hasil_data($abc);
    $xyz = $kon->kueri("SELECT * FROM tl_lkti");
    $lkti = $kon->hasil_data($xyz);
    $qwe = $kon->kueri("SELECT * FROM tl_plc");
    $plc = $kon->hasil_data($qwe);
    $no = 0;
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
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.4/css/dataTables.bootstrap4.min.css">
        <link href="css/styles.css" rel="stylesheet" />
    </head>

    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color: rgba(184, 24, 24, 0.9);">
    <div class="container">
        <div class="d-flex align-items-center">
            <div class="rounded-circle-container d-flex align-items-center">
                <img class="rounded-circle img-fluid mr-2" src="image/ppns1.jpg" alt="PPNS" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/DIKTI.png" alt="DIKTI" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/LOGO BLU_SPEEDCIRCLE.png" alt="BLU" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/hima.jpg" alt="HIMA" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/BSO.png" alt="HIMA" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/logo-aw.png" alt="Automation Week" style="width: 40px; height: 40px;"/>
            </div>
            <a href="index.php" class="text-decoration-none ml-2">
                <h4 class="text-white text-title m-0" style="font-size: 1.4rem;">Automation Week</h4>
            </a>
        </div>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-bars"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ms-auto py-2 py-lg-0">
                <li class="nav-item mx-1"><a class="nav-link px-3" href="#jenislomba">Jenis Lomba</a></li>
                <li class="nav-item mx-1"><a class="nav-link px-3" href="#video">Video</a></li>
                <li class="nav-item mx-1"><a class="nav-link px-3" href="#videoregis">Cara Registrasi</a></li>
                <li class="nav-item mx-1"><a class="nav-link px-3" href="#timeline">Timeline</a></li>
                <li class="nav-item mx-1"><a class="nav-link px-3" href="#sponsor">Sponsor</a></li>
                <?php if (!isset($_SESSION['email_peserta'])): ?>
                    <li class="nav-item mx-1"><a class="nav-link px-3 btn btn-danger" href="registrasi.php" style="border-radius: 20px;">Registrasi</a></li>
                <?php else: ?>
                    <li class="nav-item mx-1"><a class="nav-link px-3 btn btn-outline-light" href="logout.php" style="border-radius: 20px;">Logout</a></li>
                <?php endif; ?>
            </ul>
        </div>
    </div>
</nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <h1>Automation Week VIII</h1>
                <div class="masthead-heading text-uppercase"><i>"REALIZING INDONESIA EMAS 2045 THROUGH AUTOMATION INNOVATION"</i></div>
                <a class="btn btn-danger btn-xl text-uppercase" href="#jenislomba">More Info</a>
            </div>
        </header>
        <!-- Services-->
       <section class="page-section" id="jenislomba">
             <?php
// Data kompetisi
$competitions = [
    [
        'id' => 'lkti',
        'title' => 'LKTI',
        'full_name' => 'Lomba Karya Tulis Ilmiah',
        'description' => 'Lomba Karya Tulis Ilmiah merupakan sebuah perlombaan yang bertujuan untuk mengembangkan ide kreatif dan inovatif siswa dalam memecahkan masalah yang ada di lingkungan sekitar.',
        'logo' => 'image/LKTI_AW8.png',
        'guide_book' => 'assets/guide/GUIDEBOOK_LKTI.pdf',
        'btn_class' => 'btn-lkti',
        'btn_text' => 'Download Guide Book LKTI'
    ],
    [
        'id' => 'ffr',
        'title' => 'FFR',
        'full_name' => 'Fire Fighting Roboboat',
        'description' => 'Fire Fighting Roboboat merupakan perlombaan kapal tanpa awak yang bergerak secara otomatis dan memiliki misi untuk memadamkan api.',
        'logo' => 'image/FFR_AW8.png',
        'guide_book' => 'assets/guide/GUIDEBOOK_FFR.pdf',
        'btn_class' => 'btn-ffr',
        'btn_text' => 'Download Guide Book FFR'
    ],
    [
        'id' => 'plc',
        'title' => 'PLC',
        'full_name' => 'Programmable Logic Controller',
        'description' => 'Programmable Logic Controller merupakan jenis lomba yang bertujuan untuk mengasah logika dan kemampuan siswa dalam bidang pemrograman PLC.',
        'logo' => 'image/PLC_AW8.png',
        'guide_book' => 'assets/guide/GUIDEBOOK_PLC.pdf',
        'btn_class' => 'btn-plc',
        'btn_text' => 'Download Guide Book PLC'
    ],
    [
        'id' => 'lf',
        'title' => 'LF',
        'full_name' => 'Line Follower',
        'description' => 'Line Follower merupakan jenis lomba yang bertujuan untuk mengasah logika dan kemampuan siswa dalam bidang pemrograman PLC.',
        'logo' => 'image/LF_AW8.png',
        'guide_book' => 'assets/guide/GUIDEBOOK_PLC.pdf',
        'btn_class' => 'btn-lf',
        'btn_text' => 'Download Guide Book PLC'
    ]
];

// Fungsi untuk menghasilkan kartu kompetisi
function generateCompetitionCard($competition) {
    return '
    <div class="competition-card">
        <div class="logo-container">
            <img class="competition-logo" src="' . htmlspecialchars($competition['logo']) . '" alt="' . htmlspecialchars($competition['title']) . ' Logo" />
        </div>
        <h4 class="competition-title">' . htmlspecialchars($competition['title']) . '</h4>
        <p class="competition-description">
            ' . htmlspecialchars($competition['description']) . '
        </p>
        <a class="btn btn-download ' . htmlspecialchars($competition['btn_class']) . '" href="' . htmlspecialchars($competition['guide_book']) . '" target="_blank">
            <i class="fas fa-download me-2"></i>' . htmlspecialchars($competition['btn_text']) . '
        </a>
    </div>';
}

// Memisahkan kompetisi untuk layout 3+1
$first_row_competitions = array_slice($competitions, 0, 2);
$second_row_competitions = array_slice($competitions, 2);

// Konfigurasi halaman
$page_title = "Automation Week VIII - Kategori Lomba";
$event_title = "Automation Week VIII";
$event_description = "Automation Week merupakan event tahunan terbesar dari Himpunan Mahasiswa Teknik Otomasi Politeknik Perkapalan Negeri Surabaya. Pada Automation Week ke VIII ini kompetisi yang akan dilombakan meliputi Lomba Karya Tulis Ilmiah (LKTI), Fire Fighting Roboboat (FFR), Programmable Logic Controller (PLC) dan Line Follower (LF) tingkat SMA/SMK/MA sederajat dan berskala Nasional.";
?>
<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($page_title); ?></title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        .section-heading {
            color: #2c3e50;
            font-weight: bold;
            margin-bottom: 1rem;
        }
        
        .section-subheading {
            color: #6c757d;
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: 3rem;
        }
        
        .competition-card {
            background: #fff;
            border-radius: 15px;
            padding: 2rem;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            height: 100%;
            display: flex;
            flex-direction: column;
        }
        
        .competition-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }
        
        .logo-container {
            text-align: center;
            margin-bottom: 1.5rem;
        }
        
        .competition-logo {
            width: 100px;
            height: 100px;
            object-fit: contain;
            margin: 0 auto;
        }
        
        .competition-title {
            color: #2c3e50;
            font-weight: bold;
            margin-bottom: 1rem;
            text-align: center;
        }
        
        .competition-description {
            color: #6c757d;
            text-align: justify;
            line-height: 1.6;
            flex-grow: 1;
            margin-bottom: 1.5rem;
        }
        
        .btn-download {
            border-radius: 25px;
            padding: 10px 25px;
            font-weight: 500;
            text-transform: uppercase;
            font-size: 0.9rem;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
            text-align: center;
        }
        
        .btn-download:hover {
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        
        .btn-lkti {
            background: linear-gradient(135deg, #ffc107, #ff9800);
            color: white;
        }
        
        .btn-lkti:hover {
            background: linear-gradient(135deg, #ff9800, #f57c00);
            color: white;
        }
        
        .btn-ffr {
            background: linear-gradient(135deg, #17a2b8, #007bff);
            color: white;
        }
        
        .btn-ffr:hover {
            background: linear-gradient(135deg, #007bff, #0056b3);
            color: white;
        }
        
        .btn-plc {
            background: linear-gradient(135deg, #dc3545, #c82333);
            color: white;
        }
        
        .btn-plc:hover {
            background: linear-gradient(135deg, #c82333, #a71e2a);
            color: white;
        }
        
        .btn-lf {
            background: linear-gradient(135deg, #5028a7ff, #9a3ebeff);
            color: white;
        }
        
        .btn-lf:hover {
            background: linear-gradient(135deg, #5734a8ff, #2b2bffff);
            color: white;
        }
        
        .page-section {
            padding: 4rem 0;
            background: linear-gradient(135deg, #f8f9fa, #e9ecef);
        }
        
        @media (max-width: 768px) {
            .competition-card {
                margin-bottom: 2rem;
            }
            
            .section-subheading {
                font-size: 1rem;
            }
        }
    </style>
</head>
                 <!-- Infinite Looping Marquee -->
        <div class="marquee-infinite py-3 bg-dark text-white">
            <div class="marquee-content">
                <div class="marquee-text">
                    <span class="marquee-span">
                        <strong>📢 AUTOMATION WEEK VIII:</strong> 
                        Pendaftaran dibuka hingga 30 November 2024! 
                        🏆 Total hadiah puluhan juta rupiah! 
                        📜 E-sertifikat untuk semua peserta! 
                        🎖 Trophy & uang pembinaan untuk pemenang!
                    </span>
                    <span class="marquee-span" aria-hidden="true">
                        <strong>📢 AUTOMATION WEEK VIII:</strong> 
                        Pendaftaran dibuka hingga 30 November 2024! 
                        🏆 Total hadiah puluhan juta rupiah! 
                        📜 E-sertifikat untuk semua peserta! 
                        🎖 Trophy & uang pembinaan untuk pemenang!
                    </span>
                </div>
            </div>
        </div>

        <style>
            .marquee-infinite {
                background: linear-gradient(135deg, #ed2121ff, #8a1414ff);
                overflow: hidden;
                white-space: nowrap;
                position: relative;
            }
            .marquee-content {
                display: inline-block;
            }
            .marquee-text {
                display: inline-flex;
                animation: marquee 50s linear infinite;
            }
            .marquee-span {
                padding: 0 2rem;
                display: inline-block;
            }
            @keyframes marquee {
                0%   { transform: translateX(0); }
                100% { transform: translateX(-50%); }
            }
            
            /* Optional: Pause on hover */
            .marquee-text:hover {
                animation-play-state: paused;
            }
        </style>
<body>
    <section class="page-section" id="jenislomba">
        <div class="container">
            <div class="text-center">
                <h2 class="section-heading text-uppercase"><?php echo htmlspecialchars($event_title); ?></h2>
                <h3 class="section-subheading">
                    <?php echo htmlspecialchars($event_description); ?>
                </h3>
            </div>
            
            <!-- Row pertama: LKTI, FFR, PLC -->
            <div class="row g-4 mb-4">
                <?php foreach ($first_row_competitions as $competition): ?>
                <div class="col-lg-6 col-md-6">
                    <?php echo generateCompetitionCard($competition); ?>
                </div>
                <?php endforeach; ?>
            </div>
            
            <!-- Row kedua: Line Follower (centered) -->
            <div class="row g-4 justify-content-center">
                <?php foreach ($second_row_competitions as $competition): ?>
                <div class="col-lg-6 col-md-6">
                    <?php echo generateCompetitionCard($competition); ?>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
    </section>
    
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>

    </section>
        <section class="page-section" id="jenislomba">
            <div class="container-fluid">
                <div class="row">
                    <div class="col">
                        <center>
                            <img src="image/poster/TES_BANNER 1.png" alt="" class="img-fluid custom-img">
                        </center>
                    </div>
                </div>
            </div>
            <style>
                .custom-img {
                    width: 100%;
                }

                @media (min-width: 768px) {
                    .custom-img {
                        width: 100%;
                    }
                }
            </style>

        </section>
        
       <section class="page-section" id="video">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Video</h2>
        </div>

        <!-- Baris pertama -->
        <div class="row text-center my-5">
            <div class="col-md-6">
                <div class="text-center">
                    <h4 class="section-heading text-uppercase">Video Profil Teknik Otomasi</h4>
                </div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe src="https://www.youtube.com/embed/3ZxTrpAgDQI?si=rpwg3QdfjwuX0lsS" 
                        title="YouTube video player" 
                        frameborder="0" 
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                        allowfullscreen></iframe>
                </div>
            </div>

            <div class="col-md-6">
                <div class="text-center">
                    <h4 class="section-heading text-uppercase">Video After Movie Automation Week III</h4>
                </div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe src="https://www.youtube.com/embed/foCUO25NnRM?si=JBTfS85BL_NDFVSf"
                        title="YouTube video player" 
                        frameborder="0" 
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                        allowfullscreen></iframe>
                </div>
            </div>
        </div>

        <!-- Baris kedua -->
        <div class="row text-center my-5">
            <div class="col-md-6">
                <div class="text-center">
                    <h4 class="section-heading text-uppercase">Video After Movie Automation Week V</h4>
                </div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe src="https://youtube.com/embed/U4Iim3J0EeA?si=qT9bAb75AzcktnPp" 
                        title="YouTube video player" 
                        frameborder="0" 
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                        allowfullscreen></iframe>
                </div>
            </div>

            <div class="col-md-6">
                <div class="text-center">
                    <h4 class="section-heading text-uppercase">Video After Movie Automation Week VII</h4>
                </div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe src="https://youtube.com/embed/1WNG8sT1igc?si=AvgxGd-P437o-Tgr" 
                        title="YouTube video player" 
                        frameborder="0" 
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                        allowfullscreen></iframe>
                </div>
            </div>
        </div>
    </div>


 </section>
        
       <section class="page-section" id="videoregis">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Video Cara Registrasi</h2>
        </div>

        <!-- Baris pertama -->
        <div class="row text-center my-5">
            <div class="col-md-6">
                <div class="text-center">
                    <h4 class="section-heading text-uppercase">Video Cara Registrasi Pada Website </h4>
                </div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe src="https://www.youtube.com/embed/3ZxTrpAgDQI?si=rpwg3QdfjwuX0lsS" 
                        title="YouTube video player" 
                        frameborder="0" 
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                        allowfullscreen></iframe>
                </div>
            </div>

            <div class="col-md-6">
                <div class="text-center">
                    <h4 class="section-heading text-uppercase">Video Cara Registrasi Pada Google Form</h4>
                </div>
                <div class="embed-responsive embed-responsive-16by9">
                    <iframe src="https://www.youtube.com/embed/foCUO25NnRM?si=JBTfS85BL_NDFVSf"
                        title="YouTube video player" 
                        frameborder="0" 
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
                        allowfullscreen></iframe>
                </div>
            </div>
        </div>


</section>
        <!-- About-->
        <section class="page-section" id="timeline">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Timeline </h2>
                </div>
                <ul class="timeline">
                <li>
                    <div class="timeline-image"><img class="rounded-circle img-fluid" src="image/lkti.png" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4 class="subheading">Pendaftaran dan Pembayaran LKTI</h4>
                                <h6 style="color: #6C757D;"><?= isset($plc['tgl_daftar']) ? $lkti['tgl_daftar'] : '20 Oktober - 15 November 2024'; ?></h6>
                            </div>
                        </div>

                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="image/ffr.png" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4 class="subheading">Pendaftaran dan Pembayaran FFR</h4>
                                <h6 style="color: #6C757D;"><?= isset($ffr['tgl_pendaftaran']) ? $ffr['tgl_pendaftaran'] : '25 Oktober - 11 November 2024'; ?></h6>
                            </div>
                        </div>
                    </li>

                    <li>
                    <div class="timeline-image"><img class="rounded-circle img-fluid" src="image/plc.png" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4 class="subheading">Pendaftaran dan Pembayaran PLC</h4>
                                <h6 style="color: #6C757D;"><?= isset($plc['tgl_daftar']) ? $plc['tgl_daftar'] : '20 Oktober - 15 November 2024'; ?></h6>
                            </div>
                        </div>
                    </li>
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="image/ffr.png" alt="..." /></div>
                        <div class="timeline-panel">
                            <div class="timeline-heading">
                                <h4 class="subheading">Pendaftaran dan Pembayaran Line Follower</h4>
                                <h6 style="color: #6C757D;"><?= isset($ffr['tgl_pendaftaran']) ? $ffr['tgl_pendaftaran'] : '25 Oktober - 11 November 2024'; ?></h6>
                            </div>
                        </div>
                    
                    <li class="timeline-inverted">
                        <div class="timeline-image"><img class="rounded-circle img-fluid" src="image/awlogo.png" alt="..." /></div>
                    <div class="timeline-panel">
                </div>

            </div>
            </li>
            </ul>
            </div>
        </section>

        <?php include_once 'home/sponsor/sponsor.php' ?>
</section>
<!-- Team-->
<section class="page-section" style="background-color :#e9ecef;" id="team">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Media Partner</h2>
        </div>
        <div class="row">
            <div class="col-lg-3">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="image/awlogo.png" alt="..." />
                    <h6>Info.lomba</h6>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="image/evenkampus.png" alt="..." />
                    <h6>Info Campus</h6>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="image/apaaja.png" alt="..." />
                    <h6>Event Apaja</h6>

                </div>
            </div>
            <div class="col-lg-3">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="image/infoeven.png" alt="..." />
                    <h6>Info Event</h6>

                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-3">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="image/logolomba.png" alt="..." />
                    <h6>Info Lomba</h6>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="image/infokti.png" alt="..." />
                    <h6>Info Lomba KTI</h6>
                </div>
            </div>
            <div class="col-lg-3">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="image/lombaonline.jpg" alt="..." />
                    <h6>Lomba Online</h6>

                </div>
            </div>
            <div class="col-lg-3">
                <div class="team-member">
                    <img class="mx-auto rounded-circle" src="image/circle.png" alt="..." />
                    <h6>Info Lomba & Beasiswa</h6>

                </div>
            </div>
        </div>
    </div>
<?php include_once 'home/template/cp.php' ?>

        <!-- Footer-->
        <footer class="footer py-4" style="background-color : #D4ECDD;">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-4 text-lg-start">Copyright &copy; Automation Week 8</div>
                    <div class="col-lg-4 my-3 my-lg-0">
                        <a class="btn btn-dark btn-social mx-2" href="https://www.youtube.com/channel/UCXepgfxFNcLQcMHgyTrykjw"><i class="fab fa-youtube"></i></a>
                        <a class="btn btn-dark btn-social mx-2" href="https://www.instagram.com/automationweek/"><i class="fab fa-instagram"></i></a>
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