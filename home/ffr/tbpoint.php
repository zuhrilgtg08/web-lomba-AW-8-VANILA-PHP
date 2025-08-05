<?php
    $no = 0;
    if ($jumlah1 >= 1) {
        if ($point == 'ffr') { ?>
            <section class="page-section" id="point" style="background-color: #FEFBF3;">
                <div class="container">
                    <div class="text-center">
                        <h4 class="section-heading text-uppercase">Point Seleksi 1</h4>
                    </div>
                    <table id="example" class="table table-striped table-bordered" style="width:100%">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Nama Tim</th>
                                <th>Asal Sekolah</th>
                                <th>Point</th>

                            </tr>
                        </thead>

                        <tbody>
                            <?php foreach ($xyz as $data) :
                                $no++;
                            ?>
                                <tr>
                                    <td><?= $no  ?></td>
                                    <td><?= $data['nama_tim']; ?></td>
                                    <td><?= $data['asal_sekolah']; ?></td>
                                    <td><?= $data['points']; ?></td>


                                </tr>
                            <?php endforeach ?>

                        </tbody>
                    </table>

                </div>
            </section>
    <?php }
    } ?>

<?php
$no = 0;
$xyz = $kon->kueri("SELECT * FROM tb_point WHERE seleksi = 'seleksi2' ORDER BY points DESC ");
$jumlah = $kon->jumlah_data($xyz);
$point = $_SESSION['jenislomba'];

if ($jumlah >= 1) {
    if ($point == 'ffr') { ?>
        <section class="page-section" id="point" style="background-color: #FEFBF3;">
            <div class="container">
                <div class="text-center">
                    <h4 class="section-heading text-uppercase">Point Seleksi 2</h4>
                </div>
                <table id="example2" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Tim</th>
                            <th>Asal Sekolah</th>
                            <th>Point</th>

                        </tr>
                    </thead>

                    <tbody>
                        <?php foreach ($xyz as $data) :
                            $no++;
                        ?>
                            <tr>
                                <td><?= $no  ?></td>
                                <td><?= $data['nama_tim']; ?></td>
                                <td><?= $data['asal_sekolah']; ?></td>
                                <td><?= $data['points']; ?></td>


                            </tr>
                        <?php endforeach ?>

                    </tbody>
                </table>

                </form>
        </section>
<?php }
} ?>