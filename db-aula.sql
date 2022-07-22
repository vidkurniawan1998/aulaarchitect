/*
SQLyog Community
MySQL - 10.3.16-MariaDB : Database - rs_aula_architect
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`username`,`password`,`email`,`name`) values 
(2,'mahendrawardana','6001c26274f43ac7c6b2be2662a027f6','mahendra.adi.wardana@gmail.com','Mahendra Wardana'),
(32,'geren','34bb77f37a397c3db7cc819f9ce0fa9f','gerenmekantara@gmail.com','geren'),
(33,'admin','21232f297a57a5a743894a0e4a801fc3','admin@admin.com','Admin'),
(34,'admin','21232f297a57a5a743894a0e4a801fc3','admin@admin.com','Admin');

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_team` int(11) DEFAULT NULL,
  `id_blog_category` int(11) DEFAULT NULL,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `description` text NOT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  `views` int(11) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `blog` */

insert  into `blog`(`id`,`id_team`,`id_blog_category`,`id_language`,`title`,`thumbnail`,`thumbnail_alt`,`description`,`use`,`views`,`slug`,`meta_title`,`meta_description`,`meta_keywords`,`created_at`) values 
(37,NULL,16,1,'Lorem Ipsum','lorem-ipsum.jpg','lorem','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec enim eros. Nam vestibulum eros a tempor posuere. Phasellus at rhoncus nulla, sed imperdiet eros. Suspendisse pellentesque dui gravida nisi mollis, fermentum sagittis ligula elementum. Nulla facilisi. Maecenas rutrum commodo ipsum, id lacinia massa. Nullam at laoreet tortor. Maecenas lacinia sed metus et lobortis.</p>\r\n<p>Fusce pharetra mi id nisi porta placerat. Ut egestas rhoncus nibh, quis egestas nibh. Morbi non lacus vel mi tristique aliquet in blandit metus. Proin lorem arcu, pulvinar ac neque accumsan, pellentesque faucibus justo. Donec elit nisi, imperdiet a mi sed, imperdiet rhoncus ligula. Praesent non mattis quam. Nulla varius pulvinar nisi eget ultricies. Maecenas consequat pretium laoreet. Cras eu imperdiet elit. Curabitur massa orci, laoreet sed turpis id, vulputate vestibulum eros. Suspendisse scelerisque fringilla leo eu tincidunt. Curabitur sit amet risus metus. Duis venenatis iaculis tellus et porttitor.</p>\r\n<p>Fusce sollicitudin, sem vel dictum laoreet, tellus tortor laoreet nibh, in iaculis lorem est vitae nulla. Fusce at interdum turpis. Etiam volutpat erat et est iaculis blandit. Donec laoreet diam mauris, lacinia auctor felis commodo vestibulum. Quisque ornare, arcu vel placerat varius, tellus est dictum lectus, nec varius leo orci non nisi. Integer convallis rutrum elit. Sed sit amet magna massa. Proin adipiscing, erat lacinia dignissim condimentum, mi sem aliquet nisi, euismod sodales tellus justo et quam. Vivamus a convallis enim, a mollis ipsum. Nullam sit amet volutpat risus. Maecenas non lacus est. Ut quis tincidunt lacus. Etiam egestas lacus ut nulla sollicitudin egestas. Vivamus non purus interdum leo euismod luctus.</p>','yes',2,'lorem-ipsum','lorem','lorem','lorem','2020-09-22 08:49:08'),
(38,NULL,15,1,'Ipsum Dolor','ipsum-dolor.jpg','ipsum dolor','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec enim eros. Nam vestibulum eros a tempor posuere. Phasellus at rhoncus nulla, sed imperdiet eros. Suspendisse pellentesque dui gravida nisi mollis, fermentum sagittis ligula elementum. Nulla facilisi. Maecenas rutrum commodo ipsum, id lacinia massa. Nullam at laoreet tortor. Maecenas lacinia sed metus et lobortis.</p>\r\n<p>Fusce pharetra mi id nisi porta placerat. Ut egestas rhoncus nibh, quis egestas nibh. Morbi non lacus vel mi tristique aliquet in blandit metus. Proin lorem arcu, pulvinar ac neque accumsan, pellentesque faucibus justo. Donec elit nisi, imperdiet a mi sed, imperdiet rhoncus ligula. Praesent non mattis quam. Nulla varius pulvinar nisi eget ultricies. Maecenas consequat pretium laoreet. Cras eu imperdiet elit. Curabitur massa orci, laoreet sed turpis id, vulputate vestibulum eros. Suspendisse scelerisque fringilla leo eu tincidunt. Curabitur sit amet risus metus. Duis venenatis iaculis tellus et porttitor.</p>\r\n<p>Fusce sollicitudin, sem vel dictum laoreet, tellus tortor laoreet nibh, in iaculis lorem est vitae nulla. Fusce at interdum turpis. Etiam volutpat erat et est iaculis blandit. Donec laoreet diam mauris, lacinia auctor felis commodo vestibulum. Quisque ornare, arcu vel placerat varius, tellus est dictum lectus, nec varius leo orci non nisi. Integer convallis rutrum elit. Sed sit amet magna massa. Proin adipiscing, erat lacinia dignissim condimentum, mi sem aliquet nisi, euismod sodales tellus justo et quam. Vivamus a convallis enim, a mollis ipsum. Nullam sit amet volutpat risus. Maecenas non lacus est. Ut quis tincidunt lacus. Etiam egestas lacus ut nulla sollicitudin egestas. Vivamus non purus interdum leo euismod luctus.</p>','yes',4,'ipsum-dolor','lorem','lorem','lorem','2020-09-22 08:51:51'),
(39,NULL,15,1,'Dolor Sit','dolor-sit.jpg','dolor sit','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec enim eros. Nam vestibulum eros a tempor posuere. Phasellus at rhoncus nulla, sed imperdiet eros. Suspendisse pellentesque dui gravida nisi mollis, fermentum sagittis ligula elementum. Nulla facilisi. Maecenas rutrum commodo ipsum, id lacinia massa. Nullam at laoreet tortor. Maecenas lacinia sed metus et lobortis.</p>\r\n<p>Fusce pharetra mi id nisi porta placerat. Ut egestas rhoncus nibh, quis egestas nibh. Morbi non lacus vel mi tristique aliquet in blandit metus. Proin lorem arcu, pulvinar ac neque accumsan, pellentesque faucibus justo. Donec elit nisi, imperdiet a mi sed, imperdiet rhoncus ligula. Praesent non mattis quam. Nulla varius pulvinar nisi eget ultricies. Maecenas consequat pretium laoreet. Cras eu imperdiet elit. Curabitur massa orci, laoreet sed turpis id, vulputate vestibulum eros. Suspendisse scelerisque fringilla leo eu tincidunt. Curabitur sit amet risus metus. Duis venenatis iaculis tellus et porttitor.</p>\r\n<p>Fusce sollicitudin, sem vel dictum laoreet, tellus tortor laoreet nibh, in iaculis lorem est vitae nulla. Fusce at interdum turpis. Etiam volutpat erat et est iaculis blandit. Donec laoreet diam mauris, lacinia auctor felis commodo vestibulum. Quisque ornare, arcu vel placerat varius, tellus est dictum lectus, nec varius leo orci non nisi. Integer convallis rutrum elit. Sed sit amet magna massa. Proin adipiscing, erat lacinia dignissim condimentum, mi sem aliquet nisi, euismod sodales tellus justo et quam. Vivamus a convallis enim, a mollis ipsum. Nullam sit amet volutpat risus. Maecenas non lacus est. Ut quis tincidunt lacus. Etiam egestas lacus ut nulla sollicitudin egestas. Vivamus non purus interdum leo euismod luctus.</p>','yes',20,'dolor-sit','dolor','dolor','dolor','2020-09-22 08:52:38');

