<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Product_gallery extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->model('m_product_gallery');
        $this->load->library('main');
        $this->main->check_admin();
    }

    public function list($id_product = '')
    {
        $data = $this->main->data_main();
        $data['gallery'] = $this->m_product_gallery->get_where(array('id_product' => $id_product))->result();
        $data['id_product'] = $id_product;
        $this->template->set('gallery', 'kt-menu__item--active');
        $this->template->set('breadcrumb', 'management Gallery Photo');
        $this->template->load_admin('product_gallery/index', $data);
    }

    public function createprocess($id_product = '')
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('thumbnail_alt', 'Thumbnail Alt', 'required');
        $this->form_validation->set_error_delimiters('', '');

        $title = $this->input->post('title');

        if ($this->form_validation->run() === FALSE) {
            echo json_encode(array(
                'status' => 'error',
                'message' => 'Isi form belum benar',
                'errors' => array(
                    'title' => form_error('title'),
                    'description' => form_error('description'),
                    'thumbnail_alt' => form_error('thumbnail_alt'),
                )
            ));
        } else {

            $data = $this->input->post(NULL, TRUE);
            $data['id_product'] = $id_product;

            if ($_FILES['thumbnail']['name']) {
                $response = $this->main->upload_file_thumbnail('thumbnail', $title);
                if (!$response['status']) {
                    echo json_encode(array(
                        'status' => 'error',
                        'message' => 'Isi form belum benar',
                        'errors' => array(
                            'image' => $response['message']
                        )
                    ));
                    exit;
                } else {
                    $data['thumbnail'] = $response['filename'];
                }
            }

            if ($data['use_thumbnail'] == 'yes') {
                $where = array(
                    'id_product' => $id_product
                );
                $update = array(
                    'use_thumbnail' => 'no'
                );
                $this->m_product_gallery->update_data($where, $update);
            }

            $this->m_product_gallery->input_data($data);

            echo json_encode(array(
                'status' => 'success',
                'message' => 'data berhasil diinput',
            ));
        }
    }

    public function delete($id)
    {

        $where = array('id' => $id);
//		$row = $this->m_gallery->row_data($where);
//		$this->main->delete_file($row->thumbnail);
        $this->m_product_gallery->delete_data($where);
    }

    public function update($id_product = '')
    {
        $this->load->library('form_validation');
        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('thumbnail_alt', 'Thumbnail Alt', 'required');
        $this->form_validation->set_error_delimiters('', '');

        if ($this->form_validation->run() === FALSE) {
            echo json_encode(array(
                'status' => 'error',
                'message' => 'Isi form belum benar',
                'errors' => array(
                    'title' => form_error('title'),
                    'description' => form_error('description'),
                    'thumbnail_alt' => form_error('thumbnail_alt'),
                )
            ));
        } else {

            $this->load->model('m_slider');
            if ($this->form_validation->run() === FALSE) {
                echo json_encode(array(
                    'status' => 'error',
                    'message' => 'Isi form belum benar2',
                    'errors' => array(
                        'title' => form_error('title'),
                        'description' => form_error('description'),
                    )
                ));
            } else {

                $id = $this->input->post('id');
                $data = $this->input->post(NULL, TRUE);
                unset($data['id']);
                $where = array(
                    'id' => $id
                );

                if ($_FILES['thumbnail']['name']) {
                    $response = $this->main->upload_file_thumbnail('thumbnail', $data['title']);
                    if (!$response['status']) {
                        echo json_encode(array(
                            'status' => 'error',
                            'message' => 'Isi form belum benar',
                            'errors' => array(
                                'image' => $response['message']
                            )
                        ));
                        exit;
                    } else {
//						$row_data = $this->m_gallery->row_data($where);
//						$this->main->delete_file($row_data->thumbnail);
                        $data['thumbnail'] = $response['filename'];
                    }
                }

                if ($data['use_thumbnail'] == 'yes') {
                    $where = array(
                        'id_product' => $id_product
                    );
                    $update = array(
                        'use_thumbnail' => 'no'
                    );
                    $this->m_product_gallery->update_data($where, $update);
                }

                $this->m_product_gallery->update_data(array('id' => $id), $data);
                echo json_encode(array(
                    'status' => 'success',
                    'message' => 'data berhasil diinputkan'
                ));
            }
        }
    }
}
