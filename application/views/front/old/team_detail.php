<br /><br />
<br /><br />
<br />
<div class="blog-body">
    <div class="container">
        <div class="row">

            <div class="col-xl-5 col-lg-5 col-md-5 col-sm-12">
                <div class="right-side">
                    <div class="author-profile">
                        <div class="author-content">
                            <img src="<?php echo $this->main->image_preview_url($page->thumbnail) ?>" alt="">
                            <p></p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-7 col-lg-7 col-md-7 col-sm-12">
                <div class="left-side">
                    <div class="blog-body-content">
                        <h1><?php echo $page->title ?></h1>
                        <strong><?php echo $page->position ?></strong>
                        <br />
                        <br />
                        <?php echo $page->description ?>
                        <br />
                        <br />
                        <h6><strong>Share ke Sosial Media : </strong></h6>
                        <a href="<?php echo $this->main->share_link('facebook', $page->title, $artikel_permalink) ?>" class="fab fa-facebook"></a>
                        <a href="<?php echo $this->main->share_link('twitter', $page->title, $artikel_permalink) ?>" class="fab fa-twitter"></a>
                        <a href="<?php echo $this->main->share_link('googleplus', $page->title, $artikel_permalink) ?>" class="fab fa-google"></a>
                        <a href="<?php echo $this->main->share_link('linkedin', $page->title, $artikel_permalink) ?>" class="fab fa-linkedin"></a>

                    </div>
                </div>
            </div>
        </div>

    </div>
</div>