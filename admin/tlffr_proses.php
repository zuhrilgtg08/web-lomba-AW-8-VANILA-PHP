<?php 
include "koneksi.php";
$kon = new Koneksi ();
$aksi = @$_REQUEST['aksi'];
switch ($aksi) {
	
	case 'edit' :
	$idx =@$_POST['hid'];
	$daftar = @$_POST['pendaftaran'];
	$latih1 = @$_POST['pelatihan1'];
	$latih2 = @$_POST['pelatihan2'];
	$seleksi1 = $_POST['seleksi1'];
	$umum1 = @$_POST['pengumuman1'];
	$seleksi2 = $_POST['seleksi2'];
	$umum2 = @$_POST['pengumuman2'];
	$tm = @$_POST['tm'];
	$lomba = @$_POST['lomba'];


	//panggil kueri

	$abc = $kon->kueri ("UPDATE tl_ffr SET tgl_pendaftaran = '$daftar', tgl_pelatihan1 = '$latih1', tgl_pelatihan2 = '$latih2', tgl_seleksi1 = '$seleksi1', tgl_pengumuman1 = '$umum1', tgl_seleksi2 = '$seleksi2', tgl_pengumuman2 = '$umum2', tgl_tm = '$tm', tgl_lomba = '$lomba' WHERE id = '$idx' ");
	if($abc == TRUE) {
		echo "<script>alert('Edit Data Sukses.');</script>";
	}else{
		echo "<script> ('Edit Data Gagal.')</script>";
	}
	break;
	


} 
?>
<meta http-equiv="refresh" content="0;URL=tl_ffr.php"/>