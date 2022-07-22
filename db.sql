/*
SQLyog Community
MySQL - 5.5.64-MariaDB : Database - aula_architect
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
  `thumbnail` text,
  `thumbnail_alt` text,
  `description` text NOT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  `views` int(11) DEFAULT NULL,
  `slug` text,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Data for the table `blog` */

insert  into `blog`(`id`,`id_team`,`id_blog_category`,`id_language`,`title`,`thumbnail`,`thumbnail_alt`,`description`,`use`,`views`,`slug`,`meta_title`,`meta_description`,`meta_keywords`,`created_at`) values 
(40,NULL,15,1,'The Most Beautiful Cliffside House','rumah-tepi-tebing-terindah.jpg','The Most Beautiful Cliffside House','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','yes',NULL,'the-most-beautiful-cliffside-house','The Most Beautiful Cliffside House','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante','The Most Beautiful Cliffside House','2020-09-30 02:22:21'),
(41,NULL,15,1,'Best Luxury Hotel in the Word','hotel-termegah-di-dunia.jpg','Best Luxury Hotel in the Word','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','yes',NULL,'best-luxury-hotel-in-the-word','Best Luxury Hotel in the Word','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante','Best Luxury Hotel in the Word','2020-09-30 02:26:57'),
(42,NULL,15,1,'Tips And Trick In Property Investation','tips-and-trick-in-property-investation.jpg','Tips And Trick In Property Investation','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','yes',1,'tips-and-trick-in-property-investation','Tips And Trick In Property Investation','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante','Tips And Trick In Property Investation','2020-09-30 02:28:29'),
(43,NULL,15,1,' Property Business in 2020','-property-business-in-2020.jpg',' Property Business in 2020','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','yes',5,'-property-business-in-2020',' Property Business in 2020','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante',' Property Business in 2020','2020-09-30 02:31:35');

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
  `slug` text,
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
  `slug` text,
  `use` enum('yes','no') DEFAULT NULL,
  `view_top_menu` enum('yes','no') DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`id_language`,`title`,`description`,`thumbnail`,`thumbnail_alt`,`slug`,`use`,`view_top_menu`,`meta_keywords`,`meta_title`,`meta_description`) values 
(28,1,'Houses','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc placerat nunc rutrum diam pretium porttitor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Phasellus varius id sapien a eleifend. Fusce sit amet tincidunt magna, eget feugiat neque. Donec scelerisque, metus dictum ultricies malesuada, nunc metus malesuada lacus, sit amet porttitor dui sapien sit amet sapien. Mauris aliquam volutpat est eget tristique. Nunc consequat ante sit amet nunc convallis, ut molestie massa vestibulum. Praesent semper augue et enim maximus, et venenatis augue convallis. Aliquam porta sit amet arcu sit amet ornare. Aliquam vitae nisl diam. Phasellus ac vestibulum nibh.</p>',NULL,'Architect Jawa','houses','yes','yes','House Design','Houses',' aula architect provides design creation services'),
(29,1,'Hospitality','<p>-</p>',NULL,'aula architect - hospitality','hospitality','yes','yes','aula architect, hospitality','hospitality',' aula architect provides design services for hospitality'),
(30,1,'Villas','<p>-</p>',NULL,'aula architect - villas','villas','yes','yes','aula architect, villas','villas','aula architect provides design services for the villa'),
(31,1,'Yatch','<p>-</p>',NULL,'aula architect - yatch','yatch','yes','yes','aula architect, yatch','yatch','aula architect provides design services for yatch');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `email` */

insert  into `email`(`id`,`email`,`use`) values 
(3,'yasa13darma@gmail.com','yes'),
(4,'sibangprogrammer@gmail.com','yes');

/*Table structure for table `gallery` */

DROP TABLE IF EXISTS `gallery`;

