-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 22, 2015 at 01:21 PM
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

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
(34, 'Can add training', 12, 'add_training'),
(35, 'Can change training', 12, 'change_training'),
(36, 'Can delete training', 12, 'delete_training'),
(37, 'Can add project', 13, 'add_project'),
(38, 'Can change project', 13, 'change_project'),
(39, 'Can delete project', 13, 'delete_project'),
(40, 'Can add product', 14, 'add_product'),
(41, 'Can change product', 14, 'change_product'),
(42, 'Can delete product', 14, 'delete_product'),
(43, 'Can add article', 15, 'add_article'),
(44, 'Can change article', 15, 'change_article'),
(45, 'Can delete article', 15, 'delete_article'),
(49, 'Can add subbranch', 17, 'add_subbranch'),
(50, 'Can change subbranch', 17, 'change_subbranch'),
(51, 'Can delete subbranch', 17, 'delete_subbranch'),
(52, 'Can add contactus', 18, 'add_contactus'),
(53, 'Can change contactus', 18, 'change_contactus'),
(54, 'Can delete contactus', 18, 'delete_contactus'),
(55, 'Can add aboutus', 19, 'add_aboutus'),
(56, 'Can change aboutus', 19, 'change_aboutus'),
(57, 'Can delete aboutus', 19, 'delete_aboutus'),
(58, 'Can add slider', 20, 'add_slider'),
(59, 'Can change slider', 20, 'change_slider'),
(60, 'Can delete slider', 20, 'delete_slider');

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
(1, 'pbkdf2_sha256$12000$MsF1dSi3RTjm$8yKeLEU6V3Hueve+m2xMVsFwQ0ZnLr+yKVxDuo3lrkI=', '2015-04-13 11:57:44', 1, 'rahul-satal', '', '', 'rahulsatal92@gmail.com', 1, 1, '2015-04-13 10:49:07');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2015-04-13 10:49:54', '1', 'CS', 1, '', 9, 1),
(2, '2015-04-13 10:49:58', '2', 'EC', 1, '', 9, 1),
(3, '2015-04-13 10:50:02', '3', 'IT', 1, '', 9, 1),
(4, '2015-04-13 10:50:08', '4', 'Mechinical', 1, '', 9, 1),
(5, '2015-04-13 10:50:28', '1', 'proj1', 1, '', 13, 1),
(6, '2015-04-13 10:53:40', '2', 'proj2', 1, '', 13, 1),
(7, '2015-04-13 11:37:53', '1', 'fdfsdf', 1, '', 14, 1),
(8, '2015-04-13 12:07:10', '5', 'Robotics Project', 1, '', 13, 1),
(9, '2015-04-13 12:07:40', '5', 'Robotics Project', 1, '', 9, 1),
(10, '2015-04-13 12:08:40', '6', 'Matlab Projects', 1, '', 9, 1),
(11, '2015-04-13 12:10:57', '7', 'Instrumentation and control Projects', 1, '', 9, 1),
(12, '2015-04-13 12:11:04', '8', 'Biomedical Projects', 1, '', 9, 1),
(13, '2015-04-13 12:11:10', '9', 'Communication Project', 1, '', 9, 1),
(14, '2015-04-13 12:11:17', '10', 'Other Projects', 1, '', 9, 1),
(15, '2015-04-13 12:13:14', '6', 'Robotic Arms', 1, '', 13, 1),
(16, '2015-04-13 12:13:48', '7', 'Robotic Limbs', 1, '', 13, 1),
(17, '2015-04-13 12:25:09', '2', 'prod2', 2, 'Changed product_image and product_desc.', 14, 1),
(18, '2015-04-13 12:26:18', '2', 'prod2', 2, 'Changed product_image.', 14, 1),
(19, '2015-04-13 13:11:59', '1', 'subbranch object', 1, '', 17, 1),
(20, '2015-04-13 13:12:37', '2', 'subbranch object', 1, '', 17, 1),
(21, '2015-04-13 13:18:42', '7', 'Robotic Limbs', 2, 'Changed project_branch and project_subbranch.', 13, 1),
(22, '2015-04-14 07:55:15', '8', 'prodA', 1, '', 13, 1),
(23, '2015-04-14 08:01:27', '8', 'prodA', 2, 'No fields changed.', 13, 1),
(24, '2015-04-14 08:01:32', '8', 'prodA', 2, 'No fields changed.', 13, 1),
(25, '2015-04-15 09:25:44', '1', 'Mutech Robotics', 1, '', 19, 1),
(26, '2015-04-15 09:34:25', '3', 'rahul', 1, '', 18, 1),
(27, '2015-04-15 09:41:20', '3', 'rahul', 2, 'Changed phone_no.', 18, 1),
(28, '2015-04-15 09:41:30', '3', 'rahul', 2, 'Changed phone_no.', 18, 1),
(29, '2015-04-15 09:49:12', '3', 'raha', 2, 'Changed fname and phone_no.', 18, 1),
(30, '2015-04-15 10:00:50', '3', 'rahal', 2, 'Changed fname and phone_no.', 18, 1),
(31, '2015-04-15 10:00:58', '3', 'rahul', 2, 'Changed fname and phone_no.', 18, 1),
(32, '2015-04-15 10:07:19', '4', 'fgdfg', 1, '', 20, 1),
(33, '2015-04-15 10:09:11', '4', 'fgdfg', 2, 'No fields changed.', 20, 1),
(34, '2015-04-15 10:09:15', '4', 'fgdfg', 2, 'No fields changed.', 20, 1),
(35, '2015-04-15 10:16:31', '1', 'Mutech slider', 1, '', 20, 1),
(36, '2015-04-15 10:42:15', '14', 'A', 1, '', 9, 1),
(37, '2015-04-15 10:42:26', '3', 'A1', 1, '', 17, 1),
(38, '2015-04-15 10:42:32', '9', 'prod5', 1, '', 13, 1),
(39, '2015-04-15 10:43:26', '15', 'B', 1, '', 9, 1),
(40, '2015-04-15 10:43:34', '4', 'B1', 1, '', 17, 1),
(41, '2015-04-15 10:43:37', '10', 'proj6', 1, '', 13, 1),
(42, '2015-04-16 09:34:00', '3', 'rahul', 2, 'Changed phone_no.', 18, 1),
(43, '2015-04-16 11:09:45', '1', 'Mutech Robotics', 2, 'Changed aboutus_image.', 19, 1),
(44, '2015-04-16 11:10:17', '1', 'Mutech Robotics', 2, 'Changed team1_image, team2_image and team3_image.', 19, 1),
(45, '2015-04-17 09:34:38', '1', 'Mutech Robotics', 2, 'Changed aboutus_image.', 19, 1),
(46, '2015-04-17 09:35:01', '1', 'Mutech Robotics', 2, 'Changed team1_image, team2_image and team3_image.', 19, 1),
(47, '2015-04-17 12:27:47', '10', 'proj6', 2, 'Changed project_image.', 13, 1),
(48, '2015-04-17 12:31:24', '5', 'b3', 1, '', 17, 1),
(49, '2015-04-17 12:33:39', '14', 'projtB3', 1, '', 13, 1),
(50, '2015-04-17 12:40:32', '9', 'prod5', 2, 'Changed project_image.', 13, 1),
(51, '2015-04-18 08:08:45', '18', 'prod7', 1, '', 14, 1),
(52, '2015-04-18 08:21:47', '7', 'Robotic Limbs', 2, 'No fields changed.', 13, 1),
(53, '2015-04-18 09:25:10', '1', 'Mutech slider', 2, 'Changed slider_image1, slider_image2, slider_image3 and slider_image4.', 20, 1),
(54, '2015-04-18 09:37:21', '1', 'Mutech slider', 2, 'Changed slider_image1, slider_image2, slider_image3, slider_image4, slider_image5, slider_image6, slider_image7 and slider_image8.', 20, 1),
(55, '2015-04-18 10:32:26', '1', 'Online MP UG and PG Admission process', 1, '', 7, 1),
(56, '2015-04-18 10:32:40', '1', 'Online MP UG and PG Admission process', 2, 'Changed news_desc.', 7, 1),
(57, '2015-04-18 10:35:00', '2', 'Counselling shedule for CET 2014', 1, '', 7, 1),
(58, '2015-04-18 10:43:43', '3', 'Counselling shedule for CET 2014', 1, '', 7, 1),
(59, '2015-04-18 10:44:00', '3', 'General Rules for Admission CET-2014', 2, 'Changed news_title.', 7, 1),
(60, '2015-04-18 10:44:56', '4', 'General Rules for Admission for NON-CET', 1, '', 7, 1),
(61, '2015-04-18 10:45:21', '5', '>Admissions to NRI seats in courses under cet 2014', 1, '', 7, 1),
(62, '2015-04-18 10:46:29', '5', 'Admissions to NRI seats in courses under cet 2014', 2, 'Changed news_title.', 7, 1);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

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
(12, 'training', 'mutech', 'training'),
(13, 'project', 'mutech', 'project'),
(14, 'product', 'mutech', 'product'),
(15, 'article', 'mutech', 'article'),
(17, 'subbranch', 'mutech', 'subbranch'),
(18, 'contactus', 'mutech', 'contactus'),
(19, 'aboutus', 'mutech', 'aboutus'),
(20, 'slider', 'mutech', 'slider');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2015-04-13 10:46:10'),
(2, 'auth', '0001_initial', '2015-04-13 10:46:20'),
(3, 'admin', '0001_initial', '2015-04-13 10:46:23'),
(4, 'sessions', '0001_initial', '2015-04-13 10:46:23');

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
('fh1evinjzekt186xh95460i24go2z04v', 'ZDBlODkzMjZlMzk4YzM5NGU1ODI5ZjVhYTA3NGVhYTRhYTk5MDlmYzp7Il9hdXRoX3VzZXJfaGFzaCI6ImUzMTJkNjhlYjUzZTcwYjdlNzIzOTZjZjA1MjBjYjRhODlkMTFkNjIiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOjF9', '2015-04-27 11:57:44');

