<ul class="navbar-nav sidebar sidebar-dark accordion" style="background: #DF2E2E;" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.php">
        <div class="sidebar-brand-text mx-3"><?= $_SESSION['nama_admin']; ?> </div>
    </a>

    <!-- Divider -->
    <hr class="sidebar-divider my-0">





    <!-- Nav Item - Pages Collapse Menu -->
    <?php
    $sesi = $_SESSION['level'];

    if ($sesi == 'admin') { ?>
        <!-- isi -->
        <li class="nav-item">

            <a class="nav-link" href="index.html">
                <i class="fas fa-users"></i>
                <span>Tambah Admin</span></a>
        </li>
    <?php } elseif ($sesi == 'admin_ffr') { ?>
        <!-- isi -->
        <li class="nav-item">
            <a class="nav-link" href="tl_ffr.php">
                <i class="fas fa-stream"></i>
                <span>Time Line FFR</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="pointffr.php">
                <i class="fas fa-chart-bar"></i>
                <span>Tambahkan Point</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="peserta.php">
                <i class="fas fa-users"></i>
                <span>Daftar Peserta FFR</span></a>
        </li>

    <?php } elseif ($sesi == 'admin_plc') { ?>
        <li class="nav-item">
            <a class="nav-link" href="tl_plc.php">
                <i class="fas fa-stream"></i>
                <span>Time Line PLC</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="plcfile.php">
                <i class="fas fa-download"></i>
                <span>Download File PLC</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="daftar_plc.php">
                <i class="fas fa-users"></i>
                <span>Rekap File Penyisihan PLC</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="peserta.php">
                <i class="fas fa-users"></i>
                <span>Peserta PLC</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="pengumuman_plc.php">
                <i class="fas fa-users"></i>
                <span>Pengumuman nilai PLC</span></a>
        </li>

        <!-- isi -->

    <?php } else if ($sesi == 'admin_lkti') { ?>
        <li class="nav-item">
            <a class="nav-link" href="tl_lkti.php">
                <i class="fas fa-stream"></i>
                <span>Time Line LKTI</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="lkti_file.php">
                <i class="fas fa-download"></i>
                <span>Download File LKTI</span></a>
        </li>

          <li class="nav-item">
                <a class="nav-link" href="lktipenilaian.php">
                 <i class="fas fa-download"></i>
                 <span>Penilaian</span></a>
               </li>

        <li class="nav-item">
            <a class="nav-link" href="fullpaper.php">
                <i class="fas fa-table"></i>
                <span>Full Paper</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="peserta.php">
                <i class="fas fa-users"></i>
                <span>Daftar Peserta LKTI</span></a>
        </li>

    <?php } else if ($sesi == 'admin_bendahara') { ?>
        <li class="nav-item">
            <a class="nav-link" href="tb_bayar.php">
                <i class="fas fa-stream"></i>
                <span>Pembayaran</span></a>
        </li>
    <?php } else if ($sesi == 'admin_peserta') { ?>
        <li class="nav-item">
            <a class="nav-link" href="tb_peserta.php">
                <i class="fas fa-stream"></i>
                <span>Daftar Peserta</span></a>
        </li>
    <?php } else if($sesi == 'admin_lf') { ?>
        <li class="nav-item">
            <a class="nav-link" href="tl_lf.php">
                <i class="fas fa-stream"></i>
                <span>Time Line LF</span></a>
        </li>

        <li class="nav-item">
            <a class="nav-link" href="peserta.php">
                <i class="fas fa-users"></i>
                <span>Daftar Peserta LF</span></a>
        </li>

        <!-- <li class="nav-item">
            <a class="nav-link" href="pointlf.php">
            <a class="nav-link" href="#">
                <i class="fas fa-chart-bar"></i>
                <span>Tambahkan Point</span></a>
        </li> -->
    <?php } ?>


    <!-- Nav Item - Charts -->

    <!-- Nav Item - Tables -->


    <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="modal" data-target="#logoutModal">
            <i class="fas fa-sign-out-alt"></i>
            <span>Logout</span>
        </a>
    </li>


    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>