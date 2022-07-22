<div class="container-fluid">
    <div id="heading" class="row">
        <div class="col-12">

            <header>
                <h1>Contact</h1>
                <h2>Get in touch</h2>
            </header>

        </div>
    </div>
    <div class="row">
        <div class="main-column col-12">
            <iframe width="100%" height="350" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="<?php echo $address_link_long ?>" style="border: 1px solid black"></iframe>
            <div class="inner">
                <div class="row">
                    <div class="col-8">
                        <h3>Tell us your opinion</h3>
                        <?php echo $description_site ?>
                        <hr>
                        <form id="contact-form" method="post" action="<?php echo site_url('contact_us/send') ?>">
                            <div class="form-group" id="name-form">
                                <label for="name">Name <span class="form-required" title="This field is required.">*</span></label>
                                <input type="text" name="name" class="form-control half" id="name">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="form-group" id="phone-form">
                                <label for="phone">Phone <span class="form-required" title="This field is required.">*</span></label>
                                <input type="tel" name="phone" class="form-control half" id="phone">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="form-group" id="email-form">
                                <label for="email">E-mail <span class="form-required" title="This field is required.">*</span></label>
                                <input type="email" name="email" class="form-control half" id="email">
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="form-group" id="message-form">
                                <label for="message">Message <span class="form-required" title="This field is required.">*</span></label>
                                <textarea name="message" class="form-control half" rows="4" id="message"></textarea>
                                <div class="invalid-feedback"></div>
                            </div>
                            <div class="form-group">
                                <label for="security_code">Security Code</label> 
                                <?php echo $captcha ?>
                            </div>
                            <div id="captcha-form">
                                <label for="captcha">Captcha <span class="form-required" title="This field is required.">*</span></label> <br>
                                <input type="text" name="captcha" class="captcha-form">
                                <div class="invalid-feedback"></div>
                            </div>
                            <br>
                            <button type="submit" class="btn btn-color send-button--mod"><i class="glyphicon glyphicon-send"></i>Send</button>
                        </form>
                    </div>
                    <div class="col-4">
                        <h3>Our address</h3>
                        <div class="icon-text">
                            <i class="fa fa-map-marker"></i>
                            <p><?php echo $address ?></p>
                        </div>
                        <div class="icon-text">
                            <i class="fa fa-phone"></i>
                            <p><?php echo $phone ?></p>
                        </div>
                        <div class="icon-text">
                            <i class="fa fa-envelope-o"></i>
                            <p><a href="<?php echo $email_link ?>"><?php echo $email ?></a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>