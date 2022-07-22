<main class="bg_gray">
    <div class="container margin_30">
        <div class="page_header">

            <h1 align="center">Login atau Daftar Member</h1>
        </div>

        <div class="row">
            <div class="col-xl-6 offset-xl-3 col-lg-6 offset-lg-3 col-md-6 offset-md-3">
                <div class="box_account">
                    <div class="form_container">
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Email*">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="password_in" id="password_in" value=""
                                   placeholder="Password*">
                        </div>
                        <div class="clearfix add_bottom_15">
                            <div class="float-right">
                                <a id="forgot" href="javascript:void(0);">Reset Password ? </a>
                            </div>
                        </div>
                        <div class="text-center"><input type="submit" value="Log In" class="btn_1 full-width"></div>
                        <div id="forgot_pw">
                            <div class="form-group">
                                <input type="email" class="form-control" name="email_forgot" id="email_forgot"
                                       placeholder="Type your email">
                            </div>
                            <p>A new password will be sent shortly.</p>
                            <div class="text-center"><input type="submit" value="Reset Password" class="btn_1"></div>
                        </div>
                        <div class="divider"><span>atau</span></div>
                        <div class="row no-gutters">
                            <div class="col-lg-6 pr-lg-1">
                                <a href="account.html#0" class="social_bt facebook">Login with Facebook</a>
                            </div>
                            <div class="col-lg-6 pl-lg-1">
                                <a href="<?php echo $login_google?>" class="social_bt google">Login with Google</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
