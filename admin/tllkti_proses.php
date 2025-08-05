<?php 
include "koneksi.php";
$kon = new Koneksi ();
$aksi = @$_REQUEST['aksi'];
switch ($aksi) {
	
	case 'edit' :
	$idx =@$_POST['hid'];
	$daftar = @$_POST['pendaftaran'];
	$abstrak = @$_POST['abstrak'];
	$konfirmasi = @$_POST['konfirmasi'];
	$karya = $_POST['karya'];
	$penilaian = @$_POST['penilaian'];
	$finalis = $_POST['finalis'];
	$poster = @$_POST['poster'];
	$tm = @$_POST['tm'];
	$presentasi = @$_POST['presentasi'];


	//panggil kueri

	$abc = $kon->kueri ("UPDATE tl_lkti SET tgl_daftar='$daftar',tgl_abstrak='$abstrak',tgl_bayar='$konfirmasi',tgl_karya='$karya',tgl_nilai='$penilaian',tgl_finalis='$finalis',tgl_poster='$poster',tgl_tm='$tm',tgl_presentasi='$presentasi' WHERE id = '$idx' ");
	if($abc == TRUE) {
		echo "<script>alert('Edit Data Sukses.');</script>";
	}else{
		echo "<script> ('Edit Data Gagal.')</script>";
	}
	break;
	


} 
?>
<meta http-equiv="refresh" content="0;URL=tl_lkti.php"/>