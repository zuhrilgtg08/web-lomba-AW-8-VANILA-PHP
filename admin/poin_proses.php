<?php 
include "koneksi.php";
$kon = new Koneksi ();
$aksi = @$_REQUEST['aksi'];
switch ($aksi) {
	case 'tambah':

	$nama=addslashes(@$_POST[nama]);
	$sekolah=addslashes(@$_POST[sekolah]);
	$point=addslashes(@$_POST[point]);
	$seleksi = 'seleksi1';


		//cek jenis kendaraan sma

		//panggil kueri
	$abc = $kon->kueri("INSERT INTO tb_point VALUES (NULL, '$nama', '$sekolah', '$point', '$seleksi')");
	if ($abc == TRUE) {
		echo "<script>alert('Tambah Data Sukses');</script>";
	}else{
		echo"<script>alert('Tambah Data Gagal');</script>";
	}

	break;

	case 'hide':
	$id = @$_REQUEST['id'];
	$seleksi = 'hide';
	$xyz = $kon->kueri("UPDATE tb_point SET seleksi = '$seleksi' WHERE id = '$id' ");			
	break;

	case 'hapus':
	$id = @$_REQUEST['id'];
	$xyz = $kon->kueri("DELETE FROM tb_point WHERE id = '$id' ");
	if ($xyz == TRUE){
				echo "<script>alert('Hapus data sukses'); </script>";
		}else{
			echo "<script>alert('Hapus data Gagal'); </script>";
		}			
	break;

	case 'edit' :
	$idx = @$_POST['hid'];
	$nama=addslashes(@$_POST[nama]);
	$sekolah=addslashes(@$_POST[sekolah]);
	$point=addslashes(@$_POST[point]);
	$seleksi=addslashes(@$_POST[seleksi]);



	//panggil kueri

	$abc = $kon->kueri ("UPDATE tb_point SET nama_tim = '$nama', asal_sekolah = '$sekolah', points = '$point', seleksi = '$seleksi' WHERE id = '$idx'  ");
	if($abc == TRUE) {
		echo "<script>alert('Edit Data Sukses.');</script>";
	}else{
		echo "<script> ('Edit Data Gagal.')</script>";
	}
	break;
	


} 
?>
<meta http-equiv="refresh" content="0;URL=pointffr.php"/>