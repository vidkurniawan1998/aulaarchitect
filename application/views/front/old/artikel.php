<div id="home" class="bg-inner low-back-gradient-inner">
    <div class="text-con-inner low-back-up">
        <div class="container">
            <div class="row">
                <div class="lead col-lg-12 col-xm-12 text-center">
                    <h1><span class="top-heading-inner"><?php echo $page->title ?></span> </h1>
                    <div class="list-o-i white">
                        <p class="white no-p"><?php echo $page->title_sub ?></p>
                        <div class="pagenation_links"><a href="<?php echo site_url() ?>" class="yellow"><?php echo $home->title_menu ?></a><i> </i> / <?php echo $blog->title_menu ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div id="blog" class="blog-div-area">
    <div class="container">
        <div class="row">
            <div class="section-title center text-center">
                <div class="black"><?php echo $page->description ?></div>
            </div>
        </div>
        <div class="blog-content-div">
            <div class="row artikel-list">
                <?php foreach ($blog_list as $row) { ?>
                <div class="col-md-4 col-sm-4 col-xs-12 blog-ma artikel-item">
                    <div class="single-blog">
                        <div class="feature-images">
                            <a href="<?php echo $this->main->permalink(array('blog', $row->slug)) ?>">
                                <img alt="#" src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>">
                            </a>
                        </div>
                        <div class="blog-content">
                            <h3><a href="<?php echo $this->main->permalink(array('blog', $row->slug)) ?>"><?php echo $row->title ?></a></h3>
                            <p align="justify"><?php echo substr(strip_tags($row->description), 0, 150) ?> ...</p>
                            <div class="yellow-back"><a href="<?php echo $this->main->permalink(array('blog', $row->title)) ?>">Detail</a></div>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
            <?php echo $this->pagination->create_links(); ?>
        </div>
    </div>
</div>