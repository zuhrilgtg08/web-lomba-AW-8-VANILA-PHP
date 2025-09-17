<?php
$no = 0;
if ($jumlahlolos >= 1) {
    if ($lolos == 'lkti') { ?>
        <section class="page-section" id="pengumuman" style="background-color: #E9ECF;">
            <div class="container">
                <div class="text-center">
                    <h3 class="section-heading"><b>Pengumuman Final LKTI</b></h3>
                </div>

                <div class="table-responsive">

                    <div class="row">
                        <div class="col-lg-12">

                            <table id="example" class="table table-striped table-bordered" style="width:100%">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Tim</th>
                                        <th>Asal Sekolah</th>
                                        <th>Judul Abstrak</th>
                                    </tr>
                                </thead>


                                <tbody>
                                    <?php foreach ($qwe as $data) : $no++; ?>
                                        <tr>
                                            <td><?= $no  ?></td>
                                            <td><?= $data['nama_tim']; ?></td>
                                            <td><?= $data['nama_ketua']; ?></td>
                                            <td><?= $data['judul']; ?></td>
                                        </tr>
                                    <?php endforeach ?>
                                </tbody>
                            </table>

                        </div>

                        <div class="col-lg-12">

                             <span>
                         <h5 class="my-3">*Bagi Tim Yang Dinyatakan Lolos Harap Segera Bergabung Pada Grup WhatsApp Dengan Klik Link Dibawah Ini!</h5>
                         <span>
                          <div>
                            <label>Link Grup : </label>
                            <a href="https://chat.whatsapp.com/EEU9hPwio3eG5REVbGmyDA" target="_blank">
                               <img src="image/wa.png" style="width: 150px;" alt="">
                           </a>
                       </div>
                   </span>

                        </div>
                    </div>
                </div>

        </section>
<?php }
} ?>
<!-- Portfolio Grid-->