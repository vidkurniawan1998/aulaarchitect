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


<div id="superb-services">
    <div class="startup">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-md-12 col-sm-12">
                    <?php echo $page->description ?>
                    <div class="row gallery-list grid">
                        <?php foreach ($testimonial_list as $row) { ?>
                            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-12 grid-item testimonial-item">
                                <a data-fancybox="gallery" href="<?php echo $this->main->image_preview_url($row->thumbnail) ?>">
                                    <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>"
                                         class="img-responsive"
                                         title="<?php echo $row->title ?>"
                                         alt="<?php echo $row->title ?>"
                                         style="width: 100% !important;">
                                    <h2><?php echo $row->title ?></h2>
                                </a>
                                <p align="justify"><?php echo $row->description ?></p>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>