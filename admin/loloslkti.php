<?php
session_start();
if (!isset($_SESSION["email_admin"])) {
	header("Location: index.php");
	exit;
}

include "koneksi.php";
$kon = new Koneksi();
$no = 0;
$abc = $kon->kueri('SELECT * FROM pengumuman_lkti');

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

					<div class="card shadow mb-4">
						<div class="card-header py-3">
							<a href="tambahlolos.php" class="btn btn-secondary"  role="button" aria-pressed="true">Tambah Peserta</a>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>No</th>
											<th>Nama Tim</th>
											<th>Nama Ketua</th>
											<th>Asal Sekolah</th>
											<th>Judul Abstrak</th>
											<th>Aksi</th>
										</tr>
									</thead>
									<?php foreach ($abc as $data): $no++;?>

										<tbody>
											<tr>
												<td><?= $no  ?></td>
												<td><?= $data['nama_tim']; ?></td>
												<td><?= $data['nama_ketua']; ?></td>
												<td><?= $data['asal_sekolah']; ?></td>
												<td><?= $data['judul']; ?></td>
												<td>
													
													<a href="editlolos.php?idpoint=<?=$data['id']?>" class="btn btn-xs bg-info waves-effect text-white">Edit</i></a>
													<a href="lolos_proses.php?aksi=hapus&id=<?=$data['id']?>" onclick="return confirm('Apakah <?=$data["nama_tim"]?> mau dihapus ?? '); " class="btn btn-xs bg-danger waves-effect text-white" >Hapus</a>
											
												</td>

											</tr>


										</tr>

									</tbody>
								<?php endforeach ?>
							</table>
						</div>
					</div>
				</div>


			</div>
			<!-- End of Main Content -->

			<!-- Footer -->
			<?php
			include "footer.php"
		?>