/*Table structure for table `blog_category` */

DROP TABLE IF EXISTS `blog_category`;

CREATE TABLE `blog_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text NOT NULL,
  `slug` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `blog_category` */

insert  into `blog_category`(`id`,`title`,`description`,`thumbnail`,`thumbnail_alt`,`use`,`meta_keywords`,`meta_title`,`meta_description`,`slug`) values 
(15,'Architect Bali','<p>Architect Bali</p>',NULL,'Architect Bali','yes','Architect Bali','Architect Bali','Architect Bali','architect-bali'),
(16,'Architect Jawa','<p>Architect Jawa</p>',NULL,'Architect Jawa','yes','Architect Jawa','Architect Jawa','Architect Jawa','architect-jawa');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `view_top_menu` enum('yes','no') DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`id_language`,`title`,`description`,`thumbnail`,`thumbnail_alt`,`slug`,`use`,`view_top_menu`,`meta_keywords`,`meta_title`,`meta_description`) values 
(27,1,'Architect Bali','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Etiam non arcu faucibus, malesuada nunc id, mattis leo. Ut eget augue ut justo fermentum euismod. Nullam commodo, enim nec malesuada convallis, odio dui congue nisi, ac congue nunc metus consectetur purus. Duis venenatis nec erat eu efficitur. Donec commodo nisi id quam interdum volutpat. Fusce sollicitudin cursus maximus. In hac habitasse platea dictumst. Duis egestas semper justo eu congue. Duis odio mauris, tincidunt non enim quis, congue tincidunt sapien. Ut sodales tellus et diam cursus bibendum ac vulputate justo. Donec viverra odio ut venenatis lobortis. Maecenas in vulputate enim. Phasellus elementum pretium nunc, ac iaculis sapien malesuada quis.</p>\r\n<p>Nulla et dignissim justo. Etiam consequat arcu quis urna molestie blandit. Maecenas imperdiet elit et neque bibendum, ut volutpat urna blandit. Maecenas accumsan ante id ante efficitur fermentum. Mauris a mauris commodo, ultrices nisl vel, finibus dui. Nullam quis lobortis diam. Proin malesuada turpis a velit facilisis posuere. Aenean elementum, velit sed tincidunt molestie, orci ipsum efficitur magna, ut tincidunt nunc nulla vel orci. Nulla vitae vehicula lectus. Aliquam faucibus eu ex ac porttitor. Ut dictum scelerisque rutrum. Nullam eu orci tellus.</p>\r\n<p>Aenean quis sem mauris. Nullam at dictum purus. Sed vehicula ex sapien, eget egestas libero sollicitudin eu. Donec eget blandit ex. Sed viverra suscipit ligula sit amet laoreet. Nam sit amet pulvinar ante. Aenean quis neque nulla. Duis quis nisi a nibh ornare imperdiet. Mauris odio purus, ultrices non hendrerit volutpat, porttitor sit amet massa. Aenean dignissim, quam vitae viverra molestie, neque est finibus nisi, id ornare sapien dolor bibendum elit. Morbi odio lorem, pretium vitae scelerisque non, consequat vitae diam.</p>\r\n<p>Aliquam a nisi mauris. Integer aliquet sapien lobortis purus lobortis venenatis. Pellentesque dictum, ligula in tristique suscipit, ipsum velit malesuada nisl, ut tempor nisl lorem in massa. Morbi dignissim dui vel tincidunt vestibulum. Etiam ultricies mi vel justo tincidunt, efficitur fringilla dui accumsan. Vestibulum aliquet risus eu lectus dapibus dignissim. Sed dignissim nunc congue porttitor gravida. Duis sed mauris sem. Cras in porta nunc. Donec laoreet suscipit leo vel suscipit. Integer iaculis libero ut lectus egestas pretium.</p>',NULL,'Architect Bali','architect-bali','yes','yes','Architect Bali','Architect Bali','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.'),
(28,1,'Architect Jawa','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>',NULL,'Architect Jawa','architect-jawa','yes','yes','Architect Jawa','Architect Jawa','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.');

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') NOT NULL,
  `date` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `comment` */

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `dict_variable` varchar(255) DEFAULT NULL,
  `dict_word` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=latin1;

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`id_language`,`dict_variable`,`dict_word`) values 
(92,1,'back','Back'),
(93,2,'back','Kembali'),
(94,1,'book_now','Book Now'),
(95,2,'book_now','Pesan Sekarang'),
(96,1,'development_by','Development By'),
(97,2,'development_by','Dikembangkan Oleh'),
(98,1,'email','Email'),
(99,2,'email','Email'),
(100,1,'free_trial','Free Trial'),
(101,2,'free_trial','Gratis Dicoba'),
(102,1,'handphone','Phone Number'),
(103,2,'handphone','Nomer Handphone'),
(104,1,'message','Message'),
(105,2,'message','Pesan'),
(106,1,'message_send','Send Message'),
(107,2,'message_send','Kirim Pesan'),
(108,1,'name','Name'),
(109,2,'name','Nama'),
(110,1,'request_send','Send Request'),
(111,2,'request_send','Kirim Permintaan'),
(112,1,'security_code','Security Code'),
(113,2,'security_code','Kode Keamanan'),
(114,1,'social_media','Social Media'),
(115,2,'social_media','Media Sosial'),
(116,1,'top_menu','Top Menu'),
(117,2,'top_menu','Menu Utama');

/*Table structure for table `email` */

DROP TABLE IF EXISTS `email`;

CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `use` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `email` */

insert  into `email`(`id`,`email`,`use`) values 
(3,'yasa13darma@gmail.com','yes');

/*Table structure for table `gallery` */

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `gallery` */

insert  into `gallery`(`id`,`title`,`description`,`thumbnail`,`thumbnail_alt`,`use`) values 
(5,'Mengapa1','21','blog-1.jpg','1','yes'),
(7,'1','2','blog-2.jpg','tes','yes'),
(8,'af','','blog-3.jpg','fa','yes'),
(9,'af1','','blog-4.jpg','fa','yes'),
(10,'asdf','','blog-5.jpg','asdf','yes'),
(11,'asdf 1','','blog-6.jpg','asdf','yes'),
(12,'asdfasdf','','blog-1.jpg','asdfadf','yes'),
(13,'asdf','','blog-2.jpg','asdfasdf','yes'),
(14,'asdfasdf','','blog-3.jpg','asdfasdf','yes');

/*Table structure for table `info` */

DROP TABLE IF EXISTS `info`;

CREATE TABLE `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(256) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `info` */

