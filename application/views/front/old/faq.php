<div id="home" class="bg-inner low-back-gradient-inner">
    <div class="text-con-inner low-back-up">
        <div class="container">
            <div class="row">
                <div class="lead col-lg-12 col-xm-12 text-center">
                    <h1><span class="top-heading-inner"><?php echo strip_tags($page->title) ?></span> </h1>

                    <div class="list-o-i white">
                        <p class="white no-p"><?php echo $page->title_sub ?></p>
                        <div class="pagenation_links"><a href="<?php echo site_url() ?>" class="yellow"><?php echo $home->title_menu ?></a><i> </i> / <?php echo strip_tags($page->title) ?></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div id="customizable">
    <div class="join-us-app">
        <div class="container-fluid">
            <div class="section-title center text-center">
                <div class="black"><?php echo $page->description ?></div>
            </div>
            <div class="row">
                <div class="lead-creative col-sm-6 col-xm-12 text-center ">
                    <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                        </ol>
                        <div class="carousel-inner" role="listbox">
                            <div class="item active">
                                <img src="<?php echo base_url() ?>assets/template_front/img/frequently-asked-question.jpg"
                                     alt="first">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-5 col-xm-12 center ">
                    <div class="accordion">
                        <div class="panel-group" id="accordion1">
                            <?php $page_data_1 = json_decode($page->data_1, TRUE) ?>
                            <?php foreach ($page_data_1['title'] as $key => $title) { ?>
                                <div class="panel panel-default">
                                    <div class="panel-heading<?php echo $key == 0 ? ' active' : '' ?>">
                                        <div class="panel-title">
                                            <a class="accordion-toggle" data-toggle="collapse"
                                               data-parent="#accordion1" href="#collapseOne<?php echo $key ?>">
                                                <?php echo $title ?>
                                                <i class="fa fa-angle-right pull-right"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div id="collapseOne<?php echo $key ?>"
                                         class="panel-collapse collapse<?php echo $key == 0 ? ' in' : '' ?>">
                                        <div class="panel-body">
                                            <div class="media accordion-inner">
                                                <div class="media-body">
                                                    <p><?php echo $page_data_1['description'][$key] ?></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>