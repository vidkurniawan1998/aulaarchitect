<div id="home" class="bg-inner low-back-gradient-inner">
    <div class="text-con-inner low-back-up">
        <div class="container">
            <div class="row">
                <div class="lead col-lg-12 col-xm-12 text-center">
                    <h1><span class="top-heading-inner"><?php echo $page->title ?></span> </h1>
                    <div class="list-o-i white">
                        <p class="white no-p"><?php echo $page->title_sub ?></p>
                        <div class="pagenation_links"><a href="<?php echo site_url() ?>" class="yellow">Beranda</a><i> </i> / Blog</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="sidebar-page blog-div-area">
    <div class="container">
        <div class="row clearfix">
            <!--Content Side-->
            <div class="col-lg-9 col-md-8 col-sm-12 col-xs-12">
                <!--Projects div-->
                <div class="blog-news-div no-padd-bottom no-padd-top padd-right-20">
                    <!--News Column-->
                    <div class="column blog-news-column">
                        <article class="inner-box">
                            <div class="blog-content-div">
                                <div class="row">
                                    <div class="col-md-10 col-sm-10 col-xs-12">
                                        <div class="single-blog">
                                            <div class="feature-images about-img"> <a href="#"> <img alt="blog" src="<?php echo $this->main->image_preview_url($page->thumbnail) ?>"> </a>
                                                <div class="overley"></div>
                                            </div>
                                            <div class="blog-content">
                                                <?php echo $page->description ?>

                                                <h6><strong>Share ke Sosial Media : </strong></h6>
                                                <a href="<?php echo $this->main->share_link('facebook', $page->title, $artikel_permalink) ?>">
                                                    <img src="<?php echo base_url('assets/template_front/img/social-media/facebook.png') ?>">
                                                </a>
                                                <a href="<?php echo $this->main->share_link('twitter', $page->title, $artikel_permalink) ?>">
                                                    <img src="<?php echo base_url('assets/template_front/img/social-media/twitter.png') ?>">
                                                </a>
                                                <a href="<?php echo $this->main->share_link('linkedin', $page->title, $artikel_permalink) ?>">
                                                    <img src="<?php echo base_url('assets/template_front/img/social-media/linkedin.png') ?>">
                                                </a>
                                                <hr />
                                                <div id="disqus_thread"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </article>
                    </div>
                    <!--News Column-->
                </div>
            </div>
            <!--Content Side-->
            <!--Sidebar-->
            <div class="col-lg-3 col-md-4 col-sm-12 col-xs-12">
                <aside class="sidebar">
                    <!-- Search Form -->
                    <div class="widget search-box">
                        <form method="get" action="<?php echo site_url('blog') ?>">
                            <div class="form-group">
                                <input type="search" name="search" value="" placeholder="Enter keyword">
                                <button type="submit"><span><i class="fa fa-search"></i></span></button>
                            </div>
                        </form>
                    </div>
                    <!-- Popular Categories -->
                    <div class="widget popular-categories wow fadeInUp" data-wow-delay="0ms" data-wow-duration="1500ms">
                        <div class="sidebar-title">
                            <h3>Categories</h3>
                        </div>
                        <ul class="list">
                            <?php foreach ($category as $row) { ?>
                                <li>
                                    <a class="clearfix" href="<?php echo $this->main->permalink(array('blog', $row->title)) ?>"><?php echo $row->title ?>
                                        <span>(<?php echo $row->blog_count ?>)</span></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </aside>
            </div>
            <!--Sidebar-->
        </div>
    </div>
</div>

<section>
    <div class="home-blog-area">
        <div class="container">
            <div class="row">
                <div class="col-xs-12">
                    <h2 align="center">Blog Lainnya</h2>
                    <br />
                </div>
                <?php foreach ($blog_related as $row) { ?>
                    <div class="col-md-4 col-sm-4 col-xs-12 blog-ma artikel-item">
                        <div class="single-blog">
                            <div class="feature-images">
                                <a href="<?php echo $this->main->permalink(array('blog', $row->title)) ?>">
                                    <img alt="#" src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>">
                                </a>
                            </div>
                            <div class="blog-content">
                                <h3><a href="<?php echo $this->main->permalink(array('blog', $row->title)) ?>"><?php echo $row->title ?></a></h3>
                                <p align="justify"><?php echo substr(strip_tags($row->description), 0, 150) ?> ...</p>
                                <div class="yellow-back"><a href="<?php echo $this->main->permalink(array('blog', $row->title)) ?>">Detail</a></div>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                    <div class="section-button text-center">
                        <br/>
                        <a href="<?php echo site_url('artikel') ?>">
                            <i class="fa fa-search"></i> Lihat Semua Artikel Kita</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    (function() { // DON'T EDIT BELOW THIS LINE
        var d = document, s = d.createElement('script');
        s.src = 'https://max99.disqus.com/embed.js';
        s.setAttribute('data-timestamp', +new Date());
        (d.head || d.body).appendChild(s);
    })();
</script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>