insert  into `info`(`id`,`type`,`title`,`description`) values 
(1,'address','Alamat','<p>Denpasar</p>'),
(2,'phone','Telepon','<p>081234</p>'),
(3,'email','Email','asd@asd.com'),
(4,'opening_hours','Jam Buka','<p><strong>Monday - Thursday</strong>:&nbsp;08AM - 10PM<br /><strong>Friday - Saturday</strong>:&nbsp;10AM - 11:30PM<br /><strong>Sunday</strong>:&nbsp;1PM - 10PM</p>'),
(5,'facebook_link','FaceBook Link','<div>\r\n<div>https://www.instagram.com/red.system/</div>\r\n</div>'),
(6,'instagram_link','Instagram Link','<div>\r\n<div>https://www.facebook.com/redsystem.id</div>\r\n</div>'),
(7,'description_site','Deskripsi','<p>LOREM LOREM LOREM</p>');

/*Table structure for table `language` */

DROP TABLE IF EXISTS `language`;

CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `code` char(10) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `language` */

insert  into `language`(`id`,`title`,`thumbnail`,`code`,`use`) values 
(1,'English','english.png','en','yes'),
(2,'Indonesia','indonesia.png','id','no'),
(3,'Chinese','chinese.png','zh','no'),
(4,'Japan','japan.jpg','jp','no');

