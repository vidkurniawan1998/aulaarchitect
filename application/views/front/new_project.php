<div class="container-fluid">
    <div id="heading" class="row">
        <div class="col-12">
            <header>
                <h1>New Project</h1>
            </header>
        </div>
    </div>
    <div class="row sidebar-right">
        <div class="main-column col-12">
            <div class="masonry masonry-4 row">
                <?php echo empty($new_project_list) ? '<p class="col-12">Nothing to display</p>' : '' ?>
                <?php foreach($new_project_list as $key => $row) {
                    $link = $this->main->permalink(array('on-going-project', $row->title)); ?>
                    <a href="<?php echo $link ?>" title="<?php echo $row->title ?>">
                        <article class="blog col-3">
                            <div class="image">
                                <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>" alt="<?php echo $row->thumbnail_alt ?>" title="<?php echo $row->title ?>">
                            </div>
                            <div class=""><!--Tambahkan Inner (Background putih di list dihapus)-->
                             <!--perubahan Header (Nama Project diperkecil)-->
                                <header>
                                    <h6 class="inner-title"><?php echo $row->title ?></h6>
                                </header>
                                <p class="summary">
                                    <?php echo $this->main->short_desc($row->description); ?>
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