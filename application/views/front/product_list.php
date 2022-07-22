<div class="container-fluid" style="background-color:white;"> <!--1.Ubah Warna Background-->
    <div id="heading" class="row">
        <div class="col-12">
            <header>
                <h4><?php echo $page->title ?></h4> <!--2.Ubah Ukuran Judul Kategori Project-->
            </header>
        </div>
    </div>
    <div class="row sidebar-right">
        <div class="main-column col-12"> <!--Sebelumnya col-9-->
            <div class="masonry masonry-3 row">
                <?php echo empty($product_list) ? '<p class="col-12">Nothing to display</p>' : '' ?>
                <?php foreach($product_list as $key => $row) {
                    $link = $this->main->permalink(array('project', $row->category_title, $row->title)); ?>
                    <a href="<?php echo $link ?>" title="<?php echo $row->title ?>">
                        <article class="blog col-3"> <!--Sebelumnya col-4-->
                            <div class="image img">
                                <img src="<?php echo $this->main->image_preview_url($row->thumbnail) ?>" alt="<?php echo $row->thumbnail_alt ?>" title="<?php echo $row->title ?>">
                            </div>
                            <div class=""><!--Tambahkan Inner (Background putih di list dihapus)-->
                            <!--perubahan Header (Nama Project diperkecil)-->
                                <header>
                                    <h6 class="inner-title"><?php echo $row->title ?></h6>
                                    <p class="inner-title" style="font-size:8pt;"><?php echo $row->location?></p>
                                </header>
                                <!-- <p class="summary">
                                    <//?php echo $this->main->short_desc($row->description); ?>
                                </p> -->
                                <p>
                                    
                                </p>
                            </div>
                        </article>
                    </a>
                <?php } ?>
            </div>
            <div class="pagination-row row">
                <div class="col-12">
                    <div class="pag"><!--Sebelumnya ada margin-top:550px-->
                        <?php echo $this->pagination->create_links() ?>
                    </div>
                </div>
            </div>
        </div>
        <!--Sebelah kanan produk list ada nested loop seperti menu sidebar kiri-->
        <!-- <div class="sidebar-column col-3">
           
            <aside id="categories-2" class="widget widget_categories">		
                <ul>
                    <//?php foreach($category as $row) { ?>
                        <li class="li-sidebar--mod">
                        <a href="<//?php echo $this->main->permalink(array('project', $row->title));  ?>" title="<//?php echo $row->title ?>"><//?php echo $row->title ?> <span>(<//?php echo $row->total ?>)</span>
                        </a>
                        <ul>
                            <//?php foreach($submenu_category as $row2){

                                if($row2->id_category == $row->id)
                                {
                                ?>
                                <ul>
                                    <li><a href="<//?php echo $this->main->permalink(array('project', $row->title)).'sub/'.$row2->slug;  ?>"><//?php echo $row2->title?></a></li>
                                </ul>
                                <//?php
                                }
                             } ?>
                        </ul>
                        
                        </li>
                    
                    <//?php } ?>
                </ul>
            </aside>
        </div> -->
    </div>
</div>