<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/

$connection = mysqli_connect('localhost', 'root', '', 'aulaarchitect_web');

//$lang_code_list = array('id','jp','en','fr','zh');
$lang_code_list = array();


$route['default_controller'] = 'home';
$route['proweb'] = 'proweb/login';
$route['proweb/login'] = 'proweb/login/process';
$route['proweb/news_category'] = 'proweb/blog_category';
$route['proweb/news_content'] = 'proweb/blog_content';
$route['proweb/press_content'] = 'proweb/press_content';
$route['proweb/project'] = 'proweb/product';
$route['proweb/on_going_project'] = 'proweb/new_project';
$route['proweb/press'] = 'proweb/press';

$route['404_override'] = 'not_found';
$route['translate_uri_dashes'] = FALSE;
$code = '';
//foreach($lang_code_list as $code) {

/**
 * Blog
 */
$route[$code . 'news'] = 'news';
$route[$code . 'news/(:num)'] = 'news';
$route[$code . 'news/(:any)'] = 'news/category/$1';
$route[$code . 'news/(:any)/(:num)'] = 'news/category/$1';
$route[$code . 'news/(:any)/(:any)'] = 'news/detail/$1/$2';

/* 
* Press
*/
$route[$code . 'press'] = 'press';

// about us
$route[$code . 'about-us'] = 'about_us';

// contact us
$route[$code . 'contact-us'] = 'contact_us';

/* 
* New Project
*/
$route[$code . 'on-going-project'] = 'new_project';
$route[$code . 'on-going-project/(:any)'] = 'new_project/detail/$1';

/**
 * Produk
 */
$route[$code . 'project/'] = 'product/list_product';
// $route[$code . 'produk/row'] = 'product/list_row';
// $route[$code . 'produk/(:num)'] = 'product/list_product';
$route[$code . 'project/(:any)'] = 'product/list_category/$1/$2';
$route[$code . 'project/(:any)/(:num)'] = 'product/list_category/$1/$2';
$route[$code . 'project/(:any)/(:any)'] = 'product/detail/$1/$2';
$route[$code . 'project/(:any)/sub/(:any)'] = 'product/list_subcategory/$1/$2';
$route[$code . 'project/(:any)/sub/(:any)/(:num)'] = 'product/list_subcategory/$1/$2/$3';

/**
 * Cart
 */
// $route[$code . 'cart/add'] = 'cart/add';
// $route[$code . 'keranjang-belanja'] = 'cart/list_page';

// $route[$code . 'cara-belanja'] = 'order';
// $route[$code . 'galeri-foto'] = 'gallery_photo';
// $route[$code . 'galeri-foto'] = 'gallery_photo';
// $route[$code . 'about-us'] = 'about_us';
// $route[$code . 'contact-us'] = 'contact_us';
// $route[$code . 'faq'] = 'faq';
// $route[$code . 'kebijakan-dan-privasi'] = 'term';

// $route[$code . 'account'] = 'account';
// $route[$code . 'daftar'] = 'account/signup';
// $route[$code . 'login'] = 'account/signin';
// $route[$code . 'profil'] = 'account/profile';
// $route[$code . 'halaman-bantuan'] = 'account/help';
// $route[$code . 'lacak-paket'] = 'shop/track_order';
// $route[$code . 'daftar-pemesanan'] = 'shop/history_order';
// $route[$code . 'wishlist'] = 'shop/wishlist';
// $route[$code . 'checkout'] = 'shop/checkout';


// $route[$code . 'kategori'] = 'category';
// $route[$code . 'rekomendasi-toko'] = 'recommend';
// $route[$code . 'lokasi'] = 'location';
// $route[$code . 'pengaduan'] = 'report';
// $route[$code . 'toko'] = 'shop_list';

// $route[$code . 'testimonial'] = 'testimonial';
// //    $route['daftar-harga'] = 'price_list';
// $route[$code . 'frequently-asked-question'] = 'faq';
// $route[$code . 'free-trial'] = 'general/free_trial_send';
// $route[$code . 'free-ebook'] = 'free_ebook';
// $route[$code . 'free-ebook-send'] = 'free_ebook/send';

$route['^' . $code . '/(.+)$'] = "$1";
$route['^' . $code . '$'] = $route['default_controller'];
//}

//$category = mysqli_query($connection, "SELECT id, title FROM category");
//while ($data = mysqli_fetch_array($category)) {
//    $route['produk/' . slug($data['title'])] = "product/list/" . $data['id'];
//    $route['produk/' . slug($data['title']).'/(:num)'] = "product/list/" . $data['id'];
//}

// $news = mysqli_query($connection, "SELECT id, b.slug as title, bc.slug as category_title FROM blog b JOIN blog_category bc ON bc.id = b.id_blog_category");
// while ($data = mysqli_fetch_array($news)) {
//    $route['news/' . slug($data['title']) . '/' . slug($data['category_title'])] = "news/" . $data['title'] . '/' . $data['category_title'];
// }
// $blog_category = mysqli_query($connection, "SELECT id, title FROM blog_category");
// while ($data = mysqli_fetch_array($blog_category)) {
//    $route['blog/' . slug($data['title'])] = "blog/category/" . $data['id'];
// }

//$product = mysqli_query($connection, "SELECT product.id, product.title, category.title AS category_title FROM product INNER JOIN category ON category.id = product.id_category");
//while ($data = mysqli_fetch_array($product)) {
//    $route['produk/' . slug($data['category_title']).'/'.slug($data['title'])] = "product/detail/" . $data['id'];
//}
$route['RegisterAdmin'] = 'RegisterAdmin/index';
function slug($string)
{
    $find = array(' ', '/', '&', '\\', '\'', ',', '(', ')', '!');
    $replace = array('-', '-', 'and', '-', '-', '-', '', '', '');

    $slug = str_replace($find, $replace, strtolower($string));

    return $slug;
}