CREATE TABLE `gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text,
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `info` */

insert  into `info`(`id`,`type`,`title`,`description`) values 
(1,'address','Alamat','<p>Denpasar</p>'),
(2,'phone','Telepon','<p>081234</p>'),
(3,'email','Email','asd@asd.com'),
(4,'opening_hours','Jam Buka','<p><strong>Monday - Thursday</strong>:&nbsp;08AM - 10PM<br /><strong>Friday - Saturday</strong>:&nbsp;10AM - 11:30PM<br /><strong>Sunday</strong>:&nbsp;1PM - 10PM</p>'),
(5,'facebook_link','FaceBook Link','<div>\r\n<div>https://www.instagram.com/red.system/</div>\r\n</div>'),
(6,'instagram_link','Instagram Link','<div>\r\n<div>https://www.facebook.com/redsystem.id</div>\r\n</div>');

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
  `thumbnail` text,
  `thumbnail_alt` text,
  `description` text NOT NULL,
  `use` enum('yes','no') DEFAULT 'no',
  `slug` text,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keywords` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `new_project` */

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
  `description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status_seo` enum('yes','no') DEFAULT 'yes',
  `status_thumbnail` enum('yes','no') DEFAULT 'no',
  `status_file` enum('yes','no') DEFAULT 'no',
  `data_1` text,
  `data_1_status` enum('yes','no') DEFAULT 'no',
  `file` text,
  `slug` varchar(255) DEFAULT NULL,
  `controller_method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `pages` */

insert  into `pages`(`id`,`id_language`,`id_product`,`title`,`title_sub`,`title_menu`,`thumbnail`,`description`,`meta_title`,`meta_keywords`,`meta_description`,`type`,`status_seo`,`status_thumbnail`,`status_file`,`data_1`,`data_1_status`,`file`,`slug`,`controller_method`) values 
(41,1,NULL,'Home — Aula Architect','-','Home — Aula Architect',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','Home — Aula Architect','Home — Aula Architect','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante','home','yes','no','no','null','no',NULL,'home','home'),
(42,1,NULL,'About | Aula Architect','-','About | Aula Architect',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','About — Aula Architect','About — Aula Architect','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante','about_us','yes','no','no','null','no',NULL,'about',NULL),
(43,1,NULL,'Contact | Aula Architect','-','Contact',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis eu volutpat odio facilisis mauris sit amet massa vitae. Nunc faucibus a pellentesque sit amet. Pharetra sit amet aliquam id diam maecenas ultricies. Aenean euismod elementum nisi quis eleifend quam adipiscing vitae. Sagittis id consectetur purus ut faucibus pulvinar elementum integer enim. Et netus et malesuada fames ac turpis. Eget mi proin sed libero enim sed faucibus turpis in. Feugiat in fermentum posuere urna nec tincidunt praesent. Hac habitasse platea dictumst quisque sagittis purus sit amet. Lacus suspendisse faucibus interdum posuere. Maecenas ultricies mi eget mauris pharetra et ultrices neque ornare. Posuere urna nec tincidunt praesent semper. Dictum varius duis at consectetur lorem donec massa. Amet venenatis urna cursus eget nunc scelerisque viverra mauris. Fermentum iaculis eu non diam phasellus vestibulum lorem sed risus. Ante in nibh mauris cursus mattis molestie a iaculis at. Consectetur a erat nam at lectus urna. Ac turpis egestas integer eget aliquet nibh. Elementum nisi quis eleifend quam adipiscing vitae proin sagittis.</p>','Contact — Aula Architect','Contact — Aula Architect','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante','contact_us','yes','no','no','null','no',NULL,'contact',NULL),
(44,1,NULL,'News — Aula Architect','-','News — Aula Architect',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','News — Aula Architect','News — Aula Architect','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante','news','yes','no','no','null','no',NULL,'news',NULL),
(45,1,NULL,'Press — Aula Architect','-','Press — Aula Architect',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','Press — Aula Architect','Press — Aula Architect','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante','press','yes','no','no','null','no',NULL,'press',NULL),
(46,1,NULL,'New Project — Aula Architect','-','New Project — Aula Architect',NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>',NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante','new_project','yes','no','no','null','no',NULL,'new-project',NULL);

/*Table structure for table `press` */

DROP TABLE IF EXISTS `press`;

CREATE TABLE `press` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `thumbnail` text,
  `thumbnail_alt` text,
  `description` text NOT NULL,
  `url` text,
  `use` enum('yes','no') DEFAULT 'no',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `press` */

insert  into `press`(`id`,`id_language`,`title`,`thumbnail`,`thumbnail_alt`,`description`,`url`,`use`,`created_at`) values 
(1,1,' Best Property Company in Bali','-best-property-company-in-bali.jpg',' Best Property Company in Bali','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','https://redsystem.id','yes','2020-09-22 11:56:49'),
(3,1,'Best Property Awardness From Lorem Ipsum in 2020','best-property-awardness-from-lorem-ipsum-in-2020.jpg','Best Property Awardness From Lorem Ipsum in 2020','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','https://google.com','yes','2020-09-30 02:34:15'),
(4,1,'Awardness From Dolor Sit in 2019','awardness-from-dolor-sit-in-2019.jpg','Awardness From Dolor Sit in 2019','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante non tincidunt. Aenean tempus velit luctus, ultricies dolor at, maximus nunc. Maecenas sodales porta nibh a feugiat. Nulla quis feugiat purus. Aliquam ex ex, vestibulum eu fringilla eget, fringilla ut augue. Curabitur commodo lectus a tortor blandit dictum. Nullam elementum vulputate porta. Quisque faucibus lorem elit, fermentum interdum quam hendrerit et.</p>\r\n<p>In sollicitudin lacus in tempus consequat. Quisque sagittis ut lorem ut commodo. Etiam rutrum sapien lobortis neque accumsan cursus. Ut nunc nisi, mattis vel malesuada sed, faucibus euismod nunc. Sed hendrerit sed lorem a tempus. Ut mi orci, molestie et bibendum nec, commodo eu augue. In iaculis non ipsum et tristique. Quisque vestibulum dolor ac diam ultricies pulvinar. Donec arcu risus, vehicula a urna sit amet, blandit dictum diam. Suspendisse maximus ante vel turpis tincidunt facilisis. Duis venenatis tempor tortor, vel rutrum odio. Pellentesque lectus mi, ornare vitae ultricies vitae, eleifend ut diam. Aliquam non suscipit odio. Cras ac nisi sit amet nibh placerat maximus. Duis fermentum dignissim est quis suscipit.</p>\r\n<p>Mauris pretium gravida magna, eget commodo erat porta ac. Sed in elit a mauris dictum aliquam. Donec dolor nisi, rhoncus vel consectetur eu, dapibus quis eros. Aenean vel tristique neque, varius vehicula ipsum. Praesent facilisis viverra scelerisque. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Cras vestibulum mi nunc, non efficitur elit posuere eu. Pellentesque aliquet condimentum tristique. Morbi sit amet lacus non magna feugiat pharetra id non nisl. Suspendisse nunc dui, fermentum vitae gravida sit amet, varius nec massa. Mauris volutpat mauris lacus, eu imperdiet dolor molestie nec. Sed in ante vel metus facilisis molestie nec id dolor. Vivamus sit amet tristique sem. Proin a purus sed mi commodo pretium. Aliquam libero lorem, ullamcorper a dui vitae, ornare vestibulum libero. Cras accumsan elementum tristique.</p>\r\n<p>Aliquam maximus diam ac justo tempus, aliquet sollicitudin tellus dapibus. Praesent placerat turpis dui, et eleifend enim ultrices ac. Maecenas non efficitur enim. In hac habitasse platea dictumst. Vestibulum vitae ex malesuada, molestie lacus et, venenatis mi. Aliquam ac leo purus. Integer et nunc volutpat, sollicitudin dolor ut, laoreet justo. Praesent nec arcu id purus efficitur aliquet vitae id augue. Quisque malesuada turpis nec mi mollis, eu pretium massa molestie. Sed suscipit, quam vitae vestibulum venenatis, est mauris porta enim, vulputate convallis felis tellus quis lorem. Donec blandit purus at sapien tristique blandit. Proin tristique dui at ligula venenatis placerat. Suspendisse sollicitudin commodo quam, sit amet faucibus ante pharetra non. Etiam eget ipsum bibendum, pulvinar diam nec, tempus dolor. Curabitur nec condimentum libero.</p>\r\n<p>Suspendisse elit enim, aliquam in tincidunt at, laoreet vel lorem. Integer dolor tortor, consequat non libero quis, convallis commodo sapien. Sed tincidunt massa mauris, eu ornare nibh congue non. Sed fermentum, lorem vitae gravida pretium, augue magna varius est, lacinia tincidunt leo purus tempor nulla. Praesent commodo libero quis magna lacinia, sit amet vehicula odio faucibus. Ut ultrices magna non justo consectetur lobortis. Pellentesque ultricies venenatis nulla, vel mattis justo tempor sit amet. Donec ut tincidunt felis. Suspendisse mattis, risus porta ultricies convallis, augue neque efficitur lectus, ac lacinia tortor ante eu libero. Vivamus eu tincidunt dolor. Aliquam erat volutpat. Phasellus ac turpis ligula. Mauris eleifend sed libero laoreet accumsan. Vestibulum elementum finibus lorem sed laoreet.</p>','https://google.com','yes','2020-09-30 02:35:42');

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_language` int(11) DEFAULT NULL,
  `id_category` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `title_sub` varchar(255) DEFAULT NULL,
  `slug` text,
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=latin1;

