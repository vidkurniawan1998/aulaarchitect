<?php

class Main
{

    private $ci;
    private $web_name = 'Aula Architect';
    private $web_url = 'redsystem.id';
    private $file_info = 'Images with resolution 800px x 600px and size 100KB';
    private $file_info_slider = 'Images with resolution 1920px x 900px and size 250KB';
    private $path_images = 'upload/images/';
    private $image_size_preview = 200;
    private $help_thumbnail_alt = 'Penting untuk SEO Gambar';
    private $help_meta = 'Penting untuk SEO Halaman Website';
    private $short_desc_char = 30;
    private $currency = 'Rp.';

    public function __construct()
    {
        error_reporting(0);
        $this->ci =& get_instance();
    }

    function short_desc($string)
    {
        return substr(strip_tags($string), 0, $this->short_desc_char) . ' ...';
    }

    function web_name()
    {
        return $this->web_name;
    }

    function web_url()
    {
        return $this->web_url;
    }

    function credit()
    {
        return 'development by <a href="https://www.redsystem.id">Red System</a>';
    }

    function date_view($date)
    {
        return date('d F Y', strtotime($date));
    }

    function help_thumbnail_alt()
    {
        return $this->help_thumbnail_alt;
    }

    function help_meta()
    {
        return $this->help_meta;
    }

    function file_info()
    {
        return $this->file_info;
    }

    function file_info_slider()
    {
        return $this->file_info_slider;
    }

    function path_images()
    {
        return $this->path_images;
    }

    function image_size_preview()
    {
        return $this->image_size_preview;
    }

    function image_preview_url($filename)
    {
        return base_url($this->path_images . $filename);
    }

    function currency($nominal)
    {
        return 'Rp. ' . number_format($nominal);
    }

    function delete_file($filename)
    {
        if ($filename) {
            if (file_exists(FCPATH . $this->path_images . $filename)) {
//				/unlink($this->path_images . $filename);
            }
        }
    }

    function data_main()
    {
        $id_language = $this->ci->session->userdata('id_language') ?
            $this->ci->session->userdata('id_language') :
            $this->ci->db->select('id')->where('use', 'yes')->order_by('id', 'ASC')->get('language')->row()->id;

        $data = array(
            'web_name' => $this->web_name,
            'menu_list' => $this->menu_list(),
            'name' => $this->ci->session->userdata('name'),
            'language' => $this->ci->db->where('use', 'yes')->get('language')->result(),
            'id_language' => $id_language,
        );

        $tab_language = $this->ci->load->view('admins/components/tab_language', $data, TRUE);
        $data['tab_language'] = $tab_language;

        return $data;
    }

