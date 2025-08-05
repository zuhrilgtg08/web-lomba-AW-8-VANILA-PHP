<?php
include 'koneksi.php';
$kon = new Koneksi();

$alert = "";

if (isset($_POST['ganti'])) {
    $email = htmlspecialchars(@$_POST['temail']);
    $tpass = htmlspecialchars(md5(@$_POST['tpass']));
    $tpass1 = htmlspecialchars(md5(@$_POST['tpass1']));
    $result = $kon->kueri("SELECT email FROM login_peserta WHERE email = '$email' ");
    $jumlah = $kon->jumlah_data($result);

    if ($jumlah > 0) {
        if ($tpass === $tpass1) {
            $update = $kon->kueri("UPDATE login_peserta SET pass = '$tpass' WHERE email = '$email' ");

            if ($update == true) {
                $alert = "Password Berhasil Dirubah Silahkan Login Kembali";
            }
        } else {
            $alert = "Password Yang Dimasukan Tidak Sama dengan Konfirmasi";
        }
    } else {
        $alert = "EMAIL tidak Ditemukan";
    }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Lupa Password</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="../image/logo-aw.png" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->
</head>

<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100">
                <div class="login100-pic js-tilt" data-tilt>
                    <span class="navbar-logo">
                        <a href="index.php">
                            <img src="image/AW1.png" alt="IMG">
                            <img>
                            <img>
                            <img src="image/footer.png" alt="IMG">
                        </a>
                    </span>
                </div>

                <form class="login100-form validate-form" method="POST">
                    <span class="login100-form-title">Ganti Password</span>
                    <span>
                        <script>
                            <?php if (!empty($alert)) : ?>
                                alert("<?php echo $alert; ?>");
                            <?php endif; ?>
                        </script>
                    </span>
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <input class="input100" id="inputEmail" name="temail" type="email" placeholder="Masukan Email Anda">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100" id="inputPassword" name="tpass" type="password" placeholder="Password Baru">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100" id="inputPassword" name="tpass1" type="password" placeholder="Ulangi Password Baru">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i></span>
                    </div>

                    <div class="container-login100-form-btn">
                        <input type="submit" class="btn btn-danger" name="ganti" value="Ganti Password">
                    </div>

                </form>
            </div>
        </div>
    </div>

    <div id="layoutAuthentication_footer">
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Automation Week VII</div>
                </div>
            </div>
        </footer>
    </div>




    <!--===============================================================================================-->
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/bootstrap/js/popper.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="vendor/tilt/tilt.jquery.min.js"></script>
    <script>
        $('.js-tilt').tilt({
            scale: 1.1
        })
    </script>
    <!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>

</html>