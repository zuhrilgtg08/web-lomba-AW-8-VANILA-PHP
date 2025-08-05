<?php 
class Koneksi {
    private $konek;
    private $host = "localhost";    
    private $user = "root";
    private $pass = "";
    private $db = "autw8743_automation_week";

    private function sambung() {
        try {
            $this->konek = new PDO("mysql:host=".$this->host.";dbname=".$this->db.";charset=utf8mb4", $this->user, $this->pass);
            $this->konek->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->konek->setAttribute(PDO::ATTR_EMULATE_PREPARES, false); // false lebih baik
        } catch (PDOException $ex) {
            // Tampilkan pesan kesalahan jika koneksi gagal
            echo "Koneksi gagal: " . $ex->getMessage();
            $this->konek = null; // Set koneksi ke null jika gagal
        }
    }

    public function kueri($sql) {
        // Pastikan koneksi dilakukan dulu sebelum prepare()
        if ($this->konek === null) {
            $this->sambung();
        }

        if ($this->konek !== null) {
            try {
                $hasil = $this->konek->prepare($sql);
                $hasil->execute();
                return $hasil;
            } catch (PDOException $ex) {
                // Tangani kesalahan query
                echo "Query gagal: " . $ex->getMessage();
                return null;
            }
        } else {
            echo "Tidak bisa menjalankan query karena koneksi gagal.";
            return null;
        }
    }

    public function hasil_data($arg) {
        if ($arg !== null) {
            return $arg->fetch(PDO::FETCH_ASSOC);
        } else {
            echo "Error: Tidak ada data untuk diambil.";
            return null;
        }
    }

    public function jumlah_data($arg) {
        if ($arg !== null) {
            return $arg->rowCount();
        } else {
            echo "Error: Tidak ada data untuk dihitung.";
            return 0;
        }
    }
}
?>
