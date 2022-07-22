<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Testimonial extends CI_Controller
{
	public function __construct()
	{
		parent:: __construct();
		$this->load->library('main');
	}

	public function index()
	{
		$data = $this->main->data_front();
		$data['page'] = $this->db->where(array('type'=>'testimonial', 'id_language'=>$data['id_language']))->get('pages')->row();
		$data['testimonial_list'] = $this->db->where('use', 'yes')->order_by('id','DESC')->get('comment')->result();
		$this->template->front('testimonial', $data);
	}
}