/*Data for the table `product` */

insert  into `product`(`id`,`id_language`,`id_category`,`title`,`title_sub`,`slug`,`use`,`best_seller`,`new_status`,`description`,`thumbnail`,`thumbnail_alt`,`price`,`price_old`,`star`,`meta_title`,`meta_description`,`meta_keywords`,`created_at`,`updated_at`) values 
(57,1,29,'Dusk Blue                                                                               ','Dusk Blue ','dusk-blue-------------------------------------------------------------------------------','yes',NULL,NULL,'<p>-</p>','dusk-blue.jpg','Dusk Blue',NULL,NULL,NULL,'Dusk Blue','Dusk Blue','Dusk Blue','2020-09-24 07:23:01','2021-01-06 04:16:11'),
(68,1,29,'Grocer n Grind','Grocer n Grind','grocer-n-grind','yes',NULL,NULL,'<p>-</p>','grocer-n-grind1.jpg','aula architect - grocer n grind',NULL,NULL,NULL,'Grocer n Grind','Grocer n Grind','Grocer n Grind','2021-01-05 03:26:55','2021-01-06 02:46:40'),
(69,1,29,'Jiwa Bali Resort','Jiwa Bali Resort','jiwa-bali-resort','yes',NULL,NULL,'<p>-</p>','jiwa-bali-resort1.jpg','aula architect - jiwa bali resort',NULL,NULL,NULL,'jiwa bali resort','jiwa bali resort','jiwa bali resort','2021-01-05 03:32:10','2021-01-06 02:48:09'),
(70,1,29,'Langham Ningbo','Langham Ningbo','langham-ningbo','yes',NULL,NULL,'<p>-</p>','langham-ningbo1.jpg','aula architect - lagham ningbo',NULL,NULL,NULL,'langham ningbo','langham ningbo','langham ningbo','2021-01-05 03:33:37','2021-01-06 04:08:48'),
(71,1,29,'Langham Place Bali','Langham Place Bali','langham-place-bali','yes',NULL,NULL,'<p>-</p>','langham-place-bali2.jpg','aula architect - langham place bali',NULL,NULL,NULL,'langham place bali','langham place bali','langham place bali','2021-01-05 03:36:35','2021-01-06 04:07:16'),
(72,1,29,'OK Divers Resort & Spa','OK Divers Resort & Spa','ok-divers-resort-and-spa','yes',NULL,NULL,'<p>-</p>','ok-divers-resort-and-spa1.jpg','aula architect - OK Divers Resort & Spa',NULL,NULL,NULL,'OK Divers Resort & Spa','OK Divers Resort & Spa','OK Divers Resort & Spa','2021-01-05 03:41:15','2021-01-06 04:09:45'),
(73,1,29,'The Colonial Restaurant','The Colonial Restaurant','the-colonial-restaurant','yes',NULL,NULL,'<p>-</p>','the-colonial-restaurant1.jpg','aula architect - The Colonial Restaurant',NULL,NULL,NULL,'The Colonial Restaurant','The Colonial Restaurant','The Colonial Restaurant','2021-01-05 03:43:09','2021-01-06 04:16:49'),
(74,1,28,'Alex Residence','Alex Residence','alex-residence','yes',NULL,NULL,'<p>-</p>','alex-residence.jpg','aula architect - alex Residence',NULL,NULL,NULL,'alex residence','alex residence','alex residence','2021-01-05 03:51:16','2021-01-06 04:20:22'),
(75,1,28,'Imbo','Imbo','imbo','yes',NULL,NULL,'<p>-</p>','imbo.jpg','aula architect - Imbo',NULL,NULL,NULL,'Imbo','Imbo','Imbo','2021-01-05 03:54:19','2021-01-06 04:23:28'),
(78,1,30,'Casa Del Mar','Casa Del Mar','casa-del-mar','yes',NULL,NULL,'<p>-</p>','casa-del-mar2.jpg','aula architect - casa del mar',NULL,NULL,NULL,'Casa Del Mar','Casa Del Mar','Casa Del Mar','2021-01-05 04:09:25','2021-01-06 05:24:01'),
(79,1,30,'Dugong Villa','Dugong Villa','dugong-villa','yes',NULL,NULL,'<p>-</p>','dugong-villa1.jpg','aula architect - dugong villa',NULL,NULL,NULL,'Dugong Villa','Dugong Villa','Dugong Villa','2021-01-05 05:09:32','2021-01-06 05:25:24'),
(80,1,30,'Gita Segara ','Gita Segara ','gita-segara-','yes',NULL,NULL,'<p>-</p>','gita-segara-1.jpg','aula architect - Gita Segara ',NULL,NULL,NULL,'Gita Segara ','Gita Segara ','Gita Segara ','2021-01-05 05:10:57','2021-01-06 05:25:50'),
(81,1,30,'Gunung Lakshmi','Gunung Lakshmi','gunung-lakshmi','yes',NULL,NULL,'<p>-</p>','gunung-lakshmi.jpg','aula architect - gunung lakshmi',NULL,NULL,NULL,'Gunung Lakshmi','Gunung Lakshmi','Gunung Lakshmi','2021-01-05 05:14:56','2021-01-06 05:27:28'),
(82,1,30,'Kerang Jimbaran','Kerang Jimbaran','kerang-jimbaran','yes',NULL,NULL,'<p>-</p>','kerang-jimbaran1.jpg','aula architect - kerang jimbaran',NULL,NULL,NULL,'Kerang Jimbarana','Kerang Jimbarana','Kerang Jimbarana','2021-01-05 05:15:22','2021-01-06 05:29:13'),
(83,1,30,'Kerang Jimbaran 2','Kerang Jimbaran 2','kerang-jimbaran-2','yes',NULL,NULL,'<p>-</p>','kerang-jimbaran-21.jpg','aula architect - kerang jimbaran',NULL,NULL,NULL,'Kerang Jimbaran','Kerang Jimbaran','Kerang Jimbaran','2021-01-05 05:17:25','2021-01-06 05:36:26'),
(84,1,30,'Sandy Bay','Sandy Bay','sandy-bay','yes',NULL,NULL,'<p>-</p>','sandy-bay1.jpg','Sandy Bay',NULL,NULL,NULL,'Sandy Bay','Sandy Bay','Sandy Bay','2021-01-05 05:19:02','2021-01-06 05:37:37'),
(85,1,30,'Seroja Villa','Seroja Villa','seroja-villa','yes',NULL,NULL,'<p>-</p>','seroja-villa1.jpg','aula architect - seroja villa',NULL,NULL,NULL,'Seroja Villa','Seroja Villa','Seroja Villa','2021-01-05 05:20:25','2021-01-06 05:39:34'),
(86,1,30,'THC Lembongan','THC Lembongan','thc-lembongan','yes',NULL,NULL,'<p>-</p>','thc-lembongan1.jpg','aula architect - THC Lembongan',NULL,NULL,NULL,'THC Lembongan','THC Lembongan','THC Lembongan','2021-01-05 05:21:22','2021-01-06 05:40:57'),
(87,1,30,'The Joy Villa','The Joy Villa','the-joy-villa','yes',NULL,NULL,'<p>-</p>','the-joy-villa1.jpg','aula architect - the joy villa',NULL,NULL,NULL,'The Joy Villa','The Joy Villa','The Joy Villa','2021-01-05 05:24:55','2021-01-06 05:44:58'),
(88,1,30,'Villa Colibri','Villa Colibri','villa-colibri','yes',NULL,NULL,'<p>-</p>','villa-colibri1.jpg','aula architect - villa colibri',NULL,NULL,NULL,'Villa Colibri','Villa Colibri','Villa Colibri','2021-01-05 05:31:12','2021-01-06 05:43:08'),
(89,1,30,'Villa Kurukera','Villa Kurukera','villa-kurukera','yes',NULL,NULL,'<p>-</p>','villa-kurukera.jpg','aula architect - Villa Kurukera',NULL,NULL,NULL,'Villa Kurukera','Villa Kurukera','Villa Kurukera','2021-01-05 05:32:32',NULL),
(90,1,30,'Villa Manis','Villa Manis','villa-manis','yes',NULL,NULL,'<p>-</p>','villa-manis1.jpg','aula architect - Villa Manis',NULL,NULL,NULL,'Villa Manis','Villa Manis','Villa Manis','2021-01-05 05:35:00','2021-01-06 05:46:19'),
(91,1,30,'Villa Waru','Villa Waru','villa-waru','yes',NULL,NULL,'<p>-</p>','villa-waru1.jpg','aula architect - Villa Waru',NULL,NULL,NULL,'Villa Waru','Villa Waru','Villa Waru','2021-01-05 05:35:59','2021-01-06 07:28:04'),
(92,1,30,'Villa Waru Lembongan','Villa Waru Lembongan','villa-waru-lembongan','yes',NULL,NULL,'<p>-</p>','villa-waru-lembongan1.jpg','aula architect - Villa Waru Lembongan',NULL,NULL,NULL,'Villa Waru Lembongan','Villa Waru Lembongan','Villa Waru Lembongan','2021-01-05 05:36:44','2021-01-06 07:30:21'),
(94,1,31,'Mischief','Mischief','mischief','yes',NULL,NULL,'<p>-</p>','mischief1.jpg','aula architect - mischief',NULL,NULL,NULL,'Mischief','Mischief','Mischief','2021-01-05 09:16:52','2021-01-06 07:32:12'),
(95,1,31,'Rascal','Rascal','rascal','yes',NULL,NULL,'<p>-</p>','rascal1.jpg','aula architect - rascal',NULL,NULL,NULL,'Rascal','Rascal','Rascal','2021-01-05 09:21:59','2021-01-06 07:34:17');

/*Table structure for table `product_gallery` */

DROP TABLE IF EXISTS `product_gallery`;

CREATE TABLE `product_gallery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text,
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
  `address` text,
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `slider` */

insert  into `slider`(`id`,`id_language`,`title`,`description`,`thumbnail`,`thumbnail_alt`,`align`,`url`,`use`) values 
(15,1,'Best Property Awardness','Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.','best-property-awardness.jpg','Best Property Awardness','center','https://google.com','yes'),
(16,1,'Beautiful Design','Lorem Ipsum Now Launched','lorem-ipsum-now-launched.jpg','Lorem Ipsum Now Launched','center','https://google.com','yes'),
(17,1,'Excellent Works','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras non varius tellus. Nunc mollis, massa lacinia euismod hendrerit, augue quam iaculis diam, in dapibus purus nisi varius diam. Nulla cursus mi vel tellus tempus scelerisque. Morbi varius nec ante','excellent-works2.jpg','Excellent Works','center','https://google.com','yes');

/*Table structure for table `team` */

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `description` text,
  `thumbnail` varchar(255) NOT NULL,
  `thumbnail_alt` text,
  `use` enum('yes','no') DEFAULT 'no',
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
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
  `thumbnail_alt` text,
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