    function data_front()
    {

        $lang_code = 'en';
        $lang_active = $this->ci->db->where('code', $lang_code)->get('language')->row();
        $member_sess = $this->ci->session->userdata('member');
//        $footer = $this->ci->db->select('description')->where(array('type' => 'footer', 'id_language' => $lang_active->id))->get('pages')->row()->description;
//		$service_list = $this->ci->db->select('title,id')->where('id_language', $lang_active->id)->order_by('title', 'ASC')->get('category')->result();
//        $language_list = $this->ci->db->where('use', 'yes')->order_by('title', 'ASC')->get('language')->result();
//        $popup_trial = $this->ci->db->where(array('id_language' => $lang_active->id, 'type' => 'free_trial'))->get('pages')->row();
        $show_hide = TRUE;
//        $menu_list = $this->ci
//            ->db
//            ->select('title_menu, type')
//            ->where('controller_method is NOT NULL', NULL, FALSE)
//            ->where('id_language', $lang_active->id)
//            ->get('pages')
//            ->result();
//        $dictionary = $this->ci->db->where('id_language', $lang_active->id)->get('dictionary')->result();

//        $product_new_total = $this
//            ->ci
//            ->db
//            ->where(array(
//                'use' => 'yes',
//                'id_language' => $lang_active->id,
//                'new_status' => 'yes'
//            ))
//            ->get('product')
//            ->num_rows();
        $category_menu = $this
            ->ci
            ->db
            ->select('title, id, thumbnail, thumbnail_alt')
            ->where(array(
                'use' => 'yes',
                'view_top_menu' => 'yes',
                'id_language' => $lang_active->id
            ))
            ->order_by('title', 'ASC')
            ->get('category')
            ->result();


        $submenu_category = $this
            ->ci
            ->db
            ->select('title, id,slug, id_category')
            ->where(array(
                'use' => 'yes',
                'view_top_menu' => 'yes',
                'id_language' => $lang_active->id
            ))
            ->order_by('title', 'ASC')
            ->get('subkategori')
            ->result();

            $info_web = $this
                ->ci
                ->db
                ->select('type, description')
                // ->where('type', 'address')
                ->get('info')->result();

            $address = strip_tags($info_web[array_search("address", array_column($info_web, 'type'))]->description);

            $phone = strip_tags($info_web[array_search("phone", array_column($info_web, 'type'))]->description);;
    
            $email = strip_tags($info_web[array_search("email", array_column($info_web, 'type'))]->description);;
                
            $facebook_link = strip_tags($info_web[array_search("facebook_link", array_column($info_web, 'type'))]->description);
    
            $instagram_link = strip_tags($info_web[array_search("instagram_link", array_column($info_web, 'type'))]->description);
    
            $description_site = ($info_web[array_search("description_site", array_column($info_web, 'type'))]->description);
    
            $data = array(
                'address' => $address,
                'address_link' => 'https://goo.gl/maps/7jUzbz7oBq1RGS7aA',
                'address_link_long' => 'https://www.google.com/maps?q=' . rawurlencode($address) . '&output=embed',
                'description_site' => $description_site,
                'telephone' => '0814 123 123 123',
                'owner_name' => 'Red System',
                'phone' => $phone,
                'phone_link' => 'tel:62' . substr($phone, 1),
                'whatsapp' => '0822 86000 956',
                'whatsapp_link' => 'https://api.whatsapp.com/send?phone=6282286000956&text=Hello,%20i%20want%20to%20ask%20you%20about%20your%20services.',
                'wechat_id' => '',
                'wechat_link' => '',
                'email_link' => 'mailto:' . $email,
                'email' => $email,
                'facebook_link' => $facebook_link,
    //            'line_link' => 'https://msng.link/ln/harsa.bali.holiday',
                'twitter_link' => 'https://twitter.com/redsystem_id',
                'linkedin_link' => '',
                'instagram_link' => $instagram_link,
                'view_secret' => FALSE,
                'author' => 'www.redsystem.id',
    //			'services_list' => $service_list,
    //            'language_list' => $language_list,
                'lang_code' => $lang_code,
                'lang_active' => $lang_active,
                'id_language' => $lang_active->id,
    //            'footer' => $footer,
    //            'popup_trial' => $popup_trial,
               'captcha' => $this->captcha(),
                'show_hide' => $show_hide,
                'category_menu' => $category_menu,
                'submenu_category' => $submenu_category,
                'web_name' => $this->web_name,
                'cart_list_review' => $this->cart_list_review(),
                'currency' => $this->currency,
                'login_status' => $this->ci->session->userdata('login_status'),
                'id_member' => $member_sess->id,
                'cart_price_total' => 0,
                'encrypt_url' => $this->str_encrypt(current_url()),
                'opening_hours' => $info_web[array_search("opening_hours", array_column($info_web, 'type'))]->description,
            );


//        foreach ($menu_list as $row) {
//            $data[$row->type] = $row;
//        }
//
//        foreach($dictionary as $row) {
//            $data['dict_'.$row->dict_variable] = $row->dict_word;
//        }

//        echo json_encode($data);
//        exit;

        return $data;
    }

    function cart_list_review()
    {
        $cart_view_limit = 3;
        $cart_total = $this->ci->cart->total_items();
        $cart_content = $this->ci->cart->contents();

        $data = array(
            'cart_view_limit' => $cart_view_limit,
            'cart_total' => $cart_total,
            'cart_content' => $cart_content
        );

        return $this->ci->load->view('front/cart_list_review', $data, TRUE);
    }

    function translate_number($number)
    {
        switch ($number) {
            case 1:
                return "first";
                break;
            case 2:
                return "second";
                break;
            case 3:
                return "third";
                break;
            case 4:
                return "four";
                break;
        }
    }

    function check_admin()
    {
        if ($this->ci->session->userdata('status') !== 'login') {
            redirect('proweb/login');
        }
    }

