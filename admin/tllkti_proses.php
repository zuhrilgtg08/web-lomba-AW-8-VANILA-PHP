<?php 
include "koneksi.php";
$kon = new Koneksi ();
$aksi = @$_REQUEST['aksi'];
switch ($aksi) {
	
	case 'edit' :
	$idx =@$_POST['hid'];
	$daftar = @$_POST['pendaftaran'];
	$seleksi_abstrak = @$_POST['seleksi_abstrak'];
	$abstrak = @$_POST['abstrak'];
	$full_paper = @$_POST['full_paper'];
	$penjurian = @$_POST['penjurian'];
	$lolos_full_paper = @$_POST['lolos_full_paper'];
	$tm = @$_POST['tm'];
	$presentasi = @$_POST['presentasi'];
	$pameran = @$_POST['pameran'];
	$konfirmasi = @$_POST['konfirmasi'];
	$karya = $_POST['karya'];
	$penilaian = @$_POST['penilaian'];
	$finalis = $_POST['finalis'];
	$poster = @$_POST['poster'];

	//panggil kueri
	$abc = $kon->kueri ("UPDATE tl_lkti SET tgl_daftar='$daftar',tgl_abstrak='$abstrak',tgl_bayar='$konfirmasi',tgl_karya='$karya',tgl_nilai='$penilaian',tgl_finalis='$finalis',tgl_poster='$poster',tgl_tm='$tm',tgl_presentasi='$presentasi', tgl_seleksi_abstrak='$seleksi_abstrak', tgl_full_paper='$full_paper', tgl_penjurian='$penjurian', tgl_pengumuman_full_paper='$lolos_full_paper', tgl_pameran='$pameran' WHERE id = '$idx' ");
	if($abc == TRUE) {
		echo "<script>alert('Edit Data Sukses.');</script>";
	}else{
		echo "<script> ('Edit Data Gagal.')</script>";
	}
	break;
	


} 
?>
<meta http-equiv="refresh" content="0;URL=tl_lkti.php"/>