<?php 
include "koneksi.php";
$kon = new Koneksi ();
$aksi = @$_REQUEST['aksi'];
switch ($aksi) {
	case 'tambah':

	$nama_tim=addslashes(@$_POST[nama_tim]);
	$nama_ketua=addslashes(@$_POST[nama_ketua]);
	$sekolah=addslashes(@$_POST[asal_sekolah]);
	$judul=addslashes(@$_POST[judul]);


		//cek jenis kendaraan sma

		//panggil kueri
	$abc = $kon->kueri("INSERT INTO pengumuman_lkti VALUES ('', '$nama_tim', '$nama_ketua', '$sekolah', '$judul')");
	if ($abc == TRUE) {
		echo "<script>alert('Tambah Data Sukses');</script>";
	}else{
		echo"<script>alert('Tambah Data Gagal');</script>";
	}

	break;


	case 'hapus':
	$id = @$_REQUEST['id'];
	$xyz = $kon->kueri("DELETE FROM pengumuman_lkti WHERE id = '$id' ");
	if ($xyz == TRUE){
		echo "<script>alert('Hapus data sukses'); </script>";
	}else{
		echo "<script>alert('Hapus data Gagal'); </script>";
	}			
	break;

	case 'edit' :
	$idx = @$_POST['hid'];
	$nama_tim=addslashes(@$_POST[nama_tim]);
	$nama_ketua=addslashes(@$_POST[nama_ketua]);
	$sekolah=addslashes(@$_POST[asal_sekolah]);
	$judul=addslashes(@$_POST[judul]);



	//panggil kueri

	$abc = $kon->kueri ("UPDATE pengumuman_lkti SET nama_tim = '$nama_tim', nama_ketua = '$nama_ketua', asal_sekolah = '$sekolah', judul = '$judul' WHERE id = '$idx'  ");
	if($abc == TRUE) {
		echo "<script>alert('Edit Data Sukses.');</script>";
	}else{
		echo "<script> ('Edit Data Gagal.')</script>";
	}
	break;
	


} 
?>
<meta http-equiv="refresh" content="0;URL=loloslkti.php"/>