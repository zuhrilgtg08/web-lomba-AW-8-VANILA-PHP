<?php 
include "koneksi.php";
$kon = new Koneksi ();
$aksi = @$_REQUEST['aksi'];
switch ($aksi) {
	
	case 'edit' :
	$idx =@$_POST['hid'];
	$daftar = @$_POST['pendaftaran'];
	$pelatihan = @$_POST['pelatihan'];
	$penyisihan = @$_POST['penyisihan'];
	$lolos = @$_POST['lolos'];
	$tm = @$_POST['tm'];
	$final = @$_POST['final'];
    

	//panggil kueri

	$abc = $kon->kueri ("UPDATE tl_plc SET tgl_daftar='$daftar',tgl_pelatihan='$pelatihan',tgl_penyisihan='$penyisihan',tgl_lolos='$lolos',tgl_tm='$tm',tgl_final='$final' WHERE id = '$idx' ");
	if($abc == TRUE) {
		echo "<script>alert('Edit Data Sukses.');</script>";
	}else{
		echo "<script> ('Edit Data Gagal.')</script>";
	}
	break;
	


} 
?>
<meta http-equiv="refresh" content="0;URL=tl_plc.php"/>