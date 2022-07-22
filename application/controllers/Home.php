<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
    }

    public function index()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'home', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['slider'] = $this->db->where(array('use' => 'yes', 'id_language' => $data['id_language']))->order_by('id', 'ASC')->get('slider')->result();

        $this->template->front_home('home', $data);

    }
}
