<div class="row">
    <?php foreach ($list as $row) {
        $link = $this->main->permalink(array('produk', $row->category_title, $row->title)); ?>
        <div class="col-md-4">
            <div class="item_panel">
                <a href="<?php echo $link ?>">
                    <figure>
                        <img src="<?php echo $this->main->image_preview_url($row->product_thumbnail) ?>"
                             data-src="<?php echo $this->main->image_preview_url($row->product_thumbnail) ?>"
                             alt=""
                             class="lazy">
                    </figure>
                </a>
                <a href="<?php echo $link ?>">
                    <h5><?php echo $row->title ?></h5>
                </a>
                <div class="price_panel">
                    <span class="new_price"><?php echo $this->main->format_currency($row->price) ?></span>
                    <?php if ($row->price_old) { ?>
                        <span class="old_price"><?php echo $this->main->format_currency($row->price_old) ?></span>
                    <?php } ?>
                </div>
            </div>
        </div>
    <?php } ?>
</div>