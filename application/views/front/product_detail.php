<div class="container-fluid">
    <div class="row">
        <div class="col-12 text-center">
            <ol class="breadcrumb" style="background-color:white;">
                                    <li class="breadcrumb-item"><?php echo $subkategori; ?></a></li>
                                    <li class="breadcrumb-item"><?php echo $page->location; ?></li>
                                    <li class="breadcrumb-item"><b><?php echo $page->title; ?></b></li>
                                </ol>
            </div>
            <div class="col-12">
                <center>
            <div class="image">
                <img width="660" height="330" src="<?php echo $this->main->image_preview_url($page->thumbnail) ?>" alt="<?php echo $page->thumbnail_alt ?>" title="<?php echo $row->title ?>">
            </div>
        </center>
        </div>
                <!--div class=""><!-Sebelumnya ada inner supaya ada background putih setelah foto--><!--Bagian ini untuk menambahkan deskripsi ketika melihat detail produk-->
                    <!-- <header>
                        <h1 class="inner-title"><//?php echo $page->title ?></h1>
                        <p class="inner-title"><//?php echo $page->location?></p>
                    </header> -->
                    <!-- <//?php echo $page->description ?> -->
                <!--/div-->

            </article>
        </div>
        <!-- <div class="sidebar-column col-4">
            <aside id="recent-posts-2" class="widget widget_recent_entries">		
                <h2 class="sidebar-title">Recent Projects</h2>
                <ul>
                    <//?php foreach($latest_project as $row) {
                        $link = $this->main->permalink(array('project', $row->category_title, $row->title)); ?>
                        <li class="li-sidebar--mod">
                            <a href="<//?php echo $link ?>" title="<//?php echo $row->title ?>"><//?php echo $row->title ?>
                        </li>
                    <//?php } ?>
                </ul>
            </aside>
            <aside id="categories-2" class="widget widget_categories">
                <h2 class="sidebar-title">Categories</h2>		
                <ul>
                    <//?php foreach($category as $row) { ?>
                        <li class="li-sidebar--mod"><a href="<//?php echo $this->main->permalink(array('project', $row->title));  ?>" title="<//?php echo $row->title ?>"><//?php echo $row->title ?> <span>(<//?php echo $row->total ?>)</span></a></li>
                    <//?php } ?>
                </ul>
            </aside>
        </div> --><!--Bagian ini untuk menampilkan sidebar kanan-->
    </div>
</div>