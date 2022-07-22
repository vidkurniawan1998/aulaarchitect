<div class="about-hero-banner">
    <div class="about-hero-text">
        <br/>
        <h1><?php echo $page->title ?></h1>
        <p><?php echo $page->title_sub ?></p>
    </div>
</div>
<section id="about">
    <div class="abou-us-area">
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12">
                    <div class="about-content">
                        <?php echo $page->description ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<div class="about-counter-area">
    <div class="container">
        <div class="row">
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 d-flex align-items-center">
                <div class="row">
                    <?php foreach($services_left as $row) { ?>
                        <a href="<?php echo $this->main->permalink(array('layanan', $row->title)) ?>" class="col-xl-12">
                            <div class="single-service service-mt-30 aos-init aos-animate" data-aos="fadein" data-aos-anchor-placement="top-bottom" data-aos-delay="300" data-aos-duration="1000">
                                <div class="service-icon">
                                    <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>" alt="<?php echo $row->title_sub ?>" title="<?php echo $title ?>">
                                </div>
                                <div class="service-text">
                                    <h3><?php echo $row->title ?></h3>
                                    <p><?php echo $row->title_sub ?></p>
                                </div>
                            </div>
                        </a>
                    <?php } ?>
                </div>
            </div>
            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 margin-top-sb-30">
                <div class="row">
                    <?php foreach($services_right as $row) { ?>
                        <a href="<?php echo $this->main->permalink(array('layanan', $row->title)) ?>" class="col-xl-12">
                            <div class="single-service service-mt-30 aos-init aos-animate" data-aos="fadein" data-aos-anchor-placement="top-bottom" data-aos-delay="300" data-aos-duration="1000">
                                <div class="service-icon">
                                    <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>" alt="<?php echo $row->title_sub ?>" title="<?php echo $title ?>">
                                </div>
                                <div class="service-text">
                                    <h3><?php echo $row->title ?></h3>
                                    <p><?php echo $row->title_sub ?></p>
                                </div>
                            </div>
                        </a>
                    <?php } ?>
                </div>
            </div>
        </div>
    </div>
</div>