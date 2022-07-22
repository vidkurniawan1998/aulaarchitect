<main>
    <div class="top_banner">
        <div class="opacity-mask d-flex align-items-center" data-opacity-mask="rgba(0, 0, 0, 0.3)">
            <div class="container">
                <div class="breadcrumbs">
                    <ul>
                        <li><a href="<?php echo site_url() ?>">Beranda</a></li>
                        <li>Daftar Produk</li>
                    </ul>
                </div>
                <h1>Daftar Produk</h1>
            </div>
        </div>
        <img src="<?php echo base_url() ?>assets/template_front/img/bg_cat_shoes.jpg" class="img-fluid" alt="">
    </div>
    <div id="stick_here"></div>
    <div class="toolbox elemento_stick">
        <div class="container">
            <ul class="clearfix">
                <li>
                    <div class="sort_select">
                        <select name="sort" id="sort">
                            <option value="popularity" selected="selected">Urutkan Paling Populer</option>
                            <option value="rating">Urutkan dengan Rating</option>
                            <option value="date">Urutkan Produk Terbaru</option>
                            <option value="price">Urut Harga: Rendah ke Tinggi</option>
                            <option value="price-desc">Urut Harga: Tinggi ke Rendah
                        </select>
                    </div>
                </li>
                <li>
                    <a href="<?php echo site_url('produk') ?>"><i class="ti-view-grid"></i></a>
                    <a href="<?php echo site_url('produk/row') ?>"><i class="ti-view-list"></i></a>
                </li>
                <li>
                    <a href="#0" class="open_filters">
                        <i class="ti-filter"></i><span>Filters</span>
                    </a>
                </li>
            </ul>
        </div>
    </div>

    <div class="container margin_30">

        <div class="row">
            <aside class="col-lg-3" id="sidebar_fixed">
                <div class="filter_col">
                    <div class="inner_bt"><a href="javascript:;" class="open_filters"><i class="ti-close"></i></a></div>
                    <div class="filter_type version_2">
                        <h4><a href="javascript:;" data-toggle="collapse" class="opened">Kategori Produk</a></h4>
                        <div class="collapse show" id="filter_1">
                            <ul>
                                <li>
                                    <label class="container_check">Men <small>12</small>
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </li>
                                <li>
                                    <label class="container_check">Women <small>24</small>
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </li>
                                <li>
                                    <label class="container_check">Running <small>23</small>
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </li>
                                <li>
                                    <label class="container_check">Training <small>11</small>
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="filter_type version_2">
                        <h4><a href="javascript:;" data-toggle="collapse" class="closed">Rentang Harga</a></h4>
                        <div class="collapse show" id="filter_4">
                            <ul>
                                <li>
                                    <label class="container_check">$0 — $50<small>11</small>
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </li>
                                <li>
                                    <label class="container_check">$50 — $100<small>08</small>
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </li>
                                <li>
                                    <label class="container_check">$100 — $150<small>05</small>
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </li>
                                <li>
                                    <label class="container_check">$150 — $200<small>18</small>
                                        <input type="checkbox">
                                        <span class="checkmark"></span>
                                    </label>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <!-- /filter_type -->
                    <div class="buttons text-center">
                        <a href="javascript:;" class="btn_1">Mulai Filter</a>
                        <a href="javascript:;" class="btn_1 gray">Reset</a>
                    </div>
                </div>
            </aside>
            <!-- /col -->
            <div class="col-lg-9">
                <div class="row row_item">
                    <div class="col-sm-4">
                        <figure>
                            <span class="ribbon off">-30%</span>
                            <a href="product-detail-1.html">
                                <img class="img-fluid lazy loaded" src="<?php echo $this->main->image_preview_url('product-1.jpg') ?>" data-src="<?php echo $this->main->image_preview_url('product-1.jpg') ?>" alt="" data-was-processed="true">
                            </a>
                            <div data-countdown="2020/03/15" class="countdown">00D 00:00:00</div>
                        </figure>
                    </div>
                    <div class="col-sm-8">
                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                        <a href="product-detail-1.html">
                            <h3>Armor Air x Fear</h3>
                        </a>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident...</p>
                        <div class="price_box">
                            <span class="new_price">$48.00</span>
                            <span class="old_price">$60.00</span>
                        </div>
                        <ul>
                            <li><a href="#0" class="btn_1">Add to cart</a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /row_item -->
                <div class="row row_item">
                    <div class="col-sm-4">
                        <figure>
                            <span class="ribbon off">-30%</span>
                            <a href="product-detail-1.html">
                                <img class="img-fluid lazy loaded" src="<?php echo $this->main->image_preview_url('product-2.jpg') ?>" data-src="<?php echo $this->main->image_preview_url('product-2.jpg') ?>" alt="" data-was-processed="true">
                            </a>
                            <div data-countdown="2020/03/15" class="countdown">00D 00:00:00</div>
                        </figure>
                    </div>
                    <div class="col-sm-8">
                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                        <a href="product-detail-1.html">
                            <h3>Armor Okwahn II</h3>
                        </a>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident...</p>
                        <div class="price_box">
                            <span class="new_price">$90.00</span>
                            <span class="old_price">$170.00</span>
                        </div>
                        <ul>
                            <li><a href="#0" class="btn_1">Add to cart</a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /row_item -->
                <div class="row row_item">
                    <div class="col-sm-4">
                        <figure>
                            <span class="ribbon off">-50%</span>
                            <a href="product-detail-1.html">
                                <img class="img-fluid lazy loaded" src="<?php echo $this->main->image_preview_url('product-3.jpg') ?>" data-src="<?php echo $this->main->image_preview_url('product-3.jpg') ?>" alt="" data-was-processed="true">
                            </a>
                            <div data-countdown="2020/03/15" class="countdown">00D 00:00:00</div>
                        </figure>
                    </div>
                    <div class="col-sm-8">
                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                        <a href="product-detail-1.html">
                            <h3>Armor Air Wildwood ACG</h3>
                        </a>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident...</p>
                        <div class="price_box">
                            <span class="new_price">$75.00</span>
                            <span class="old_price">$155.00</span>
                        </div>
                        <ul>
                            <li><a href="#0" class="btn_1">Add to cart</a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /row_item -->
                <div class="row row_item">
                    <div class="col-sm-4">
                        <figure>
                            <span class="ribbon new">New</span>
                            <a href="product-detail-1.html">
                                <img class="img-fluid lazy loaded" src="<?php echo $this->main->image_preview_url('product-4.jpg') ?>" data-src="<?php echo $this->main->image_preview_url('product-4.jpg') ?>" alt="" data-was-processed="true">
                            </a>
                        </figure>
                    </div>
                    <div class="col-sm-8">
                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                        <a href="product-detail-1.html">
                            <h3>Armor ACG React Terra</h3>
                        </a>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident...</p>
                        <div class="price_box">
                            <span class="new_price">$110.00</span>
                        </div>
                        <ul>
                            <li><a href="#0" class="btn_1">Add to cart</a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /row_item -->
                <div class="row row_item">
                    <div class="col-sm-4">
                        <figure>
                            <span class="ribbon new">New</span>
                            <a href="product-detail-1.html">
                                <img class="img-fluid lazy" src="<?php echo $this->main->image_preview_url('product-5.jpg') ?>" data-src="<?php echo $this->main->image_preview_url('product-5.jpg') ?>" alt="">
                            </a>
                        </figure>
                    </div>
                    <div class="col-sm-8">
                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                        <a href="product-detail-1.html">
                            <h3>Armor Air Zoom Alpha</h3>
                        </a>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident...</p>
                        <div class="price_box">
                            <span class="new_price">$140.00</span>
                        </div>
                        <ul>
                            <li><a href="#0" class="btn_1">Add to cart</a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /row_item -->
                <div class="row row_item">
                    <div class="col-sm-4">
                        <figure>
                            <span class="ribbon new">New</span>
                            <a href="product-detail-1.html">
                                <img class="img-fluid lazy" src="<?php echo $this->main->image_preview_url('product-6.jpg') ?>" data-src="<?php echo $this->main->image_preview_url('product-6.jpg') ?>" alt="">
                            </a>
                        </figure>
                    </div>
                    <div class="col-sm-8">
                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                        <a href="product-detail-1.html">
                            <h3>Armor Air Alpha</h3>
                        </a>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident...</p>
                        <div class="price_box">
                            <span class="new_price">$130.00</span>
                        </div>
                        <ul>
                            <li><a href="#0" class="btn_1">Add to cart</a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /row_item -->
                <div class="row row_item">
                    <div class="col-sm-4">
                        <figure>
                            <span class="ribbon hot">Hot</span>
                            <a href="product-detail-1.html">
                                <img class="img-fluid lazy" src="<?php echo $this->main->image_preview_url('product-7.jpg') ?>" data-src="<?php echo $this->main->image_preview_url('product-7.jpg') ?>" alt="">
                            </a>
                        </figure>
                    </div>
                    <div class="col-sm-8">
                        <div class="rating"><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star voted"></i><i class="icon-star"></i></div>
                        <a href="product-detail-1.html">
                            <h3>Armor Air 98</h3>
                        </a>
                        <p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident...</p>
                        <div class="price_box">
                            <span class="new_price">$115.00</span>
                        </div>
                        <ul>
                            <li><a href="#0" class="btn_1">Add to cart</a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to favorites"><i class="ti-heart"></i><span>Add to favorites</span></a></li>
                            <li><a href="#0" class="btn_1 gray tooltip-1" data-toggle="tooltip" data-placement="top" title="" data-original-title="Add to compare"><i class="ti-control-shuffle"></i><span>Add to compare</span></a></li>
                        </ul>
                    </div>
                </div>
                <!-- /row_item -->
                <div class="pagination__wrapper">
                    <ul class="pagination">
                        <li><a href="#0" class="prev" title="previous page">❮</a></li>
                        <li>
                            <a href="#0" class="active">1</a>
                        </li>
                        <li>
                            <a href="#0">2</a>
                        </li>
                        <li>
                            <a href="#0">3</a>
                        </li>
                        <li>
                            <a href="#0">4</a>
                        </li>
                        <li><a href="#0" class="next" title="next page">❯</a></li>
                    </ul>
                </div>
            </div>
            <!-- /col -->
        </div>
        <!-- /row -->

    </div>
    <!-- /container -->
</main>