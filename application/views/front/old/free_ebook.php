<div id="home" class="bg-inner low-back-gradient-inner">
    <div class="text-con-inner low-back-up">
        <div class="container">
            <div class="row">
                <div class="lead col-lg-12 col-xm-12 text-center">
                    <h1><span class="top-heading-inner"><?php echo $page->title ?></span></h1>

                    <div class="list-o-i white">
                        <p class="white no-p"><?php echo $page->title_sub ?></p>
                        <div class="pagenation_links"><a href="<?php echo site_url() ?>"
                                                         class="yellow"><?php echo $home->title_menu ?></a><i> </i> / <?php echo $page->title ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<form action="<?php echo site_url('free-ebook-send') ?>" method="post" class="form-send">
    <div id="contact-inner" class="text-center">
        <div class="container">
            <div class="section-title text-justify">
                <?php echo $page->description ?>
                <div class="row">
                    <div class="col-xs-12 col-md-6">
                        <img src="<?php echo $this->main->image_preview_url($page->thumbnail) ?>"
                             class="img-responsive" alt="<?php echo $page->title ?>">
                    </div>
                    <div class="col-xs-12 col-md-6">
                        <br/>
                        <br/>
                        <div class="form-group">
                            <label class="required"><?php echo $dict_name ?></label>
                            <input type="text" name="name" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="required"><?php echo $dict_email ?></label>
                            <input type="text" name="email" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="required"><?php echo $dict_handphone ?></label>
                            <input type="text" name="phone" class="form-control">
                        </div>
                        <div class="form-group">
                            <label class="required"><?php echo $dict_message ?></label>
                            <textarea class="form-control" name="message"></textarea>
                        </div>
                        <div class="form-group">
                            <div style="width: 100%">
                                <label class="required"><?php echo $dict_security_code ?></label>
                            </div>
                            <div class="clearfix"></div>
                            <?php echo $captcha ?>
                            <br/>
                            <input type="text" name="captcha" class="form-control">
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn-download-send"><span><?php echo $dict_request_send ?></span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>