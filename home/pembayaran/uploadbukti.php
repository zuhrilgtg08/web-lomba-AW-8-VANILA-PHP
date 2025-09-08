<?php
if (!isset($_SESSION['email_peserta'])) {
    header('Location: halamanutama.php');
    exit;
}

$varpeserta = $_SESSION['email_peserta'];
$varbayar = $kon->kueri("SELECT * FROM login_peserta WHERE id_peserta = '$varpeserta' ");
$databayar = $kon->hasil_data($varbayar);
$proses = $databayar['proses'];
$lomba = $databayar['jenis_lomba'];
$nama_ketua = $databayar['nama'];
if (isset($_POST['bayar'])) {
    // Ambil data dari formulir
    $nama_tim = $databayar['nama_tim'];
    $email = $databayar['email'];
    $nama_ketua = $databayar['nama'];

    // Juga ambil file bukti pembayaran
    $nama_file = $_FILES['bukti_pembayaran']['name'];
    $lokasi_file = $_FILES['bukti_pembayaran']['tmp_name'];

    $nama_file = $_FILES['bukti_pembayaran']['name'];
    $ext = pathinfo($nama_file, PATHINFO_EXTENSION); // Dapatkan ekstensi berkas
    $nama_file_tanpa_ext = pathinfo($nama_file, PATHINFO_FILENAME); // Dapatkan nama tanpa ekstensi

    // Ganti spasi dengan tanda '-' dalam nama tim
    $nama_tim = str_replace(" ", "-", $nama_tim);

    // Fungsi untuk menghasilkan 4 angka acak
    function generateRandomNumber($length = 4)
    {
        return rand(pow(10, ($length - 1)), pow(10, $length) - 1);
    }

    $angka_acak = generateRandomNumber();
    $nama_file_baru = $nama_file_tanpa_ext . $angka_acak . '.' . $ext; // Nama berkas yang sudah dimodifikasi

    // Direktori untuk menyimpan file bukti
    $lokasi_simpan = 'admin/filebukti/' . $nama_tim . '/' . $nama_file_baru;

    // Buat direktori jika belum ada
    if (!is_dir('admin/filebukti/' . $nama_tim)) {
        mkdir('admin/filebukti/' . $nama_tim, 0755, true);
    }

    // Batasan jenis berkas yang diizinkan (PDF, JPG, PNG)
    $jenis_berkas_diizinkan = array("pdf", "jpg", "jpeg", "png");

    // Periksa ekstensi berkas
    if (in_array(strtolower($ext), $jenis_berkas_diizinkan)) {
        move_uploaded_file($lokasi_file, $lokasi_simpan);

        if ($lomba == 'lkti') {
            $uploaddb =  $kon->kueri("UPDATE tb_bukti SET bukti = '$lokasi_simpan' WHERE id_peserta = '$varpeserta' ");
        } else {
            $uploaddb = $kon->kueri("INSERT INTO tb_bukti (id_peserta,nama_tim, email, nama_ketua, bukti) VALUES ('$varpeserta','$nama_tim', '$email', '$nama_ketua', '$lokasi_simpan')");
        }
        if ($uploaddb == TRUE) {
            // Jika berhasil, update field "proses" pada tabel 'login_peserta' menjadi 1
            if ($lomba == 'lkti') {
                $updateProses = $kon->kueri("UPDATE login_peserta SET proses = 3 WHERE id_peserta = '$varpeserta'");
            } else {
                $updateProses = $kon->kueri("UPDATE login_peserta SET proses = 1 WHERE id_peserta = '$varpeserta'");
            }
            // header("Location: index.php");
            echo '<meta http-equiv="refresh" content="0;url=index.php">';
            exit();
            }
        } 
        else {
        // Berkas tidak valid
        echo '<script>alert("Hanya file PDF, JPG, dan PNG yang diizinkan.");</script>';
    }
}


