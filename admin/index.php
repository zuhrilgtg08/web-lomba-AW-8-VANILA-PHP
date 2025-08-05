<?php
session_start();
if (!isset($_SESSION["email_admin"])) {
 header("Location: login_admin.php");
  exit;
}


?>
<!DOCTYPE html>

<html>


<?php
if (isset($_SESSION['email_admin']) == true ){
	include "home_admin.php";
}else{
	include "login_admin.php";
}
?>

</body>
<style>
	body{
		
	}
</style>
</html>
