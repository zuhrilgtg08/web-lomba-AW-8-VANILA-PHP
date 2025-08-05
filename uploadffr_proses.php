	<?php
	include "koneksi.php";
	$kon = new Koneksi();
	$aksi = @$_REQUEST['aksi'];

	switch ($aksi) {
		case 'tambah':
			$email=addslashes(@$_POST['temail']);
			$tim=addslashes(@$_POST['ttim']);
			$ketua=addslashes(@$_POST['tketua']);
			$anggota= addslashes(@$_POST['tanggota']);
			$sekolah= addslashes(@$_POST['tsekolah']);
			$no= addslashes(@$_POST['tno']);
			$link= addslashes(@$_POST['ffile']);



		//panggil kueri

	$abc = $kon->kueri("INSERT INTO upload_ffr (id_ffr, email, nama_ketua, nama_anggota, sekolah, telp, link) VALUES ('','$email','$ketua', '$anggota','$sekolah', '$no', '$link' )");
	if ($abc == TRUE) {
		echo "<script>alert('Tambah Data Sukses!!!')</script>";
	}else{
		echo "<script>alert('Tambah Data Gagal!!!)</script>";
		}	
	break;


	
	}

	?>
	<meta http-equiv="refresh" content="0;URL=index.php"/>