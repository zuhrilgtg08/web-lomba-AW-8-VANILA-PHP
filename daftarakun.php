<!DOCTYPE html>
<html lang="en">

<head>
    <title>Registrasi AW 7</title>
    <link href="image/logo-aw.png" rel="icon">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="image/aw-121x121.png" />
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <!-- <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"> -->
    <!--===============================================================================================-->
    <!-- <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"> -->
    <!--===============================================================================================-->
    <!-- <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"> -->
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

                <form class="login100-form validate-form" method="POST" action="daftarakun_proses.php">
                    <input type="hidden" name="create" id="daftar" value="daftar">
                    <span class="login100-form-title">Registrasi Akun</span>

                    <div class="wrap-input100 validate-input">
                        <input class="input100" id="inputFname" name="tnamatim" type="text" placeholder="Nama  Tim" required>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-id-card-o" aria-hidden="true"></i></span>
                    </div>
                    <div class="wrap-input100 validate-input">
                        <input class="input100" id="inputFname" name="tsekolah" type="text" placeholder="Asal Sekolah" required>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-id-card-o" aria-hidden="true"></i></span>
                    </div>
                    <div class="wrap-input100 validate-input">
                        <input class="input100" id="inputFname" name="tnama" type="text" placeholder="Nama Ketua Tim" required>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-id-card-o" aria-hidden="true"></i></span>
                    </div>
                    <div class="wrap-input100 validate-input">
                        <input class="input100" id="inputFname" name="tnama_anggota_1" type="text" placeholder="Nama Anggota 1" required>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-id-card-o" aria-hidden="true"></i></span>
                    </div>

                    <!-- Anggota 2 Input -->
                    <div id="anggota2-placeholder"></div>
                    <div class="wrap-input100 validate-input">
                        <input class="input100" id="inputEmail" name="temail" type="email" placeholder="Email" required>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i></span>
                    </div>

                    <div class="wrap-input100 validate-input">
                        <input class="input100" id="inputMobile" name="tnomor" type="number" placeholder="No. Telp" required>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-phone" aria-hidden="true"></i></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100" id="inputPassword" name="tpass" type="password" placeholder="Password" required>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Password is required">
                        <input class="input100" id="inputPassword" name="tpass1" type="password" placeholder="Verifikasi Password" required>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i></span>
                    </div>
                    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
                        <select type="text" class="form-select input100" name="tlomba" aria-label="Default select example" required>
                            <option value="">Pilih Jenis Lomba</option>
                            <option value="lkti">LKTI</option>
                            <option value="ffr">FFR</option>
                            <option value="plc">PLC</option>
                            <option value="lf">LF</option>
                        </select>
                        <!-- <p class="text-danger my-3">Pendaftaran PLC telah ditutup. Terima Kasih Atas Partisipasi Anda</p> -->
                        <!-- <p class="text-danger my-3">Pendaftaran LKTI telah ditutup. Terima Kasih Atas Partisipasi Anda</p> -->
                    </div>

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">DAFTAR</button>
                    </div>

                    <div class="text-center p-t-136">
                        <a class="txt2" href="login.php">Sudah Punya Akun? Login Sekarang!<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i></a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div id="layoutAuthentication_footer">
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Automation Week VI</div>
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

    <script>
        const tLomba = document.querySelector('select[name="tlomba"]');
        const anggota2Placeholder = document.getElementById('anggota2-placeholder');

        function createAnggota2Input() {
            const div = document.createElement('div');
            div.className = 'wrap-input100 validate-input anggota2';
            div.id = 'anggota2-div';
            div.innerHTML = `
            <input class="input100" id="fname-anggota-2" name="tnama_anggota_2" type="text" placeholder="Nama Anggota 2" required>
            <span class="focus-input100"></span>
            <span class="symbol-input100">
                <i class="fa fa-id-card-o" aria-hidden="true"></i>
            </span>
        `;
            return div;
        }

        function toggleAnggota2() {
            if (tLomba.value === 'lf' || tLomba.value === 'plc') {
                const anggota2Div = document.getElementById('anggota2-div');
                if (anggota2Div) anggota2Div.remove();
            } else {
                if (!document.getElementById('anggota2-div')) {
                    anggota2Placeholder.appendChild(createAnggota2Input());
                }
            }
        }

        tLomba.addEventListener('change', toggleAnggota2);
        window.addEventListener('DOMContentLoaded', toggleAnggota2);
    </script>
    <script src="js/main.js"></script>
</body>

</html>