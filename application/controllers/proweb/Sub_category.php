<?php
defined ('BASEPATH') or exit('no direct script access allowed');

class Sub_category extends CI_Controller
{
    public function __construct()
	{
		parent:: __construct();
		$this->load->model('m_subcategory');
		$this->load->library('main');
		$this->main->check_admin();
    }
    
    public function index()
    {
       $data = $this->main->data_main();
       $data['listsubcategory'] = $this->m_subcategory->get_data()->result_array();
       $this->template->set('category', 'kt-menu__item--active');
	   $this->template->set('breadcrumb', 'Management SubCategory');
	   $this->template->load_admin('subcategory/index', $data);
    }
}
?>