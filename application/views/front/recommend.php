<main class="bg_color">
    <div class="collapse" id="collapseMap">
        <div id="map" class="map"></div>
    </div>


    <div class="bg_gray">
        <div class="container margin_60_40">
            <div class="main_title center">
                <span><em></em></span>
                <h2>Rekomendasi Toko</h2>
                <p>Daftar Toko yang Sering dikunjungi di PasarSukawati.com</p>
            </div>
            <div class="row">

                <?php foreach($shop as $row) { ?>


                    <div class="col-xl-4 col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="strip">
                            <figure>
                                <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>"
                                     data-src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>"
                                     class="img-fluid lazy" alt="<?php echo $row->thumbnail_alt ?>">
                                <a href="https://wa.me/<?php echo $row->whatsapp ?>" class="strip_info" target="_blank">
                                    <div class="item_title">
                                        <h3><?php echo $row->title ?></h3>
                                        <small><?php echo $row->category_title ?></small>
                                        <Br />
                                        <div class="float-left">
                                            <img src="<?php echo base_url('assets/template_front/img/logo-whatsapp.png') ?>" width="32">
                                        </div>
                                        <div class="float-left" style="padding-left: 10px;">
                                            <div class="chat-penjual">Klik Chat Penjual</div>
                                            <div class="chat-penjual"><?php echo $row->whatsapp ?></div>
                                        </div>
                                    </div>
                                </a>
                            </figure>
                        </div>
                    </div>

                <?php } ?>

            </div>

        </div>

    </div>

</main>