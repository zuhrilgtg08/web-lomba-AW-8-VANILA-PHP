<?php
session_start();
if (!isset($_SESSION['email_peserta'])) {
    header("Location: halamanutama.php");
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>
<body>
    <h1>Selamat datang di halaman home!</h1>

    <?php
    // Include halaman home langsung karena session sudah dicek di awal
    include "home.php";
    ?>
</body>
</html>