    function check_login()
    {
        if ($this->ci->session->userdata('status') == 'login') {
            redirect('proweb/dashboard');
        }
    }

    function permalink($data = array())
    {

        $slug = '';
        foreach ($data as $r) {
            $slug .= $this->slug($r) . '/';
        }

        return site_url($slug);
    }

    function breadcrumb($data)
    {
        $breadcrumb = '<ul class="breadcrumb">';
        $count = count($data);
        $no = 1;
        foreach ($data as $url => $label) {
            $current = '';
            if ($no == $count) {
                $current = ' class="current"';
            }

            $breadcrumb .= '<li' . $current . '><a href="' . $url . '">' . $label . '</a></li>';
        }

        $breadcrumb .= '</ul>';


        return $breadcrumb;
    }

    function slug($text)
    {

        $find = array(' ', '/', '&', '\\', '\'', ',', '(', ')', '?', '!', ':');
        $replace = array('-', '-', 'and', '-', '-', '-', '', '', '', '', '');

        $slug = str_replace($find, $replace, strtolower($text));

        return $slug;
    }

    function date_format_view($date)
    {
        return date('d M Y', strtotime($date));
    }

    function format_currency($price)
    {
        return $this->currency . ' ' . number_format($price);
    }

    function format_star($star)
    {
        $string = '';
        for ($i = 1; $i <= $star; $i++) {
            $string .= '<i class="icon-star voted"></i>';
        }
        for ($i = 1; $i <= (5 - $star); $i++) {
            $string .= '<i class="icon-star"></i>';
        }

        return $string;
    }

    function slug_back($slug)
    {
        $slug = trim($slug);
        if (empty($slug)) return '';
        $slug = str_replace('-', ' ', $slug);
        $slug = ucwords($slug);
        return $slug;
    }

    function upload_file_thumbnail($fieldname, $filename)
    {
        $config['upload_path'] = './upload/images/';
        $config['allowed_types'] = '*';
        $config['max_size'] = 10000;
        $config['max_width'] = 80000;
        $config['max_height'] = 60000;
//		$config['overwrite'] = TRUE;
        $config['file_name'] = $this->slug($filename);
        $this->ci->load->library('upload', $config);

        if (!$this->ci->upload->do_upload($fieldname)) {
            return array(
                'status' => FALSE,
                'message' => $this->ci->upload->display_errors()
            );
        } else {
            return array(
                'status' => TRUE,
                'filename' => $data['thumbnail'] = $this->ci->upload->file_name
            );
        }
    }

    function upload_file_slider($fieldname, $filename)
    {
        $config['upload_path'] = './upload/images/';
        $config['allowed_types'] = 'gif|jpg|png|jpeg';
        $config['max_size'] = 500;
        $config['max_width'] = 1920;
        $config['max_height'] = 1400;
//		$config['overwrite'] = TRUE;
        $config['file_name'] = $this->slug($filename);
        $this->ci->load->library('upload', $config);

        if (!$this->ci->upload->do_upload($fieldname)) {
            return array(
                'status' => FALSE,
                'message' => $this->ci->upload->display_errors()
            );
        } else {
            return array(
                'status' => TRUE,
                'filename' => $data['thumbnail'] = $this->ci->upload->file_name
            );
        }
    }

    function captcha()
    {
        $this->ci->load->helper(array('captcha', 'string'));
        $this->ci->load->library('session');

        $vals = array(
            'img_path' => './upload/images/captcha/',
            'img_url' => base_url() . 'upload/images/captcha',
            'img_width' => '200',
            'img_height' => 35,
            'border' => 0,
            'expiration' => 7200,
            'word' => random_string('numeric', 5)
        );

        // create captcha image
        $cap = create_captcha($vals);

        // store image html code in a variable
        $captcha = $cap['image'];

        // store the captcha word in a session
        //$cap['word'];
        $this->ci->session->set_userdata('captcha_mwz', $cap['word']);

        return $captcha;
    }

    function share_link($socmed_type, $title, $link)
    {
        switch ($socmed_type) {
            case "facebook":
                return "https://www.facebook.com/sharer/sharer.php?u=" . $link;
                break;
            case "twitter":
                return "https://twitter.com/home?status=" . $link;
                break;
            case "googleplus":
                return "https://plus.google.com/share?url=" . $link;
                break;
            case "linkedin":
                return "https://www.linkedin.com/shareArticle?mini=true&url=" . $link . "&title=" . $title . "&summary=&source=";
                break;
            case "pinterest":
                return "https://pinterest.com/pin/create/button/?url=" . $title . "&media=" . $link . "&description=";
                break;
            case "email":
                return "mailto:" . $link . "?&subject=" . $title;
            default:
                return $link;
                break;
        }
    }

