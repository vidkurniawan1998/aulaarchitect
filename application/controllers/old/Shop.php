<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Shop extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
    }

    public function track_order()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'contact_us', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['captcha'] = $this->main->captcha();
        $this->template->front('track_order', $data);
    }

    public function history_order()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'history_order', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['captcha'] = $this->main->captcha();
        $this->template->front('history_order', $data);
    }

    public function wishlist()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'history_order', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['captcha'] = $this->main->captcha();
        $this->template->front('wishlist', $data);
    }

    public function cart()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'history_order', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['captcha'] = $this->main->captcha();
        $this->template->front('account_cart', $data);
    }

    public function checkout()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'history_order', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['captcha'] = $this->main->captcha();
        $this->template->front('account_checkout', $data);
    }
}
