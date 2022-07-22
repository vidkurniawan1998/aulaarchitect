<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class New_project extends CI_Controller
{
	public function __construct()
	{
		parent:: __construct();
		$this->load->model('m_new_project');
		$this->load->library('main');
		$this->main->check_admin();
	}

	public function index()
	{
		$data = $this->main->data_main();
		$data['new_project'] = $this
            ->db
            ->select('*')
            ->where('id_language', $data['id_language'])
            ->order_by('id', 'DESC')
            ->get('new_project')
            ->result();
		$this->template->set('new_project', 'kt-menu__item--active');
		$this->template->set('breadcrumb', 'Management New Project');
		$this->template->load_admin('new_project/index', $data);
	}

	public function createprocess()
	{
		$this->load->library('form_validation');
//		$this->form_validation->set_rules('id_team', 'Team', 'required');
//		$this->form_validation->set_rules('id_blog_category', 'Blog Category', 'required');
		$this->form_validation->set_rules('title', 'Title', 'required');
		$this->form_validation->set_rules('description', 'Description', 'required');
		$this->form_validation->set_rules('thumbnail_alt', 'Thumbnail Alt', 'required');
		$this->form_validation->set_rules('meta_title', 'Meta title', 'required');
		$this->form_validation->set_rules('meta_description', 'Meta Description', 'required');
		$this->form_validation->set_rules('meta_keywords', 'Meta Keywords', 'required');

		$this->load->model('m_new_project');

		$this->form_validation->set_error_delimiters('', '');

		if ($this->form_validation->run() === FALSE) {
			echo json_encode(array(
				'status' => 'error',
				'message' => 'Isi form belum benar',
				'errors' => array(
//					'id_team' => form_error('id_team'),
//					'id_blog_category' => form_error('id_blog_category'),
					'title' => form_error('title'),
					'description' => form_error('description'),
					'thumbnail_alt' => form_error('thumbnail_alt'),
					'meta_title' => form_error('meta_title'),
					'meta_description' => form_error('meta_description'),
					'meta_keywords' => form_error('meta_keywords'),
				)
			));
		} else {

			$data = $this->input->post(NULL);

			if ($_FILES['thumbnail']['name']) {
				$response = $this->main->upload_file_thumbnail('thumbnail', $this->input->post('title'));
				if (!$response['status']) {
					echo json_encode(array(
						'status' => 'error',
						'message' => 'Isi form belum benar',
						'errors' => array(
							'thumbnail' => $response['message']
						)
					));
					exit;
				} else {
					$data['thumbnail'] = $response['filename'];
				}
			}

			$data['created_at'] = date('Y-m-d H:i:s');
			$data['slug'] = $this->main->slug($data['title']);

			$this->m_new_project->input_data($data);

			echo json_encode(array(
				'status' => 'success',
				'message' => 'data berhasil diinput',
			));
		}
	}

	public function delete($id)
	{
		$where = array('id' => $id);
		$row = $this->m_new_project->row_data($where);
		$this->main->delete_file($row->thumbnail);
		$this->m_new_project->delete_data($where);
	}

	public function update()
	{
		$this->load->library('form_validation');
//		$this->form_validation->set_rules('id_team', 'Team', 'required');
//		$this->form_validation->set_rules('id_blog_category', 'Blog Category', 'required');
		$this->form_validation->set_rules('title', 'Title', 'required');
		$this->form_validation->set_rules('meta_title', 'Meta title', 'required');
		$this->form_validation->set_rules('meta_description', 'Meta Description', 'required');
		$this->form_validation->set_rules('meta_keywords', 'Meta Keywords', 'required');
		$this->form_validation->set_error_delimiters('', '');

		if ($this->form_validation->run() === FALSE) {
			echo json_encode(array(
				'status' => 'error',
				'message' => 'Isi form belum benar',
				'errors' => array(
					'title' => form_error('title'),
//					'id_team' => form_error('id_team'),
//					'id_blog_category' => form_error('id_blog_category'),
					'meta_title' => form_error('meta_title'),
					'meta_description' => form_error('meta_description'),
					'meta_keywords' => form_error('meta_keywords'),
				)
			));
		} else {

			$id = $this->input->post('id');
			$data = $this->input->post(NULL);
            $data['slug'] = $this->main->slug($data['title']);
			$where = array(
				'id' => $id
			);

			if ($_FILES['thumbnail']['name']) {
				$response = $this->main->upload_file_thumbnail('thumbnail', $this->input->post('title'));
				if (!$response['status']) {
					echo json_encode(array(
						'status' => 'error',
						'message' => 'Isi form belum benar',
						'errors' => array(
							'thumbnail' => $response['message']
						)
					));
					exit;
				} else {
//					$row_data = $this->m_new_project->row_data($where);
//					$this->main->delete_file($row_data->thumbnail);

					$data['thumbnail'] = $response['filename'];
				}
			}


			$this->m_new_project->update_data($where, $data);
			echo json_encode(array(
				'status' => 'success',
				'message' => 'data berhasil diinput'
			));
		}
	}
}
