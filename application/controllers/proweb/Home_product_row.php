<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home_product_row extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->model('m_pages');
        $this->load->library('main');
        $this->main->check_admin();
    }

    public function index()
    {
        $data = $this->main->data_main();
        $where = array(
            'type' => 'home_product_row',
            'id_language' => $data['id_language']
        );

        $data['row'] = $this->m_pages->row_data($where);
        $data['type'] = 'home_product_row';
        $data['product_list'] = $this->db->where('use', 'yes')->order_by('title', 'ASC')->get('product')->result();
        $this->template->set('about', 'kt-menu__item--active');
        $this->template->set('breadcrumb', 'Management ' . $data['row']->title);
        $this->template->load_admin('home_product_row/index', $data);
    }

    public function update()
    {
        $data_main = $this->main->data_main();

        $data = $this->input->post(NULL, TRUE);
        $data['data_1'] = json_encode($data['data_1']);
        $data['slug'] = $this->main->slug($data['title_menu']);

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
//					$row_data = $this->m_blog->row_data($where);
//					$this->main->delete_file($row_data->thumbnail);

                $data['thumbnail'] = $response['filename'];
            }
        }

        if ($_FILES['file']['name']) {
            $response = $this->main->upload_file_thumbnail('file', $this->input->post('title'));
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
//					$row_data = $this->m_blog->row_data($where);
//					$this->main->delete_file($row_data->thumbnail);

                $data['file'] = $response['filename'];
            }
        }


        $check = $this
            ->db
            ->where(array(
                'id_language' => $data_main['id_language'],
                'type' => 'home_product_row'
            ))
            ->get('pages')
            ->num_rows();

        if ($check == 0) {
            $data['id_language'] = $data_main['id_language'];
            $data['status_seo'] = 'no';

            $this->m_pages->input_data($data);
        } else {
            $where = array(
                'type' => 'home_product_row'
            );
            $this->m_pages->update_data($where, $data);
        }

        echo json_encode(array(
            'status' => 'success',
            'message' => 'data berhasil diinput'
        ));
    }
}
