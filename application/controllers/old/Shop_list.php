<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Shop_list extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
    }

    public function index($type = 'all')
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'list_shop', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['shop_total'] = $this->db->where(array('id_language' => $data['id_language'], 'use' => 'yes'))->get('shop')->num_rows();
        $data['kategori_active'] = $type;

        if ($type == 'all') {
            $data['shop'] = $this
                ->db
                ->select('shop.*, category.title AS category_title')
                ->join('category', 'category.id = shop.id_category', 'left')
                ->where(array('shop.use' => 'yes'))
                ->order_by('shop.title', 'ASC')
                ->get('shop')
                ->result();
        } else {
            $data['shop'] = $this
                ->db
                ->select('shop.*, category.title AS category_title')
                ->join('category', 'category.id = shop.id_category', 'left')
                ->where(array('shop.use' => 'yes', 'shop.id_category' => $type))
                ->order_by('shop.title', 'ASC')
                ->get('shop')
                ->result();
        }

        $this->template->front('shop_list', $data);
    }
}
