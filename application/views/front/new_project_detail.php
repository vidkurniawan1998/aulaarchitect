<div class="container-fluid">
    <div class="row">
        <div class="main-column col-8">
            <article class="blog full">
                <div class="image">
                    <img src="<?php echo $this->main->image_preview_url($page->thumbnail) ?>" alt="<?php echo $page->thumbnail_alt ?>" title="<?php echo $row->title ?>">
                </div>
                <div class="inner">
                    <header>
                        <h1 class="inner-title"><?php echo $page->title ?></h1>
                    </header>
                    <?php echo $page->description ?>
                </div>
            </article>
        </div>
        <div class="sidebar-column col-4">
            <aside id="recent-posts-2" class="widget widget_recent_entries">		
                <h2 class="sidebar-title">On Going Project</h2>
                <ul>
                    <?php foreach($on_going_project as $row) {
                        $link = $this->main->permalink(array('on-going-project', $row->title)); ?>
                        <li class="li-sidebar--mod">
                            <a href="<?php echo $link ?>" title="<?php echo $row->title ?>"><?php echo $row->title ?>
                        </li>
                    <?php } ?>
                </ul>
            </aside>
        </div>
    </div>
</div>
                            