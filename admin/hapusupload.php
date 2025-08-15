<?php 
include "koneksi.php";
$kon = new Koneksi ();
$aksi = @$_REQUEST['aksi'];

switch ($aksi) {
	
	case 'hapus':
	$id = @$_REQUEST['id'];
	$abc = $kon->kueri("SELECT file FROM upload_plc WHERE id_plc = $id ");
	$data = $kon->hasil_data($abc);
	$def = $kon->kueri("SELECT * FROM upload_lkti WHERE id_lkti = '$id' ");
	$data = $kon->hasil_data($def);
	$file =$data['file'];
	unlink('../'.$file);  
	$xyz = $kon->kueri("DELETE FROM upload_plc WHERE id_plc = '$id' ");
	$ijk = $kon->kueri("DELETE FROM upload_lkti WHERE id_lkti = '$id' ");
	
	if ($xyz == TRUE){

		echo "<script>alert('Hapus data sukses'); </script>";
	}else{
		echo "<script>alert('Hapus data Gagal'); </script>";
	}		

	if ($ijk == TRUE){

		echo "<script>alert('Hapus data sukses'); </script>";
	}else{
		echo "<script>alert('Hapus data Gagal'); </script>";
	}		
	

	break;

	case 'statusoff':
	$id = @$_REQUEST['id'];
	$status = 'off';
	$abs = $kon->kueri("UPDATE aksiupload SET status = '$status' WHERE id = '$id' ");			
	break;	
	case 'statuson':
	$id = @$_REQUEST['id'];
	$status = 'on';
	$abs = $kon->kueri("UPDATE aksiupload SET status = '$status' WHERE id = '$id' ");			
	break;	

} 
?>
<meta http-equiv="refresh" content="0;URL=plcfile.php"/>