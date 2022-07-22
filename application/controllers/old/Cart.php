<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cart extends CI_Controller
{
    public function __construct()
    {
        parent:: __construct();
        $this->load->library('main');
    }

    public function list_page()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'history_order', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['cart_list'] = $this->cart->contents();
        $data['cart_total_item'] = $this->cart->total_items();

        $price_total = 0;
        foreach ($data['cart_list'] as $row) {
            $price_total += $row['subtotal'];
        }

        $data['cart_total_price'] = $price_total;

        $this->template->front('cart_list_page', $data);
    }

    public function add()
    {
        $id = $this->input->post('id');
        $title = $this->input->post('title');
        $qty = $this->input->post('qty');
        $price = $this->input->post('price');
        $thumbnail = $this->input->post('thumbnail');
        $category_title = $this->input->post('category_title');

        $data = array(
            'id' => $id,
            'qty' => $qty,
            'price' => $price,
            'name' => $title,
            'options' => array(
                'thumbnail' => $thumbnail,
                'category_title' => $category_title
            )
        );
        $this->cart->insert($data);

        $return = array(
            'cart_list_review' => $this->main->cart_list_review(),
        );

        echo json_encode($return);
    }

    public function remove()
    {
        $rowid = $this->input->post('rowid');
        $cart_price_total = 0;
        $cart_content = $this->cart->contents();

        foreach ($cart_content as $row) {
            $cart_price_total += $row['subtotal'];
        }

        $this->cart->remove($rowid);

        $return = array(
            'cart_list_review' => $this->main->cart_list_review(),
            'cart_item_total' => $this->cart->total_items(),
            'cart_price_total' => $cart_price_total
        );

        echo json_encode($return);
    }

    public function destroy()
    {
        $this->cart->destroy();
    }

    public function update()
    {
        $qty_arr = $this->input->post('qty');
        $data_update = array();

        foreach ($qty_arr as $rowid => $qty) {
            $data_update[] = array(
                'rowid' => $rowid,
                'qty' => $qty
            );
        }

        $this->cart->update($data_update);

        redirect(site_url('keranjang-belanja'));
    }

    public function checkout()
    {
        $total_items = $this->cart->total_items();
        $login = $this->session->userdata('login');
        if ($total_items > 0 && $login) {
            $data = array(
                'status' => TRUE,
                'type' => NULL,
                'title' => NULL,
                'message' => NULL,
                'button_confirm' => NULL
            );
        } elseif($total_items == 0) {
            $data = array(
                'status' => FALSE,
                'type' => 'cart_empty',
                'title' => 'Perhatian',
                'message' => 'Keranjang Belanja masih Kosong, silahkan berbelanja terlebih dahulu',
                'button_confirm' => 'Lanjut Belanja'
            );
        } elseif(!$login) {
            $data = array(
                'status' => FALSE,
                'type' => 'login',
                'title' => 'Login / Daftar',
                'message' => 'Mohon Login terlebih dahulu untuk melakukan pembayaran',
                'button_confirm' => 'Login / Daftar'
            );
        } else {
            $data = array(
                'status' => FALSE,
                'type' => NULL,
                'title' => NULL,
                'message' => NULL,
                'button_confirm' => NULL
            );
        }

        echo json_encode($data);
    }

    public function view()
    {
        $data = $this->main->data_front();
        $data['page'] = $this->db->where(array('type' => 'contact_us', 'id_language' => $data['id_language']))->get('pages')->row();
        $data['captcha'] = $this->main->captcha();
        $this->template->front('cart_view', $data);
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
                'message' => 'Fill form completly',
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


            $message_admin = '

            Dear Admin,<br /><br />
            You have contact us message from web form<br />
            form details as follows:<br /><br />
            
            Name : ' . $name . '<br>
            Email : ' . $email . '<br>
            Telephone : ' . $phone . '<br>
            Message : ' . $message . '<br /><br />
            
            
            Regarding,<br />
            Contact Us System ' . $this->main->web_name() . '<br /><br />' . $this->main->credit();

            $message_user = '
			    Dear ' . $name . ',<br />
			    <br />
			    Thank you for contact us, We will follow up your message as soon as possible ^_^<br />
			    <br /><br />
			    Regarding,<br />
			    ' . $this->main->web_name() . '<br /><Br />' . $this->main->credit();

            $this->main->mailer_auth('Kontak Kami - ' . $this->main->web_name(), $email, $this->main->web_name(), $message_user);

            foreach ($email_admin as $r) {
                $this->main->mailer_auth('Kontak Kami - Website ' . $this->main->web_url(), $r->email, $this->main->web_name() . ' Administrator ', $message_admin);
            }

            echo json_encode(array(
                'status' => 'success',
                'title' => 'Sukses',
                'message' => 'Thank you for contact us, we will follow up you as soon as possible ^_^'
            ));

        }
    }
}