/*Table structure for table `new_project` */

DROP TABLE IF EXISTS `new_project`;

CREATE TABLE `new_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `description` text NOT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  `slug` text DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `new_project` */

insert  into `new_project`(`id`,`id_language`,`title`,`thumbnail`,`thumbnail_alt`,`description`,`use`,`slug`,`meta_title`,`meta_description`,`meta_keywords`,`created_at`) values 
(1,1,'Test New Project','test-new-project.jpg','Test New Project','<p>Test New Project</p>\r\n<p><img src=\"http://localhost/redsystem/aula-architect/assets/template_admin/tinymce/plugins/filemanager/../../../../../upload/images/ipsum-dolor.jpg\" alt=\"asd\" width=\"356\" height=\"219\" /></p>','yes','test-new-project','Test New Project','Test New Project','Test New Project','2020-09-23 08:33:22');

/*Table structure for table `pages` */

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `title_sub` varchar(255) DEFAULT NULL,
  `title_menu` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status_seo` enum('yes','no') DEFAULT 'yes',
  `status_thumbnail` enum('yes','no') DEFAULT 'no',
  `status_file` enum('yes','no') DEFAULT 'no',
  `data_1` text DEFAULT NULL,
  `data_1_status` enum('yes','no') DEFAULT 'no',
  `file` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `controller_method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `pages` */

insert  into `pages`(`id`,`id_language`,`id_product`,`title`,`title_sub`,`title_menu`,`thumbnail`,`description`,`meta_title`,`meta_keywords`,`meta_description`,`type`,`status_seo`,`status_thumbnail`,`status_file`,`data_1`,`data_1_status`,`file`,`slug`,`controller_method`) values 
(41,1,NULL,'Home Aula Architect','-','Home Aula Architect',NULL,'<p>Home Aula Architect</p>','Home Aula Architect','Home Aula Architect','Home Aula Architect','home','yes','no','no','null','no',NULL,'home-aula-architect','home'),
(42,1,NULL,'About | Aula Architect','-','About | Aula Architect',NULL,'<p>About</p>','About','About','About','about_us','yes','no','no','null','no',NULL,'about-|-aula-architect',NULL),
(43,1,NULL,'Contact','-','Contact',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. Nunc faucibus a pellentesque sit amet. Pharetra sit amet aliquam id diam maecenas ultricies. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Sagittis id consectetur purus ut faucibus pulvinar elementum integer enim. Et netus et malesuada fames ac turpis. Eget mi proin sed libero enim sed faucibus turpis in. Feugiat in fermentum posuere urna nec tincidunt praesent. Hac habitasse platea dictumst quisque sagittis purus sit amet. Lacus suspendisse faucibus interdum posuere. Maecenas ultricies mi eget mauris pharetra et ultrices neque ornare. Posuere urna nec tincidunt praesent semper. Dictum varius duis at consectetur lorem donec massa. Amet venenatis urna cursus eget nunc scelerisque viverra mauris. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Ante in nibh mauris cursus mattis molestie a iaculis at. Consectetur a erat nam at lectus urna. Ac turpis egestas integer eget aliquet nibh. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis.</p>','Contact','Contact','Contact','contact_us','yes','no','no','null','no',NULL,'contact',NULL),
(44,1,NULL,'News','-','News ',NULL,'<p>News</p>','News','News','News','news','yes','no','no','null','no',NULL,'news-',NULL),
(45,1,NULL,'Press','-','Press',NULL,'<p>Press</p>','Press','Press','Press','press','yes','no','no','null','no',NULL,'press',NULL),
(46,1,NULL,'New Project','New Project','New Project',NULL,'<p>New Project</p>',NULL,NULL,NULL,'new_project','no','no','no','null','no',NULL,'new-project',NULL);

/*Table structure for table `press` */

DROP TABLE IF EXISTS `press`;

CREATE TABLE `press` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text DEFAULT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `description` text NOT NULL,
  `url` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `press` */

insert  into `press`(`id`,`id_language`,`title`,`thumbnail`,`thumbnail_alt`,`description`,`url`,`use`,`created_at`) values 
(1,1,'Lorem Press','lorem-press10.jpg','lorem press','<p>Lorem Press</p>','https://www.liputan6.com/news/read/4363100/menengok-kondisi-terkini-menteri-agama-fachrul-razi-usai-positif-covid-19','yes','2020-09-22 11:56:49');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_sub` varchar(255) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `best_seller` enum('yes','no') DEFAULT NULL,
  `new_status` enum('yes','no') DEFAULT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` varchar(255) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `price_old` int(11) DEFAULT NULL,
  `star` tinyint(2) DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`id`,`id_language`,`id_category`,`title`,`title_sub`,`slug`,`use`,`best_seller`,`new_status`,`description`,`thumbnail`,`thumbnail_alt`,`price`,`price_old`,`star`,`meta_title`,`meta_description`,`meta_keywords`,`created_at`,`updated_at`) values 
(55,1,27,'Rumah Adat Bali','Rumah Adat Bali','rumah-adat-bali','yes',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>','project-lorem.jpg','Rumah Adat Bali',NULL,NULL,NULL,'Rumah Adat Bali','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincid','Rumah Adat Bali','2020-09-23 07:27:13','2020-09-24 07:22:03'),
(56,1,28,'Villa Lorem','VIlla Lorem','villa-lorem','yes',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>','project-ipsum.jpg','Villa Ipsum',NULL,NULL,NULL,'Villa Lorem','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincid','Villa Lorem','2020-09-23 07:27:41','2020-09-24 07:20:46'),
(57,1,28,'Rumah Joglo','Rumah Joglo','rumah-joglo','yes',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>','rumah-joglo.jpg','Rumah Joglo',NULL,NULL,NULL,'Rumah Joglo','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincid','Rumah Joglo','2020-09-24 07:23:01',NULL),
(58,1,27,'Villa Cidingin','Villa Cidingin','villa-cidingin','yes',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>','villa-cidingin.jpg','Villa Cidingin',NULL,NULL,NULL,'Villa Cidingin','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincid','Villa Cidingin','2020-09-24 07:24:00',NULL),
(59,1,27,'Villa Canggu','Villa Canggu','villa-canggu','yes',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>','villa-canggu.jpg','VIlla Canggu',NULL,NULL,NULL,'Villa Canggu','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincid','Villa Canggu','2020-09-24 07:27:09',NULL),
(60,1,27,'Villa Nusa Ceningan','Villa Nusa Ceningan','villa-nusa-ceningan','yes',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>','villa-nusa-ceningan.jpg','Villa Nusa Ceningan',NULL,NULL,NULL,'Villa Nusa Ceningan','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincid','Villa Nusa Ceningan','2020-09-24 07:27:58',NULL),
(61,1,27,'Hotel Canggu','Hotel Canggu','hotel-canggu','yes',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>','hotel-canggu.jpg','Hotel Canggu',NULL,NULL,NULL,'Hotel Canggu','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincid','Hotel Canggu','2020-09-24 07:29:15',NULL),
(62,1,27,'Villa Marga','Villa Marga','villa-marga','yes',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>','villa-marga.jpg','Villa Marga',NULL,NULL,NULL,'VIlla Marga','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincid','Villa Marga','2020-09-24 07:30:40',NULL),
(63,1,27,'VIlla Tibubeneng','VIlla Tibubeneng','villa-tibubeneng','yes',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>','villa-tibubeneng.jpg','VIlla Tibubeneng',NULL,NULL,NULL,'Villa Tibubeneng','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincid','Villa Tibubeneng','2020-09-24 07:31:53',NULL),
(64,1,27,'Villa Sindhu','VIlla Sindhu','villa-sindhu','yes',NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>','villa-sindhu.jpg','Villa Sindhu',NULL,NULL,NULL,'Villa Sindhu','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincid','Villa Sindhu','2020-09-24 07:32:54',NULL);

/*Table structure for table `product_gallery` */

DROP TABLE IF EXISTS `product_gallery`;

CREATE TABLE `product_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use_view` enum('yes','no') DEFAULT 'no',
  `use_thumbnail` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `product_gallery` */

insert  into `product_gallery`(`id`,`id_product`,`title`,`description`,`thumbnail`,`thumbnail_alt`,`use_view`,`use_thumbnail`) values 
(15,54,'-','','product-1.jpg','-','yes','no'),
(16,54,'-','','product-2.jpg','-','yes','no'),
(17,54,'-','','product-3.jpg','-','yes','yes'),
(18,53,'-','','product-4.jpg','-','yes','yes'),
(19,53,'-','','product-5.jpg','-','yes','no'),
(20,53,'-','','product-6.jpg','-','yes','no'),
(21,52,'-','','product-7.jpg','-','yes','yes'),
(22,52,'-','','product-8.jpg','-','yes','no'),
(23,52,'-','','product-1.jpg','-','yes','no'),
(24,51,'-','','product-2.jpg','-','yes','yes'),
(25,51,'-','','product-3.jpg','-','yes','no'),
(26,51,'-','','product-4.jpg','-','yes','no'),
(27,50,'-','','product-5.jpg','-','yes','yes'),
(28,50,'-','','product-6.jpg','-','yes','no'),
(29,50,'-','','product-7.jpg','-','yes','no'),
(30,49,'-','','product-8.jpg','-','yes','yes'),
(31,49,'-','','product-1.jpg','-','yes','no'),
(32,49,'-','','product-2.jpg','-','yes','no'),
(33,48,'-','','product-3.jpg','-','yes','yes'),
(34,48,'-','','product-4.jpg','-','yes','no'),
(35,48,'-','','product-5.jpg','-','yes','no'),
(36,47,'-','','product-6.jpg','-','yes','yes'),
(37,47,'-','','product-7.jpg','-','yes','no'),
(38,47,'-','','product-8.jpg','-','yes','no'),
(39,46,'-','','product-1.jpg','-','yes','yes'),
(40,46,'-','','product-2.jpg','-','yes','no'),
(41,46,'-','','product-3.jpg','-','yes','no');

/*Table structure for table `reservation` */

DROP TABLE IF EXISTS `reservation`;

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tour` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(50) NOT NULL,
  `address` text DEFAULT NULL,
  `country` varchar(255) NOT NULL,
  `tour_start` varchar(255) NOT NULL,
  `total_adult` int(50) NOT NULL,
  `total_children` int(50) NOT NULL,
  `message` int(50) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `reservation` */

