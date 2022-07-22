<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Gallery_photo extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
    }

    public function index()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'gallery_photo', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['gallery_list'] = $this->db->where(array('use'=>'yes'))->order_by('id','DESC')->get('gallery')->result();
        $this->template->front('gallery_photo', $data);
    }
}
