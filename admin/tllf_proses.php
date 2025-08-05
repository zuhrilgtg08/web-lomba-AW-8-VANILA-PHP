<?php
    session_start();
    if (!isset($_SESSION["email_admin"])) {
    header("Location: index.php");
    exit;
}

include "koneksi.php";
$kon = new Koneksi();
$aksi = @$_REQUEST['aksi'];

switch ($aksi) {
    case 'edit':
        $id = @$_POST['hid'];
        $daftar = @$_POST['pendaftaran'];
        $penyisihan = @$_POST['penyisihan'];
        $lolos = @$_POST['lolos'];
        $tm = @$_POST['tm'];
        $final = @$_POST['final'];

        $query = "UPDATE tl_lf SET tgl_daftar='$daftar', tgl_penyisihan='$penyisihan', tgl_lolos='$lolos', tgl_tm='$tm', tgl_final='$final' WHERE id='$id'";
        if ($kon->kueri($query)) {
            header("Location: tl_lf.php?status=success");
        } else {
            header("Location: tl_lf.php?status=error");
        }
        break;

    default:
        header("Location: tl_lf.php");
        break;
}