<div id="fullscreen-slider" class="swiper-container">
    <div class="swiper-wrapper">

        <?php foreach($slider as $item): ?>
            <div class="swiper-slide" style="background-image: url(<?php echo 
            site_url('upload/images/') . $item->thumbnail ?>)">
                <h1 class="text-<?php echo $item->align ?>"><!--?php echo $item->title ?--></h1>
            </div>
        <?php endforeach ?>
    </div>
</div>