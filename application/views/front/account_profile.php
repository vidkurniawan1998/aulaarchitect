<main class="bg_gray">

    <div class="container margin_30">
        <div class="page_header">
            <div class="breadcrumbs">
                <ul>
                    <li><a href="<?php echo site_url() ?>">Beranda</a></li>
                    <li>Profil</li>
                </ul>
            </div>
            <h1>Profil Saya</h1>
        </div>

        <div class="row justify-content-center">
            <div class="col-xl-12 col-lg-12 col-md-12">
                <div class="box_account">
                    <h3 class="new_client">New Client</h3> <small class="float-right pt-2">* Required Fields</small>
                    <div class="form_container">
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email_2" placeholder="Email*">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="password_in_2" id="password_in_2" value="" placeholder="Password*">
                        </div>
                        <hr>
                        <div class="form-group">
                            <label class="container_radio" style="display: inline-block; margin-right: 15px;">Private
                                <input type="radio" name="client_type" checked value="private">
                                <span class="checkmark"></span>
                            </label>
                            <label class="container_radio" style="display: inline-block;">Company
                                <input type="radio" name="client_type" value="company">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <div class="private box">
                            <div class="row no-gutters">
                                <div class="col-6 pr-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Name*">
                                    </div>
                                </div>
                                <div class="col-6 pl-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Last Name*">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Full Address*">
                                    </div>
                                </div>
                            </div>
                            <!-- /row -->
                            <div class="row no-gutters">
                                <div class="col-6 pr-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="City*">
                                    </div>
                                </div>
                                <div class="col-6 pl-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Postal Code*">
                                    </div>
                                </div>
                            </div>
                            <!-- /row -->

                            <div class="row no-gutters">
                                <div class="col-6 pr-1">
                                    <div class="form-group">
                                        <div class="custom-select-form">
                                            <select class="wide add_bottom_10" name="country" id="country">
                                                <option value="" selected>Country*</option>
                                                <option value="Europe">Europe</option>
                                                <option value="United states">United states</option>
                                                <option value="Asia">Asia</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 pl-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Telephone *">
                                    </div>
                                </div>
                            </div>
                            <!-- /row -->

                        </div>
                        <!-- /private -->
                        <div class="company box" style="display: none;">
                            <div class="row no-gutters">
                                <div class="col-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Company Name*">
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Full Address">
                                    </div>
                                </div>
                            </div>
                            <!-- /row -->
                            <div class="row no-gutters">
                                <div class="col-6 pr-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="City*">
                                    </div>
                                </div>
                                <div class="col-6 pl-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Postal Code*">
                                    </div>
                                </div>
                            </div>
                            <!-- /row -->
                            <div class="row no-gutters">
                                <div class="col-6 pr-1">
                                    <div class="form-group">
                                        <div class="custom-select-form">
                                            <select class="wide add_bottom_10" name="country" id="country_2">
                                                <option value="" selected>Country*</option>
                                                <option value="Europe">Europe</option>
                                                <option value="United states">United states</option>
                                                <option value="Asia">Asia</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 pl-1">
                                    <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Telephone *">
                                    </div>
                                </div>
                            </div>
                            <!-- /row -->
                        </div>
                        <!-- /company -->
                        <hr>
                        <div class="form-group">
                            <label class="container_check">Accept <a href="account.html#0">Terms and conditions</a>
                                <input type="checkbox">
                                <span class="checkmark"></span>
                            </label>
                        </div>
                        <div class="text-center"><input type="submit" value="Update Profil" class="btn_1 full-width"></div>
                    </div>
                    <!-- /form_container -->
                </div>
                <!-- /box_account -->
            </div>
        </div>
        <!-- /row -->
    </div>
    <!-- /container -->
</main>
<!--/main-->