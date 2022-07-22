<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class New_project extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('main');
    }

    public function index()
    {
        $offset = $this->uri->segment(2);
        $perpage = 6;
        if($offset != null) {
            $offset = ($offset - 1) * $perpage;
        }

        $data = $this->main->data_front();

        $data['page'] = $this->db->where(array('type' => 'new_project', 'id_language' => $data['id_language']))->get('pages')->row();

        $jumlah_data = $this->db
            ->where(array(
                'id_language' => $data['id_language'],
                'use'=>'yes'
            ))
            ->get('new_project')
            ->num_rows();

        $this->load->library('pagination');
        $config['base_url'] = site_url('blog');
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = $perpage;

        $this->pagination->initialize($config);

        $data['new_project_list'] = $this
            ->db
            ->select('*')
            ->where(array(
                'id_language' => $data['id_language'],
                'use'=>'yes'
            ))
            ->order_by('id', 'DESC')
            ->get('new_project', $perpage, $offset)
            ->result();

        $this->template->front('new_project', $data);
    }

    public function detail($slug)
    {
        $data = $this->main->data_front();
        $data['page'] = $this
            ->db
            ->select('*')
            ->where('slug', $slug)
            ->order_by('id', 'DESC')
            ->get('new_project')
            ->row();
        $data['page']->type = 'new_project';
        $data['on_going_project'] = $this->db
            ->select('*')
            ->order_by('id', 'DESC')
            ->limit(6)
            ->get('new_project')
            ->result();

        $this->template->front('new_project_detail', $data);
    }
}