insert  into `reservation`(`id`,`id_tour`,`title`,`first_name`,`last_name`,`email`,`phone`,`address`,`country`,`tour_start`,`total_adult`,`total_children`,`message`,`created_at`) values 
(1,NULL,'mr','kusuma','wardana','kadek.kusuma.wardana@gmail.com',895616869,NULL,'indonesia','besok',1,1,1,'0000-00-00 00:00:00'),
(2,3,'Mr.','Mahendra','Wardana','mahendra.adi.wardana@gmail.com',2147483647,'Jalan Ratna','Indonesia','06/10/2019 6:27 AM',1,0,0,'2019-10-06 06:29:50');

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_sub` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` varchar(255) NOT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `recommend_shop` enum('yes','no') DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `shop` */

/*Table structure for table `slider` */

DROP TABLE IF EXISTS `slider`;

CREATE TABLE `slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` varchar(255) DEFAULT NULL,
  `align` varchar(255) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `use` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `slider` */

insert  into `slider`(`id`,`id_language`,`title`,`description`,`thumbnail`,`thumbnail_alt`,`align`,`url`,`use`) values 
(15,1,'Lorem Ipsum Sit Dolor','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','lorem-ipsum-sit-dolor.jpg','Lorem Ipsum','center','','yes'),
(16,1,'Dolor Sit Amet','Lorem Ipsum Sit Dolor Amet ','dolor-sit-amet.jpg','Lorem Ipsum Dolor','center','','yes');

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `team` */

