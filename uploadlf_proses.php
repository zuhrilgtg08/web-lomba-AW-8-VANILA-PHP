	<?php
	include "koneksi.php";
	$kon = new Koneksi();
	$aksi = @$_REQUEST['aksi'];
	date_default_timezone_set("Asia/Jakarta");


	switch ($aksi) {
		case 'tambah':
			$email=addslashes(@$_POST['email']);
			$tim=addslashes(@$_POST['nama_tim']);
			$ketua=addslashes(@$_POST['nama_ketua']);
			$waktu=date('d F Y'.','.'H'.':'.'i');
			$sekolah= addslashes(@$_POST['asal_sekolah']);


			
	//upload gambar
	$random	=rand(10,1000);
	$file_awal = $_FILES['ffile']['tmp_name'];
	$file_tujuan = $_FILES['ffile']['name'];
	//simpan gambar pada folder "foto", jika belum ada buat folder 

	$ekstensigambarvalid = ['zip', 'rar'];
	$ekstensigambar = explode('.', $file_tujuan);
	$ekstensigambar = strtolower(end($ekstensigambar));
	if (!in_array($ekstensigambar, $ekstensigambarvalid)) {
		echo "<script>alert('File Bukan ZIP atau rar')</script>";
		echo "<meta http-equiv='refresh' content='0;url=index.php' />";
 	return false;
	}

	if (!file_exists("filelf")) {
		mkdir("filelf");
	}
	move_uploaded_file($file_awal, "filelf/".$file_tujuan);
	
	$asd = $kon->kueri("SELECT * FROM aksiupload WHERE id = '1' ");
	$aksi = $kon->hasil_data($asd);
		//panggil kueri
if ($aksi['status'] == 'on'){
	$abc = $kon->kueri("INSERT INTO upload_plc(id_plc, email, nama_tim, nama_ketua, sekolah, waktu, file) VALUES (NULL,'$email','$tim','$ketua','$sekolah', '$waktu', 'fileplc/$file_tujuan' )");
	if ($abc == TRUE) {
		echo "<script>alert('Tambah Data Sukses!!!')</script>";
	}else{
		echo "<script>alert('Tambah Data Gagal!!!)</script>";
		}	

	}else if ($aksi['status']=='off') {
		echo "<script>alert('Waktu Pengumpulan Telah Berakhir!')</script>";
	}

		break;


	
	}

	?>
	<meta http-equiv="refresh" content="0;URL=index.php"/>