<div class="container-fluid">
    <div id="heading" class="row">
        <div class="col-12">
            <header>
                <h1>News</h1>
            </header>
        </div>
    </div>
    <div class="row sidebar-right">
        <div class="main-column col-9">
            <div class="masonry masonry-3 row">
                <?php echo empty($blog_list) ? '<p class="col-12">Nothing to display</p>' : '' ?>
                <?php foreach($blog_list as $key => $row) {
                    $link = $this->main->permalink(array('news', $row->category_title, $row->title)); ?>
                    <a href="<?php echo $link ?>" title="<?php echo $row->title ?>">
                        <article class="blog col-4">
                            <div class="image">
                                <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>" alt="<?php echo $row->thumbnail_alt ?>" title="<?php echo $row->title ?>">
                            </div>
                            <div class="inner">
                                <header>
                                    <h3 class="inner-title"><?php echo $row->title ?></h3>
                                </header>
                                <p class="summary">
                                    <?php echo $this->main->short_desc($row->description); ?>
                                </p>
                                <p>
                                    <a href="<?php echo $link ?>" class="read-more read-more--mod" title="<?php echo $row->title ?>">Read more</a>
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
        <div class="sidebar-column col-3">
            <aside id="search-2" class="widget widget_search">
                <form role="search"  id="searchform" action="?" method="get">
                    <div class="input-group">
                        <input type="text" name="search" id="s" class="form-control" value="" placeholder="Search here...">
                        <span class="input-group-btn">
                            <button type="submit" class="btn btn-color btn-icon-only"><i class="glyphicon glyphicon-search"></i></button>
                        </span>
                    </div>
                </form>
            </aside>		
            <aside id="recent-posts-2" class="widget widget_recent_entries">		
                <h4>Recent News</h4>
                <ul>
                    <?php foreach($latest_blog as $row) {
                        $link = $this->main->permalink(array('news', $row->category_title, $row->title)); ?>
                        <li class="li-sidebar--mod">
                            <a href="<?php echo $link ?>" title="<?php echo $row->title ?>"><?php echo $row->title ?>
                        </li>
                    <?php } ?>
                </ul>
            </aside>
            <aside id="categories-2" class="widget widget_categories"><h4>Categories</h4>		
                <ul>
                    <?php foreach($category as $row) { ?>
                        <li class="li-sidebar--mod"><a href="<?php echo $this->main->permalink(array('news', $row->title));  ?>" title="<?php echo $row->title ?>"><?php echo $row->title ?> <span>(<?php echo $row->total ?>)</span></a></li>
                    <?php } ?>
                </ul>
            </aside>
        </div>
    </div>
</div>