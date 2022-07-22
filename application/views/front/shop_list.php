<main class="bg_color">

    <div class="container margin_30_40">
        <div class="page_header">
            <h1>Jumlah Toko</h1><span>: <?php echo number_format($shop_total) ?></span>
        </div>
        <div class="row">
            <aside class="col-lg-3" id="sidebar_fixed">
                <div class="filter_col">
                    <div class="inner_bt"><a href="#" class="open_filters"><i class="icon_close"></i></a></div>
                    <div class="filter_type">
                        <h4><a href="#filter_1" data-toggle="collapse" class="opened">Categories</a></h4>
                        <div class="collapse show" id="filter_1">
                            <ul>
                                <li>
                                    <label class="container_check">
                                        <a href="<?php echo $this->main->permalink(array('toko')) ?>">
                                            Semua Toko
                                            <small><?php echo number_format($shop_total) ?></small>
                                            <input type="checkbox" <?php echo $kategori_active == 'all' ? 'checked' : '' ?>>
                                            <span class="checkmark"></span>
                                        </a>
                                    </label>
                                </li>
                                <?php foreach ($category as $row) { ?>
                                    <li>
                                        <label class="container_check">
                                            <a href="<?php echo $this->main->permalink(array('toko',$row->title)) ?>">
                                                <?php echo $row->title ?>
                                                <small><?php echo number_format($row->shop_total) ?></small>
                                                <input type="checkbox" <?php echo $kategori_active == $row->id ? 'checked' : '' ?>>
                                                <span class="checkmark"></span>
                                            </a>
                                        </label>
                                    </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </div>
            </aside>

            <div class="col-lg-9">
                <div class="row grid_sidebar">
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
    </div>
</main>