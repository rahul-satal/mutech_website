-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 10, 2015 at 07:26 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mutech_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'rahul');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_0e939a4f` (`group_id`),
  KEY `auth_group_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 21),
(1, 1, 28),
(3, 1, 37);

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_417f1b1c` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add news', 7, 'add_news'),
(20, 'Can change news', 7, 'change_news'),
(21, 'Can delete news', 7, 'delete_news'),
(22, 'Can add profile pic', 8, 'add_profilepic'),
(23, 'Can change profile pic', 8, 'change_profilepic'),
(24, 'Can delete profile pic', 8, 'delete_profilepic'),
(25, 'Can add branch', 9, 'add_branch'),
(26, 'Can change branch', 9, 'change_branch'),
(27, 'Can delete branch', 9, 'delete_branch'),
(28, 'Can add video', 10, 'add_video'),
(29, 'Can change video', 10, 'change_video'),
(30, 'Can delete video', 10, 'delete_video'),
(31, 'Can add image', 11, 'add_image'),
(32, 'Can change image', 11, 'change_image'),
(33, 'Can delete image', 11, 'delete_image'),
(34, 'Can add training', 12, 'add_training'),
(35, 'Can change training', 12, 'change_training'),
(36, 'Can delete training', 12, 'delete_training'),
(37, 'Can add project', 13, 'add_project'),
(38, 'Can change project', 13, 'change_project'),
(39, 'Can delete project', 13, 'delete_project'),
(40, 'Can add product', 14, 'add_product'),
(41, 'Can change product', 14, 'change_product'),
(42, 'Can delete product', 14, 'delete_product');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$12000$z9HOo9NmChR4$8rso7bnaR5WK+fFGwpMg/QV3NvaH/z1+h4k3I/3/C7A=', '2015-04-10 13:06:24', 1, 'rahulsatal', '', '', 'rahulsatal92@gmail.com', 1, 1, '2015-03-24 10:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_e8701ad4` (`user_id`),
  KEY `auth_user_groups_0e939a4f` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_e8701ad4` (`user_id`),
  KEY `auth_user_user_permissions_8373b171` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_417f1b1c` (`content_type_id`),
  KEY `django_admin_log_e8701ad4` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=55 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-03-28 10:24:35', '1', 'Image object', 1, '', 11, 1),
