<?php
if (!defined('BASEPATH')) exit('No direct script access allowed');

class Google extends Google_Client {
    function __construct() {
        parent::__construct();
        $this->setAuthConfigFile(APPPATH . '../client_secret.json');
//
//        $this->setClientId('407635300401-ftapk4kgm8gphvnkdpv0jrber6r426if.apps.googleusercontent.com'); //Define your ClientID
//        $this->setClientSecret('h9rJZNh3aL1acepQ5UHHR-Sz'); //Define your Client Secret Key
        $this->setRedirectUri('http://localhost/gtn_ecommerce/account/signin_google_success');
        $this->setScopes(array(
            "https://www.googleapis.com/auth/plus.login",
            "https://www.googleapis.com/auth/userinfo.email",
            "https://www.googleapis.com/auth/userinfo.profile",
            "https://www.googleapis.com/auth/plus.me",
        ));
    }
}