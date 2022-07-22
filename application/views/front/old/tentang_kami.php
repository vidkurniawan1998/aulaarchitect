<div id="home" class="bg-inner low-back-gradient-inner">
    <div class="text-con-inner low-back-up">
        <div class="container">
            <div class="row">
                <div class="lead col-lg-12 col-xm-12 text-center">
                    <h1><span class="top-heading-inner"><?php echo $page->title ?></span> </h1>

                    <div class="list-o-i white">
                        <p class="white no-p"><?php echo $page->title_sub ?></p>
                        <div class="pagenation_links"><a href="<?php echo site_url() ?>" class="yellow"><?php echo $home->title_menu ?></a><i> </i> / <?php echo $page->title ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="coin" class="text-center">
    <div class="container">
        <div class="section-title center">
            <div class="row">
                <div class="col-md-5 about-img"> <img src="<?php echo base_url() ?>assets/template_front/img/about-us.jpg" alt="<?php echo $page->meta_title ?>"></div>
                <div class="col-md-6 text-left">
                    <?php echo $page->description ?>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="superb-services">
    <div class="startup text-center">
        <div class="container">
            <div class="section-title center text-center">
                <h2 class="wow fadeInDown"><?php echo $home_sesi_6->title ?></h2>
                <hr>
                <?php echo $home_sesi_6->description ?>
            </div>
            <div class="row">
                <?php $home_sesi_6_data_1 = json_decode($home_sesi_6->data_1, TRUE); ?>
                <?php foreach ($home_sesi_6_data_1['title'] as $key => $title) {
                    $number = $this->main->translate_number($key + 1);
                    $image_preview_url = $this->main->image_preview_url($home_sesi_6_data_1['images'][$key]) ?>
                    <div class="col-md-6 col-xs-12 boxs <?php echo $number ?>">
                        <div class="single_services ">
                            <img src="<?php echo $image_preview_url ?>" alt="<?php echo $title ?>"
                                 width="120">
                        </div>
                        <h4><?php echo $title ?></h4>
                        <p><?php echo $home_sesi_6_data_1['description'][$key] ?></p>
                    </div>
                <?php } ?>
            </div>
        </div>
    </div>
</div>