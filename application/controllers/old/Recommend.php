<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Recommend extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
    }

    public function index()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'recommend', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['shop'] = $this
            ->db
            ->select('shop.*, category.title AS category_title')
            ->join('category', 'category.id = shop.id_category', 'left')
            ->where(array('recommend_shop' => 'yes', 'shop.id_language' => $data['id_language']))
            ->order_by('shop.title', 'ASC')
            ->get('shop')
            ->result();
        $this->template->front('recommend', $data);
    }
}
