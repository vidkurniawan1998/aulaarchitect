<div class="container-fluid">
    <div id="heading" class="row">
        <div class="col-12">
            <header>
                <h1>Press</h1>
                <h2>Lorem</h2>
            </header>
        </div>
    </div>
    <div class="row sidebar-right">
        <div class="main-column col-12">
            <div class="masonry masonry-3 row">
                <?php echo empty($press_list) ? '<p class="col-12">Nothing to display</p>' : '' ?>
                <?php foreach($press_list as $key => $row) { ?>
                    <a href="<?php echo $row->url ?>" title="<?php echo $row->title ?>">
                        <article class="blog col-4">
                            <div class="image">
                                <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>" alt="<?php echo $row->thumbnail_alt ?>" title="<?php echo $row->title ?>">
                            </div>
                            <div class="inner">
                                <header>
                                    <h3 class="inner-title"><?php echo $row->title ?></h3>
                                    <div class="vcard">
                                        <div class="date">On <time datetime="<?php echo $row->created_at ?>"><?php echo $this->main->date_view($row->created_at) ?></time></div>
                                    </div>
                                </header>
                                <p class="summary">
                                    <?php echo $this->main->short_desc($row->description); ?>
                                </p>
                                <p>
                                    <a href="<?php echo $row->url ?>" class="read-more read-more--mod" title="<?php echo $row->title ?>">View</a>
                                </p>
                            </div>
                        </article>
                    </a>
                <?php } ?>
            </div>
            <div class="pagination-row row">
                <div class="col-12">
                    <div class="pag">
                        <?php echo $this->pagination->create_links() ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>