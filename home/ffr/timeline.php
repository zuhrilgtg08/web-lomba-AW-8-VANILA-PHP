<section class="page-section" id="timeline">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase">Timeline </h2>
            <h3 class="section-subheading text-muted">FFR</h3>
        </div>
        <ul class="timeline">
            <li>
                <div class="timeline-image">
                    <img class="rounded-circle img-fluid" src="image/ffr/daftar_lomba.png" alt="..." />
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Pendaftaran dan Pembayaran</h4>
                        <h6 style="color: #6C757D;"><?= $ffr['tgl_pendaftaran']; ?></h6>
                    </div>
                </div>
            </li>
            <li class="timeline-inverted">
                <div class="timeline-image">
                    <img class="rounded-circle img-fluid" src="image/ffr/teknikal-meeting.png" alt="..." />
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Technical Meeting & Tes Track</h4>
                        <h6 style="color: #6C757D;"><?= $ffr['tgl_tm']; ?></h6>
                    </div>
                </div>
            </li>
            <li>
                <div class="timeline-image">
                    <img class="rounded-circle img-fluid" src="image/ffr/penyisihan.png" alt="..." />
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Babak Penyisihan</h4>
                        <h6 style="color: #6C757D;"><?= $ffr['tgl_penyisihan']; ?></h6>
                    </div>
                </div>
            </li>
            <li class="timeline-inverted">
                <div class="timeline-image">
                    <img class="rounded-circle img-fluid" src="image/ffr/babak_final.png" alt="..." />
                </div>
                <div class="timeline-panel">
                    <div class="timeline-heading">
                        <h4 class="subheading">Babak Final</h4>
                        <h6 style="color: #6C757D;"><?= $ffr['tgl_final']; ?></h6>
                    </div>
                </div>
            </li>
            <li>
                <div class="timeline-image"><img class="rounded-circle img-fluid" src="image/Circle Logo FFR.png" alt="..." /></div>
                <div class="timeline-panel"></div>
            </li>
        </ul>
    </div>
</section>