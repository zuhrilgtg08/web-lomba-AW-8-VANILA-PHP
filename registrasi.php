
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->  
    <link rel="icon" type="image/png" href="../image/logo-aw.png"/>
<!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
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
                            <img src="image/footer.png" alt="IMG">
                        </a>
                    </span> 
                </div>

                <form class="login100-form validate-form" method="POST" action="login_proses.php">
                    <span class="login100-form-title">Registrasi Peserta</span>

                    <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                        <input class="input100" id="inputEmail" name="temail" type="email" placeholder="Email">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-envelope" aria-hidden="true"></i></span>
                    </div>

                    <div class="wrap-input100 validate-input" data-validate = "Password is required">
                        <input class="input100" id="inputPassword" name="tpass" type="password" placeholder="Password">
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-lock" aria-hidden="true"></i></span>
                    </div>
                    

                    <div class="container-login100-form-btn">
                        <button class="login100-form-btn">Login</button>
                    </div>

                   

                    <div class="text-center p-t-70">
                      <label><p>Belum Punya Akun?</p></label>
                      <a class="txt2" href="daftarakun.php"><b>Daftar Sekarang!</b><i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i></a>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div id="layoutAuthentication_footer">
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Automation Week VIII</div>
                        </div>
                    </div>
                </footer>
            </div>
    
    

    
<!--===============================================================================================-->  
    <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<!--===============================================================================================-->
    <script src="vendor/tilt/tilt.jquery.min.js"></script>

<!--===============================================================================================-->
    <script src="js/main.js"></script>

</body>
</html>