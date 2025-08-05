<nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav" style="background-color: rgba(0,0,0,0.9);">
    <div class="container">
        <div class="d-flex align-items-center">
            <div class="rounded-circle-container d-flex align-items-center">
                <img class="rounded-circle img-fluid mr-2" src="image/ppns1.jpg" alt="PPNS" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/DIKTI.png" alt="DIKTI" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/LOGO BLU_SPEEDCIRCLE.png" alt="BLU" style="width: 40px; height: 40px;"/>
                <img class="rounded-circle img-fluid mr-2" src="image/hima.jpg" alt="HIMA" style="width: 40px; height: 40px;"/>
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