if (isset($_POST['submitlkti'])) {
    $anggota1  = htmlspecialchars($_POST['anggota1']);
    $anggota2  = htmlspecialchars($_POST['anggota2']);
    $bidang  = htmlspecialchars($_POST['bidang']);
    $judul  = htmlspecialchars($_POST['judul']);

    // Ambil data dari formulir
    $nama_tim = $databayar['nama_tim'];
    $email = $databayar['email'];
    $nama_ketua = $databayar['nama'];

    // Fungsi untuk menghasilkan 4 angka acak
    function generateRandomNumber($length = 4)
    {
        return rand(pow(10, ($length - 1)), pow(10, $length) - 1);
    }

    // Ekstensi berkas yang diizinkan
    $jenis_berkas_diizinkan = array("pdf", "jpg", "jpeg", "png");

    // Proses berkas kartu pelajar
    $nama_kartu_pelajar = $_FILES['kartupelajar']['name'];
    $lokasi_kartu_pelajar = $_FILES['kartupelajar']['tmp_name'];
    $ext_kartu_pelajar = pathinfo($nama_kartu_pelajar, PATHINFO_EXTENSION);

    if (in_array(strtolower($ext_kartu_pelajar), $jenis_berkas_diizinkan)) {
        $angka_acak_kartu_pelajar = generateRandomNumber();
        $nama_kartu_pelajar_baru = 'kartupelajar_' . $angka_acak_kartu_pelajar . '.' . $ext_kartu_pelajar;
        $lokasi_simpan_kartu_pelajar = 'admin/filebukti/' . $nama_tim . '/' . $nama_kartu_pelajar_baru;

        if (!is_dir('admin/filebukti/' . $nama_tim)) {
            mkdir('admin/filebukti/' . $nama_tim, 0755, true);
        }

        move_uploaded_file($lokasi_kartu_pelajar, $lokasi_simpan_kartu_pelajar);
    } else {
        echo '<script>alert("Hanya file PDF, JPG, JPEG, dan PNG yang diizinkan untuk kartu pelajar.");</script>';
    }

    // Proses berkas follow Instagram
    $nama_follow_instagram = $_FILES['followinstagram']['name'];
    $lokasi_follow_instagram = $_FILES['followinstagram']['tmp_name'];
    $ext_follow_instagram = pathinfo($nama_follow_instagram, PATHINFO_EXTENSION);

    if (in_array(strtolower($ext_follow_instagram), $jenis_berkas_diizinkan)) {
        $angka_acak_follow_instagram = generateRandomNumber();
        $nama_follow_instagram_baru = 'followinstagram_' . $angka_acak_follow_instagram . '.' . $ext_follow_instagram;
        $lokasi_simpan_follow_instagram = 'admin/filebukti/' . $nama_tim . '/' . $nama_follow_instagram_baru;

        if (!is_dir('admin/filebukti/' . $nama_tim)) {
            mkdir('admin/filebukti/' . $nama_tim, 0755, true);
        }

        move_uploaded_file($lokasi_follow_instagram, $lokasi_simpan_follow_instagram);
    } else {
        echo '<script>alert("Hanya file PDF, JPG, JPEG, dan PNG yang diizinkan untuk berkas follow Instagram.");</script>';
    }

    // Proses berkas upload Twibbon
    $nama_upload_twibbon = $_FILES['uploadtwibbon']['name'];
    $lokasi_upload_twibbon = $_FILES['uploadtwibbon']['tmp_name'];
    $ext_upload_twibbon = pathinfo($nama_upload_twibbon, PATHINFO_EXTENSION);

    if (in_array(strtolower($ext_upload_twibbon), $jenis_berkas_diizinkan)) {
        $angka_acak_upload_twibbon = generateRandomNumber();
        $nama_upload_twibbon_baru = 'uploadtwibbon_' . $angka_acak_upload_twibbon . '.' . $ext_upload_twibbon;
        $lokasi_simpan_upload_twibbon = 'admin/filebukti/' . $nama_tim . '/' . $nama_upload_twibbon_baru;

        if (!is_dir('admin/filebukti/' . $nama_tim)) {
            mkdir('admin/filebukti/' . $nama_tim, 0755, true);
        }

        move_uploaded_file($lokasi_upload_twibbon, $lokasi_simpan_upload_twibbon);
    } else {
        echo '<script>alert("Hanya file PDF, JPG, JPEG, dan PNG yang diizinkan untuk berkas Twibbon.");</script>';
    }

    // Proses berkas abstrak
    $nama_abstrak = $_FILES['abstrak']['name'];
    $lokasi_abstrak = $_FILES['abstrak']['tmp_name'];
    $ext_abstrak = pathinfo($nama_abstrak, PATHINFO_EXTENSION);

    if (strtolower($ext_abstrak) == 'pdf') {
        $angka_acak_abstrak = generateRandomNumber();
        $nama_abstrak_baru = 'abstrak_' . $angka_acak_abstrak . '.pdf';
        $lokasi_simpan_abstrak = 'admin/filebukti/' . $nama_tim . '/' . $nama_abstrak_baru;

        if (!is_dir('admin/filebukti/' . $nama_tim)) {
            mkdir('admin/filebukti/' . $nama_tim, 0755, true);
        }

        move_uploaded_file($lokasi_abstrak, $lokasi_simpan_abstrak);
    } else {
        echo '<script>alert("Hanya file PDF yang diizinkan untuk berkas abstrak.");</script>';
    }


    $update = $kon->kueri("UPDATE login_peserta SET nama_anggota1 = '$anggota1', nama_anggota2 = '$anggota2' , bidanglomba = '$bidang' , judul_abstrak = '$judul' WHERE id_peserta = '$varpeserta'");

    $updatebukti = $kon->kueri("INSERT INTO tb_bukti (id_peserta, nama_tim, email, nama_ketua, buktikartu, buktifollow, buktitwiboon,fileabstrak)
    VALUES ('$varpeserta','$nama_tim','$email','$nama_ketua','$lokasi_simpan_kartu_pelajar','$lokasi_simpan_follow_instagram','$lokasi_simpan_upload_twibbon','$lokasi_simpan_abstrak')");
    if ($updatebukti == TRUE) {
        $updateProses = $kon->kueri("UPDATE login_peserta SET proses = 1 WHERE id_peserta = '$varpeserta'");
        echo '<script>window.location.href = "index.php";</script>';
        exit();
    }
}

if (isset($_POST['acc'])) {
    $updateProses = $kon->kueri("UPDATE login_peserta SET proses = 4 WHERE id_peserta = '$varpeserta'");
    if ($updateProses == TRUE) {
        header("Location: index.php");
        exit();
    }
}

if (isset($_POST['finalsubmit'])) {
    $anggota1  = htmlspecialchars($_POST['anggota1']);
    if ($lomba == 'lkti' || $lomba == 'ffr') {
        $anggota2  = htmlspecialchars($_POST['anggota2']);
    } elseif ($lomba == 'lf' || $lomba == 'plc') {
        $anggota2 = '';
    }

    // Ambil data dari formulir
    $nama_tim = $databayar['nama_tim'];
    $email = $databayar['email'];
    $nama_ketua = $databayar['nama'];

    // Juga ambil file bukti scan kartu pelajar
    $nama_kartu_pelajar = $_FILES['kartupelajar']['name'];
    $lokasi_kartu_pelajar = $_FILES['kartupelajar']['tmp_name'];

    // Juga ambil file bukti follow Instagram
    $nama_follow_instagram = $_FILES['followinstagram']['name'];
    $lokasi_follow_instagram = $_FILES['followinstagram']['tmp_name'];

    // Juga ambil file bukti upload Twibbon
    $nama_upload_twibbon = $_FILES['uploadtwibbon']['name'];
    $lokasi_upload_twibbon = $_FILES['uploadtwibbon']['tmp_name'];

    // Ganti spasi dengan tanda '-' dalam nama tim
    $nama_tim = str_replace(" ", "-", $nama_tim);

    // Fungsi untuk menghasilkan 4 angka acak
    function generateRandomNumber($length = 4)
    {
        return rand(pow(10, ($length - 1)), pow(10, $length) - 1);
    }

    // Ekstensi berkas yang diizinkan
    $jenis_berkas_diizinkan = array("pdf", "jpg", "jpeg", "png");

    // Ganti nama file dengan nama baru yang memiliki angka acak 4 digit
    // Ganti nama file dengan nama baru yang memiliki angka acak 4 digit
    $angka_acak_kartu_pelajar = generateRandomNumber();
    $angka_acak_follow_instagram = generateRandomNumber();
    $angka_acak_upload_twibbon = generateRandomNumber();

    $nama_kartu_pelajar = 'kartupelajar_' . $angka_acak_kartu_pelajar . '.' . pathinfo($nama_kartu_pelajar, PATHINFO_EXTENSION);
    $nama_follow_instagram = 'followinstagram_' . $angka_acak_follow_instagram . '.' . pathinfo($nama_follow_instagram, PATHINFO_EXTENSION);
    $nama_upload_twibbon = 'uploadtwibbon_' . $angka_acak_upload_twibbon . '.' . pathinfo($nama_upload_twibbon, PATHINFO_EXTENSION);

    $lokasi_simpan_kartu_pelajar = 'admin/filebukti/' . $nama_tim . '/' . $nama_kartu_pelajar;
    $lokasi_simpan_follow_instagram = 'admin/filebukti/' . $nama_tim . '/' . $nama_follow_instagram;
    $lokasi_simpan_upload_twibbon = 'admin/filebukti/' . $nama_tim . '/' . $nama_upload_twibbon;



    // Buat direktori jika belum ada
    if (!is_dir('admin/filebukti/' . $nama_tim)) {
        mkdir('admin/filebukti/' . $nama_tim, 0755, true);
    }

    move_uploaded_file($lokasi_kartu_pelajar, $lokasi_simpan_kartu_pelajar);
    move_uploaded_file($lokasi_follow_instagram, $lokasi_simpan_follow_instagram);
    move_uploaded_file($lokasi_upload_twibbon, $lokasi_simpan_upload_twibbon);

    $update = $kon->kueri("UPDATE login_peserta SET nama_anggota1 = '$anggota1', nama_anggota2 = '$anggota2' WHERE id_peserta = '$varpeserta'");

    $updatebukti = $kon->kueri("UPDATE tb_bukti SET buktikartu = '$lokasi_simpan_kartu_pelajar', buktifollow = '$lokasi_simpan_follow_instagram', buktitwiboon = '$lokasi_simpan_upload_twibbon' WHERE id_peserta = '$varpeserta'");
    if ($updatebukti == TRUE) {
        $updateProses = $kon->kueri("UPDATE login_peserta SET proses = 3 WHERE id_peserta = '$varpeserta'");
     
        // header("Location: index.php");
        echo '<meta http-equiv="refresh" content="0;url=index.php">';
        exit();
    }
}
if (isset($_POST['acc'])) {
    $updateProses = $kon->kueri("UPDATE login_peserta SET proses = 4 WHERE id_peserta = '$varpeserta'");
    if ($updateProses == TRUE) {
        header("Location: index.php");
        exit();
    }
}

if (isset($_POST['lktifullpaper'])) {
    // Ambil data dari formulir
    $nama_tim = $databayar['nama_tim'];
    $demo = @$_POST['product_demo'];
    // Juga ambil file bukti pembayaran
    $nama_file = $_FILES['bukti_pembayaran']['name'];
    $lokasi_file = $_FILES['bukti_pembayaran']['tmp_name'];

    $nama_file = $_FILES['bukti_pembayaran']['name'];
    $ext = pathinfo($nama_file, PATHINFO_EXTENSION); // Dapatkan ekstensi berkas
    $nama_file_tanpa_ext = pathinfo($nama_file, PATHINFO_FILENAME); // Dapatkan nama tanpa ekstensi

    // Ganti spasi dengan tanda '-' dalam nama tim
    $nama_tim = str_replace(" ", "-", $nama_tim);

    // Fungsi untuk menghasilkan 4 angka acak
    function generateRandomNumber($length = 4)
    {
        return rand(pow(10, ($length - 1)), pow(10, $length) - 1);
    }

    $angka_acak = generateRandomNumber();
    $nama_file_baru = $nama_file_tanpa_ext . $angka_acak . '.' . $ext; // Nama berkas yang sudah dimodifikasi

    // Direktori untuk menyimpan file bukti
    $lokasi_simpan = 'admin/filebukti/' . $nama_tim . '/' . $nama_file_baru;

    // Buat direktori jika belum ada
    if (!is_dir('admin/filebukti/' . $nama_tim)) {
        mkdir('admin/filebukti/' . $nama_tim, 0755, true);
    }

    // Batasan jenis berkas yang diizinkan (PDF, JPG, PNG)
    $jenis_berkas_diizinkan = array("pdf", "jpg", "jpeg", "png");

    // Periksa ekstensi berkas
    if (in_array(strtolower($ext), $jenis_berkas_diizinkan)) {
        move_uploaded_file($lokasi_file, $lokasi_simpan);
    } else {
        // Berkas tidak valid
        echo '<script>alert("Hanya file PDF, JPG, dan PNG yang diizinkan.");</script>';
    }
    // Proses berkas fullpaper
    $nama_fullpaper = $_FILES['fullpaper']['name'];
    $lokasi_fullpaper = $_FILES['fullpaper']['tmp_name'];
    $ext_fullpaper = pathinfo($nama_fullpaper, PATHINFO_EXTENSION);

    if (strtolower($ext_fullpaper) == 'pdf') {
        $angka_acak_fullpaper = generateRandomNumber();
        $nama_fullpaper_baru = 'fullpaper_' . $angka_acak_fullpaper . '.pdf';
        $lokasi_simpan_fullpaper = 'admin/filebukti/' . $nama_tim . '/' . $nama_fullpaper_baru;
        move_uploaded_file($lokasi_fullpaper, $lokasi_simpan_fullpaper);
    } else {
        echo '<script>alert("Hanya file PDF yang diizinkan untuk berkas fullpaper.");</script>';
    }

    $uploaddb =  $kon->kueri("UPDATE tb_bukti SET bukti = '$lokasi_simpan', filepaper = '$lokasi_simpan_fullpaper' WHERE id_peserta = '$varpeserta' ");
    $demo = $kon->kueri("UPDATE login_peserta SET demo = '$demo' WHERE id_peserta = '$varpeserta' ");
    if ($uploaddb == TRUE) {
          
        $updateProses = $kon->kueri("UPDATE login_peserta SET proses = 3 WHERE id_peserta = '$varpeserta'"); 
        // die;
        
       echo '<meta http-equiv="refresh" content="0;url=index.php">';
    }
}



?>
<?php if ($lomba == 'lkti') { ?>
    <?php if ($proses == 0) { ?>
        <section class="page-section">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Registrasi Dan Pembayaran</h2>
                </div>
                <form method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col">
                            <h4>Ketua Tim:</h4>
                            <div class="form-group mb-3">
                                <input type="text" class="form-control" name="ketua" value="<?= $databayar['nama'] ?>" disabled>
                            </div>
                            <h4>Anggota Tim:</h4>
                            <div class="form-group mb-3">
                                <input type="text" class="form-control" name="anggota1" placeholder="Nama Anggota 1">
                            </div>

                            <div class="form-group mb-3">
                                <input type="text" class="form-control" name="anggota2" placeholder="Nama Anggota 2">
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <h4 class="my-3">Unggah Scan Kartu Pelajar (format: *.pdf) <span class="text-danger">*</span></h4>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="form-control" id="kartupelajar" name="kartupelajar" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <h4 class="my-3">Bukti Follow Instagram automationweek (format: *.jpg, *.png) <a href="https://www.instagram.com/automationweek/" style="color: blue;" target="_blank">Link Instagram</a> <span class="text-danger">*</span></h4>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="form-control" id="followinstagram" name="followinstagram" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <h4 class="my-3">Bukti Upload Twibbon (format: *.jpg, *.png) <span class="text-danger">*<a href="https://twb.nz/twibbonkaryatulis" style="color: blue;" target="_blank"> Link Twibbon</a></span></h4>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="form-control" id="bukti_upload_twibbon" name="uploadtwibbon" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h4 class="my-3">Bidang Lomba <span class="text-danger">*</span></h4>
                            <div class="input-group">
                                <div class="custom-file">
                                    <select class="form-select" name="bidang" required>
                                        <option value="" disabled selected>Pilih Bidang Lomba</option>
                                        <option value="Maritim">Maritim</option>
                                        <option value="Ekonomi Kreatif">Ekonomi Kreatif</option>
                                        <option value="Transportasi dan Logistik">Transportasi dan Logistik</option>
                                        <option value="Pendidikan">Pendidikan</option>
                                        <option value="Teknologi">Teknologi</option>
                                        <option value="Sosial Budaya">Sosial Budaya</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <h4 class="my-3">Judul Abstrak <span class="text-danger">*</span></h4>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="text" class="form form-control" name="judul" placeholder="Judul Abstrak" required>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <h4 class="my-3">File Abstrak (format:*.pdf)<span class="text-danger">*</span></h4>
                                <div class="input-group">
                                    <div class="custom-file">
                                        <input type="file" class="form-control" id="abstrak" name="abstrak" required>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col mx-auto ">
                            <div class="input-group ">
                                <div class="custom-file py-5">
                                    <input type="submit" class="btn btn-success" name="submitlkti" value="Simpan">
                                </div>
                            </div>
                        </div>
                    </div>


                </form>
            </div>
        </section>
    <?php } else if ($proses == 1) { ?>

        <div class="alert alert-success" role="alert">
            Terima kasih telah berpartisipasi dalam LKTI Automation Week! Kami telah menerima abstrak Anda.
            Mohon tunggu pengumuman lebih lanjut melalui grup WhatsApp. Kami akan memberitahu Anda melalui tautan berikut.
            <a href="https://chat.whatsapp.com/GLKPra7V2ou5YSpOvAK4mG" style="color:blue;" target="_blank">Link Grup</a>
        </div>
    <?php } else if ($proses == 2) { ?>
        <section class="page-section">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Registrasi Dan Pembayaran</h2>
                </div>
                <form method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col">
                            <p>Biaya pendaftaran:</p>
                            <p><b>Rp <?php if ($lomba == 'ffr') {
                                            echo "250.000,00";
                                        } else if ($lomba == 'plc') {
                                            echo "150.000,00";
                                        } else if ($lomba == 'lkti') {
                                            echo "100.000,00";
                                        } else if($lomba == 'lf') {
                                            echo "180.000,00";
                                        }
                                        ?>
                                    per tim</b></p>
                            <p>Silakan melakukan pembayaran ke salah satu dari platform berikut:</p>
                            <h4>Metode Pembayaran:</h4>
                            <ul>
                                <li>Shopeepay: 081333316039 atas nama dhoifullohrozaan</li>
                                <li>Dana: 087890297795 atas nama Rifa Tahara</li>
                                <li>OVO: 087890297795 atas nama Rifa Tahara</li>
                                <li>BNI: 1790061362 atas nama Rifa Tahara</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h4>Unggah Bukti Pembayaran (format: *.jpg, *.png, *.pdf)</h4>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="form form-control" id="bukti_pembayaran" name="bukti_pembayaran" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-4">
                        <div class="col">
                            <h4>Upload File Full Paper (format:*.pdf)</h4>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="form form-control" id="fullpaper" name="fullpaper" required>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-4">
                        <div class="col">
                            <h4>Apakah tim Anda menyiapkan product demo untuk menunjang presentasi?</h4>
                            <div class="form-check custom-radio">
                                <input class="form-check-input" type="radio" name="product_demo" id="product_demo_yes" value="Ya" required>
                                <label class="form-check-label" for="product_demo_yes">Ya</label>
                            </div>
                            <div class="form-check custom-radio">
                                <input class="form-check-input" type="radio" name="product_demo" id="product_demo_no" value="Tidak" required>
                                <label class="form-check-label" for="product_demo_no">Tidak</label>
                            </div>
                        </div>
                        <style>
                            .custom-radio {
                                display: inline-block;
                                margin-right: 20px;
                            }
                        </style>
                    </div>

                    <div class="row my-4">
                        <div class="col">
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="submit" class="btn btn-success" id="bukti_pembayaran" value="Simpan" name="lktifullpaper">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    <?php  } else if ($proses == 3) { ?>
        <section class="page-section">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Registrasi Dan Pembayaran</h2>
                </div>
                <form method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col">
                            <p>
                                Terima kasih atas pembayaran Anda. Mohon tunggu sebentar, tim panitia kami sedang melakukan pemeriksaan pembayaran Anda. Kami akan segera mengkonfirmasi dan memprosesnya. Terima kasih atas kerjasama Anda.
                            </p>
                            <p>
                                Jika Anda memerlukan konfirmasi atau informasi lebih lanjut, silakan hubungi kami melalui WhatsApp melalui tautan berikut:
                                <a href="https://api.whatsapp.com/send/?phone=%2B6287890297795&text&app_absent=0" style="color: blue; text-decoration: none;" target="_blank">
                                    087890297795
                                </a>
                            </p>
                        </div>
                    </div>
            </div>
            </form>
            </div>
        </section>
    <?php } ?>
<?php } else { ?>

    <?php if ($proses == 0) {
    ?>
        <section class="page-section">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Registrasi Dan Pembayaran</h2>
                </div>
                <form method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col">
                            <p>Biaya pendaftaran:</p>
                            <p><b>Rp <?php if ($lomba == 'ffr') {
                                            echo "250.000,00";
                                        } else if ($lomba == 'plc') {
                                            echo "150.000,00";
                                        } else if ($lomba == 'lkti') {
                                            echo "100.000,00";
                                        } else if($lomba == 'lf') {
                                            echo "180.000,00";
                                        }
                                        ?>
                                    per tim</b></p>
                            <p>Silakan melakukan pembayaran ke salah satu dari platform berikut:</p>
                            <h4>Metode Pembayaran:</h4>
                            <ul>
                                <li>Shopeepay: 081333316039 atas nama dhoifullohrozaan</li>
                                <li>Dana: 087890297795 atas nama Rifa Tahara</li>
                                <li>OVO: 087890297795 atas nama Rifa Tahara</li>
                                <li>BNI: 1790061362 atas nama Rifa Tahara</li>
                            </ul>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <h4>Unggah Bukti Pembayaran (format: *.jpg, *.png, *.pdf)</h4>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="form form-control" id="bukti_pembayaran" name="bukti_pembayaran" required>
                                </div>
                                <div class="input-group-append">
                                    <input type="submit" name="bayar" class="btn btn-success" value="Unggah Bukti Pembayaran">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    <?php } else if ($proses == 1) { ?>
        <section class="page-section">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Registrasi Dan Pembayaran</h2>
                </div>
                <form method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col">
                            <p>
                                Terima kasih atas pembayaran Anda. Mohon tunggu sebentar, tim panitia kami sedang melakukan pemeriksaan pembayaran Anda. Kami akan segera mengkonfirmasi dan memprosesnya. Terima kasih atas kerjasama Anda.
                            </p>
                            <p>
                                Jika Anda memerlukan konfirmasi atau informasi lebih lanjut, silakan hubungi kami melalui WhatsApp melalui tautan berikut:
                                <a href="https://api.whatsapp.com/send/?phone=%2B6287890297795&text&app_absent=0" style="color: blue; text-decoration: none;" target="_blank">
                                    087890297795
                                </a>
                            </p>
                        </div>
                    </div>
            </div>
            </form>
            </div>
        </section>
    <?php } else if ($proses == 2) { ?>
        <section class="page-section">
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">Registrasi Dan Pembayaran</h2>
                </div>
                <form method="POST" enctype="multipart/form-data">
                    <div class="row">
                        <div class="col">
                            <h4>Ketua Tim:</h4>
                            <div class="form-group mb-3">
                                <input type="text" class="form-control" name="ketua" value="<?= $databayar['nama'] ?>" disabled>
                            </div>
                            <h4>Anggota Tim:</h4>
                            <div class="form-group mb-3">
                                <input type="text" class="form-control" name="anggota1" placeholder="Nama Anggota 1">
                            </div>
                            <?php if ($lomba == 'lkti' || $lomba == 'ffr') { ?>
                                <div class="form-group mb-3">
                                    <input type="text" class="form-control" name="anggota2" placeholder="Nama Anggota 2">
                                </div>
                            <?php } ?>

                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <h4 class="my-3">Unggah Scan Kartu Pelajar (format: *.pdf) <span class="text-danger">*</span></h4>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="form-control" id="kartupelajar" name="kartupelajar" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <h4 class="my-3">Bukti Follow Instagram automationweek (format: *.jpg, *.png)<span class="text-danger">* <a href="https://www.instagram.com/automationweek/" style="color: blue;" target="_blank">Link Instagram</a></span></h4>
                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="form-control" id="followinstagram" name="followinstagram" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col">
                            <?php
                            if ($lomba == 'plc') {
                                $linktwibbon = 'https://twb.nz/twibbonplc';
                            } elseif ($lomba == 'lkti') {
                                $linktwibbon = 'https://twb.nz/twibbonkaryatulis';
                            } elseif ($lomba == 'ffr') {
                                $linktwibbon = 'https://twb.nz/twibbonffr';
                            }
                            ?>
                            <h4 class="my-3">Bukti Upload Twibbon (format: *.jpg, *.png) <span class="text-danger">*<a href="<?php echo $linktwibbon; ?>" style="color: blue;" target="_blank"> Link Twibbon</a></span></h4>

                            <div class="input-group">
                                <div class="custom-file">
                                    <input type="file" class="form-control" id="bukti_upload_twibbon" name="uploadtwibbon" required>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col mx-auto ">
                            <div class="input-group ">
                                <div class="custom-file py-5">
                                    <input type="submit" class="btn btn-success" name="finalsubmit" value="Simpan">
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>

            </form>
            </div>
        </section>
    <?php } else if ($proses == 3) { ?>
        <div class="alert alert-success" role="alert">
            Selamat! Pembayaran Anda telah diverifikasi dan diterima. Silakan masuk ke grup berikut untuk informasi lebih lanjut.
            <?php
            if ($lomba == 'plc') {
                $linkGrup = 'https://chat.whatsapp.com/G9WD0qXXF6cHsZRPYkwlgQ';
            } elseif ($lomba == 'lkti') {
                $linkGrup = 'https://chat.whatsapp.com/GLKPra7V2ou5YSpOvAK4mG';
            } elseif ($lomba == 'ffr') {
                $linkGrup = 'https://chat.whatsapp.com/HgzpB1XqaWoFQZFdVvBgEL';
            }
            ?>
            <a href="<?php echo $linkGrup; ?>" target="_blank" style="color: blue; text-decoration: none;">Link Grup</a>
            <form method="POST">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="sudah_masuk" id="sudah_masuk" name="sudah_masuk" required>
                    <label class="form-check-label" for="sudah_masuk">
                        <span class="checkmark"></span> <!-- Ini digunakan untuk desain centang -->
                        Saya sudah masuk ke grup.
                    </label>
                </div>

                <input type="submit" class="btn btn-danger" name="acc" value="Simpan">
            </form>
        </div>

<?php }
} ?>