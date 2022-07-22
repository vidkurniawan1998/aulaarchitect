<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product extends CI_Controller
{
	public function __construct()
	{
		parent:: __construct();
		$this->load->model(array('m_tour', 'm_category','m_districts','m_provinces','m_subcategory'));
		$this->load->library('main');
		$this->main->check_admin();
	}

	public function index()
	{
		$data = $this->main->data_main();
		$data['tour'] = $this->db
			->select('t.*, c.title AS category_title')
			->where('t.id_language', $data['id_language'])
			->join('category c', 'c.id = t.id_category', 'left')
            ->order_by('t.id', 'DESC')
			->get('product t')
			->result();
		$data['category'] = $this->m_category->get_where(array('use' => 'yes', 'id_language' => $data['id_language']))->result();
		$data['subkategori'] = $this->m_subcategory->get_where(array('use' => 'yes', 'id_language' => $data['id_language']))->result();
		$where_province = array(
			'name' => 'bali'
		);
		$data['districts'] = $this->m_districts->get_data_bali();
		
		$this->template->set('tour', 'kt-menu__item--active');
		$this->template->set('breadcrumb', 'management produk');
		$this->template->load_admin('product/index', $data);

		
	}

	public function createprocess()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('title', 'Product Title', 'required');
		$this->form_validation->set_rules('title_sub', 'Product Title Sub', 'required');
		// $this->form_validation->set_rules('price', 'Product Price', 'required');
		$this->form_validation->set_rules('location', 'Location', 'required');
		$this->form_validation->set_rules('description', 'Product Description', 'required');
//		$this->form_validation->set_rules('thumbnail_alt', 'Thumbnail Alternative', 'required');
		$this->form_validation->set_rules('meta_title', 'Meta title', 'required');
		$this->form_validation->set_rules('meta_description', 'Meta description', 'required');
		$this->form_validation->set_rules('meta_keywords', 'meta_keywords', 'required');

		$this->form_validation->set_error_delimiters('', '');
		if ($this->form_validation->run() === FALSE) {
			echo json_encode(array(
				'status' => 'error',
				'message' => 'Isi form belum benar',
				'errors' => array(
					'title' => form_error('title'),
					'title_sub' => form_error('title_sub'),
					'location'  => form_error('location'),
                    'price' => form_error('price'),
                    'description' => form_error('description'),
					'thumbnail_alt' => form_error('thumbnail_alt'),
					'meta_title' => form_error('meta_title'),
					'meta_description' => form_error('meta_description'),
					'meta_keywords' => form_error('meta_keywords'),
				)
			));
		} else {

			$data = $this->input->post(NULL, TRUE);
			$data['slug'] = $this->main->slug($data['title']);

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
			// var_dump($data);

			$this->db->insert('product', $data);

			echo json_encode(array(
				'status' => 'success',
				'message' => 'data berhasil diinput',
			));
		}
	}

	public function delete($id)
	{
		$this->db->where('id', $id)->delete('product');
	}

	public function update()
	{
		$this->load->library('form_validation');
        $this->form_validation->set_rules('title', 'Product Title', 'required');
		$this->form_validation->set_rules('title_sub', 'Product Title Sub', 'required');
		$this->form_validation->set_rules('location', 'Location', 'required');
        // $this->form_validation->set_rules('price', 'Product Price', 'required');
//        $this->form_validation->set_rules('thumbnail_alt', 'Thumbnail Alternative', 'required');
        $this->form_validation->set_rules('meta_title', 'Meta title', 'required');
        $this->form_validation->set_rules('meta_description', 'Meta description', 'required');
        $this->form_validation->set_rules('meta_keywords', 'meta_keywords', 'required');
		$this->form_validation->set_error_delimiters('', '');

		if ($this->form_validation->run() === FALSE) {
			echo json_encode(array(
				'status' => 'error',
				'message' => 'Isi form belum benar',
				'errors' => array(
                    'title' => form_error('title'),
					'title_sub' => form_error('title_sub'),
					'location'  => form_error('location'),
                    'price' => form_error('price'),
                    'description' => form_error('description'),
                    'thumbnail_alt' => form_error('thumbnail_alt'),
                    'meta_title' => form_error('meta_title'),
                    'meta_description' => form_error('meta_description'),
                    'meta_keywords' => form_error('meta_keywords'),
				)
			));
		} else {
			$id = $this->input->post('id');
			$data = $this->input->post(NULL, TRUE);
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
					$data['thumbnail'] = $response['filename'];
				}
			}

			$this->db->where($where)->update('product', $data);


			echo json_encode(array(
				'status' => 'success',
				'message' => 'data berhasil diperbarui',
			));

		}
	}

}
