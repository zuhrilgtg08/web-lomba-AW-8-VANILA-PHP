<div class="col-md-15">
    <span class="fa-stack fa-4x">
        <img class="rounded float-left img-fluid" src="image/PLC_AW8.png" style="height: 8rem; width: 12rem;" alt="..." />
    </span>
    <h4 class="my-3">PLC</h4>
    <p class="text-muted">Programmable Logic Controller merupakan jenis lomba yang bertujuan untuk mengasah logika dan kemampuan siswa dalam bidang pemrograman PLC. </p><br>
     <div>
        <a class="btn btn-danger" href="https://docs.google.com/forms/d/15uDbrxcXENzhdO84lt0_2Ow9Miw4OyuISNaJNKwdIQw/viewform?edit_requested=true" target="_blank" role="button">Daftar PLC</a>
        <a href="uploadplc.php" class="btn btn-info">Upload File</a> -->
    </div> 
</div>

<?php
$lolosplc = $kon->kueri("SELECT * FROM aksiupload WHERE id = '2' ");
$datalolos = $kon->hasil_data($lolosplc);
$status = $datalolos['status'];
$no = 0;
if ($status == 'on') {
    if ($lolos == 'plc') { ?>
        <?php
        $abc = $kon->kueri("SELECT * FROM pengumuman_plc");
        $no = 0;
        ?>
        <section class="page-section" id="point">
            <div class="container">
                <div class="text-center">
                    <h4 class="section-heading text-uppercase">Pengumuman Hasil Seleksi</h4>
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped" id="example" width="100%" cellspacing="0">
                        <thead>
                            <tr>
                                <th hidden>No</th>
                                <th>Nama Tim</th>
                                <th>Nilai Akhir</th>
                                <th>Ranking</th>
                            </tr>
                        </thead>


                        <tbody>
                            <?php foreach ($abc as $data) : $no++; ?>
                                <tr>
                                    <td hidden><?= $no  ?></td>
                                    <td><?= $data['nama_tim']; ?></td>
                                    <td><?= $data['nilai_akhir']; ?></td>
                                    <td><?= $data['ranking'] ?></td>
                                </tr>
                            <?php endforeach ?>
                        </tbody>

                    </table>
                </div>

            </div>
        </section>



<?php }
} ?>



<?php
$emailupload = $_SESSION['email_peserta1'];
$upload = $kon->kueri("SELECT * FROM upload_plc WHERE email = '$emailupload' ");
$id = $_SESSION['email_peserta'];
$result = $kon->kueri("SELECT * FROM login_peserta WHERE id_peserta  = '$id'");
$data = $kon->hasil_data($result);
$file = $kon->hasil_data($upload);
$isi = $kon->jumlah_data($upload);
?>
<?php if ($aksi['status'] == 'on') { ?>
    <?php if ($isi == 0) { ?>
        <form name="form_masuk" method="POST" action="uploadplc_proses.php" enctype="multipart/form-data">

            <input type="hidden" name="aksi" id="aksi" value="tambah">

            <input type="hidden" name="email" value="<?= $_SESSION['email_peserta1']; ?>">
            <div class="container">


                <!--<div class="lg-md-10">
                    <h5> <a href="#" class="btn btn-info" target="_blank">File Soal PLC</a>
                    </h5>  

                </div> -->
            </div>
            <section class="page-section" id="upload" style="background-color: #E9ECF;">

                <div class="container">


                    <div class="text-center">
                        <h3 class="section-heading">Upload File PLC</h3>
                    </div>

                    <div class="row">
                        <div class="col-lg-12">

                            <div class="form-row">

                                <div class="form-group col-md-4">
                                    <label for="inputEmail4">Nama Tim</label>
                                    <input type="text" name="nama_tim" class="form-control" placeholder="Nama Tim" autocomplete="off" value="<?= $data['nama_tim'];?>" readonly>
                                </div>

                                <div class="form-group col-md-4">
                                    <label for="inputEmail4">Nama Ketua</label>
                                    <input type="text" class="form-control" name="nama_ketua" placeholder="Nama Ketua" autocomplete="off" value="<?= $data['nama'];?>" readonly>
                                </div>
                                <div class="form-group col-md-4">
                                    <label for="inputPassword4">Asal Sekolah</label>
                                    <input type="text" class="form-control" name="asal_sekolah" placeholder="Asal Sekolah" autocomplete="off" value="<?= $data['sekolah'];?>" readonly>
                                </div>


                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-12" align="center">
                            <h6>Format Nama file
                             Nomor meja_Nama team_Asal sekolah Contoh: 10_Bismillah_SMKN 1 Surabaya.</h6>
                                <div class="form-group col-md-8" align="c">
                                    <div class="form-group files color">
                                        <label class="text-center">Upload File Berbentuk ZIP atau RAR </label>
                                        <input type="file" name="ffile" id="ffile" class="form-control" multiple="" required>
                                    </div>

                                </div>

                                <div class="form-group col-md-8">
                                    <div class="form-check">
                                        <input class="form-check-input " type="checkbox" value="" id="invalidCheck" required>
                                        <label class="form-check-label" for="invalidCheck">
                                            *Dengan ini saya setuju apabila file yang sudah saya kumpulkan tidak dapat dirubah lagi!
                                        </label>
                                    </div>
                                </div>
                                <button class="btn btn-primary" type="submit" onclick="return confirm('Apakah Anda Yakin Untuk Submit! '); ">Simpan File</button>

                            </div>
                        </div>
                    </div>
        </form>
        </section>
    <?php } ?>

<?php } elseif ($isi == 1) { ?>

<?php } elseif ($aksi['status'] == 'off') { ?>

    <section class="page-section" id="upload" style="background-color: #E9ECF;">
        <div class="container">
            <div class="text-center">
                <h4 class="section-heading">Upload File Belum Dibuka atau Sudah Ditutup!</h4>
            </div>
        </div>
    </section>
<?php } ?>
<?php if ($isi == 1) : ?>
    <section class="page-section" id="upload" style="background-color: #E9ECF;">
        <div class="container">
            <div class="text-center">
                <h3 class="section-heading">Status Submit</h3>
            </div>
            <div class="row">
                <div class="col-lg-12" align="center">

                    <div class="form-group col-md-12">
                        <div class="form-group ">
                            <table class="table table-striped" width="5003">
                                <tbody>
                                    <tr class="odd">
                                        <td>Nama Tim</td>
                                        <td>:</td>
                                        <td><?= $file['nama_tim'] ?></td>
                                    </tr>
                                    <tr class="even">
                                        <td width="25%">Nama Ketua</td>
                                        <td width="1%">:</td>
                                        <td width="70%"><?= $file['nama_ketua'] ?></td>
                                    </tr>
                                    <tr class="odd">
                                        <td>Asal Sekolah</td>
                                        <td>:</td>
                                        <td><?= $file['sekolah'] ?></td>
                                    </tr>
                                    <tr class="even">
                                        <td>Waktu Pengumpulan</td>
                                        <td>:</td>
                                        <td><?= $file['waktu'] ?></td>
                                    </tr>
                                    <tr class="odd">
                                        <td>File PLC</td>
                                        <td>:</td>
                                        <td><a href="<?= $file['file'] ?>">Download File</a></td>
                                    </tr>
                                    <tr class="even">
                                        <td>Status Submit</td>
                                        <td>:</td>
                                        <td style="background-color: #CFEFCF;">Submitted</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>

                </div>
            </div>
        </div>

        </div>
    </section>
<?php endif ?>
