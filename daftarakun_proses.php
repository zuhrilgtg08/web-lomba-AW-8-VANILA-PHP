  <?php
    include 'koneksi.php';
    $kon = new Koneksi();
    $create = @$_REQUEST['create'];
    $nama = @$_POST['tnama'];
    $nama_anggota_1 = @$_POST['tnama_anggota_1'];
    $nama_anggota_2 = @$_POST['tnama_anggota_2'];
    $namatim = @$_POST['tnamatim'];
    $sekolah = @$_POST['tsekolah'];
    $email = @$_POST['temail'];
    $lomba = @$_POST['tlomba'];
    $no = @$_POST['tnomor'];
    $pass = @$_POST['tpass'];
    $pass1 = @$_POST['tpass1'];
    $xyz = $kon->kueri("SELECT email FROM login_peserta WHERE email = '$email'");

    if ($kon->jumlah_data($xyz)) {
        echo "<script>alert('Email Sudah Ada')</script>";
        echo "<meta http-equiv='refresh' content='0;url=daftarakun.php' />";
        return false;
    }


    if ($pass !== $pass1) {
        echo "<script>alert('Password yang dimasukan tidak sesuai')</script>";
        echo "<meta http-equiv='refresh' content='0;url=daftarakun.php' />";
        return false;
    }

    switch ($create) {
        case 'daftar':

            $abc = $kon
                ->kueri("INSERT INTO login_peserta(id_peserta, nama_tim, nama, nama_anggota1, nama_anggota2, sekolah, email, telp, pass, jenis_lomba,proses) VALUES (NULL, '$namatim','$nama', '$nama_anggota_1', '$nama_anggota_2', '$sekolah', '$email' ,'$no', MD5('$pass'), '$lomba' , '0')");

            if ($abc == TRUE) {
                echo "<script>alert('Daftar Sukses!!!')</script>";
                echo "<meta http-equiv='refresh' content='0;url=login.php' />";
            } else {
                echo "<script>alert('Daftar Gagal!!!)</script>";
                header('Location: daftarakun.php');
                exit;
            }
    }
    ?>


