-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 09, 2015 at 07:12 PM
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
