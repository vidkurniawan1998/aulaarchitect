<div class="container-fluid">
    <div class="row">
        <div class="main-column col-8">
            <article class="blog full">
                <div class="image">
                    <img src="<?php echo $this->main->image_preview_url($page->thumbnail) ?>" alt="<?php echo $page->thumbnail_alt ?>" title="<?php echo $page->title ?>">
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
            <aside id="search-2" class="widget widget_search">
                <form role="search"  id="searchform" action="<?php echo site_url('news') ?>" method="get">
                    <div class="input-group">
                        <input type="text" name="search" id="s" class="form-control" value="" placeholder="Search here...">
                        <span class="input-group-btn">
                            <button type="submit" class="btn btn-color btn-icon-only"><i class="glyphicon glyphicon-search"></i></button>
                        </span>
                    </div>
                </form>
            </aside>
            <aside id="recent-posts-2" class="widget widget_recent_entries">		
                <h2 class="sidebar-title">Recent News</h2>
                <ul>
                    <?php foreach($latest_blog as $row) {
                        $link = $this->main->permalink(array('news', $row->category_title, $row->title)); ?>
                        <li class="li-sidebar--mod">
                            <a href="<?php echo $link ?>" title="<?php echo $row->title ?>"><?php echo $row->title ?>
                        </li>
                    <?php } ?>
                </ul>
            </aside>
            <aside id="categories-2" class="widget widget_categories">
                <h2 class="sidebar-title">Categories</h2>		
                <ul>
                    <?php foreach($category as $row) { ?>
                        <li class="li-sidebar--mod"><a href="<?php echo $this->main->permalink(array('news', $row->title));  ?>" title="<?php echo $row->title ?>"><?php echo $row->title ?> <span>(<?php echo $row->total ?>)</span></a></li>
                    <?php } ?>
                </ul>
            </aside>
        </div>
    </div>
</div>
                            