<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Reservation extends CI_Controller
{
	public function __construct()
	{
		parent:: __construct();
		$this->load->library(array('main'));
	}

	public function page($id)
	{
		$data = $this->main->data_front();
		$data['page'] = $this->db->where('type', 'reservation')->get('pages')->row();
		$data['tour'] = $this->db->where('id', $id)->get('tour')->row();
		$data['captcha'] = $this->main->captcha();
		$this->template->front('reservation', $data);
	}

	public function captcha_check($str)
	{
		if ($str == $this->session->userdata('captcha_mwz')) {
			return TRUE;
		} else {
			$this->form_validation->set_message('captcha_check', 'security code was wrong, please fill again truly');
			return FALSE;
		}
	}

	public function send()
	{

		error_reporting(0);

		$this->load->library('form_validation');
		$this->form_validation->set_rules('title', 'Title', 'required');
		$this->form_validation->set_rules('first_name', 'First Name', 'required');
		$this->form_validation->set_rules('last_name', 'Last Name', 'required');
		$this->form_validation->set_rules('email', 'Email', 'required|valid_email');
		$this->form_validation->set_rules('phone', 'Phone', 'required');
		$this->form_validation->set_rules('address', 'Address', 'required');
		$this->form_validation->set_rules('tour_start', 'Tour Start', 'required');
		$this->form_validation->set_rules('total_adult', 'Total Adult', 'required');
		$this->form_validation->set_rules('total_children', 'Total Children', 'required');
		$this->form_validation->set_rules('message', 'Message', '');
		$this->form_validation->set_rules('captcha', 'Security Code', 'required|callback_captcha_check');
		$this->form_validation->set_error_delimiters('', '');

		if ($this->form_validation->run() === FALSE) {
			echo json_encode(array(
				'status' => 'error',
				'message' => 'Fill form completly',
				'errors' => array(
					'title' => form_error('title'),
					'first_name' => form_error('first_name'),
					'last_name' => form_error('last_name'),
					'email' => form_error('email'),
					'phone' => form_error('phone'),
					'address' => form_error('address'),
					'tour_start' => form_error('tour_start'),
					'total_adult' => form_error('total_adult'),
					'total_children' => form_error('total_children'),
					'message' => form_error('message'),
					'captcha' => form_error('captcha'),
				)
			));
		} else {
			$id_tour = $this->input->post('id_tour');
			$tour = $this->db->where('id', $id_tour)->get('tour')->row();
			$category = $this->db->where('id', $tour->id_category)->get('category')->row();
			$subject = 'Reservation '.$category->title.' - '.$tour->title;
			$email_admin = $this->db->where('use', 'yes')->get('email')->result();
			$title = $this->input->post('title');
			$first_name = $this->input->post('first_name');
			$last_name = $this->input->post('last_name');
			$email = $this->input->post('email');
			$phone = $this->input->post('phone');
			$address = $this->input->post('address');
			$country = $this->input->post('country');
			$tour_start = $this->input->post('tour_start');
			$total_adult = $this->input->post('total_adult');
			$total_children = $this->input->post('total_children');
			$message = $this->input->post('message');
			$created_at = date('Y-m-d H:i:s');

			$data = array(
				'id_tour' => $id_tour,
				'title' => $title,
				'first_name' => $first_name,
				'last_name' => $last_name,
				'email' => $email,
				'phone' => $phone,
				'address' => $address,
				'country' => $country,
				'tour_start' => $tour_start,
				'total_adult' => $total_adult,
				'total_children' => $total_children,
				'message' => $message,
				'created_at' => $created_at
			);

			$this->db->insert('reservation', $data);


			$message_admin = '

Dear Reservation,<br /><br />
I have browsed your website and I would like<br />
to book - ' . $tour->title . ' and<br />
my reservation details as follows:<br /><br />

--------------- PERSONAL DATA ---------------<br />
Full Name : ' . $title . ' ' . $first_name . ' ' . $last_name . '<br>
Email : ' . $email . '<br>
Telephone : ' . $phone. '<br>
Address : ' . $address . '<br>
Country : ' . $country . '<br><br />

--------------- RESERVATION DATA ---------------<br />
Services Type : ' . $category->title . '<br />
Tour Title : ' . $tour->title . '<br />
Tour Date : ' . date('d F Y', strtotime($tour_start)) . '<br>
Total adult : ' . $total_adult . '<br>
Total children: ' . $total_children . '<br /><br />

--------------- SPECIAL MESSAGE ---------------<br />
Message : ' . $this->input->post('message') . '<br /><br />


Regarding,<br />
Administrator System '.$this->main->web_name().'<br /><br />';


			$message_user = '
			
			Dear '.$title.' '.$first_name.' '.$last_name.'<br />
			<br />
			Thank you for your reservation of '.$tour->title.'. Please wait a momment until we reply you.<br />
			<br />
			
			Web System - '.$this->main->web_name().'
			
			';


			foreach($email_admin as $r) {
				$this->main->mailer_auth($subject, $r->email, $this->main->web_name().' Administrator ', $message_admin);
			}

			$this->main->mailer_auth('Reservation '.$tour->title.' | '.$this->main->web_name(), $email, $title.'. '.$first_name.' '.$last_name, $message_user);

			echo json_encode(array(
				'status'=>'success',
				'message'=>'Message has been send, please wait a moment for our reply ^_^'
			));

		}
	}
}
