<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Product extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
    }

    public function list_product()
    {
        $data = $this->main->data_front();

//        echo json_encode($data['cart_content']);
//        exit;

        $data['page'] = $this
            ->db
            ->where(array(
                'type' => 'category',
                'id_language' => $data['id_language']
            ))
            ->get('pages')
            ->row();
        $data['total_product'] = 0;

        foreach ($data['subcategory_menu'] as $row) {
            $row->product_total = $this
                ->db
                ->where(array(
                    'id' => $row->id,
                    'use' => 'yes'
                ))
                ->get('product')
                ->num_rows();

            $data['product_total'] += $row->product_total;
        }

        $perpage = 3;
        $offset = $this->uri->segment(2);
        $base_url_pagination = site_url('produk');
        $jumlah_data = $this
            ->db
            ->where(array(
                'id_language' => $data['id_language'],
                'use' => 'yes'
            ))
            ->get('product')
            ->num_rows();


        $this->load->library('pagination');
        $config['base_url'] = $base_url_pagination;
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = $perpage;
        $config['reuse_query_string'] = true;

        $this->pagination->initialize($config);

        $data['product_list'] = $this
            ->db
            ->select('p.*, c.title AS category_title')
            ->join('category c', 'c.id = p.id_category', 'left')
            ->where(array(
                'p.id_language' => $data['id_language'],
                'p.use' => 'yes',
            ))
            ->order_by('category_title', 'ASC')
            ->order_by('p.title', 'ASC')
            ->get('product p', $perpage, $offset)
            ->result();

        $this->template->front('product_list', $data);
    }
    public function getsubcategory()
    {
        $id_category = $this->input->post('id_category');
        $list_subcategory = $this
        ->db
        ->query('SELECT id, title from subkategori where id_category = '.$id_category.' ')
        ->result();
        $users_arr = array();
        foreach($list_subcategory as $row){
            $id_subcategory = $row->id;
            $title = $row->title;
      
            $users_arr[] = array("id_subcategory" => $id_subcategory, "title" => $title);
         }
         // encoding array to json format
        echo json_encode($users_arr);
    }
    public function list_category($slug, $step)
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where('slug', $slug)->get('category')->row();
        $data['page']->type = $slug;
        $data['category'] = $this->db->where(array('use' => 'yes'))->order_by('title', 'ASC')->get('category')->result();

        $data['latest_project'] = $this
            ->db
            ->select('p.title, p.created_at, pc.title AS category_title')
            ->join('category AS pc', 'pc.id = p.id_category')
            ->where(array(
                'p.use' => 'yes',
                'p.id_language' => $data['id_language'],
                'p.id_category' => $data['page']->id,
            ))
            ->order_by('p.id', 'DESC')
            ->limit(4)
            ->get('product p')
            ->result();
        foreach($data['category'] as $row) {
            $row->total = $this
                ->db
                ->where(array(
                    'use' => 'yes',
                    'id_category' => $row->id
                ))
                ->get('product')
                ->num_rows();
        }

        $perpage = 6;
        $offset = $this->uri->segment(3);
        if($offset != null) {
            $offset = ($offset - 1) * $perpage;
        }
        $base_url_pagination = site_url('project/'.$slug);
        $id_category = $this->db->select('id')->where('slug', $slug)->get('category')->row()->id;
        $jumlah_data = $this
            ->db
            ->where(array(
                'id_category' => $id_category
            ))
            ->get('product')
            ->num_rows();


        $this->load->library('pagination');
        $config['base_url'] = $base_url_pagination;
        $config['uri_segment'] = 3;
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = $perpage;

        $this->pagination->initialize($config);

        // $data['product_list'] = $this
        //     ->db
        //     ->select('p.*, c.title AS category_title')
        //     ->join('category c', 'c.id = p.id_category', 'inner')
        //     ->where(array(
        //         'p.id_category' => $id_category,
        //         'p.use' => 'yes',
        //     ))
        //     ->order_by('category_title', 'ASC')
        //     ->order_by('p.title', 'ASC')
        //     ->get('product p', $perpage, $offset)
        //     ->result();
        $data['product_list'] = $this
            ->db
            ->select('p.*, c.title AS category_title')
            ->join('category c', 'c.id = p.id_category', 'inner')
            ->join('subkategori sc', 'sc.id_category = c.id', 'inner')
            ->where(array(
                'p.id_category' => $id_category,
                'p.use' => 'yes',
                'sc.id_category' => $id_category
            ))
            ->order_by('category_title', 'ASC')
            ->order_by('p.title', 'ASC')
            // ->order_by('p.title', 'ASC')
            ->group_by('p.id')
            ->get('product p', $perpage, $offset)
            ->result();
        

        // $data['product_list'] = $this
        //     ->db
        //     ->query("SELECT p.*, c.title as category_title from product p INNER JOIN category c on c.id = p.id_category  INNER JOIN subkategori sc on sc.id_category = c.id
        //     WHERE p.id_category = $id_category AND  sc.id_category = $id_category GROUP by p.id order by category_title ASC,p.title ASC limit $perpage ,2")->result();
        
        // echo $id_category;
        // echo "SELECT p.*, c.title as category_title from product p INNER JOIN category c on c.id = p.id_category  INNER JOIN subkategori sc on sc.id_category = c.id
        //  WHERE p.id_category = $id_category AND  sc.id_category = $id_category GROUP by p.id order by category_title ASC,p.title ASC";
        // var_dump(s$data['product_list']);
        // die();
        
        $this->template->front('product_list', $data);
    }

    public function list_subcategory($slug, $step)
    {
        $data = $this->main->data_front();
        // echo $slug;
        // die();
        $data['page'] = $this->db->where('slug', $step)->get('subkategori')->row();
        $data['page']->type = $slug;
        $data['category'] = $this->db->where(array('use' => 'yes'))->order_by('title', 'ASC')->get('category')->result();

        $data['latest_project'] = $this
            ->db
            ->select('p.title, p.created_at, pc.title AS category_title')
            ->join('category AS pc', 'pc.id = p.id_category')
            ->where(array(
                'p.use' => 'yes',
                'p.id_language' => $data['id_language'],
                'p.id_category' => $data['page']->id,
            ))
            ->order_by('p.id', 'DESC')
            ->limit(4)
            ->get('product p')
            ->result();
        foreach($data['category'] as $row) {
            $row->total = $this
                ->db
                ->where(array(
                    'use' => 'yes',
                    'id_category' => $row->id
                ))
                ->get('product')
                ->num_rows();
        }

        $submenu_category = $this
            ->db
            ->select('title, id,slug, id_category')
            ->where(array(
                'use' => 'yes',
                'view_top_menu' => 'yes',
                'id_language' => $data['id_language']
            ))
            ->order_by('title', 'ASC')
            ->get('subkategori')
            ->result();

        $data['submenu_category'] = $submenu_category;

        $perpage = 8; //sebelumnya jumlahnya ada 6 //perpage di ganti dari 3 kolom jadi 4 kolom
        $offset = $this->uri->segment(5);
        if($offset != null) {
            $offset = ($offset - 1) * $perpage;
        }
        $parent_category = $this->uri->segment(2);
    
        $base_url_pagination = site_url('project/'.$parent_category.'/sub/'.$step);
        $id_category = $this->db->select('id')->where('slug', $slug)->get('category')->row()->id;
        $id_sub = $this->db->select('id')->where('slug', $step)->get('subkategori')->row()->id;
        $jumlah_data = $this
            ->db
            ->where(array(
                'id_subcategory' => $id_sub
            ))
            ->get('product')
            ->num_rows();

            // echo $jumlah_data;
            // die();

        // var_dump($jumlah_data);
        // die();
        $this->load->library('pagination');
        $config['base_url'] = $base_url_pagination;
        $config['uri_segment'] = 5;
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = $perpage;

        $this->pagination->initialize($config);

        // $data['product_list'] = $this
        //     ->db
        //     ->select('p.*, c.title AS category_title')
        //     ->join('category c', 'c.id = p.id_category', 'inner')
        //     ->where(array(
        //         'p.id_category' => $id_category,
        //         'p.use' => 'yes',
        //     ))
        //     ->order_by('category_title', 'ASC')
        //     ->order_by('p.title', 'ASC')
        //     ->get('product p', $perpage, $offset)
        //     ->result();
            // echo $offset;
            // die();
        $data['product_list'] = $this
            ->db
            ->select('p.*, c.title AS category_title')
            ->join('category c', 'c.id = p.id_category', 'inner')
            ->join('subkategori sc','sc.id_category = c.id', 'inner')
            ->where(array(
                'p.id_category' => $id_category,
                'p.id_subcategory'=> $id_sub,
                'p.use' => 'yes',
            ))
            ->order_by('category_title', 'ASC')
            ->order_by('p.title', 'ASC')
            ->group_by('p.id')
            ->get('product p', $perpage, $offset)
            ->result();

        // $data['product_list'] = $this
        //     ->db
        //     ->query("SELECT p.*, c.title as category_title from product p INNER JOIN category c on c.id = p.id_category  INNER JOIN subkategori sc on sc.id_category = c.id
        //     WHERE p.id_category = $id_category AND  p.id_subcategory = $id_sub GROUP by p.id order by category_title ASC,p.title ASC")->result();
        // echo $id_category;
        // echo "SELECT p.*, c.title as category_title from product p INNER JOIN category c on c.id = p.id_category  INNER JOIN subkategori sc on sc.id_category = c.id
        //  WHERE p.id_category = $id_category AND  p.id_subcategory = $id_sub GROUP by p.id order by category_title ASC,p.title ASC";
        // // var_dump($data['product_list']);
        // die();
        // echo $id_sub;
        // die();
       
        $this->template->front('product_list', $data);
    }

    private function list_row()
    {
        $data = $this->main->data_front();
        $data['page'] = $this
            ->db
            ->where(array(
                'type' => 'category',
                'id_language' => $data['id_language']
            ))
            ->get('pages')
            ->row();
        $data['category'] = $this
            ->db
            ->select('title,id')
            ->where(array(
                'use' => 'yes',
                'id_language' => $data['id_language']
            ))
            ->order_by('title', 'ASC')
            ->get('category')
            ->result();

        $jumlah_data = $this
            ->db
            ->where(array(
                'id_language' => $data['id_language']
            ))
            ->get('product')
            ->num_rows();
        $perpage = 8;
        $offset = $this->uri->segment(2);

        $this->load->library('pagination');
        $config['base_url'] = site_url('produk');
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = $perpage;

        $config['first_link'] = 'First';
        $config['last_link'] = 'Last';
        $config['next_link'] = 'Next';
        $config['prev_link'] = 'Prev';
        $config['full_tag_open'] = '<div class="pagging text-center"><nav><ul class="pagination justify-content-center">';
        $config['full_tag_close'] = '</ul></nav></div>';
        $config['num_tag_open'] = '<li class="page-item"><span class="page-link">';
        $config['num_tag_close'] = '</span></li>';
        $config['cur_tag_open'] = '<li class="page-item active"><span class="page-link">';
        $config['cur_tag_close'] = '<span class="sr-only">(current)</span></span></li>';
        $config['next_tag_open'] = '<li class="page-item"><span class="page-link">';
        $config['next_tagl_close'] = '<span aria-hidden="true">&raquo;</span></span></li>';
        $config['prev_tag_open'] = '<li class="page-item"><span class="page-link">';
        $config['prev_tagl_close'] = '</span>Next</li>';
        $config['first_tag_open'] = '<li class="page-item"><span class="page-link">';
        $config['first_tagl_close'] = '</span></li>';
        $config['last_tag_open'] = '<li class="page-item"><span class="page-link">';
        $config['last_tagl_close'] = '</span></li>';

        $this->pagination->initialize($config);
        
        //tambahkan p.location di select product listnya supaya di view frontnya lokasinya terlihat jelas
        $data['product_list'] = $this
            ->db
            ->select('p.id,p.id_category,p.title,p.location,p.thumbnail,p.thumbnail_alt,p.price,p.price_old,p.description,c.title AS category_title')
            ->join('category c', 'c.id = p.id_category', 'left')
            ->where(array(
                'p.id_language' => $data['id_language']
            ))
            ->order_by('category_title', 'ASC')
            ->order_by('p.title', 'ASC')
            ->get('product p', $perpage, $offset)
            ->result();

        $this->template->front('product_list_row', $data);
    }

    public function detail($slug_category, $slug_product)
    {
        $data = $this->main->data_front();
        $get_data_detail =  $this
        ->db
        ->select('product.*, category.title AS category_title')
        ->join('category', 'category.id = product.id_category')
        ->where('product.slug', $slug_product)
        ->get('product')
        ->row();
        $data['page'] =  $get_data_detail;
        
        $get_subquery = $this->db->query('select title from subkategori where id = '.$get_data_detail->id_subcategory)->row();
    
        $data['category'] = $this->db->where(array('use' => 'yes'))->order_by('title', 'ASC')->get('category')->result();
        $data['latest_project'] = $this
            ->db
            ->select('p.title, p.created_at, pc.title AS category_title')
            ->join('category AS pc', 'pc.id = p.id_category')
            ->where(array(
                'p.use' => 'yes',
                'p.id_language' => $data['id_language'],
                'p.id_category' => $data['page']->id_category,
            ))
            ->order_by('p.id', 'DESC')
            ->limit(4)
            ->get('product p')
            ->result();
        foreach($data['category'] as $row) {
            $row->total = $this
                ->db
                ->where(array(
                    'use' => 'yes',
                    'id_category' => $row->id
                ))
                ->get('product')
                ->num_rows();
        }

        $data['subkategori'] = $get_subquery->title;
        $data['page']->type = $slug_category;
        $data['captcha'] = $this->main->captcha();
        $this->template->front('product_detail', $data);
    }
}
