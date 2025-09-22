<section class="page-section" id="timeline">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Timeline </h2>
            <h3 class="section-subheading text-muted">LF</h3>
        </div>
        <ul class="timeline">
            <li>
                <div class="timeline-image">
                    <img class="rounded-circle img-fluid" src="image/lf/icon_pendaftaran_2.png" alt="..." />
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Pendaftaran dan Pembayaran</h4>
                        <h6 style="color: #6C757D;"><?= $lf['tgl_daftar']; ?></h6>
                    </div>
                </div>
            </li>
            <li class="timeline-inverted">
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="image/lf/icon_tm.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Technical Meeting</h4>
                        <h6 style="color: #6C757D;"><?= $lf['tgl_tm']; ?></h6>
                    </div>
                </div>
            </li>
            <li>
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="image/lf/icon_penyisihian.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Babak Penyisihan</h4>
                        <h6 style="color: #6C757D;"><?= $lf['tgl_penyisihan']; ?></h6>
                    </div>
                </div>
            </li>
            <li class="timeline-inverted">
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="image/lf/icon_final.png" alt="..." /></div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Babak Final</h4>
                        <h6 style="color: #6C757D;"><?= $lf['tgl_final']; ?></h6>
                    </div>
                </div>
            </li>
            <li>
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="image/Circle Logo LF.png" alt="..." /></div>
                <div class="timeline-panel"></div>
            </li>
        </ul>
    </div>
</section>