(2, '2015-04-01 10:15:51', '1', 'Product object', 1, '', 14, 1),
(3, '2015-04-02 11:08:21', '1', 'product object', 2, 'No fields changed.', 14, 1),
(4, '2015-04-03 11:20:23', '1', 'branch object', 1, '', 9, 1),
(5, '2015-04-03 11:23:30', '1', 'project object', 1, '', 13, 1),
(6, '2015-04-03 12:45:56', '2', 'product object', 1, '', 14, 1),
(7, '2015-04-03 12:50:36', '1', 'rahul', 1, '', 3, 1),
(8, '2015-04-08 10:02:45', '3', 'prod3', 1, '', 14, 1),
(9, '2015-04-08 10:04:01', '4', 'prod4', 1, '', 14, 1),
(10, '2015-04-08 10:04:04', '4', 'prod4', 2, 'No fields changed.', 14, 1),
(11, '2015-04-08 10:04:17', '5', 'prod5', 1, '', 14, 1),
(12, '2015-04-08 10:14:59', '6', 'prod6', 1, '', 14, 1),
(13, '2015-04-08 10:15:17', '7', 'prod7', 1, '', 14, 1),
(14, '2015-04-08 10:15:24', '6', 'prod6', 2, 'Changed product_desc.', 14, 1),
(15, '2015-04-08 10:27:25', '8', 'prod8', 1, '', 14, 1),
(16, '2015-04-08 10:46:16', '9', 'prod9', 1, '', 14, 1),
(17, '2015-04-08 10:48:24', '10', 'prod 9', 1, '', 14, 1),
(18, '2015-04-08 11:06:32', '11', 'p1', 1, '', 14, 1),
(19, '2015-04-08 11:11:45', '11', 'prod10', 2, 'Changed product_title, product_image, product_desc and product_duration.', 14, 1),
(20, '2015-04-08 11:34:14', '11', 'prod6', 2, 'Changed product_title and product_image.', 14, 1),
(21, '2015-04-08 11:35:35', '12', 'abc', 1, '', 14, 1),
(22, '2015-04-08 12:07:55', '13', 'zxc', 1, '', 14, 1),
(23, '2015-04-08 12:11:39', '14', 'ghdfgfg', 1, '', 14, 1),
(24, '2015-04-09 09:43:10', '15', 'prod13', 1, '', 14, 1),
(25, '2015-04-09 11:55:45', '16', 'prod14', 1, '', 14, 1),
(26, '2015-04-09 11:56:44', '16', 'prod14', 2, 'Changed product_image.', 14, 1),
(27, '2015-04-09 11:57:35', '16', 'prod14', 2, 'Changed product_image.', 14, 1),
(28, '2015-04-09 11:58:59', '16', 'prod14', 2, 'Changed product_image.', 14, 1),
(29, '2015-04-09 12:37:30', '16', 'prod14', 2, 'Changed product_image.', 14, 1),
(30, '2015-04-09 12:38:42', '17', 'prod15', 1, '', 14, 1),
(31, '2015-04-09 12:54:10', '17', 'prod15', 2, 'Changed product_image.', 14, 1),
(32, '2015-04-09 12:54:57', '16', 'prod14', 2, 'Changed product_image.', 14, 1),
(33, '2015-04-09 12:55:03', '15', 'prod13', 2, 'Changed product_image.', 14, 1),
(34, '2015-04-09 12:55:15', '15', 'prod13', 2, 'Changed product_image.', 14, 1),
(35, '2015-04-09 12:55:21', '14', 'ghdfgfg', 2, 'Changed product_image.', 14, 1),
(36, '2015-04-09 12:55:38', '1', 'prod1', 2, 'Changed product_image.', 14, 1),
(37, '2015-04-09 12:55:45', '2', 'prod2', 2, 'Changed product_image.', 14, 1),
(38, '2015-04-09 12:56:07', '3', 'prod3', 2, 'Changed product_image.', 14, 1),
(39, '2015-04-10 13:06:39', '1', 'Robotics', 2, 'No fields changed.', 13, 1),
(40, '2015-04-10 13:07:16', '2', 'IT', 1, '', 9, 1),
(41, '2015-04-10 13:07:27', '3', 'CS', 1, '', 9, 1),
(42, '2015-04-10 13:07:35', '4', 'EC', 1, '', 9, 1),
(43, '2015-04-10 13:07:43', '1', 'Robotics', 2, 'Changed branch.', 13, 1),
(44, '2015-04-10 13:14:31', '2', 'proj1', 1, '', 13, 1),
(45, '2015-04-10 13:14:48', '3', 'proj2', 1, '', 13, 1),
(46, '2015-04-10 13:15:15', '4', 'proj3', 1, '', 13, 1),
(47, '2015-04-10 13:15:46', '5', 'proj4', 1, '', 13, 1),
(48, '2015-04-10 13:16:01', '6', 'proj5', 1, '', 13, 1),
(49, '2015-04-10 13:16:25', '7', 'proj6', 1, '', 13, 1),
(50, '2015-04-10 13:16:44', '8', 'proj7', 1, '', 13, 1),
(51, '2015-04-10 13:17:08', '9', 'proj8', 1, '', 13, 1),
(52, '2015-04-10 13:17:32', '10', 'proj9', 1, '', 13, 1),
(53, '2015-04-10 13:17:49', '11', 'proj10', 1, '', 13, 1),
(54, '2015-04-10 13:18:04', '12', 'proj11', 1, '', 13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_45f3b1d93ec8c61c_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'log entry', 'admin', 'logentry'),
(2, 'permission', 'auth', 'permission'),
(3, 'group', 'auth', 'group'),
(4, 'user', 'auth', 'user'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'news', 'mutech', 'news'),
(8, 'profile pic', 'mutech', 'profilepic'),
(9, 'branch', 'mutech', 'branch'),
(10, 'video', 'mutech', 'video'),
(11, 'image', 'mutech', 'image'),
(12, 'training', 'mutech', 'training'),
(13, 'project', 'mutech', 'project'),
(14, 'product', 'mutech', 'product');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-03-21 12:13:48'),
(2, 'auth', '0001_initial', '2015-03-21 12:13:51'),
(3, 'admin', '0001_initial', '2015-03-21 12:13:52'),
(4, 'mutech', '0001_initial', '2015-03-21 12:13:53'),
(5, 'sessions', '0001_initial', '2015-03-21 12:13:53'),
(6, 'mutech', '0002_auto_20150321_1214', '2015-03-21 12:14:31'),
(7, 'mutech', '0003_branch_image_news_product_profilepic_project_training_video', '2015-03-21 12:14:51'),
(8, 'mutech', '0002_auto_20150402_1021', '2015-04-02 10:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('afdojyi7bilx99hwvt44spjk44m94hr5', 'ZWY2YWRmOWRlMzVhNDZhZWJkZjZmZmExZDI0ZmY4YjllMzk1YjY4ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImRmZDAwNTUyNWY4MjkzNTZiODA0MzczM2I1NGNkNjY2YmE0Nzc5ZTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-04-17 12:45:31'),
('jq2f9ydpmhbpdu8xdujm01a2navcikro', 'ZWY2YWRmOWRlMzVhNDZhZWJkZjZmZmExZDI0ZmY4YjllMzk1YjY4ZTp7Il9hdXRoX3VzZXJfaGFzaCI6ImRmZDAwNTUyNWY4MjkzNTZiODA0MzczM2I1NGNkNjY2YmE0Nzc5ZTYiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-04-24 13:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `mutech_branch`
--

CREATE TABLE IF NOT EXISTS `mutech_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mutech_branch`
--

INSERT INTO `mutech_branch` (`id`, `branch_title`) VALUES
(1, 'Mechinical'),
(2, 'IT'),
(3, 'CS'),
(4, 'EC');

-- --------------------------------------------------------

--
-- Table structure for table `mutech_image`
--

CREATE TABLE IF NOT EXISTS `mutech_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `image_title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mutech_image`
--

INSERT INTO `mutech_image` (`id`, `image`, `image_title`) VALUES
(1, 'images/rahul_git_info.png', 'dfdf');

-- --------------------------------------------------------

--
-- Table structure for table `mutech_news`
--

CREATE TABLE IF NOT EXISTS `mutech_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(50) NOT NULL,
  `news_desc` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mutech_product`
--

CREATE TABLE IF NOT EXISTS `mutech_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_title` varchar(50) NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_desc` varchar(200) NOT NULL,
  `product_duration` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `mutech_product`
--

INSERT INTO `mutech_product` (`id`, `product_title`, `product_image`, `product_desc`, `product_duration`) VALUES
(1, 'prod1', 'documents/1024px-Horseshoe_Bend_Page.jpg', 'domo descfgdfgdfgfgdfg', '12 min'),
(2, 'prod2', 'documents/USA_10187_Horseshoe_Bend_Luca_Galuzzi_2007.jpg', 'ffdfdfghhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 'fgdgd'),
(3, 'prod3', 'documents/sbi_UXjtQvn.png', 'p3fdgdfgdgfggdf', 'fgfg'),
(14, 'ghdfgfg', 'documents/Screenshot_from_2015-01-08_122034.png', 'fgdfgd', 'dfgdfgdfg'),
(15, 'prod13', 'documents/rahul_git_info.png', 'dgfd', 'dfgdgdgd'),
(16, 'prod14', 'documents/sbi.png', 'dfsdfsdf', 'sdfsdfsdfsdfdsf'),
(17, 'prod15', 'documents/fist.jpg', 'dfadasf', 'asdfasdfasdf');

-- --------------------------------------------------------

--
-- Table structure for table `mutech_profilepic`
--

CREATE TABLE IF NOT EXISTS `mutech_profilepic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `profilePic` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mutech_project`
--

CREATE TABLE IF NOT EXISTS `mutech_project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_title` varchar(50) NOT NULL,
  `project_image` varchar(100) NOT NULL,
  `project_desc` varchar(200) NOT NULL,
  `project_duration` varchar(50) NOT NULL,
  `branch_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mutech_project_09fd5b13` (`branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `mutech_project`
--

INSERT INTO `mutech_project` (`id`, `project_title`, `project_image`, `project_desc`, `project_duration`, `branch_id`) VALUES
(1, 'Robotics', 'images/Screenshot_from_2014-08-01_182006.png', 'dsd', 'sdsd', 4),
(2, 'proj1', 'images/images.jpeg', 'fgh', 'fgdg', 1),
(3, 'proj2', 'images/images1.jpeg', 'ghdfhdh', 'fhdfhdfh', 1),
(4, 'proj3', 'images/images2.jpeg', 'dfhdfgh', 'fgdfgdfgdg', 3),
(5, 'proj4', 'images/images3.jpeg', 'bhfdghdg', 'fdgdfg', 2),
(6, 'proj5', 'images/images4.jpeg', 'jhkjhkjhk', 'jkhkhk', 1),
(7, 'proj6', 'images/images5.jpeg', 'gdfg', 'fgdfg', 1),
(8, 'proj7', 'images/images6.jpeg', 'iuouiouio', 'ioiouiou', 1),
(9, 'proj8', 'images/images7.jpeg', 'hjghgjg', 'hjghjgjghj', 2),
(10, 'proj9', 'images/images8.jpeg', 'qewqe', 'qweqweqeqwe', 2),
(11, 'proj10', 'images/images9.jpeg', 'fgdg', 'dfgdfg', 2),
(12, 'proj11', 'images/index.jpeg', 'tyer', 'ryeye', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mutech_training`
--

CREATE TABLE IF NOT EXISTS `mutech_training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `training_title` varchar(50) NOT NULL,
  `training_image` varchar(100) NOT NULL,
  `training_desc` varchar(200) NOT NULL,
  `training_duration` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mutech_video`
--

CREATE TABLE IF NOT EXISTS `mutech_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `video_title` varchar(50) NOT NULL,
  `video_link` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permission_group_id_689710a9a73b7457_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group__permission_id_1f49ccbbdc69d2fc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth__content_type_id_508cf46651277a81_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_33ac548dcf5f8e37_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_4b5ed4ffdb8fd9b0_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissi_user_id_7f0938558328534a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_u_permission_id_384b62483d7071f0_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_user_id_52fdd58701c5f563_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `djang_content_type_id_697914295151027a_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `mutech_project`
--
ALTER TABLE `mutech_project`
  ADD CONSTRAINT `mutech_project_branch_id_1f5e3bc45538efe2_fk_mutech_branch_id` FOREIGN KEY (`branch_id`) REFERENCES `mutech_branch` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
