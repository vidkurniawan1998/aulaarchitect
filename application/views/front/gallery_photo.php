<main class="bg_gray">
    <div class="container margin_30">
        <div class="page_header">
            <div class="breadcrumbs">
                <ul>
                    <li><a href="<?php echo site_url() ?>">Beranda</a></li>
                    <li><?php echo $page->title ?></li>
                </ul>
            </div>
            <h1><?php echo $page->title ?></h1>
            <?php echo $page->description ?>
        </div>

        <div class="row gallery-photo-list">
            <?php foreach($gallery_list as $row) { ?>
                <div class="col-sm-6 col-md-2 col-lg-2">
                    <a href="<?php echo $this->main->image_preview_url($row->thumbnail) ?>" data-lightbox="roadtrip">
                        <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>" class="img-responsive" alt="<?php echo $row->thumbnail_alt ?>" title="<?php echo $row->title ?>">
                    </a>
                </div>
            <?php } ?>

        </div>

    </div>

</main>