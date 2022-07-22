<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class General extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
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

    public function free_trial_send()
    {
        error_reporting(0);

        $this->load->library('form_validation');
        $this->form_validation->set_rules('name', 'Nama', 'required');
        $this->form_validation->set_rules('phone', 'No Telepon', 'required');
        $this->form_validation->set_rules('email', 'Email', 'required|valid_email');
        $this->form_validation->set_rules('message', 'Pesan', 'required');
        $this->form_validation->set_rules('captcha', 'Security Code', 'required|callback_captcha_check');
        $this->form_validation->set_error_delimiters('', '');

        if ($this->form_validation->run() === FALSE) {
            echo json_encode(array(
                'status' => 'error',
                'title' => 'Perhatian',
                'message' => 'Mohon lengkapi mengisi form nya',
                'errors' => array(
                    'name' => form_error('name'),
                    'phone' => form_error('phone'),
                    'email' => form_error('email'),
                    'message' => form_error('message'),
                    'captcha' => form_error('captcha'),
                )
            ));
        } else {
            $email_admin = $this->db->where('use', 'yes')->get('email')->result();
            $name = $this->input->post('name');
            $email = $this->input->post('email');
            $phone = $this->input->post('phone');
            $message = $this->input->post('message');

            $data_insert = array(
                'name' => $name,
                'email' => $email,
                'phone' => $phone,
                'message' => $message,
                'status_free' => 'no',
                'created_at' => date('Y-m-d H:i:s')
            );
            $this->db->insert('free_trial', $data_insert);


            $message_admin = '

            Dear Admin,<br /><br />
            You have message Free Trial from User<br />
            form details as follows:<br /><br />
            
            Name : ' . $name . '<br>
            Email : ' . $email . '<br>
            Telephone : ' . $phone . '<br>
            Message : ' . $message . '<br /><br />
            
            
            Regarding,<br />
            Web Mail System ' . $this->main->web_name() . '<br /><br /><br />
            ' . $this->main->credit();

            $message_user = '
            Dear ' . $name . '<br />
            <br />
            Thank you for message us for Free Trial Automatic Trading Robot<br />
            We will contact you as soon as possible ^_^.<br /><br />
            
            Regarding,<br />
            ' . $this->main->web_name() . ' Web Mail System<br /><br /><br />' . $this->main->credit();

            foreach ($email_admin as $r) {
                $this->main->mailer_auth('Free Trial - Website '.$this->main->web_url(), $r->email, $this->main->web_name() . ' Administrator ', $message_admin);
            }

            $this->main->mailer_auth('Free Trial - Automatic Trading Robot', $email, $this->main->web_name(), $message_user);


            echo json_encode(array(
                'status' => 'success',
                'title' => 'Sukses',
                'message' => 'Message has been send, please wait a moment for our reply ^_^'
            ));

        }
    }
}
