<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Not_found extends CI_Controller
{
	public function __construct()
	{
		parent:: __construct();
		$this->load->library('main');
	}

	public function index()
	{
		$data = $this->main->data_front();
		$data['page'] = $this->db->where('type', 'home')->get('pages')->row();
		$this->template->front('not_found', $data);
	}
}
