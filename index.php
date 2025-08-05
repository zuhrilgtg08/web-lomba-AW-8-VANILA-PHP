<?php
// Mulai session
session_start();

// Cek apakah session 'email_peserta' ada, jika tidak, arahkan ke halaman utama
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
    <title>Halaman Home</title>
    <style>
        body {
            /* Anda bisa menambahkan styling CSS di sini */
            font-family: Arial, sans-serif;
        }
    </style>
</head>
<body>

<?php
// Jika session 'email_peserta' ada, tampilkan halaman home
if (isset($_SESSION['email_peserta'])) {
    include "home.php";
} else {
    // Jika session tidak ada, redirect sudah dilakukan sebelumnya
    include "halamanutama.php";
}
?>

</body>
</html>
