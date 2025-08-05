<?php
try {
    $konek = new PDO("mysql:host=localhost;dbname=autw8743_automation_week;charset=utf8mb4", "root", "");
    echo "Koneksi berhasil!";
} catch (PDOException $e) {
    echo "Koneksi gagal: " . $e->getMessage();
}
?>
