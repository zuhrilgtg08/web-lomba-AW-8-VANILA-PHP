<?php
session_start();
include 'koneksi.php'; 
$kon = new Koneksi();

$email =@$_POST['temail'];
$pass =@$_POST['tpass'];

$abc = $kon->kueri("SELECT * FROM login_admin WHERE  email = '$email' AND pass = MD5('$pass') ");
$jumlah = $kon->jumlah_data($abc);
if($jumlah == 0) {
	echo "<script>alert ('Login Gagal.');</script>";
	header("location: login_admin.php");
}else{
	$hasil = $kon->hasil_data($abc);
	$_SESSION['email_admin'] = $hasil['id_admin'];
	$_SESSION['email_peserta1'] = $hasil['email'];
	$_SESSION['nama_admin'] = $hasil['nama'];
	$_SESSION['level'] = $hasil['level'];
	$_SESSION['jenislomba'] = $hasil['jenis_lomba'];
	echo "<script>alert ('Selamat Datang');</script>";
	

}


?>
<meta http-equiv="refresh" content="0;URL=index.php" />
