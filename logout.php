<?php

session_start();

unset($_SESSION["email_peserta"]);

unset($_SESSION["jenislomba"]);
// unset($_SESSION["level"]);


    header('Location: index.php'); // default page

   

?>