-- --------------------------------------------------------

--
-- Table structure for table `mutech_aboutus`
--

CREATE TABLE IF NOT EXISTS `mutech_aboutus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aboutus_title` varchar(50) NOT NULL,
  `aboutus_desc` longtext NOT NULL,
  `aboutus_image` varchar(100) NOT NULL,
  `team1_image` varchar(100) NOT NULL,
  `team2_image` varchar(100) NOT NULL,
  `team3_image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mutech_aboutus`
--

INSERT INTO `mutech_aboutus` (`id`, `aboutus_title`, `aboutus_desc`, `aboutus_image`, `team1_image`, `team2_image`, `team3_image`) VALUES
(1, 'Mutech Robotics', 'DAVV Indore (formerly, university of Indore) was established in 1964 by an Act of legislature of Madhya Pradesh. The University is supported by both the State Government and the University Grants Commission, New Delhi. The University has been cited in the Commonwealth Year Book (Volume 3, pp. 1740-42, 1990). It has been bestowed with the center of Excellence award by the Government of Madhya Pradesh. The University has thirty two level in frontline areas of Computers, Information Technology, Engineering, Biotechnology, Life Sciences, Social Sciences, Education, Management, etc. It has more than one hundred and fifty faculty members, five thousand students on the campus, 113 affiliated colleges and more than one lakh ten thousand students enrolled in all. The teaching programmes conducted at the Teaching University Departments have a multidisciplinary approach.', 'Images/Aboutus/images2_NuayVZV_TEcjzIe.jpeg', 'Images/Aboutus/Sidharth-Malhotra_0_fT0A99t.jpg', 'Images/Aboutus/sidharth-malhotra-hot-hd-wallpapers-for-free-1271_5fuwsXY.jpeg', 'Images/Aboutus/tumblr_mhlvrjrpO11qj49tro1_500_dLg2xjK.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `mutech_article`
--

CREATE TABLE IF NOT EXISTS `mutech_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(50) NOT NULL,
  `article_desc` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mutech_article`
--

INSERT INTO `mutech_article` (`id`, `article_title`, `article_desc`) VALUES
(1, 'Online MP UG and PG Admission process', 'Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.'),
(2, 'Counselling shedule for CET 2014', 'Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.'),
(3, 'General Rules for Admission CET-2014', 'Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.'),
(4, 'General Rules for Admission for NON-CET', 'Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.'),
(5, 'Admissions to NRI seats in courses under cet 2014', 'Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.');

-- --------------------------------------------------------

--
-- Table structure for table `mutech_branch`
--

CREATE TABLE IF NOT EXISTS `mutech_branch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `branch_title` varchar(50) NOT NULL,
  `subbranch_title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `mutech_branch`
--

INSERT INTO `mutech_branch` (`id`, `branch_title`, `subbranch_title`) VALUES
(1, 'CS', ''),
(2, 'EC', ''),
(3, 'IT', ''),
(4, 'Mechinical', ''),
(5, 'Robotics Project', ''),
(6, 'Matlab Projects', ''),
(14, 'A', ''),
(15, 'B', '');

-- --------------------------------------------------------

--
-- Table structure for table `mutech_contactus`
--

CREATE TABLE IF NOT EXISTS `mutech_contactus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(50) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `mutech_contactus`
--

INSERT INTO `mutech_contactus` (`id`, `fname`, `lname`, `email`, `phone_no`, `message`) VALUES
(3, 'rahul', 'satal', 'rahulsatal92@gmail.com', '1234567890', 'fdfdfdf'),
(4, 'f', 'fvsd', 'a@gmail.com', '1234567890', 'dfef'),
(5, 'f', 'fvsd', 'a@gmail.com', '1234567890', 'dfef'),
(6, 'Rajat', 'Garg', 'ded', '1234567890', 'ede'),
(7, 'Rajat', 'Garg', 'ded', '1234567890', 'ede'),
(8, 'dasddas', 'sadad', 'a@gmail.com', '1234567890', 'sadasd'),
(9, 'rtert', 'fgsf', 'sdfsdf', '1234567890', 'sdfsdfsd'),
(10, 'dfsf', 'sdfsdf', 'sdf', '1234567890', 'sdfsdf'),
(11, 'sdfsf', 'sdfsf', 'sdfs', '1234567890', 'dsfsf'),
(12, 'dfsdf', 'dsfsdf', 'dfsf', '1234567890', 'dfsdf'),
(13, 'sds', 'dsd', 'sdsd', '1234567890', 'sdsd'),
(14, 'sdsd', 'sdsd', 'sd', '1234567890', 'sadasd'),
(15, 'adad', 'asdas', 'gdg', '1234567890', 'asdasd'),
(16, 'fgdfg', 'sdfsf', 'sdfdsf', '1234567890', 'sdfsf'),
(17, 'fgdfg', 'dfgdg', 'dfg', '1234567890', 'fdsf'),
(18, 'sdfsdfeww', 'asdasad', 'sadasd', '1234567890', 'sdad'),
(19, 'raunak', 'dd', 'de', '1234567890', 'asdfasdasd'),
(20, 'dsdsd', 'dfd', 'fgdg', '45', '2323'),
(21, 'dfsfsf', 'sdfsf', 'fsf4242', '434343434', 'dfdf2334re'),
(22, 'fhf', 'fgfg', 'gffg', '4566546', 'rtytryrt'),
(23, 'sdasd', 'sadasd', 'dcsa3', '34242342', 'fdfsfsdf'),
(24, 'gghh', 'hghhg', 'ghghg', '546456', 'fhfhfggf'),
(25, 'jgjh', 'jghj', '543fghh', '7567575', 'hfhfg');

-- --------------------------------------------------------

--
-- Table structure for table `mutech_image`
--

CREATE TABLE IF NOT EXISTS `mutech_image` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(100) NOT NULL,
  `image_title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mutech_news`
--

CREATE TABLE IF NOT EXISTS `mutech_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_title` varchar(50) NOT NULL,
  `news_desc` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mutech_news`
--

INSERT INTO `mutech_news` (`id`, `news_title`, `news_desc`) VALUES
(1, 'Online MP UG and PG Admission process', 'Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.'),
(2, 'Counselling shedule for CET 2014', 'Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.'),
(3, 'General Rules for Admission CET-2014', 'Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.'),
(4, 'General Rules for Admission for NON-CET', 'Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.'),
(5, 'Admissions to NRI seats in courses under cet 2014', 'Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.Projects on GitHub can be accessed and manipulated using the standard git command-line interface and all of the standard git commands work with it. GitHub also allows registered and non-registered users to browse public repositories on the site. Multiple desktop clients and git plugins have also been created by GitHub and other third parties which integrate with the platform.');

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `mutech_product`
--

INSERT INTO `mutech_product` (`id`, `product_title`, `product_image`, `product_desc`, `product_duration`) VALUES
(1, 'prod1', 'documents/1024px-Horseshoe_Bend_Page.jpg', 'domo descfgdfgdfgfgdfg', '12 min'),
(2, 'prod2', 'Images/Product/images7_vbayDAV.jpeg', 'Take your development environment with you! If you have a browser and an Internet connection, you''ve got e', 'fgdgd'),
(3, 'prod3', 'documents/sbi_UXjtQvn.png', 'p3fdgdfgdgfggdf', 'fgfg'),
(14, 'ghdfgfg', 'documents/Screenshot_from_2015-01-08_122034.png', 'fgdfgd', 'dfgdfgdfg'),
(15, 'prod13', 'documents/rahul_git_info.png', 'dgfd', 'dfgdgdgd'),
(16, 'prod14', 'documents/sbi.png', 'dfsdfsdf', 'sdfsdfsdfsdfdsf'),
(17, 'prod15', 'documents/fist.jpg', 'dfadasf', 'asdfasdfasdf'),
(18, 'prod7', 'Images/Product/images6.jpeg', 'dfdfdf', 'gdfdf');

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
  `project_branch_id` int(11) NOT NULL,
  `project_subbranch_id` int(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mutech_project_5b2a5cdb` (`project_branch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `mutech_project`
--

INSERT INTO `mutech_project` (`id`, `project_title`, `project_image`, `project_desc`, `project_duration`, `project_branch_id`, `project_subbranch_id`) VALUES
(1, 'proj1', 'images/images_vg8Skaw.jpeg', 'fgdg', 'dfgdgd', 4, 0),
(2, 'proj2', 'images/images4_kCeKelb.jpeg', ' You don''t have to use your real name--any name works. Git actually associates commits by email address; the username is only used for identification. If you use your email address associated with a G', 'ghjghj', 3, 0),
(5, 'Robotics Project', 'Images/Project/images2_frogNzi.jpeg', 'Today, robotics is one of the best technologies which deals with design, working and applications of Robots, computer systems for their control and information processing. ', '2 months', 1, 0),
(6, 'Robotic Arms', 'Images/Project/images2_pCdyNHE.jpeg', 'Today, robotics is one of the best technologies which deals with design, working and applications of Robots, computer systems for their control and information processing', '3months', 5, 0),
(7, 'Robotic Limbs', 'Images/Project/index.jpeg', 'Today, robotics is one of the best technologies which deals with design, working and applications of Robots, computer systems for their control and information processing', '2 months', 3, 1),
(8, 'prodA', 'Images/Project/images6.jpeg', 'fgggggggggggggggggggggggggggg', '5 months', 1, 1),
(9, 'prod5', 'Images/Project/images6.jpeg', 'dffssd', 'sdsdsd', 14, 3),
(10, 'proj6', 'Images/Project/images5_OkWi16V.jpeg', 'gfgdfg', 'dfgdfg', 15, 4),
(14, 'projtB3', 'Images/Project/images7_Lt23vve_qHGgGSI.jpeg', 'Now we might be able to get away with putting our templates directly in polls/templates (rather than creating another ', '5 months', 15, 5);

-- --------------------------------------------------------

--
-- Table structure for table `mutech_slider`
--

CREATE TABLE IF NOT EXISTS `mutech_slider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_title` varchar(50) NOT NULL,
  `slider_image1` varchar(100) NOT NULL,
  `slider_image2` varchar(100) NOT NULL,
  `slider_image3` varchar(100) NOT NULL,
  `slider_image4` varchar(100) NOT NULL,
  `slider_image5` varchar(100) NOT NULL,
  `slider_image6` varchar(100) NOT NULL,
  `slider_image7` varchar(100) NOT NULL,
  `slider_image8` varchar(100) NOT NULL,
  `slider_image9` varchar(100) NOT NULL,
  `slider_image10` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `mutech_slider`
--

INSERT INTO `mutech_slider` (`id`, `slider_title`, `slider_image1`, `slider_image2`, `slider_image3`, `slider_image4`, `slider_image5`, `slider_image6`, `slider_image7`, `slider_image8`, `slider_image9`, `slider_image10`) VALUES
(1, 'Mutech slider', 'Images/Slider/images6_embAkRW.jpeg', 'Images/Slider/images3_vxK6VWa.jpeg', 'Images/Slider/images4.jpeg', 'Images/Slider/index.jpeg', 'Images/Slider/images5_zaPJkNh.jpeg', 'Images/Slider/images8.jpeg', 'Images/Slider/images7.jpeg', 'Images/Slider/images5_IE2yH5M.jpeg', 'Images/Slider/images7_kYaOJhn_UF4F8tR.jpeg', 'Images/Slider/images4_LWqdhOn.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `mutech_subbranch`
--

CREATE TABLE IF NOT EXISTS `mutech_subbranch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentbranch_id` int(11) NOT NULL,
  `subbranch_title` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mutech_subbranch_8704b854` (`parentbranch_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mutech_subbranch`
--

INSERT INTO `mutech_subbranch` (`id`, `parentbranch_id`, `subbranch_title`) VALUES
(1, 3, 'website Designing'),
(2, 3, 'Applicationn designing'),
(3, 14, 'A1'),
(4, 15, 'B1'),
(5, 15, 'b3');

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
  ADD CONSTRAINT `project_branch_id_refs_id_259f0b8e` FOREIGN KEY (`project_branch_id`) REFERENCES `mutech_branch` (`id`);

--
-- Constraints for table `mutech_subbranch`
--
ALTER TABLE `mutech_subbranch`
  ADD CONSTRAINT `parentbranch_id_refs_id_0472e7a6` FOREIGN KEY (`parentbranch_id`) REFERENCES `mutech_branch` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