    function str_encrypt($string)
    {
        $ciphering = "AES-128-CTR";
        $encryption_iv = '1234567891011121';
        $encryption_key = "RedEcommerce";
        $options = 0;
        $encryption = openssl_encrypt($string, $ciphering,
            $encryption_key, $options, $encryption_iv);

        return $encryption;
    }

    function mailer_auth($subject, $to_email, $to_name, $body, $file = '')
    {
        $this->ci->load->library('my_phpmailer');
        $mail = new PHPMailer;

        try {
            $mail->IsSMTP();
            $mail->SMTPSecure = "ssl";
            $mail->Host = "redsystem.id"; //hostname masing-masing provider email
            $mail->SMTPDebug = 2;
            $mail->SMTPDebug = FALSE;
            $mail->do_debug = 0;
            $mail->Port = 465;
            $mail->SMTPAuth = true;
            $mail->Username = "no-reply@redsystem.id"; //user email
            $mail->Password = "4Br%@N2D{ju*"; //password email
            $mail->SetFrom("no-reply@redsystem.id ", $this->web_name); //set email pengirim
            $mail->Subject = $subject; //subyek email
            $mail->AddAddress($to_email, $to_name); //tujuan email
            $mail->MsgHTML($body);
            if ($file) {
                $mail->addAttachment("upload/images/" . $file);
            }

            if(!$mail->Send()) {
                $data = array(
                    'success' => false,
                    'error' => $mail->ErrorInfo,
                );
            } else {
                $data = array(
                    'success' => true,
                    // 'error' => $mail->ErrorInfo,
                );
            }
            return (object) $data;
            //echo "Message has been sent";
        } catch (phpmailerException $e) {
            return $e->errorMessage(); //Pretty error messages from PHPMailer
        } catch (Exception $e) {
            return $e->getMessage(); //Boring error messages from anything else!
        }
    }

