<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quick_view extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
    }

    public function index()
    {
        echo $this->load->view('front/quick_view', array(), TRUE);

    }
}
