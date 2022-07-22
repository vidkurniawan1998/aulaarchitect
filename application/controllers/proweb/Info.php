<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Info extends CI_Controller
{
	public function __construct()
	{
		parent:: __construct();
		$this->load->model('m_info');
		$this->load->library('main');
		$this->main->check_admin();
	}

	public function index()
	{
		$data = $this->main->data_main();
		$data['info'] = $this->m_info->get_data()->result();
		$this->template->set('info', 'kt-menu__item--active');
		$this->template->set('breadcrumb', 'Management Info Website');
		$this->template->load_admin('info/index', $data);
	}

	public function createprocess()
	{
		$this->load->library('form_validation');
		// $this->form_validation->set_rules('type', 'Type', 'required');
		// $this->form_validation->set_rules('title', 'Title', 'required');
		$this->form_validation->set_rules('description', 'Description', 'required');

		$this->load->model('m_info');

		$this->form_validation->set_error_delimiters('', '');

		if ($this->form_validation->run() === FALSE) {
			echo json_encode(array(
				'status' => 'error',
				'message' => 'Isi form belum benar',
				'errors' => array(
					// 'title' => form_error('title'),
					// 'type' => form_error('type'),
					'description' => form_error('description'),
				)
			));
		} else {

			$data = $this->input->post(NULL);

			$this->m_info->input_data($data);

			echo json_encode(array(
				'status' => 'success',
				'message' => 'data berhasil diinput',
			));
		}
	}

	public function delete($id)
	{
		$where = array('id' => $id);
//		$row = $this->m_info->row_data($where);
//		$this->main->delete_file($row->thumbnail);
		$this->m_info->delete_data($where);
	}

	public function update()
	{
		$this->load->library('form_validation');
		// $this->form_validation->set_rules('type', 'Type', 'required');
		// $this->form_validation->set_rules('title', 'Title', 'required');
		$this->form_validation->set_rules('description', 'Description', 'required');
		$this->form_validation->set_error_delimiters('', '');

		if ($this->form_validation->run() === FALSE) {
			echo json_encode(array(
				'status' => 'error',
				'message' => 'Isi form belum benar',
				'errors' => array(
					// 'title' => form_error('title'),
					// 'type' => form_error('type'),
					'description' => form_error('description'),
				)
			));
		} else {

			$id = $this->input->post('id');
			$data = $this->input->post(NULL);
			$where = array(
				'id' => $id
			);

			$this->m_info->update_data($where, $data);
			echo json_encode(array(
				'status' => 'success',
				'message' => 'data berhasil diinput'
			));
		}
	}
}
