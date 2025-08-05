<?php 
include "koneksi.php";
$kon = new Koneksi ();
$aksi = @$_REQUEST['aksi'];

switch ($aksi) {
	case 'statusoffplc':
	$id = @$_REQUEST['id'];
	$status = 'off';
	$abs = $kon->kueri("UPDATE aksiupload SET status = '$status' WHERE id = '2' ");			
	break;	

	case 'statusonplc':
	$id = @$_REQUEST['id'];
	$status = 'on';
	$abs = $kon->kueri("UPDATE aksiupload SET status = '$status' WHERE id = '2' ");			
	break;	

} 
?>
<meta http-equiv="refresh" content="0;URL=plcfile.php"/>