<?php
class Koneksi {
    private $konek;
    private $host = "localhost";    
    private $user = "root";
    private $pass = "";
    private $db = "autw8743_automation_week";

    public function __construct() {
        $this->sambung();
    }

    private function sambung(){
        try {
            $this->konek = new PDO("mysql:host=".$this->host.";dbname=".$this->db.";charset=utf8mb4", $this->user, $this->pass);
            $this->konek->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $this->konek->setAttribute(PDO::ATTR_EMULATE_PREPARES, true);
        } catch (PDOException $ex) {
            error_log("Database Connection Error: " . $ex->getMessage());
            die("Could not connect to the database. Please try again later.");
        }
    }

    public function kueri($sql, $params = []) {
        if ($this->konek === null) {
            $this->sambung(); // Try to reconnect if somehow it's null
            if ($this->konek === null) { // If still null after trying to reconnect
                die("Database connection is not established for query.");
            }
        }

        try {
            $stmt = $this->konek->prepare($sql);
            $stmt->execute($params); // Pass parameters directly to execute for prepared statements
            return $stmt;
        } catch (PDOException $ex) {
            error_log("Query Error: " . $ex->getMessage() . " Query: " . $sql);
            die("An error occurred while executing the query.");
        }
    }

    public function hasil_data($arg) {
        return $arg->fetch(PDO::FETCH_ASSOC);
    }

    public function jumlah_data($arg) {
        return $arg->rowCount();
    }
}
?>