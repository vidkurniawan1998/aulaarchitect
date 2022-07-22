<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Press extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
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
        $data['page'] = $this->db->where(array('type' => 'press', 'id_language' => $data['id_language']))->get('pages')->row();
        $jumlah_data = $this->db
            ->where(array(
                'id_language' => $data['id_language'],
                'use'=>'yes'
            ))
            ->get('press')
            ->num_rows();


        $this->load->library('pagination');
        $config['base_url'] = site_url('press');
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = $perpage;

        $this->pagination->initialize($config);
        $data['press_list'] = $this
            ->db
            ->select('*')
            ->where(array(
                'id_language' => $data['id_language'],
                'use'=>'yes'
            ))
            ->order_by('id', 'DESC')
            ->get('press', $perpage, $offset)
            ->result();

        $this->template->front('press', $data);
    }

    private function category($slug)
    {
        $uri_2 = $this->uri->segment(2);
        $offset = $this->uri->segment(3);

        $data = $this->main->data_front();
        $data['page'] = $this->db->where('slug', $slug)->get('blog_category')->row();
        $data['category'] = $this->db->where(array('use' => 'yes'))->order_by('title', 'ASC')->get('blog_category')->result();
        $data['latest_blog'] = $this
            ->db
            ->select('b.title, b.thumbnail, b.thumbnail_alt, b.created_at, bc.title AS category_title')
            ->join('blog_category AS bc', 'bc.id = b.id_blog_category')
            ->where(array(
                'b.use' => 'yes',
                'b.id_language' => $data['id_language']
            ))
            ->order_by('b.id', 'DESC')
            ->get('blog b', 4, 0)
            ->result();
        foreach($data['category'] as $row) {
            $row->total = $this
                ->db
                ->where(array(
                    'use' => 'yes',
                    'id_blog_category' => $row->id
                ))
                ->get('blog')
                ->num_rows();
        }

        $perpage = 6;
        $jumlah_data = $this->db->where(array('use' => 'yes', 'id_blog_category' => $data['page']->id))->get('blog')->num_rows();
        $this->load->library('pagination');
        $config['base_url'] = site_url('blog/' . $uri_2);
        $config['total_rows'] = $jumlah_data;
        $config['per_page'] = $perpage;

        $this->pagination->initialize($config);

        $data['blog_list'] = $this
            ->db
            ->select('team.title AS team_title, team.description AS team_description, team.thumbnail AS team_thumbnail, blog.*, blog_category.title AS category_title')
            ->join('team', 'team.id = blog.id_team', 'left')
            ->join('blog_category', 'blog_category.id = blog.id_blog_category', 'left')
            ->where(array('blog.use' => 'yes', 'blog.id_blog_category' => $data['page']->id))
            ->order_by('blog.id', 'DESC')
            ->get('blog', $perpage, $offset)
            ->result();

        $data['id_blog_category'] = $data['page']->id;

        $this->template->front('blog', $data);
    }
}