    function menu_list()
    {
        $menu = array(
            'MAIN' => array(
                'dashboard' => array(
                    'label' => 'Dashboard',
                    'route' => base_url('proweb/dashboard'),
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array()
                ),
                'view_front' => array(
                    'label' => 'View Website',
                    'route' => base_url(''),
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array()
                )
            ),
            'PAGES' => array(
                'home' => array(
                    'label' => 'Beranda',
                    'route' => 'javascript:;',
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array(
                        'home_page' => array(
                            'label' => 'Halaman Umum Beranda',
                            'route' => base_url('proweb/pages/type/home'),
                            'icon' => 'fab fa-asymmetrik'
                        ),
                        'home_slider' => array(
                            'label' => 'Home Slider',
                            'route' => base_url('proweb/home_slider'),
                            'icon' => 'fab fa-asymmetrik'
                        ),
                        // 'home_baris_produk' => array(
                        //     'label' => 'Sesi Baris Produk',
                        //     'route' => base_url('proweb/home_product_row'),
                        //     'icon' => 'fab fa-asymmetrik'
                        // ),
//                        'sesi_2' => array(
//                            'label' => 'Sesi Pengantar',
//                            'route' => base_url('proweb/pages/type/home_sesi_2'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                        'sesi_3' => array(
//                            'label' => 'Sesi Manfaat Robot Autopilot',
//                            'route' => base_url('proweb/pages/type/home_sesi_3'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                        'sesi_4' => array(
//                            'label' => 'Sesi FAQ',
//                            'route' => base_url('proweb/pages/type/home_sesi_4'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                        'sesi_5' => array(
//                            'label' => 'Sesi Manfaat Produk',
//                            'route' => base_url('proweb/pages/type/home_sesi_5'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                        'sesi_6' => array(
//                            'label' => 'Sesi Mengapa Kami',
//                            'route' => base_url('proweb/pages/type/home_sesi_6'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                        'sesi_7' => array(
//                            'label' => 'Sesi Ajakan Book Now',
//                            'route' => base_url('proweb/pages/type/home_sesi_7'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                        'sesi_8' => array(
//                            'label' => 'Sesi Ajakan Subscribe',
//                            'route' => base_url('proweb/pages/type/home_sesi_8'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                        'sesi_9' => array(
//                            'label' => 'Sesi Ajakan Book now',
//                            'route' => base_url('proweb/pages/type/home_sesi_9'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
                    )
                ),
                'project' => array(
                    'label' => 'Project',
                    'route' => 'javascript:;',
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array(
                        // 'ebook_page' => array(
                        //     'label' => 'Halaman Kategori Project',
                        //     'route' => base_url('proweb/pages/type/category'),
                        //     'icon' => 'fab fa-asymmetrik'
                        // ),
                        'category' => array(
                            'label' => 'Data Kategori Project',
                            'route' => base_url('proweb/category'),
                            'icon' => 'fab fa-asymmetrik'
                        ),
                        'project' => array(
                            'label' => 'Data Project',
                            'route' => base_url('proweb/product'),
                            'icon' => 'fab fa-asymmetrik'
                        ),
                        'subcategory' => array(
                            'label' => 'Sub Kategori Project',
                            'route' => base_url('proweb/sub_category'),
                            'icon'  => 'fab fas-asymmetrik'
                        ) 
                    )
                ),
                
                // 'shop' => array(
                //     'label' => 'Data Order Produk',
                //     'route' => 'javascript:;',
                //     'icon' => 'fab fa-asymmetrik',
                //     'sub_menu' => array(
                //         'member' => array(
                //             'label' => 'Data Member',
                //             'route' => base_url('proweb/pages/type/category1'),
                //             'icon' => 'fab fa-asymmetrik'
                //         ),
                //         'order_product' => array(
                //             'label' => 'Data Order Produk',
                //             'route' => base_url('proweb/pages/type/category1'),
                //             'icon' => 'fab fa-asymmetrik'
                //         ),
                //         'wishlist' => array(
                //             'label' => 'Data Wishlist Produk',
                //             'route' => base_url('proweb/category1'),
                //             'icon' => 'fab fa-asymmetrik'
                //         )
                //     )
                // ),
                // 'gallery_photo' => array(
                //     'label' => 'Galeri Foto',
                //     'route' => 'javascript:;',
                //     'icon' => 'fab fa-asymmetrik',
                //     'sub_menu' => array(
                //         'gallery_photo_page' => array(
                //             'label' => 'Halaman Galeri Foto',
                //             'route' => base_url('proweb/pages/type/gallery_photo'),
                //             'icon' => 'fab fa-asymmetrik'
                //         ),
                //         'gallery_photo_list' => array(
                //             'label' => 'Daftar Galeri Foto',
                //             'route' => base_url('proweb/gallery_photo'),
                //             'icon' => 'fab fa-asymmetrik'

                //         ),
                //     )
                // ),
                'blog' => array(
                    'label' => 'News',
                    'route' => 'javascript:;',
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array(
                        'blog_page' => array(
                            'label' => 'Halaman News',
                            'route' => base_url('proweb/pages/type/news'),
                            'icon' => 'fab fa-asymmetrik'
                        ),
                        'blog_category' => array(
                            'label' => 'Kategori News',
                            'route' => base_url('proweb/news_category'),
                            'icon' => 'fab fa-asymmetrik'
                        ),
                        'blog_list' => array(
                            'label' => 'Daftar Blog',
                            'route' => base_url('proweb/news_content'),
                            'icon' => 'fab fa-asymmetrik'
                        ),
                    )
                ),
                // 'press' => array(
                //     'label' => 'Press',
                //     'route' => 'javascript:;',
                //     'icon' => 'fab fa-asymmetrik',
                //     'sub_menu' => array(
                //         'press_page' => array(
                //             'label' => 'Halaman Press',
                //             'route' => base_url('proweb/pages/type/press'),
                //             'icon' => 'fab fa-asymmetrik'
                //         ),
                //         'press_list' => array(
                //             'label' => 'Daftar Press',
                //             'route' => base_url('proweb/press_content'),
                //             'icon' => 'fab fa-asymmetrik'
                //         ),
                //     )
                // ),
                'new_project' => array(
                    'label' => 'On Going Project',
                    'route' => 'javascript:;',
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array(
                        'press_page' => array(
                            'label' => 'Halaman On Going Project',
                            'route' => base_url('proweb/pages/type/new_project'),
                            'icon' => 'fab fa-asymmetrik'
                        ),
                        'press_list' => array(
                            'label' => 'Daftar On Going Project',
                            'route' => base_url('proweb/new_project'),
                            'icon' => 'fab fa-asymmetrik'
                        ),
                    )
                ),
                'pages' => array(
                    'label' => 'Manajemen Halaman',
                    'route' => 'javascript:;',
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array(
                        // 'ebook_page' => array(
                        //     'label' => 'Halaman Cara Belanja',
                        //     'route' => base_url('proweb/pages/type/buy_guide'),
                        //     'icon' => 'fab fa-asymmetrik'
                        // ),
                        'about_us' => array(
                            'label' => 'Halaman Tentang Kami',
                            'route' => base_url('proweb/pages/type/about_us'),
                            'icon' => 'fab fa-asymmetrik',
                            'sub_menu' => array()
                        ),
                        'contact_us' => array(
                            'label' => 'Halaman Kontak Kami',
                            'route' => base_url('proweb/pages/type/contact_us'),
                            'icon' => 'fab fa-asymmetrik',
                            'sub_menu' => array()
                        ),
                        // 'faq' => array(
                        //     'label' => 'Halaman FAQ',
                        //     'route' => base_url('proweb/pages/type/faq'),
                        //     'icon' => 'fab fa-asymmetrik',
                        //     'sub_menu' => array()
                        // ),
                        // 'privacy' => array(
                        //     'label' => 'Halaman Kebijakan & Privasi',
                        //     'route' => base_url('proweb/pages/type/privacy'),
                        //     'icon' => 'fab fa-asymmetrik',
                        //     'sub_menu' => array()
                        // ),
                        // 'tracking' => array(
                        //     'label' => 'Halaman Lacak Paket',
                        //     'route' => base_url('proweb/pages/type/tracking'),
                        //     'icon' => 'fab fa-asymmetrik',
                        //     'sub_menu' => array()
                        // ),
                        // 'order_data' => array(
                        //     'label' => 'Halaman Daftar Pemesanan',
                        //     'route' => base_url('proweb/pages/type/order_data'),
                        //     'icon' => 'fab fa-asymmetrik',
                        //     'sub_menu' => array()
                        // ),
                        // 'my_profile' => array(
                        //     'label' => 'Halaman Profil Saya',
                        //     'route' => base_url('proweb/pages/type/my_profile'),
                        //     'icon' => 'fab fa-asymmetrik',
                        //     'sub_menu' => array()
                        // ),
                        // 'help' => array(
                        //     'label' => 'Halaman Bantuan',
                        //     'route' => base_url('proweb/pages/type/help'),
                        //     'icon' => 'fab fa-asymmetrik',
                        //     'sub_menu' => array()
                        // ),
                        // 'wishlist' => array(
                        //     'label' => 'Halaman Wish List',
                        //     'route' => base_url('proweb/pages/type/wishlist'),
                        //     'icon' => 'fab fa-asymmetrik',
                        //     'sub_menu' => array()
                        // ),
                        // 'cart' => array(
                        //     'label' => 'Halaman Keranjang Belanja',
                        //     'route' => base_url('proweb/pages/type/cart'),
                        //     'icon' => 'fab fa-asymmetrik',
                        //     'sub_menu' => array()
                        // ),
                        // 'checkout' => array(
                        //     'label' => 'Halaman Checkout',
                        //     'route' => base_url('proweb/pages/type/checkout'),
                        //     'icon' => 'fab fa-asymmetrik',
                        //     'sub_menu' => array()
                        // ),
                    )
                ),
//                'profile' => array(
//                    'label' => 'Tentang Kami',
//                    'route' => 'javascript:;',
//                    'icon' => 'fab fa-asymmetrik',
//                    'sub_menu' => array(
//                        'profile_page' => array(
//                            'label' => 'Halaman Tentang Kami',
//                            'route' => base_url('proweb/pages/type/about_us'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
////                        'profile_team' => array(
////                            'label' => 'Daftar Team',
////                            'route' => base_url('proweb/profile_team'),
////                            'icon' => 'fab fa-asymmetrik'
////                        ),
//                    )
//                ),
//                'location' => array(
//                    'label' => 'Lokasi',
//                    'route' => base_url('proweb/pages/type/location'),
//                    'icon' => 'fab fa-asymmetrik',
//                    'sub_menu' => array()
//                ),

//                'report' => array(
//                    'label' => 'Pengaduan',
//                    'route' => base_url('proweb/pages/type/report'),
//                    'icon' => 'fab fa-asymmetrik',
//                    'sub_menu' => array()
//                ),
//                'free_trial' => array(
//                    'label' => 'Free Trial',
//                    'route' => 'javascript:;',
//                    'icon' => 'fab fa-asymmetrik',
//                    'sub_menu' => array(
//                        'free_trial_page' => array(
//                            'label' => 'Popup Free Trial',
//                            'route' => base_url('proweb/pages/type/free_trial'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                        'free_trial_list' => array(
//                            'label' => 'Data Request Free Trial',
//                            'route' => base_url('proweb/free_trial_request'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                    )
//                ),
//                'testimonial' => array(
//                    'label' => 'Testimonial',
//                    'route' => 'javascript:;',
//                    'icon' => 'fab fa-asymmetrik',
//                    'sub_menu' => array(
//                        'testimonial_page' => array(
//                            'label' => 'Testimonial Page',
//                            'route' => base_url('proweb/pages/type/testimonial'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                        'testimonial_list' => array(
//                            'label' => 'Testimonial List',
//                            'route' => base_url('proweb/testimonial'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                    )
//                ),
//				'gallery_video' => array(
//					'label' => 'Gallery Video',
//					'route' => 'javascript:;',
//					'icon' => 'fab fa-asymmetrik',
//					'sub_menu' => array(
//						'gallery_photo_page' => array(
//							'label' => 'Gallery Video Page',
//							'route' => base_url('proweb/pages/type/gallery_video'),
//							'icon' => 'fab fa-asymmetrik'
//						),
//						'gallery_photo_list' => array(
//							'label' => 'Gallery Video List',
//							'route' => base_url('proweb/gallery_video'),
//							'icon' => 'fab fa-asymmetrik'
//
//						),
//					)
//				),


//                'price_list' => array(
//                    'label' => 'Daftar Harga',
//                    'route' => base_url('proweb/pages/type/price_list'),
//                    'icon' => 'fab fa-asymmetrik',
//                    'sub_menu' => array()
//                ),
//                'reservation' => array(
//                    'label' => 'Reservation',
//                    'route' => 'javascript:;',
//                    'icon' => 'fab fa-asymmetrik',
//                    'sub_menu' => array(
//                        'reservation_page' => array(
//                            'label' => 'Reservation Page',
//                            'route' => base_url('proweb/pages/type/reservation'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                        'reservation_list' => array(
//                            'label' => 'Reservation List',
//                            'route' => base_url('proweb/reservation'),
//                            'icon' => 'fab fa-asymmetrik'
//                        ),
//                    )
//                ),
//                'footer' => array(
//                    'label' => 'Footer Web',
//                    'route' => base_url('proweb/pages/type/footer'),
//                    'icon' => 'fab fa-asymmetrik',
//                    'sub_menu' => array()
//                ),
//                'dictionary' => array(
//                    'label' => 'Kamus Web',
//                    'route' => base_url('proweb/dictionary'),
//                    'icon' => 'fab fa-asymmetrik',
//                    'sub_menu' => array()
//                ),
            ),
            'OTHERS MENU' => array(
                'file_manager' => array(
                    'label' => 'File Manager',
                    'route' => base_url('proweb/file_manager'),
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array()
                ),
                'email' => array(
                    'label' => 'Email',
                    'route' => base_url('proweb/email'),
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array()
                ),
                'info' => array(
                    'label' => 'Setting Info Web',
                    'route' => base_url('proweb/info'),
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array()
                ),
//                'language' => array(
//                    'label' => 'Language',
//                    'route' => base_url('proweb/language'),
//                    'icon' => 'fab fa-asymmetrik',
//                    'sub_menu' => array()
//                ),
                'admin' => array(
                    'label' => 'Manage Admin',
                    'route' => base_url('proweb/admin'),
                    'icon' => 'fab fa-asymmetrik',
                    'sub_menu' => array()
                ),
            ),
        );

        return $menu;
    }
}
