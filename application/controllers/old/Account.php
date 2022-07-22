<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Account extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
    }

    public function index()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'contact_us', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['captcha'] = $this->main->captcha();
        $this->template->front('account', $data);
    }

    public function signin()
    {
        $this->load->library('google');
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'contact_us', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['captcha'] = $this->main->captcha();

        include_once APPPATH . "vendor/autoload.php";
        $google_client = new Google_Client();
        $google_client->setClientId('407635300401-ftapk4kgm8gphvnkdpv0jrber6r426if.apps.googleusercontent.com'); //Define your ClientID
        $google_client->setClientSecret('h9rJZNh3aL1acepQ5UHHR-Sz'); //Define your Client Secret Key
        $google_client->setRedirectUri('http://dev.redsystem.id/ecommerce/account/signin_google_success'); //Define your Redirect Uri
        $google_client->addScope('email');
        $google_client->addScope('profile');


        $data['login_google'] = $google_client->createAuthUrl();


        $this->template->front('account_signin', $data);
    }

    public function signin_google_success()
    {
        include_once APPPATH . "vendor/autoload.php";
        $google_client = new Google_Client();
        $google_client->setClientId('407635300401-ftapk4kgm8gphvnkdpv0jrber6r426if.apps.googleusercontent.com'); //Define your ClientID
        $google_client->setClientSecret('h9rJZNh3aL1acepQ5UHHR-Sz'); //Define your Client Secret Key
        $google_client->setRedirectUri('http://dev.redsystem.id/ecommerce/account/signin_google_success'); //Define your Redirect Uri
        $google_client->addScope('email');
        $google_client->addScope('profile');

        $token = $google_client->fetchAccessTokenWithAuthCode($_GET["code"]);

        if (!isset($token["error"])) {
            $google_client->setAccessToken($token['access_token']);

            $this->session->set_userdata('access_token', $token['access_token']);

            $google_service = new Google_Service_Oauth2($google_client);

            $data = $google_service->userinfo->get();

            $current_datetime = date('Y-m-d H:i:s');

            //update data
            $user_data = array(
                'first_name' => $data['given_name'],
                'last_name' => $data['family_name'],
                'email_address' => $data['email'],
                'profile_picture' => $data['picture'],
                'updated_at' => $current_datetime,
                'login_oauth_uid' => $data['id'],
                'created_at' => $current_datetime
            );

            $this->session->set_userdata('user_data', $user_data);
        }

        echo json_encode($data);
    }

    function signin_facebook_success()
    {
        $this->load->library('facebook');
        if ($this->facebook->is_authenticated()) {
            // Get user info from facebook
            $fbUser = $this->facebook->request('get', '/me?fields=id,first_name,last_name,email,link,gender,picture');

            // Preparing data for database insertion
            $userData['oauth_provider'] = 'facebook';
            $userData['oauth_uid'] = !empty($fbUser['id']) ? $fbUser['id'] : '';;
            $userData['first_name'] = !empty($fbUser['first_name']) ? $fbUser['first_name'] : '';
            $userData['last_name'] = !empty($fbUser['last_name']) ? $fbUser['last_name'] : '';
            $userData['email'] = !empty($fbUser['email']) ? $fbUser['email'] : '';
            $userData['gender'] = !empty($fbUser['gender']) ? $fbUser['gender'] : '';
            $userData['picture'] = !empty($fbUser['picture']['data']['url']) ? $fbUser['picture']['data']['url'] : '';
            $userData['link'] = !empty($fbUser['link']) ? $fbUser['link'] : 'https://www.facebook.com/';

            // Insert or update user data to the database
            $userID = $this->user->checkUser($userData);

            // Check user data insert or update status
            if (!empty($userID)) {
                $data['userData'] = $userData;

                // Store the user profile info into session
                $this->session->set_userdata('userData', $userData);
            } else {
                $data['userData'] = array();
            }

            // Facebook logout URL
            $data['logoutURL'] = $this->facebook->logout_url();
        } else {
            // Facebook authentication url
//            $data['authURL'] = $this->facebook->login_url();

            redirect('login');
        }
    }

    function facebook_logout() {
        // Remove local Facebook session
        $this->facebook->destroy_session();
        // Remove user data from session
        $this->session->unset_userdata('userData');
        // Redirect to login page
        redirect('account/facebook_logout');
    }

    function Is_already_register($id)
    {
        return TRUE;
    }

    public function signup()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'contact_us', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['captcha'] = $this->main->captcha();
        $this->template->front('account_signup', $data);
    }

    public function profile()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'contact_us', 'id_language' => $data['id_language']))->get('pages')->row();
        $this->template->front('account_profile', $data);
    }

    public function help()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'contact_us', 'id_language' => $data['id_language']))->get('pages')->row();
        $this->template->front('account_help', $data);
    }
}
