<?php
session_start();
if (!isset($_SESSION["email_admin"])) {
	header("Location: index.php");
	exit;
}

include "koneksi.php";
$kon = new Koneksi();
$no = 0;
$abc = $kon->kueri('SELECT * FROM tb_point ORDER BY points DESC')

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
							<a href="tambahpoint.php" class="btn btn-secondary"  role="button" aria-pressed="true">Tambah Peserta</a>
						</div>
						<div class="card-body">
							<div class="table-responsive">
								<table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
									<thead>
										<tr>
											<th>No</th>
											<th>Nama Tim</th>
											<th>Asal Sekolah</th>
											<th>Point</th>
											<th>Seleksi</th>
											<th>Aksi</th>
										</tr>
									</thead>
									<?php foreach ($abc as $data): $no++;?>

										<tbody>
											<tr>
												<td><?= $no  ?></td>
												<td><?= $data['nama_tim']; ?></td>
												<td><?= $data['asal_sekolah']; ?></td>
												<td><?= $data['points']; ?></td>
												<td><?= $data['seleksi']  ?></td>
												<td>
													<?php if ($data['seleksi'] ==  'hide' OR $data['seleksi'] == 'seleksi2'){ ?>
														<a href="editpoint.php?idpoint=<?=$data['id']?>" class="btn btn-xs bg-info waves-effect text-white">Edit</i></a>
														<a href="poin_proses.php?aksi=hapus&id=<?=$data['id']?>" onclick="return confirm('Apakah <?=$data["nama_tim"]?> mau dihapus ?? '); " class="btn btn-xs bg-danger waves-effect text-white" >Hapus</a>
													<?php }else{ ?>
													<a href="editpoint.php?idpoint=<?=$data['id']?>" class="btn btn-xs bg-info waves-effect text-white">Edit</i></a>

													<a href="poin_proses.php?aksi=hide&id=<?=$data['id']?>" onclick="return confirm('Apakah <?=$data["nama_tim"]?> Sembunyikan ?? '); " class="btn btn-xs bg-warning waves-effect text-white" >Hide</a>

													<a href="poin_proses.php?aksi=hapus&id=<?=$data['id']?>" onclick="return confirm('Apakah <?=$data["nama_tim"]?> mau dihapus ?? '); " class="btn btn-xs bg-danger waves-effect text-white" >Hapus</a>
												<?php } ?>
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