insert  into `team`(`id`,`title`,`position`,`description`,`thumbnail`,`thumbnail_alt`,`use`,`meta_title`,`meta_description`,`meta_keywords`) values 
(15,'Etick Pristyan Dewi','Team Hore','<p>1</p>','etick-pristyan-dewi.jpeg',NULL,'yes','1','2','3'),
(16,'Ida Ayu Indira Dwika Lestari','CEO','2','ida-ayu-indira-dwika-lestari.jpeg',NULL,'yes',NULL,NULL,NULL),
(17,'Made Awi','CPO','3','made-awi.jpeg',NULL,'yes',NULL,NULL,NULL),
(18,'Irwan','COO','4','irwan.jpeg',NULL,'yes',NULL,NULL,NULL),
(19,'Gung De','CIO','5','gung-de.jpeg',NULL,'yes',NULL,NULL,NULL);

/*Table structure for table `tour` */

DROP TABLE IF EXISTS `tour`;

CREATE TABLE `tour` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_sub` varchar(255) DEFAULT NULL,
  `use` enum('yes','no') DEFAULT NULL,
  `description` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tour` */

/*Table structure for table `tour_gallery` */

DROP TABLE IF EXISTS `tour_gallery`;

CREATE TABLE `tour_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tour` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text DEFAULT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `tour_gallery` */

insert  into `tour_gallery`(`id`,`id_tour`,`title`,`description`,`thumbnail`,`thumbnail_alt`,`use`) values 
(5,NULL,'Mengapa1','21','mengapa11.jpeg','1','yes'),
(7,NULL,'1','2','15.jpeg','tes','yes'),
(9,3,'11','','11.jpeg','31','yes'),
(10,3,'1','','1.jpeg','2','yes'),
(11,3,'2','','2.jpeg','3','yes'),
(12,3,'Gili Gili Fast Boat','','gili-gili-fast-boat.jpeg','2','yes'),
(13,3,'1','','1.jpeg','2','yes'),
(14,3,'1 2','','1-2.jpeg','2','yes'),
(15,4,'1','','1.jpeg','test','yes'),
(16,5,'1','','1.jpeg','2','yes');

/*Table structure for table `video` */

DROP TABLE IF EXISTS `video`;

CREATE TABLE `video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `video` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `video` */

insert  into `video`(`id`,`title`,`description`,`video`) values 
(3,'kusuma','film eksklusif kusuma ','<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/GOEf6IaCnjU\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
