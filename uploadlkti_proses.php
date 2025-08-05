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



			
	//upload gambar
	$file_awal = $_FILES['ffile']['tmp_name'];
	$file_tujuan = uniqid(). $_FILES['ffile']['name'];
	//simpan gambar pada folder "foto", jika belum ada buat folder 

	$ekstensigambarvalid = ['pdf'];
	$ekstensigambar = explode('.', $file_tujuan);
	$ekstensigambar = strtolower(end($ekstensigambar));
	if (!in_array($ekstensigambar, $ekstensigambarvalid)) {
		echo "<script>alert('File Bukan ZIP')</script>";
		echo "<meta http-equiv='refresh' content='0;url=uploadlkti.php' />";
 	return false;
	}

	if (!file_exists("filelkti")) {
		mkdir("filelkti");
	}
	move_uploaded_file($file_awal, "filelkti/".$file_tujuan);

		//panggil kueri

	$abc = $kon->kueri("INSERT INTO upload_lkti (id_lkti, email, nama_ketua, nama_anggota, sekolah, telp, file) VALUES ('','$email','$ketua', '$anggota','$sekolah', '$no', 'filelkti/$file_tujuan' )");
	if ($abc == TRUE) {
		echo "<script>alert('Tambah Data Sukses!!!')</script>";
	}else{
		echo "<script>alert('Tambah Data Gagal!!!)</script>";
		}	
	break;


	
	}

	?>
	<meta http-equiv="refresh" content="0;URL=index.php"/>