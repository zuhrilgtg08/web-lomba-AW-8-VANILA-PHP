<?php

  if (!isset($_SESSION["email_admin"])) {
   header("Location: index.php");
   exit;
 }
?>


<!DOCTYPE html>
<html lang="en">

<?php include "header.php" ?>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <?php include "sidebar.php" ?>
          <!-- End of Sidebar -->

          <!-- Content Wrapper -->
          <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

              <!-- Topbar -->
            <?php include "topbar.php" ?>
              <!-- End of Topbar -->

              <!-- Begin Page Content -->
              <div class="container-fluid">


              <!-- issiiiiii -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <?php
include "footer.php"
             ?>