<?php

session_start();

unset($_SESSION["email_admin"]);

unset($_SESSION["jenislomba"]);
// unset($_SESSION["level"]);


    header('Location: index.php'); // default page

   

?>
