<div id="home" class="bg-inner low-back-gradient-inner">
    <div class="text-con-inner low-back-up">
        <div class="container">
            <div class="row">
                <div class="lead col-lg-12 col-xm-12 text-center">
                    <h1><span class="top-heading-inner"><?php echo $page->title ?></span> </h1>

                    <div class="list-o-i white">
                        <p class="white no-p"><?php echo $page->title_sub ?></p>
                        <div class="pagenation_links"><a href="<?php echo site_url() ?>" class="yellow">Beranda</a><i> </i> / <?php echo $page->title ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div id="superb-services">
    <div class="startup">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12 col-sm-12">
                    <?php echo $page->description ?>
                    <div class="row gallery-list grid">
                        <?php foreach ($gallery as $row) { ?>
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 grid-item">
                                <a data-fancybox="gallery" href="<?php echo $this->main->image_preview_url($row->thumbnail) ?>">
                                    <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>"
                                         class="img-responsive"
                                         title="<?php echo $row->title ?>"
                                         alt="<?php echo $row->title_sub ?>"
                                         style="width: 100% !important;">
                                </a>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<link rel="stylesheet" type="text/css" href="<?php echo base_url('assets/template_front/css/fancybox.css') ?>">
<script type="text/javascript" src="<?php echo base_url('assets/template_front/js/fancybox.js') ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/template_front/js/packery.js') ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/template_front/js/imagesloaded.pkgd.min.js') ?>"></script>
<style type="text/css">
    .grid-item {
        padding: 10px;
    }
</style>

<script type="text/javascript">
    $(document).ready(function() {
        var $container = $('.grid');
        // init
        $container.packery({
            itemSelector: '.grid-item',
            gutter: 0,
            isInitLayout: true,
            isResizeBound: true
        });

        $container.imagesLoaded( function() {
            $container.packery();
        });
    });
</script>