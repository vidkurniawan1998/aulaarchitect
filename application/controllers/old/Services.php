<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Services extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
    }

    public function index()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'services', 'id_language' => $data['id_language']))->get('pages')->row();
        //$data['services'] = $this->db->where('use', 'yes')->order_by('title', 'ASC')->get('tour')->result();

        $services_data = $this->db->where('use', 'yes')->order_by('title', 'ASC')->get('tour')->result();
        $services_left = array();
        $services_right = array();
        foreach($services_data as $key => $row) {
            if($key % 2) {
                $services_left[$key] = $row;
            } else {
                $services_right[$key] = $row;
            }
        }

        $data['services_left'] = $services_left;
        $data['services_right'] = $services_right;

        $this->template->front('layanan_kami', $data);
    }

    public function detail($id = '')
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('id'=>$id))->get('tour')->row();
        $data['page']->type = 'services';
        $this->template->front('layanan_detail', $data);
    }
}
