-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2018 at 04:17 PM
-- Server version: 5.7.22-22
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multipea_multipearls`
--

-- --------------------------------------------------------

--
-- Table structure for table `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(2, 2, 'asdakjshdjkh', 'jhjashdjahsdjh', '', 'ahsdjhasjdhajsdh', '', 'ajsdhjashdh', '123123', 222, 3518, ''),
(3, 3, 'admin', 'admin', '', 'asdasdasd', '', 'asdasdasd', '123123', 222, 3513, ''),
(5, 5, 'wholesaler', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 99, 1493, '{\"3\":\"4CNPE\"}'),
(6, 6, 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 99, 1493, '{\"3\":\"\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'kiDIE3cvz6mpuJKJGDz9teyV75x8OCgd6wGRcb4jEf7lqmZthR7K09MXCXROoOEActFDGeBwYzDpIDOc4z4UQyo7GLYgyClAqODe04ZSd50nf2GeuBOp544MvSMx7ZG75yyDT3R6OJWTBOKgkF0ca3BBCcYM2Cx4BBqb5bUS2jphP9J1LaLwmEnS6knIjcrQbLBZ290BVIbG3qH34Rt2lqQuzRRE9jOFmk49gISxshTLWJp5sTZlIWOQPoTJuvV3', 1, '2015-11-30 18:38:25', '2015-11-30 18:38:25'),
(2, 'Default', 'gKYut8YARjyuTKjfAUpeyIYP57W1l8q4uFWALXv8JUaoLTjIhKVzbq5TgUjHyK3hgw0xgO46kD9yumz6RIfHyUgn2twhig6q4g9VqJZBiOotSwEv4LnUubORyFfdA8UzYDAvM2mNKBxZVcaKu8tWz6drkgycRYiNdEyUslBiqO6hKC64l0Nq808IeMD8slbo4XlMUhi9Eee8DTYEaFb6tkwuRh825QpwDVMAzWqV9m4kXqCq6IkxJbfgLlRmyWfZ', 1, '2015-12-11 11:39:16', '2015-12-11 11:39:16'),
(3, 'Default', 'U1BcPLjqDHrpozPL2arrYxjdMdo422RTd6a8FZuXkLr7I4pMmGQ2ObwfokhHYAwupmNIxbQTIV8EDEvUOrcxCsNxKNC3XFN4MPiPoEZuvDjsr86kZbvkyNIhw2vjKDv87yWYTp3fkhdedpqWXCtlKvUBbQjyWXsqp5NoHvLumKFAbsjecsEu2JgceqnKKxDJEmte9SiZBNY6S5E9W4luWEQpg8sRLEblgLGfYtJbkeyyl3Pza8hQygtNF6YhVlD2', 1, '2018-08-26 14:25:55', '2018-08-26 14:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 3, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `token`, `session_id`, `session_name`, `ip`, `date_added`, `date_modified`) VALUES
(6, 3, '6zfWMUk9ilUUg7ATDwZXmb5zCCYHxfm4', 'ddtfmomahda53jljff27m49dc7', 'temp_session_5be851ed4cd5c', '::1', '2018-11-11 21:29:41', '2018-11-11 21:29:41'),
(7, 3, 'nmCpRjfUPglBkBN3UWchAUCi6dqSR4q1', 'ddtfmomahda53jljff27m49dc7', 'temp_session_5be85452cf002', '::1', '2018-11-11 21:39:54', '2018-11-11 21:39:54'),
(8, 3, '5AT8D9l8TbH1nncaWSxT3dynxLH9U203', 'ddtfmomahda53jljff27m49dc7', 'temp_session_5be854558aa67', '::1', '2018-11-11 21:39:57', '2018-11-11 21:40:39'),
(9, 3, 'aAkGvjkywtHf0469JZPV8JU13j16LgJ4', 'ddtfmomahda53jljff27m49dc7', 'temp_session_5be854a18f5ca', '::1', '2018-11-11 21:41:13', '2018-11-11 21:41:13'),
(10, 3, 'co3Box5he7dloOOM2S32kxh7sariH9gT', 'ddtfmomahda53jljff27m49dc7', 'temp_session_5be8550812323', '::1', '2018-11-11 21:42:56', '2018-11-11 21:42:56'),
(11, 3, 'ME67yMmyxEFqTjWX4rNnJTJoCU6UZSxB', 'ddtfmomahda53jljff27m49dc7', 'temp_session_5be856d7559f3', '::1', '2018-11-11 21:50:39', '2018-11-11 21:50:39');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(12, 8, 1),
(13, 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(12, 1, 'Attribute Name 01'),
(13, 1, 'Attribute Name 02');

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(8, 1),
(9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(8, 1, 'Attribute Groups 1'),
(9, 1, 'Attribute Groups 2');

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(14, 'banners', 1),
(15, 'Slideshow', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(213, 14, 'index.php?route=product/category&amp;path=29', 'catalog/01-JS/JS-09.jpg', 0),
(214, 14, 'index.php?route=product/category&amp;path=31', 'catalog/07-SBFULL/SB-47.jpg', 1),
(215, 14, 'index.php?route=product/category&amp;path=28', 'catalog/10-JS(RG)/JS(RG)-99.jpg', 2),
(237, 15, 'index.php?route=product/category&amp;path=28', 'catalog/article/Untitled-1.jpg', 1),
(238, 15, 'index.php?route=product/category&amp;path=29', 'catalog/article/slide-2.jpg', 2),
(239, 15, 'index.php?route=product/category&amp;path=30', 'catalog/article/slide-01.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_banner_image_description`
--

CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` longtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`, `description`) VALUES
(99, 1, 9, 'slide-1', ''),
(100, 1, 9, 'slide-2', ''),
(101, 1, 9, 'slide-3', ''),
(213, 1, 14, 'banner-1', '&lt;h2&gt;&lt;span&gt;Jersey\'s&lt;/span&gt;&lt;br&gt;T-shirt\'s&lt;/h2&gt;'),
(214, 1, 14, 'banner-1', '&lt;h2&gt;&lt;span&gt;Digital&lt;/span&gt;&lt;br&gt;T-shirt\'s&lt;/h2&gt;'),
(215, 1, 14, 'banner-1', '&lt;h2&gt;&lt;span&gt;Plain&lt;/span&gt;&lt;br&gt;T-shirt\'s&lt;/h2&gt;'),
(237, 1, 15, 'slide-1', '&lt;h3&gt;Buy T-shirts in Wholesale&lt;span&gt;At Very Affordable Price&lt;/span&gt;&lt;/h3&gt;\r\n&lt;h4&gt;Plain Jersey\'s&lt;/h4&gt;\r\n&lt;h4&gt;Plain T-shirts&lt;/h4&gt;\r\n&lt;h4&gt;Customize T-shirts &lt;/h4&gt;\r\n&lt;h4&gt;Delivery All Over India &lt;/h4&gt;'),
(238, 1, 15, 'slide-2', '&lt;h3 class=&quot;leather&quot;&gt;Genuine Leather  Product &lt;span&gt;At Whole sale Price&lt;/span&gt;&lt;/h3&gt;\r\n'),
(239, 1, 15, 'slide-3', '&lt;h3&gt;Whole Sales Plain T-shirts&lt;span&gt;For Promotion&lt;/span&gt;&lt;/h3&gt;\r\n&lt;h3&gt;For Branding&lt;/h3&gt;\r\n&lt;h3&gt;For Business Promotions&lt;/h3&gt;\r\n&lt;h3&gt;For Printing &lt;/h3&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(9, 3, '7qfhi2jt2iv0lq656flv9c1444', 42, 0, '{\"25\":\"65\",\"21\":\"17:57\",\"22\":\"2014-12-18 12:25\",\"23\":\"61\",\"24\":\"2014-12-18\"}', 2, '2015-10-09 17:59:43'),
(18, 7, '1tthnm17qa05hh83g1btjpejg6', 28, 0, '{\"1\":\"2\",\"2\":\"4\"}', 1, '2015-11-27 16:39:40'),
(21, 9, '1tthnm17qa05hh83g1btjpejg6', 28, 0, '{\"1\":\"2\",\"2\":\"6\"}', 1, '2015-11-27 16:53:11'),
(22, 9, '1tthnm17qa05hh83g1btjpejg6', 35, 0, '{\"14\":[\"32\"],\"15\":\"34\",\"16\":\"39\"}', 1, '2015-11-27 16:53:11'),
(27, 10, 'nmbvfm83biutlabejbgat2bdf4', 35, 0, '{\"14\":[\"32\",\"33\"],\"15\":\"35\",\"16\":\"39\"}', 1, '2015-11-27 17:07:13'),
(28, 10, 'nmbvfm83biutlabejbgat2bdf4', 47, 0, '{\"33\":\"75\",\"34\":\"78\"}', 1, '2015-11-27 17:07:13'),
(29, 10, 'nmbvfm83biutlabejbgat2bdf4', 28, 0, '{\"1\":\"2\",\"2\":\"6\"}', 1, '2015-11-27 17:07:36'),
(40, 4, 'de27o4uri196e93nodvblr6fec', 82, 0, '[]', 200, '2018-11-05 12:43:33'),
(67, 6, 'ddtfmomahda53jljff27m49dc7', 82, 0, '{\"162\":\"636\",\"163\":\"639\"}', 1, '2018-11-11 22:46:13');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(18, '', 44, 1, 1, 1, 1, '2009-01-05 21:49:15', '2018-09-18 09:25:17'),
(28, 'catalog/blog/post-10.jpg', 18, 1, 2, 2, 1, '2009-02-02 13:11:12', '2018-09-18 09:55:12'),
(29, 'catalog/product-40.png', 18, 1, 0, 1, 1, '2009-02-02 13:11:37', '2018-09-18 09:54:35'),
(30, 'catalog/product-11.png', 18, 0, 1, 3, 1, '2009-02-02 13:11:59', '2018-08-26 18:03:54'),
(31, 'catalog/product-10.png', 18, 0, 1, 4, 1, '2009-02-03 14:17:24', '2018-11-18 18:16:13'),
(32, 'catalog/product-1.png', 18, 1, 1, 5, 1, '2009-02-03 14:17:34', '2018-08-30 18:38:22'),
(33, 'catalog/product-36.png', 18, 0, 1, 6, 1, '2009-02-03 14:17:55', '2018-08-26 18:11:58'),
(37, '', 0, 1, 1, 3, 1, '2018-08-29 17:05:05', '2018-10-10 12:40:49'),
(38, '', 0, 1, 1, 2, 1, '2018-08-29 17:08:32', '2018-08-29 17:08:32'),
(40, '', 37, 1, 1, 1, 1, '2018-08-29 17:09:16', '2018-11-04 17:25:14'),
(44, '', 0, 1, 1, 1, 1, '2018-08-30 18:41:39', '2018-08-30 18:46:07'),
(45, '', 38, 0, 1, 1, 1, '2018-08-30 19:20:08', '2018-09-18 09:30:58'),
(50, '', 44, 0, 1, 3, 1, '2018-08-30 20:28:57', '2018-10-10 12:46:51'),
(51, '', 0, 1, 1, 5, 1, '2018-09-01 23:29:08', '2018-10-10 12:41:46'),
(54, '', 37, 0, 1, 2, 1, '2018-09-18 09:38:07', '2018-11-04 17:26:00'),
(55, '', 51, 0, 1, 1, 1, '2018-09-18 09:40:34', '2018-09-18 09:40:34'),
(56, '', 51, 0, 1, 2, 1, '2018-09-18 09:40:59', '2018-09-18 09:43:05'),
(57, '', 51, 0, 1, 3, 1, '2018-09-18 09:42:27', '2018-09-18 09:43:18'),
(58, '', 18, 0, 1, 7, 1, '2018-09-18 09:56:34', '2018-09-18 09:56:34'),
(59, '', 0, 0, 1, 4, 1, '2018-10-10 12:41:29', '2018-10-10 12:41:29'),
(60, '', 44, 0, 1, 2, 1, '2018-10-10 12:43:27', '2018-10-10 12:43:27'),
(62, '', 50, 0, 1, 1, 1, '2018-10-10 12:45:10', '2018-10-10 12:46:09'),
(63, '', 37, 0, 1, 3, 1, '2018-11-04 17:26:54', '2018-11-04 17:26:54'),
(64, '', 38, 0, 1, 2, 1, '2018-11-04 17:27:33', '2018-11-04 17:27:33'),
(65, '', 38, 0, 1, 3, 1, '2018-11-04 17:28:01', '2018-11-04 17:28:01'),
(66, '', 59, 0, 1, 2, 1, '2018-11-04 17:28:40', '2018-11-04 17:28:40'),
(67, '', 59, 0, 1, 3, 1, '2018-11-04 17:29:09', '2018-11-04 17:29:33'),
(68, '', 59, 0, 1, 1, 1, '2018-11-04 17:30:50', '2018-11-04 17:30:50'),
(69, '', 0, 0, 1, 6, 0, '2018-11-20 09:56:05', '2018-11-23 14:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(18, 1, 'Clothing', '&lt;p&gt;&lt;b&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/b&gt; We are proud to present our wonderful choice of wheels and tires. Without a doubt we are the leading company in this sphere. Our company is the pioneer of this business because we provide a great number of new technologies concerning design solutions and some technological specialties. We guarantee the premium quality and fair prices of our goods.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;The interesting design is very important thing in our sphere and we are trying to stay in touch with the latest fashion trends.&lt;/b&gt; We care about the durability of our products and we are sure that it is perfect. As you understand the products of our store are a unique combination of original design, reasonable price and undoubted reliability. Our assortment can satisfy any client’s whim because it’s literally unlimited.&lt;/p&gt;', 'Clothing', 'Clothing', 'Clothing'),
(28, 1, 'Round-Neck', '&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: Arial; font-size: 14px; text-align: center;&quot;&gt;We have been &lt;span style=&quot;font-weight: bold;&quot;&gt;specialising&lt;/span&gt; in &lt;span style=&quot;font-weight: bold;&quot;&gt;personalised&lt;/span&gt; t shirt printing for over &lt;span style=&quot;font-weight: bold;&quot;&gt;10 years&lt;/span&gt;.Whether you\'re looking for something that is embroidered, printed with text or even featuring a photograph, we can help you design your own unique custom t shirts. We produce quality printed t shirts for all budgets, ranging from cheap t shirts for events and promotions to high quality workwear tees.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'Round Neck ', 'Round-Neck', 'Round-Neck'),
(29, 1, 'T-shirts', '&lt;p&gt;&lt;b&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/b&gt; We are proud to present our wonderful choice of wheels and tires. Without a doubt we are the leading company in this sphere. Our company is the pioneer of this business because we provide a great number of new technologies concerning design solutions and some technological specialties. We guarantee the premium quality and fair prices of our goods.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;The interesting design is very important thing in our sphere and we are trying to stay in touch with the latest fashion trends.&lt;/b&gt; We care about the durability of our products and we are sure that it is perfect. As you understand the products of our store are a unique combination of original design, reasonable price and undoubted reliability. Our assortment can satisfy any client’s whim because it’s literally unlimited.&lt;/p&gt;', 'T-shirts', 'T-shirts', 'T-shirts'),
(30, 1, 'V-Neck ', '&lt;p&gt;&lt;b&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/b&gt; We are proud to present our wonderful choice of wheels and tires. Without a doubt we are the leading company in this sphere. Our company is the pioneer of this business because we provide a great number of new technologies concerning design solutions and some technological specialties. We guarantee the premium quality and fair prices of our goods.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;The interesting design is very important thing in our sphere and we are trying to stay in touch with the latest fashion trends.&lt;/b&gt; We care about the durability of our products and we are sure that it is perfect. As you understand the products of our store are a unique combination of original design, reasonable price and undoubted reliability. Our assortment can satisfy any client’s whim because it’s literally unlimited.&lt;/p&gt;', 'Van', '', ''),
(31, 1, 'Digital Print ', '&lt;p&gt;&lt;b&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/b&gt; We are proud to present our wonderful choice of wheels and tires. Without a doubt we are the leading company in this sphere. Our company is the pioneer of this business because we provide a great number of new technologies concerning design solutions and some technological specialties. We guarantee the premium quality and fair prices of our goods.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;The interesting design is very important thing in our sphere and we are trying to stay in touch with the latest fashion trends.&lt;/b&gt; We care about the durability of our products and we are sure that it is perfect. As you understand the products of our store are a unique combination of original design, reasonable price and undoubted reliability. Our assortment can satisfy any client’s whim because it’s literally unlimited.&lt;/p&gt;', 'Motorhome', '', ''),
(32, 1, 'Polo', '&lt;p&gt;&lt;b&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/b&gt; We are proud to present our wonderful choice of wheels and tires. Without a doubt we are the leading company in this sphere. Our company is the pioneer of this business because we provide a great number of new technologies concerning design solutions and some technological specialties. We guarantee the premium quality and fair prices of our goods.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;The interesting design is very important thing in our sphere and we are trying to stay in touch with the latest fashion trends.&lt;/b&gt; We care about the durability of our products and we are sure that it is perfect. As you understand the products of our store are a unique combination of original design, reasonable price and undoubted reliability. Our assortment can satisfy any client’s whim because it’s literally unlimited.&lt;/p&gt;', 'Motorsports', '', ''),
(33, 1, 'Hoodie', '&lt;p&gt;&lt;b&gt;Nowadays we have great opportunities to satisfy your demands with the high quality products.&lt;/b&gt; We are proud to present our wonderful choice of wheels and tires. Without a doubt we are the leading company in this sphere. Our company is the pioneer of this business because we provide a great number of new technologies concerning design solutions and some technological specialties. We guarantee the premium quality and fair prices of our goods.&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;b&gt;The interesting design is very important thing in our sphere and we are trying to stay in touch with the latest fashion trends.&lt;/b&gt; We care about the durability of our products and we are sure that it is perfect. As you understand the products of our store are a unique combination of original design, reasonable price and undoubted reliability. Our assortment can satisfy any client’s whim because it’s literally unlimited.&lt;/p&gt;', 'Classic cars', '', ''),
(37, 1, 'BOYS', '&lt;p&gt;Baby / Kids&lt;br&gt;&lt;/p&gt;', 'Baby / Kids', '', ''),
(38, 1, 'Women', '&lt;p&gt;Women&lt;br&gt;&lt;/p&gt;', 'Women', '', ''),
(40, 1, 'Clothing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Boys Clothing', 'Boys Clothing', 'Boys Clothing'),
(44, 1, 'Men', '&lt;p&gt;Men&lt;br&gt;&lt;/p&gt;', 'Men', '', ''),
(45, 1, 'Clothing', '&lt;p&gt;Women 1&lt;br&gt;&lt;/p&gt;', 'Clothing', 'Clothing', 'Clothing'),
(50, 1, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Accessories', '', ''),
(51, 1, 'Sports', '&lt;p&gt;Cat 3&lt;br&gt;&lt;/p&gt;', 'Sports', 'Sports', 'Sports'),
(54, 1, 'Footwear', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Boys Footwear', 'Boys Footwear', 'Boys Footwear'),
(55, 1, 'Football', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Football', 'Football', 'Football'),
(56, 1, 'Cricket', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Cricket', 'Cricket', 'Cricket'),
(57, 1, 'Others', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Others', 'Others', 'Others'),
(58, 1, 'Track-Suit', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Track-Suit', 'Track-Suit', 'Track-Suit'),
(59, 1, 'Girls', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Girls', '', ''),
(60, 1, 'FootWear', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Men\'s FootWear', 'Men\'s FootWear', 'Men\'s FootWear'),
(62, 1, 'Bags', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bags', '', ''),
(63, 1, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Boys Accessories', 'Boys Accessories', 'Boys Accessories'),
(64, 1, 'Footwear', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Womens Footwear', 'Womens Footwear', 'Womens Footwear'),
(65, 1, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Womens Accessories', 'Womens Accessories', 'Womens Accessories'),
(66, 1, 'Footwear', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Girls Footwear', 'Girls Footwear', 'Girls Footwear'),
(67, 1, 'Accessories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Girls Accessories', 'Girls Accessories', 'Girls Accessories'),
(68, 1, 'Clothing', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Girls Clothing', 'Girls Clothing', 'Girls Clothing'),
(69, 1, 'All Categories', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'All Categories', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(18, 18, 1),
(18, 44, 0),
(28, 18, 1),
(28, 28, 2),
(28, 44, 0),
(29, 18, 1),
(29, 29, 2),
(29, 44, 0),
(30, 18, 1),
(30, 30, 2),
(30, 44, 0),
(31, 18, 1),
(31, 31, 2),
(31, 44, 0),
(32, 18, 1),
(32, 32, 2),
(32, 44, 0),
(33, 18, 1),
(33, 33, 2),
(33, 44, 0),
(37, 37, 0),
(38, 38, 0),
(40, 37, 0),
(40, 40, 1),
(44, 44, 0),
(45, 38, 0),
(45, 45, 1),
(50, 44, 0),
(50, 50, 1),
(51, 51, 0),
(54, 37, 0),
(54, 54, 1),
(55, 51, 0),
(55, 55, 1),
(56, 51, 0),
(56, 56, 1),
(57, 51, 0),
(57, 57, 1),
(58, 18, 1),
(58, 44, 0),
(58, 58, 2),
(59, 59, 0),
(60, 44, 0),
(60, 60, 1),
(62, 44, 0),
(62, 50, 1),
(62, 62, 2),
(63, 37, 0),
(63, 63, 1),
(64, 38, 0),
(64, 64, 1),
(65, 38, 0),
(65, 65, 1),
(66, 59, 0),
(66, 66, 1),
(67, 59, 0),
(67, 67, 1),
(68, 59, 0),
(68, 68, 1),
(69, 69, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(18, 0, 0),
(28, 0, 0),
(29, 0, 0),
(30, 0, 0),
(31, 0, 0),
(32, 0, 0),
(33, 0, 0),
(37, 0, 0),
(38, 0, 0),
(40, 0, 0),
(44, 0, 2),
(45, 0, 0),
(50, 0, 0),
(51, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0),
(69, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(18, 0),
(28, 0),
(29, 0),
(30, 0),
(31, 0),
(32, 0),
(33, 0),
(37, 0),
(38, 0),
(40, 0),
(44, 0),
(45, 0),
(50, 0),
(51, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brazil', 'BR', 'BRA', '', 0, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'Korea, Republic of', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '1.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Pound Sterling', 'GBP', '£', '', '2', 0.67280000, 0, '2018-11-11 20:06:09'),
(2, 'US Dollar', 'USD', '$', '', '2', 1.00000000, 0, '2018-11-11 20:06:15'),
(3, 'Euro', 'EUR', '', '€', '2', 0.91270000, 0, '2018-11-11 20:06:02'),
(5, 'Indian Rupees', 'INR', '₹', '', '0', 1.00000000, 1, '2018-12-02 15:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(5, 1, 0, 'wholesaler', 'test', 'shahzeensk@rediffmail.com', '8898751072', '', '42e8aea00dd6b831a31f042d07de1a1d69d936b0', 'zuVtB7AV3', NULL, NULL, 0, 5, '{\"1\":\"12345678\"}', '::1', 1, 1, 0, '', '2018-11-11 15:23:01'),
(6, 2, 0, 'normal', 'test', 'test@test.com', '8898751072', '', '077ab082c6e6c2b076907e1d989ef015d19ca153', 'Ra6AVGDcH', NULL, NULL, 0, 6, '', '::1', 1, 1, 0, '', '2018-11-11 15:23:45');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'register', '{\"customer_id\":1,\"name\":\"admin admin\"}', '192.168.9.111', '2015-12-04 13:51:44'),
(2, 1, 'order_account', '{\"customer_id\":\"1\",\"name\":\"admin admin\",\"order_id\":1}', '192.168.9.111', '2015-12-04 18:30:41'),
(3, 1, 'login', '{\"customer_id\":\"1\",\"name\":\"admin admin\"}', '192.168.9.111', '2015-12-08 16:13:00'),
(4, 2, 'register', '{\"customer_id\":2,\"name\":\"asdakjshdjkh jhjashdjahsdjh\"}', '192.168.9.111', '2015-12-11 17:15:29'),
(5, 1, 'login', '{\"customer_id\":\"1\",\"name\":\"admin admin\"}', '192.168.9.111', '2015-12-14 14:20:41'),
(6, 3, 'register', '{\"customer_id\":3,\"name\":\"admin admin\"}', '192.168.9.111', '2015-12-21 10:44:04'),
(7, 3, 'login', '{\"customer_id\":\"3\",\"name\":\"admin admin\"}', '192.168.9.111', '2015-12-21 10:46:26'),
(8, 3, 'login', '{\"customer_id\":\"3\",\"name\":\"admin admin\"}', '192.168.9.111', '2015-12-21 11:26:06'),
(9, 4, 'register', '{\"customer_id\":4,\"name\":\"Shahzeen shaikh\"}', '::1', '2018-11-04 17:19:08'),
(10, 4, 'login', '{\"customer_id\":\"4\",\"name\":\"Shahzeen shaikh\"}', '::1', '2018-11-04 17:19:44'),
(11, 4, 'login', '{\"customer_id\":\"4\",\"name\":\"Shahzeen shaikh\"}', '::1', '2018-11-04 18:51:35'),
(12, 4, 'login', '{\"customer_id\":\"4\",\"name\":\"Shahzeen shaikh\"}', '::1', '2018-11-05 12:17:50'),
(13, 4, 'login', '{\"customer_id\":\"4\",\"name\":\"Shahzeen shaikh\"}', '::1', '2018-11-05 12:26:17'),
(14, 4, 'login', '{\"customer_id\":\"4\",\"name\":\"Shahzeen shaikh\"}', '::1', '2018-11-05 12:56:15'),
(15, 4, 'login', '{\"customer_id\":\"4\",\"name\":\"Shahzeen shaikh\"}', '::1', '2018-11-05 18:23:41'),
(16, 4, 'login', '{\"customer_id\":\"4\",\"name\":\"Shahzeen shaikh\"}', '::1', '2018-11-11 15:19:35'),
(17, 4, 'edit', '{\"customer_id\":\"4\",\"name\":\"Shahzeen shaikh\"}', '::1', '2018-11-11 15:19:44'),
(18, 5, 'register', '{\"customer_id\":5,\"name\":\"wholesaler test\"}', '::1', '2018-11-11 15:23:03'),
(19, 6, 'register', '{\"customer_id\":6,\"name\":\"normal test\"}', '::1', '2018-11-11 15:23:47'),
(20, 6, 'edit', '{\"customer_id\":\"6\",\"name\":\"normal test\"}', '::1', '2018-11-11 15:24:01'),
(21, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-11 15:24:55'),
(22, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-11 16:49:58'),
(23, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-11 17:08:12'),
(24, 6, 'login', '{\"customer_id\":\"6\",\"name\":\"normal test\"}', '::1', '2018-11-11 17:08:34'),
(25, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-11 17:09:06'),
(26, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-11 17:15:29'),
(27, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-11 17:34:52'),
(28, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-11 17:38:49'),
(29, 6, 'login', '{\"customer_id\":\"6\",\"name\":\"normal test\"}', '::1', '2018-11-11 19:46:21'),
(30, 6, 'order_account', '{\"customer_id\":\"6\",\"name\":\"normal test\",\"order_id\":3}', '::1', '2018-11-11 19:48:08'),
(31, 6, 'login', '{\"customer_id\":\"6\",\"name\":\"normal test\"}', '::1', '2018-11-11 19:52:16'),
(32, 6, 'login', '{\"customer_id\":\"6\",\"name\":\"normal test\"}', '::1', '2018-11-11 20:32:37'),
(33, 6, 'login', '{\"customer_id\":\"6\",\"name\":\"normal test\"}', '::1', '2018-11-11 20:32:51'),
(34, 6, 'order_account', '{\"customer_id\":\"6\",\"name\":\"normal test\",\"order_id\":5}', '::1', '2018-11-11 21:06:49'),
(35, 6, 'order_account', '{\"customer_id\":\"6\",\"name\":\"normal test\",\"order_id\":6}', '::1', '2018-11-11 21:28:19'),
(36, 6, 'return_account', '{\"customer_id\":\"6\",\"name\":\"normal test\",\"return_id\":1}', '::1', '2018-11-11 21:42:32'),
(37, 6, 'order_account', '{\"customer_id\":\"6\",\"name\":\"normal test\",\"order_id\":7}', '::1', '2018-11-11 22:03:05'),
(38, 6, 'order_account', '{\"customer_id\":\"6\",\"name\":\"normal test\",\"order_id\":8}', '::1', '2018-11-11 22:25:23'),
(39, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-18 14:49:39'),
(40, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-18 18:09:10'),
(41, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-20 22:02:17'),
(42, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-25 16:07:56'),
(43, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-26 11:16:59'),
(44, 5, 'order_account', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\",\"order_id\":10}', '::1', '2018-11-26 11:17:21'),
(45, 5, 'login', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\"}', '::1', '2018-11-26 11:20:55'),
(46, 5, 'order_account', '{\"customer_id\":\"5\",\"name\":\"wholesaler test\",\"order_id\":11}', '::1', '2018-11-26 11:22:16'),
(47, 0, 'order_guest', '{\"name\":\"Shaikh Ali\",\"order_id\":12}', '::1', '2018-11-26 11:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_affiliate`
--

CREATE TABLE `oc_customer_affiliate` (
  `customer_id` int(11) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `custom_field` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_approval`
--

CREATE TABLE `oc_customer_approval` (
  `customer_approval_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `type` varchar(9) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 1, 1),
(2, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 1, 'Wholesaler', 'Wholesaler'),
(2, 1, 'Normal', 'Normal');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(3, 3, '192.168.9.111', '2015-12-21 10:44:05'),
(6, 6, '::1', '2018-11-11 15:23:48'),
(7, 5, '::1', '2018-11-11 15:24:55');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(1, 'admin', '192.168.9.111', 1, '2015-12-21 09:43:20', '2015-12-21 09:43:20'),
(2, 'admin', '::1', 8, '2018-08-26 11:15:23', '2018-11-14 08:48:07'),
(4, 'admin@admin.com', '::1', 5, '2018-11-11 10:49:07', '2018-11-11 12:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_online`
--

INSERT INTO `oc_customer_online` (`ip`, `customer_id`, `url`, `referer`, `date_added`) VALUES
('183.87.202.30', 0, 'http://multipearls.com/index.php?route=product/category&amp;path=29', 'http://multipearls.com.preview.services/', '2018-12-02 15:54:48'),
('45.248.66.151', 0, 'http://multipearls.com/', '', '2018-12-02 16:16:22');

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_search`
--

CREATE TABLE `oc_customer_search` (
  `customer_search_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category` tinyint(1) NOT NULL,
  `description` tinyint(1) NOT NULL,
  `products` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_customer_wishlist`
--

INSERT INTO `oc_customer_wishlist` (`customer_id`, `product_id`, `date_added`) VALUES
(4, 183, '2018-11-04 17:20:47'),
(4, 188, '2018-11-04 17:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field`
--

INSERT INTO `oc_custom_field` (`custom_field_id`, `type`, `value`, `location`, `status`, `sort_order`) VALUES
(1, 'text', '', 'account', 1, 0),
(3, 'text', '', 'address', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

INSERT INTO `oc_custom_field_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES
(1, 1, 1),
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_custom_field_description`
--

INSERT INTO `oc_custom_field_description` (`custom_field_id`, `language_id`, `name`) VALUES
(1, 1, 'GST No'),
(3, 1, 'Company Name');

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`) VALUES
(1, 'voucher', 'post.order.history.add', 'total/voucher/send');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(22, 'total', 'shipping'),
(57, 'total', 'sub_total'),
(58, 'total', 'tax'),
(59, 'total', 'total'),
(349, 'total', 'handling'),
(350, 'total', 'low_order_fee'),
(389, 'total', 'coupon'),
(390, 'total', 'credit'),
(393, 'total', 'reward'),
(398, 'total', 'voucher'),
(408, 'module', 'account'),
(410, 'module', 'banner'),
(433, 'module', 'bestseller'),
(434, 'module', 'latest'),
(435, 'module', 'special'),
(436, 'module', 'affiliate'),
(437, 'module', 'information'),
(438, 'module', 'tm_slideshow'),
(440, 'module', 'olark'),
(442, 'module', 'tm_google_map'),
(449, 'module', 'tm_social_list'),
(467, 'module', 'tm_blog_articles'),
(469, 'module', 'tm_blog_category'),
(481, 'module', 'tm_megamenu'),
(482, 'module', 'tm_newsletter'),
(483, 'module', 'tm_single_category_product'),
(484, 'module', 'html'),
(485, 'module', 'tm_newsletter_popup'),
(486, 'fraud', 'fraudlabspro'),
(487, 'fraud', 'ip'),
(488, 'fraud', 'maxmind'),
(494, 'module', 'tm_module_tab'),
(499, 'module', 'carousel'),
(501, 'captcha', 'basic_captcha'),
(503, 'module', 'featured'),
(506, 'payment', 'cod'),
(507, 'shipping', 'weight'),
(509, 'shipping', 'pickup'),
(511, 'payment', 'cheque'),
(512, 'analytics', 'google_analytics'),
(513, 'module', 'slideshow'),
(517, 'module', 'tm_cookie_policy'),
(518, 'module', 'customer_invoice');

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_install`
--

CREATE TABLE `oc_extension_install` (
  `extension_install_id` int(11) NOT NULL,
  `extension_download_id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_extension_path`
--

CREATE TABLE `oc_extension_path` (
  `extension_path_id` int(11) NOT NULL,
  `extension_install_id` int(11) NOT NULL,
  `path` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_fraudlabspro`
--

CREATE TABLE `oc_fraudlabspro` (
  `order_id` varchar(11) NOT NULL,
  `is_country_match` char(2) NOT NULL,
  `is_high_risk_country` char(2) NOT NULL,
  `distance_in_km` varchar(10) NOT NULL,
  `distance_in_mile` varchar(10) NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `ip_country` varchar(2) NOT NULL,
  `ip_continent` varchar(20) NOT NULL,
  `ip_region` varchar(21) NOT NULL,
  `ip_city` varchar(21) NOT NULL,
  `ip_latitude` varchar(21) NOT NULL,
  `ip_longitude` varchar(21) NOT NULL,
  `ip_timezone` varchar(10) NOT NULL,
  `ip_elevation` varchar(10) NOT NULL,
  `ip_domain` varchar(50) NOT NULL,
  `ip_mobile_mnc` varchar(100) NOT NULL,
  `ip_mobile_mcc` varchar(100) NOT NULL,
  `ip_mobile_brand` varchar(100) NOT NULL,
  `ip_netspeed` varchar(10) NOT NULL,
  `ip_isp_name` varchar(50) NOT NULL,
  `ip_usage_type` varchar(30) NOT NULL,
  `is_free_email` char(2) NOT NULL,
  `is_new_domain_name` char(2) NOT NULL,
  `is_proxy_ip_address` char(2) NOT NULL,
  `is_bin_found` char(2) NOT NULL,
  `is_bin_country_match` char(2) NOT NULL,
  `is_bin_name_match` char(2) NOT NULL,
  `is_bin_phone_match` char(2) NOT NULL,
  `is_bin_prepaid` char(2) NOT NULL,
  `is_address_ship_forward` char(2) NOT NULL,
  `is_bill_ship_city_match` char(2) NOT NULL,
  `is_bill_ship_state_match` char(2) NOT NULL,
  `is_bill_ship_country_match` char(2) NOT NULL,
  `is_bill_ship_postal_match` char(2) NOT NULL,
  `is_ip_blacklist` char(2) NOT NULL,
  `is_email_blacklist` char(2) NOT NULL,
  `is_credit_card_blacklist` char(2) NOT NULL,
  `is_device_blacklist` char(2) NOT NULL,
  `is_user_blacklist` char(2) NOT NULL,
  `fraudlabspro_score` char(3) NOT NULL,
  `fraudlabspro_distribution` char(3) NOT NULL,
  `fraudlabspro_status` char(10) NOT NULL,
  `fraudlabspro_id` char(15) NOT NULL,
  `fraudlabspro_error` char(3) NOT NULL,
  `fraudlabspro_message` varchar(50) NOT NULL,
  `fraudlabspro_credits` varchar(10) NOT NULL,
  `api_key` char(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_fraud_ip`
--

CREATE TABLE `oc_fraud_ip` (
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(5, 'Gujarat', 'Gujarat', '2018-11-11 21:04:10', '2018-11-11 20:03:07'),
(6, 'Maharashtra', 'Maharashtra', '2018-11-11 21:03:08', '2018-11-11 21:02:55'),
(7, 'India', 'India', '0000-00-00 00:00:00', '2018-11-11 21:15:29');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 2, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(3, 1, 'Privacy Policy', '&lt;div class=&quot;privacy_page&quot;&gt;    &lt;ol&gt;        &lt;li&gt;            &lt;h4&gt;What information do we collect?&lt;/h4&gt;            &lt;p&gt;Personal information is information that can be used to directly or indirectly identify you. Personal information also includes anonymous information that is linked to information that can be used to directly or indirectly identify you. Personal information does not include information that has been irreversibly anonymized or aggregated so that it can no longer enable us, whether in combination with other information or otherwise, to identify you. We will only collect and use personal information which is necessary to comply with our legal obligations and to assist us to administer our business and provide you with the services you request. We collect information from you when you register on our site, place an order, subscribe to our newsletter or respond to a survey. When ordering or registering on our site, as appropriate, you may be asked to enter the following information: your name, e-mail address, mailing, company name, GST number, address and phone number. You may, however, also visit our site anonymously.&lt;/p&gt;        &lt;/li&gt;        &lt;li&gt;            &lt;h4&gt;What do we use your information for?&lt;/h4&gt;            &lt;p&gt;We use the information you provide to us for the specific purposes for which you provide the information, as stated at the time of collection, and as otherwise permitted by law. The information we collect from you may be used in the following ways: . To personalize your experience (your information helps us to better respond to your individual needs) . To improve our website and your shopping experience (we continually strive to improve our website offerings based on the information and feedback we receive from you) . To improve customer service (your information helps us to more effectively respond to your customer service requests and support needs) . To process transactions including executing your payments and delivering the purchased products or services requested. To administer a contest, special promotion, survey, activity or other site feature . To send periodic emails. The email address you provide for order processing, may be used to send you important information and updates pertaining to your order, in addition to receiving occasional company news, updates, related product or service information, etc.&lt;/p&gt;        &lt;/li&gt;        &lt;li&gt;            &lt;h4&gt;How do we protect your information?&lt;/h4&gt;            &lt;p&gt;You are responsible for your own username and password safety and security on Multipearls Traders. We recommend choosing a strong password and changing it frequently. Please do not use the same login details (email and password) across multiple websites. That said, we do implement a variety of security measures including offering the use of a secure server. All supplied sensitive/credit information is transmitted via Secure Socket Layer (SSL) technology and then encrypted into our Payment gateway providers database only to be accessible by those authorized with special access rights to such systems, and are required to keep the information confidential. After a transaction, your private information (credit cards, social security numbers, financials, etc.) will not be stored on our servers. Our servers and website are security scanned and fully verified externally by McAfee Secure from Symantec on a daily basis to protect you online&lt;/p&gt;        &lt;/li&gt;        &lt;li&gt;            &lt;h4&gt;Do we use cookies?&lt;/h4&gt;            &lt;p&gt;Yes. Cookies are small files that a site or its service provider transfers to your computers hard drive through your Web browser (if you have allowed it via your settings). This enables the sites or service providers systems to recognize your browser and capture and remember certain information. We use cookies to help us remember and process the items in your shopping cart, understand and save your preferences for future visits and compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools for you in the future.&lt;/p&gt;        &lt;/li&gt;        &lt;li&gt;            &lt;h4&gt;Do we disclose any information to outside parties?&lt;/h4&gt;            &lt;p&gt;We do not sell, trade, or otherwise transfer to outside parties your personal information. This does not include trusted third parties who assist us in operating our website, conducting our business, executing payments, delivering purchased products or services, sending you information or updates or otherwise servicing you, so long as those parties agree to keep this information confidential. We may also release your information when we believe release is appropriate to comply with the law, enforce our site policies, or protect ours or others rights, property, or safety. However, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.&lt;/p&gt;        &lt;/li&gt;        &lt;li&gt;            &lt;h4&gt;How long do we retain your information?&lt;/h4&gt;            &lt;p&gt;We will retain your personal information for as long as it is necessary to fulfill the purposes outlined in this Privacy Policy, unless a longer retention period is required or permitted by tax, accounting or other applicable laws.&lt;/p&gt;        &lt;/li&gt;        &lt;li&gt;            &lt;h4&gt;Changes to our Privacy Policy&lt;/h4&gt;            &lt;p&gt;If we decide to change our privacy policy, we will post those changes on this page, and/or update the Privacy Policy modification date below.&lt;/p&gt;        &lt;/li&gt;    &lt;/ol&gt;&lt;/div&gt;', 'Privacy Policy', '', ''),
(4, 1, 'About', '&lt;div class=&quot;text-center&quot;&gt;    &lt;h3 style=&quot;text-align: center; font-family: SourceSansPro-Regular; color: rgb(86, 86, 86); margin-top: 20px; margin-bottom: 10px; font-size: 22px;&quot;&gt;Multipearls Traders is a well structure&amp;nbsp; market place for wholesale buying and selling goods across India&lt;/h3&gt;    &lt;p&gt;Our store is more than just another average online wholesale store . We sell not only top quality products, but give our customers a positive online shopping experience. Forget about struggling to do everything at once: taking care of the family, running your business, walking your dog, cleaning the house, doing the shopping, etc. Purchase the goods you need every day or just like in a few clicks or taps, depending on the device you use to access the Internet. We work to make your life more enjoyable. &lt;/p&gt;    &lt;div class=&quot;row&quot;&gt;        &lt;div class=&quot;col-sm-4&quot;&gt;            &lt;div class=&quot;count-box&quot;&gt; &lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;strong&gt;200 +&lt;/strong&gt;&lt;/span&gt;                &lt;h5&gt;Products available&lt;/h5&gt;            &lt;/div&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-4&quot;&gt;            &lt;div class=&quot;count-box&quot;&gt; &lt;strong&gt;81%&lt;/strong&gt;                &lt;h5&gt;Clients come back&lt;/h5&gt;            &lt;/div&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-4&quot;&gt;            &lt;div class=&quot;count-box&quot;&gt; &lt;strong&gt;10K&lt;/strong&gt;                &lt;h5&gt;Site members&lt;/h5&gt;            &lt;/div&gt;        &lt;/div&gt;    &lt;/div&gt;    &lt;h3&gt;WHY CHOOSE US&lt;/h3&gt;    &lt;div class=&quot;row&quot;&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;div class=&quot;icon-box&quot;&gt; &lt;i class=&quot;material-design-search100&quot;&gt;&lt;/i&gt;                &lt;h5&gt;Wholesale pricing&lt;/h5&gt;                &lt;p&gt;Fully leveraging our integrated supply network of key manufacturers and agencies, developed over many years of business, Multipearls Traders&amp;nbsp; is able to consistently achieve wholesale cost savings that other platforms are simply unable to. We ensure our global customer base benefits directly by having any and all cost savings passed on for the highest possible discounts. This maximizes value to deliver the largest possible profit scope for every one of our customers.&lt;/p&gt;            &lt;/div&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;div class=&quot;icon-box&quot;&gt; &lt;i class=&quot;material-design-front16&quot;&gt;&lt;/i&gt;                &lt;h5&gt;High Quality Description&lt;/h5&gt;                &lt;p&gt;To facilitate our clients in their marketing operations, Multipearls Traders&amp;nbsp;&amp;nbsp;provides professionally written text descriptions and clear, high-definition product photography to provide the most accurate information overview and representation possible of the final product.&amp;nbsp;&lt;/p&gt;            &lt;/div&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;div class=&quot;icon-box&quot;&gt; &lt;i class=&quot;material-design-thumb54&quot;&gt;&lt;/i&gt;                &lt;h5&gt;Business Made Easy&lt;/h5&gt;                &lt;p&gt;Many aspiring entrepreneurs would love to have and manage their own successful business. However they are limited by budget constraints or unreliable suppliers. Multipearls Traders&amp;nbsp;&amp;nbsp;removes these limits by offering you an opportunity to fulfill your dream of starting your own business with minimal capital and no front-loaded risks.&lt;/p&gt;            &lt;/div&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;div class=&quot;icon-box&quot;&gt; &lt;i class=&quot;material-design-thumb54&quot;&gt;&lt;/i&gt;                &lt;h5&gt;Credit Facilities&lt;/h5&gt;                &lt;p&gt;Many aspiring entrepreneurs would love to have and manage their own successful business. However they are limited by budget constraints or unreliable suppliers. Multipearls Traders&amp;nbsp;&amp;nbsp;removes these limits by offering you an opportunity to fulfill your dream of starting your own business with minimal capital and no front-loaded risks.&lt;/p&gt;            &lt;/div&gt;        &lt;/div&gt;    &lt;/div&gt;    &lt;h3&gt;HOW IT WORKS&lt;/h3&gt;    &lt;div class=&quot;row&quot;&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;div class=&quot;icon-box&quot;&gt; &lt;i class=&quot;fa fa-home&quot;&gt;&lt;/i&gt;                &lt;h5&gt;DIRECT FROM MANUFACTURER&lt;/h5&gt;                &lt;p&gt;Fully leveraging our integrated supply network of key manufacturers and agencies, developed over many years of business, Multipearls Traders&amp;nbsp; is able to consistently achieve wholesale cost savings that other platforms are simply unable to. We ensure our global customer base benefits directly by having any and all cost savings passed on for the highest possible discounts. This maximizes value to deliver the largest possible profit scope for every one of our customers.&lt;/p&gt;            &lt;/div&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;div class=&quot;icon-box&quot;&gt; &lt;i class=&quot;material-design-front16&quot;&gt;&lt;/i&gt;                &lt;h5&gt;EASY RETURNS&lt;/h5&gt;                &lt;p&gt;To facilitate our clients in their marketing operations, Multipearls Traders&amp;nbsp;&amp;nbsp;provides professionally written text descriptions and clear, high-definition product photography to provide the most accurate information overview and representation possible of the final product.&amp;nbsp;&lt;/p&gt;            &lt;/div&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;div class=&quot;icon-box&quot;&gt; &lt;i class=&quot;material-design-thumb54&quot;&gt;&lt;/i&gt;                &lt;h5&gt;DOOR DELIVERY&lt;/h5&gt;                &lt;p&gt;Many aspiring entrepreneurs would love to have and manage their own successful business. However they are limited by budget constraints or unreliable suppliers. Multipearls Traders&amp;nbsp;&amp;nbsp;removes these limits by offering you an opportunity to fulfill your dream of starting your own business with minimal capital and no front-loaded risks.&lt;/p&gt;            &lt;/div&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;div class=&quot;icon-box&quot;&gt; &lt;i class=&quot;material-design-thumb54&quot;&gt;&lt;/i&gt;                &lt;h5&gt;SECURE PAYMENT&lt;/h5&gt;                &lt;p&gt;Many aspiring entrepreneurs would love to have and manage their own successful business. However they are limited by budget constraints or unreliable suppliers. Multipearls Traders&amp;nbsp;&amp;nbsp;removes these limits by offering you an opportunity to fulfill your dream of starting your own business with minimal capital and no front-loaded risks.&lt;/p&gt;            &lt;/div&gt;        &lt;/div&gt;    &lt;/div&gt;    &lt;h3&gt;OUR TEAM&lt;/h3&gt;    &lt;div class=&quot;row&quot;&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;                &lt;a title=&quot;Robert Johnson&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;&lt;img alt=&quot;Robert Johnson&quot; src=&quot;image/catalog/article/article-1.jpg&quot;&gt;&lt;/a&gt;            &lt;/figure&gt;            &lt;h5&gt;&lt;a title=&quot;Robert Johnson&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=7&quot;&gt;Robert Johnson&lt;/a&gt;&lt;/h5&gt;            &lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;                &lt;a title=&quot;Jessica Priston&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=8&quot;&gt;&lt;img alt=&quot;Jessica Priston&quot; src=&quot;image/catalog/article/article-2.jpg&quot;&gt;&lt;/a&gt;            &lt;/figure&gt;            &lt;h5&gt;&lt;a title=&quot;Jessica Priston&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=8&quot;&gt;Jessica Priston&lt;/a&gt;&lt;/h5&gt;            &lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;                &lt;a title=&quot;Sam Kromstain&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=9&quot;&gt;&lt;img alt=&quot;Sam Kromstain&quot; src=&quot;image/catalog/article/article-3.jpg&quot;&gt;&lt;/a&gt;            &lt;/figure&gt;            &lt;h5&gt;&lt;a title=&quot;Sam Kromstain&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=9&quot;&gt;Sam Kromstain&lt;/a&gt;&lt;/h5&gt;            &lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;        &lt;/div&gt;        &lt;div class=&quot;col-sm-3&quot;&gt;            &lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;                &lt;a title=&quot;Edna Barton&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=10&quot;&gt;&lt;img alt=&quot;Edna Barton&quot; src=&quot;image/catalog/article/article-4.jpg&quot;&gt;&lt;/a&gt;            &lt;/figure&gt;            &lt;h5&gt;&lt;a title=&quot;Edna Barton&quot; href=&quot;index.php?route=information/information&amp;amp;information_id=10&quot;&gt;Edna Barton&lt;/a&gt;&lt;/h5&gt;            &lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;        &lt;/div&gt;    &lt;/div&gt;    &lt;h3&gt;Testimonials&lt;/h3&gt;    &lt;div class=&quot;row&quot;&gt;        &lt;div class=&quot;col-sm-10 col-sm-offset-1&quot;&gt;            &lt;div class=&quot;testimonials&quot;&gt;                &lt;div class=&quot;item&quot;&gt;                    &lt;blockquote&gt;                        &lt;h5&gt;Mary Taba&lt;/h5&gt;                        &lt;p&gt;“Guys, you rock! Made a purchase at your store recently. The order has been shipped and delivered on time. The quality is superb! The price is quite reasonable. Told all my friends about your excellent service and the variety of choice. I think I’ll be your loyal customer in future as well. I wish your store many more years of prosperity.” &lt;/p&gt;                    &lt;/blockquote&gt;                &lt;/div&gt;                &lt;div class=&quot;item&quot;&gt;                    &lt;blockquote&gt;                        &lt;h5&gt;Virginia Ubert&lt;/h5&gt;                        &lt;p&gt;“Having the distressing experience with some online shops before decided to say ‘’THANK YOU” to all personnel of this store. You are not only friendly, but deliver really good products in the shortest possible terms. In a word, I am absolutely happy with my purchase and the service. Everything was perfect!”&lt;/p&gt;                    &lt;/blockquote&gt;                &lt;/div&gt;            &lt;/div&gt;        &lt;/div&gt;    &lt;/div&gt;&lt;/div&gt;', 'About', '', ''),
(5, 1, 'Terms &amp; Conditions', '&lt;div class=&quot;row terms_conditions_page&quot;&gt;    &lt;br&gt;    &lt;div class=&quot;col-sm-6&quot;&gt;        &lt;h4&gt;Conditions of Use&lt;/h4&gt;        &lt;p&gt;Welcome to our online store! and its associates provide their products and services to you subject to the following conditions. If you visit or shop within this website, you should accept these terms and conditions. Please read them carefully.&lt;/p&gt;        &lt;h4&gt;General&lt;/h4&gt;        &lt;p&gt;By (i) using this Website or any facility or Service provided by this Website in any way; or (ii) merely browsing the Website, You agree that You have read, understood and agreed to be bound by these Terms and Conditions, Return and Cancellation policy, delivery information and the Website\'s Privacy Policy available at the homepage,www..com  shall not be required to notify You, whether as a registered user or not, of any changes made to the Terms and Conditions. The revised Terms and Conditions shall be made available on the Website. Your use of the Website and the Services is subject to the most current version of the Terms of and Conditions made available on the Website at the time of such use. You are requested to regularly visit the home page www..com in to view the most current Terms of Use. You can determine when Multipearls last modified the Terms of Use by referring to the &quot;Last Updated&quot; legend above. It shall be Your responsibility to check these Terms and Conditions periodically for changes. Multipearls box may require you to provide .Your consent to the updated Terms and Conditions in a specified manner before prior to any further use of the Website and the Services is provided on the Website. If no such separate consent is sought, Your continued use of the Website, following changes to the Terms and Conditions, will constitute Your acceptance of those changes.&lt;/p&gt;     &lt;h4&gt;License and site access&lt;/h4&gt;        &lt;p&gt;The method and route of shipment are at Seller’s discretion unless Buyer timely supplies explicit instructions otherwise. Title to the Product passes to Buyer when Product is delivered to the selected carrier, even if Seller made a nonconforming tender. Buyer attempts to revoke acceptance of the Product, or Buyer repudiates this document after the Products have been identified hereto.&lt;/p&gt;   &lt;h4&gt;taxes&lt;/h4&gt;        &lt;p&gt;Buyer is responsible for any tax or governmental charge imposed upon the sale or transfer of any product. Any such tax or governmental charge will be added to the total invoice amount.  Applicable freight costs will be added to the invoice. If any&lt;/p&gt;        &lt;h4&gt;License and site access&lt;/h4&gt;        &lt;p&gt;Multipearls Traders grants you a limited license to access and make personal use of this site and not to download (other than page caching) or modify it, or any portion of it, except with express written consent of Multipearls Traders. This license does not include any resale or commercial use of this site or its contents, any collection and use of any product listings, descriptions, or prices, any derivative use of this site or its contents, any downloading or copying of account information for the benefit of another merchant, or any use of data mining, robots, or similar data gathering and extraction tools. This site or any portion of this site may not be reproduced, duplicated, copied, sold, resold, visited, or otherwise exploited for any commercial purpose without express written consent of Multipearls Traders. You may not frame, crop or utilize framing techniques to enclose any trademark, logo, or other proprietary information (including images, text, page layout, or form) of Multipearls Traders and our associates without express written consent. You may not use any meta tags or any other &quot;hidden text&quot; utilizing the Multipearls Traders name or trademarks without the express written consent of Multipearls Traders. Any unauthorized use terminates the permission or license granted by Multipearls Traders. You are granted a limited, revocable, and nonexclusive right to create a hyperlink to the home page of Multipearls Traders so long as the link does not portray Multipearls Traders, its associates, or their products or services in a false, misleading, derogatory, or otherwise offensive matter. You may not use any Multipearls Traders logo or other proprietary graphic or trademark as part of the link without express written permission.&lt;/p&gt;        &lt;h4&gt;Your membership account&lt;/h4&gt;        &lt;p&gt;If you use this site, you are responsible for maintaining the confidentiality of your account and password and for restricting access to your computer, and you agree to accept responsibility for all activities that occur under your account or password. If you are under 18, you may use our website only with involvement of a parent or legal guardian. Multipearls Traders and its associates reserve the right to refuse service, terminate accounts, remove or edit content, or cancel orders at their sole discretion. Your registration as a Member on this website is based on your actual shipping needs. The balance of your account can only be used to purchase items of this website. Please, protect your account information.&lt;/p&gt;    &lt;/div&gt;    &lt;div class=&quot;col-sm-6&quot;&gt;        &lt;h4&gt;Reviews, comments, emails and other content&lt;/h4&gt;        &lt;p&gt;Visitors may post reviews, comments, and other content, and submit suggestions, ideas, comments, questions, or other information, so long as the content is not illegal, obscene, threatening, defamatory, invasive of privacy, infringing of intellectual property rights, or otherwise injurious to third parties or objectionable and does not consist of or contain software viruses, political campaigning, commercial solicitation, chain letters, mass mailings, or any form of &quot;spam&quot;. You may not use a false e-mail address, impersonate any person or entity, or otherwise mislead as to the origin of a card or other content. Multipearls Traders reserves the right (but not the obligation) to remove or edit such content, but does not regularly review posted content. If you do post content or submit material, and unless we indicate otherwise, you grant Multipearls Traders and its associates a nonexclusive, royalty-free, perpetual, irrevocable, and fully sub-licensable right to use, reproduce, modify, adapt, publish, translate, create derivative works from, distribute, and display such content throughout the world in any media. You grant Multipearls Traders and its associates and sub-licensees the right to use the name that you submit in connection with such content, if they choose. You represent and warrant that you own or otherwise control all of the rights to the content that you post, that the content is accurate, that use of the content you supply does not violate this policy and will not cause injury to any person or entity, and that you will indemnify Multipearls Traders or its associates for all claims resulting from content you supply. Multipearls Traders has the right but not the obligation to monitor and edit or remove any activity or content. Multipearls Traders takes no responsibility and assumes no liability for any content posted by you or any third party.&lt;/p&gt;        &lt;h4&gt;Risk of loss&lt;/h4&gt;        &lt;p&gt;All items purchased from Multipearls Traders are made pursuant to a shipping contract. This means that the risk of loss and title for such items passes to you upon our delivery to the carrier.&lt;/p&gt;        &lt;h4&gt;Product descriptions&lt;/h4&gt;        &lt;p&gt;Multipearls Traders and its associates attempt to be as accurate as possible with the product descriptions. However, Multipearls Traders does not warrant that product descriptions or other content of this site is accurate, complete, reliable, current, or error-free. If a product offered by Multipearls Traders itself is not as described, your sole remedy is to contact us to discuss the situation and determine the best outcome.&lt;/p&gt;        &lt;h4&gt;Pricing Information&lt;/h4&gt;        &lt;p&gt;You agree to provide correct and accurate credit/ debit card details to the approved payment gateway for availing Services on the Website. You shall not use the credit/ debit card which is not lawfully owned by You,i.e. in any transaction, You must use Your own credit/ debit card. The information provided by You will not be utilized or shared with any third party unless required in relation to fraud verification or by law, regulation or court order. You will be solely responsible for the security and confidentiality of Your credit/ debit card details. Wholesale Box expressly disclaims all liabilities that may arise as a consequence of any unauthorized use of Your credit/ debit card.&lt;/p&gt;        &lt;h4&gt;Site policies, modification and severability&lt;/h4&gt;        &lt;p&gt;Please carefully review our other policies, such as our Shipping and Returns policy, posted on this site. These policies also govern your visit to Multipearls Traders. We reserve the right to make changes to our site, policies, and these Conditions of Use at any time. If any of these conditions shall be deemed invalid, void, or for any reason unenforceable, that condition shall be deemed severable and shall not affect the validity and enforceability of any remaining condition.&lt;/p&gt;    &lt;/div&gt;&lt;/div&gt;', 'Terms &amp; Conditions', '', ''),
(6, 1, 'Delivery Information', '&lt;div class=&quot;delivery_page&quot;&gt;\r\n&lt;h4&gt;Hello and welcome to the Shipping and Delivery Information page! Here you can get acquainted with useful information on terms and conditions of our goods delivery.&lt;/h4&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;You can purchase your items online and pick them up at our street store, or ship them directly to your doorstep. Shipping is free on some orders. We use the best carriers in the business to make sure your order gets to you on time. From the Secure Checkout page you\'ll see your item description, price and delivery timing. Where available, you can also choose a faster delivery method for each item on your order, for an additional fee. Delivery times vary according to your selected delivery address, availability of your items and the time of day you place your order.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3 class=&quot;clear&quot;&gt;Cost&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;div class=&quot;table-responsive&quot;&gt;\r\n&lt;table class=&quot;table table-bordered&quot;&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;thead&gt;\r\n\r\n\r\n\r\n\r\n&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Service&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Locations&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Delivery Schedule&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Cost per Shipment&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n&lt;/thead&gt;\r\n\r\n\r\n\r\n\r\n&lt;tbody&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail Tracker (Order value $50 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$4.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Standard Courier Delivery&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;UK mainland only&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Delivery 7.30am - 5.30am &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$5.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Standard Courier Delivery&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Northern Ireland, Eire, Scilly Isles&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Delivery 7.30am - 5.30am &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$9.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Priority courier pre 12pm Next Working Day&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;UK mainland only&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Pre 12pm &lt;br&gt; Delivery 7.30am - 12pm &lt;br&gt; Monday - Friday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$8.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;Royal mail 1st Class Service (Order value $20 or less)&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;All of UK &amp;amp; some European Countries &lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;1-3 days &lt;br&gt; Monday - Saturday&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n		&lt;td&gt;$3.95&lt;/td&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n	&lt;/tr&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/tbody&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/table&gt;\r\n\r\n\r\n&lt;/div&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;h3&gt;Free Delivery&lt;/h3&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;p&gt;Free two-day shipping is available on in-stock items. You can see in your bag if your item is in stock. Free two-day shipping is not available on customized, engraved products, and for certain order types, including orders paid for with financing or by bank transfer. To get free two-day shipping, you will need to place your order by 5pm, Monday to Friday. For instance, if you order your goods before 5:00 pm, Monday to Friday we will deliver them in two business days.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Delivery Information', '', ''),
(7, 1, 'Robert Johnson', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;\r\n		&lt;img src=&quot;image/catalog/article/article-1.jpg&quot; alt=&quot;Robert Johnson&quot;&gt;\r\n	\r\n&lt;/figure&gt;\r\n&lt;p&gt;&lt;strong&gt;Senior salesman&lt;/strong&gt; with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;\r\n\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Robert Johnson', '', ''),
(8, 1, 'Jessica Priston', '&lt;div class=&quot;human_info&quot;&gt;&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;										&lt;img src=&quot;image/catalog/article/article-2.jpg&quot; alt=&quot;Jessica Priston&quot;&gt;									&lt;/figure&gt;\r\n&lt;p&gt;Mega positive &lt;strong&gt;shop assistant&lt;/strong&gt; always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Jessica Priston', '', ''),
(9, 1, 'Sam Kromstain', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;							&lt;img src=&quot;image/catalog/article/article-3.jpg&quot; alt=&quot;Sam Kromstain&quot;&gt;								&lt;/figure&gt;\r\n&lt;p&gt;&lt;strong&gt;Wholesale manager.&lt;/strong&gt; Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Sam Kromstain', '', ''),
(10, 1, 'Edna Barton', '&lt;div class=&quot;human_info&quot;&gt;\r\n&lt;figure class=&quot;thumbnail featured-thumbnail&quot;&gt;									&lt;img src=&quot;image/catalog/article/article-4.jpg&quot; alt=&quot;Edna Barton&quot;&gt;								&lt;/figure&gt;\r\n&lt;p&gt; &lt;strong&gt;Quality control manager&lt;/strong&gt;. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;\r\n\r\n\r\n\r\n&lt;/div&gt;', 'Edna Barton', '', ''),
(11, 1, 'Returns and Cancellation Policy', '&lt;!--?php echo $header; ?--&gt;&lt;div class=&quot;&lt;div class=&quot;row terms_conditions_page&quot;&gt;&quot;&gt;    &lt;ol&gt;        &lt;li&gt;            &lt;h4&gt;&lt;/h4&gt;\r\n\r\n            &lt;p&gt;Welcome to our Privacy Policy page! When you use our store services, you trust us with your information. This Privacy Policy is meant to help you understand what data we collect, why we collect it, and what we do with it. When you share information with us, we can make our services even better for you. For instance, we can show you more relevant search results and ads, help you connect with people or to make sharing with others quicker and easier. As you use our services, we want you to be clear how we’re using information and the ways in which you can protect your privacy. This is important; we hope you will take time to read it carefully. Remember, you can find controls to manage your information and protect your privacy and security. We’ve tried to keep it as simple as possible. &lt;/p&gt;\r\n\r\n        &lt;/li&gt;\r\n\r\n&lt;/ol&gt;&lt;/div&gt;', 'Returns and Cancellation Policy', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search'),
(14, 'Blog');

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(1091, 6, 'olark.50', 'footer_top', 1),
(1092, 6, 'tm_megamenu.103', 'navigation', 1),
(1093, 6, 'tm_newsletter.104', 'footer_top', 2),
(1095, 10, 'olark.50', 'footer_top', 1),
(1096, 10, 'affiliate', 'column_left', 1),
(1097, 10, 'tm_megamenu.103', 'navigation', 1),
(1098, 10, 'tm_newsletter.104', 'footer_top', 2),
(1099, 14, 'tm_blog_category.90', 'column_left', 0),
(1100, 14, 'tm_blog_articles.91', 'column_left', 1),
(1101, 14, 'olark.50', 'footer_top', 2),
(1102, 14, 'tm_megamenu.103', 'navigation', 1),
(1103, 14, 'tm_newsletter.104', 'footer_top', 2),
(1109, 7, 'olark.50', 'footer_top', 1),
(1110, 7, 'tm_megamenu.103', 'navigation', 1),
(1111, 7, 'tm_newsletter.104', 'footer_top', 2),
(1112, 12, 'olark.50', 'footer_top', 1),
(1113, 12, 'tm_megamenu.103', 'navigation', 1),
(1114, 12, 'tm_newsletter.104', 'footer_top', 2),
(1119, 4, 'account', 'column_left', 1),
(1120, 4, 'olark.50', 'footer_top', 1),
(1122, 4, 'tm_megamenu.103', 'navigation', 1),
(1123, 4, 'tm_newsletter.104', 'footer_top', 2),
(1124, 11, 'olark.50', 'footer_top', 1),
(1125, 11, 'tm_megamenu.103', 'navigation', 1),
(1126, 11, 'tm_newsletter.104', 'footer_top', 2),
(1128, 5, 'olark.50', 'footer_top', 1),
(1129, 5, 'account', 'column_left', 1),
(1130, 5, 'tm_megamenu.103', 'navigation', 1),
(1131, 5, 'tm_newsletter.104', 'footer_top', 2),
(1132, 2, 'olark.50', 'footer_top', 1),
(1133, 2, 'tm_megamenu.103', 'navigation', 1),
(1134, 2, 'tm_newsletter.104', 'footer_top', 2),
(1140, 9, 'olark.50', 'footer_top', 1),
(1141, 9, 'tm_megamenu.103', 'navigation', 1),
(1142, 9, 'tm_newsletter.104', 'footer_top', 2),
(2066, 1, 'html.112', 'top', 5),
(2067, 1, 'tm_slideshow.46', 'top', 1),
(2068, 1, 'html.124', 'top', 7),
(2069, 1, 'tm_single_category_product.133', 'top', 4),
(2070, 1, 'tm_megamenu.103', 'navigation', 0),
(2071, 1, 'tm_single_category_product.121', 'top', 6),
(2072, 1, 'tm_newsletter.104', 'footer_top', 9),
(2073, 1, 'tm_single_category_product.129', 'top', 8),
(2074, 1, 'html.127', 'top', 3),
(2075, 1, 'tm_single_category_product.134', 'top', 2),
(2076, 1, 'olark.50', 'footer_top', 10),
(2082, 8, 'tm_google_map.54', 'content_top', 0),
(2083, 8, 'olark.50', 'footer_top', 1),
(2084, 8, 'tm_megamenu.103', 'navigation', 3),
(2085, 8, 'tm_newsletter.104', 'footer_top', 2),
(2150, 3, 'olark.50', 'footer_top', 1),
(2151, 3, 'tm_megamenu.103', 'navigation', 1),
(2152, 13, 'olark.50', 'footer_top', 1),
(2153, 13, 'tm_megamenu.103', 'navigation', 1),
(2154, 13, 'tm_newsletter.104', 'footer_top', 2),
(2155, 13, 'html.112', 'content_bottom', 4),
(2156, 13, 'tm_single_category_product.129', 'content_bottom', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(301, 6, 0, 'account/%'),
(302, 10, 0, 'affiliate/%'),
(303, 14, 0, 'simple_blog/author'),
(304, 14, 0, 'simple_blog/article'),
(305, 14, 0, 'simple_blog/category'),
(306, 14, 0, 'simple_blog/search'),
(308, 7, 0, 'checkout/%'),
(309, 12, 0, 'product/compare'),
(311, 4, 0, ''),
(312, 11, 0, 'information/information'),
(313, 5, 0, 'product/manufacturer'),
(314, 2, 0, 'product/product'),
(316, 9, 0, 'information/sitemap'),
(409, 1, 0, 'common/home'),
(411, 8, 0, 'information/contact'),
(429, 3, 0, 'product/category'),
(430, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Table structure for table `oc_letscms_faq`
--

CREATE TABLE `oc_letscms_faq` (
  `faq_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_letscms_faq_description`
--

CREATE TABLE `oc_letscms_faq_description` (
  `faq_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `question` varchar(255) DEFAULT NULL,
  `answer` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_lightning_modified`
--

CREATE TABLE `oc_lightning_modified` (
  `page` varchar(36) DEFAULT NULL,
  `cs` bigint(13) DEFAULT NULL,
  `md` int(11) DEFAULT NULL,
  `scs` bigint(13) DEFAULT NULL,
  `smd` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_lightning_modified`
--

INSERT INTO `oc_lightning_modified` (`page`, `cs`, `md`, `scs`, `smd`) VALUES
('ed/ce6449efa890cef4a1bf11a18deb4e1', 1902304014, 1542604047, 374871412, 1542604047),
('27/c46918e2a4d3728d00552e422d6f608', 3514046158, 1542604050, 1250416320, 1542604050),
('e2/cc2429d1ed78c41255ec99f3e928378', 2935847035, 1542604051, 1253639827, 1542604051),
('44/ce3d5d79f6a6b2a870f92f4f265cc2f', 2274894328, 1542604051, 471573441, 1542604051),
('54/c0478730c43b39a13590c5dc926cd3c', 4147073008, 1542604061, 3052751895, 1542604061),
('cb/c18b89626906d94b4c01a39856211e3', 2641421064, 1542604062, 736435874, 1542604062),
('aa/cea48ed9d257cafedd315043e34e5a3', 2586819987, 1542604063, 223353062, 1542604063),
('be/c7ff93dec453096bf232a38269b9ae8', 3392637411, 1542604064, 4201228238, 1542604064),
('54/c16503ab8c5eee45b2d20396596b9fd', 475965996, 1542604065, 2009226404, 1542604065),
('8f/ce38fd6b25419f5e0184129986e1052', 3808249099, 1542604067, 4201228238, 1542604067),
('dd/ce06ce3e17d9ae98cfe14ea683b6abb', 2292641508, 1542604067, 691760815, 1542604067),
('09/c1880f15f16012d042edb923309e29e', 2907460653, 1542604068, 871631409, 1542604068),
('9c/c624e3fc93e278c177ad096ff40e7e4', 8987001, 1542604068, 3773781471, 1542604068),
('e4/c1a3afedaadbda720103aedd725c1f7', 2572746662, 1542604069, 2017998509, 1542604069),
('ba/ca17d64502ca9fbff7c9ff62560fd7d', 3484447799, 1542604071, 2009226404, 1542604071),
('8f/c4ed34abe9a24e34659fa444ee1e7d7', 1021305944, 1542604073, 3301411790, 1542604073),
('23/c80d6b2d062507a06c04d82b9eeca83', 1683558096, 1542604073, 1655722027, 1542604073),
('5a/cb06339fdc287f974df80e650caada2', 3972918143, 1542604075, 128800529, 1542604075),
('2b/c7179740c6c464d01e03ed4f5edc746', 180030445, 1542604076, 3450087167, 1542604076),
('b5/ca30e5cab9cb88423f13f6077558bc0', 1848710813, 1542604077, 3537221349, 1542604077),
('30/c071feebbcbfec8b23bbd07e9d8966d', 1852019026, 1542604077, 1239999612, 1542604077),
('52/cf9ed7e352bfb9725590d50dea7cb2f', 3839482376, 1542604079, 1396314339, 1542604079),
('07/c7ed15aad6d424e0b1c3f125892a3af', 1759158701, 1542604079, 1077774717, 1542604079),
('50/c58fc4003f72246cdc52a6928074534', 2916324939, 1542604081, 4201228238, 1542604081),
('12/ca916821d40c90f9fc4456c2aa7d5c1', 3595827347, 1542604082, 2798472556, 1542604082),
('61/cef099ccc6a46f28f2cd4f5e6036348', 946406862, 1542604084, 2667714218, 1542604084),
('81/caf1c70e7ba3b1f0d597f4feb56fcf2', 195599404, 1542604086, 736435874, 1542604086),
('b5/c468e057c48c3b01c0661a0d9be6e07', 3563863989, 1542604086, 2009226404, 1542604086),
('00/c06a9e93407be2cdec61d4d5d0ef7c6', 1652573421, 1542604087, 1385675906, 1542604087),
('5d/cf2abd7be06b0e8460fda076ae45040', 3244238762, 1542604088, 4294943950, 1542604088),
('d4/c6b3dfa400104ba04a735ef486f58a7', 1720357965, 1542604088, 144224784, 1542604088),
('82/ccea742e3bb8183f6767170fdaab03e', 2665020478, 1542604089, 3629430162, 1542604089),
('7a/c050e527045ff806724d34a9cf52619', 3276012932, 1542604089, 3536461621, 1542604089),
('20/ce7acf6f1cdd7641841accda7c57f97', 2607213767, 1542604091, 4201228238, 1542604091),
('02/c6f9a494bae9073ce06b66fc4969d69', 149329502, 1542604098, 2667714218, 1542604098),
('de/c2d7a2a62d0bddee264011840adda79', 1122737377, 1542604100, 2640452215, 1542604100),
('bc/c51bbf42bd62688217023298061f290', 1174253432, 1542604100, 598914323, 1542604100),
('51/cae7f7f537adbb0e49163819ee822db', 2427434702, 1542604101, 2640452215, 1542604101),
('7f/cf3cd7617ab866e42338b3c2bc6917f', 843372766, 1542604107, 2009226404, 1542604107),
('7f/cf7708f86523a1da1a969ac5b4dd95d', 3465903088, 1542604107, 174632654, 1542604107),
('a8/c10e49d422b9b7c33c8da6b596a1729', 4205881806, 1542604108, 2983040198, 1542604108),
('10/c3ccc5549a5493258916538d91dd0fd', 1595530220, 1542604110, 2009226404, 1542604110),
('bd/c9f877001b5adecb0e07f4996aec4d5', 1385879240, 1542604111, 2667714218, 1542604111),
('c3/c538153656e0ccf54972e07661f6544', 4030270887, 1542604112, 361709938, 1542604112),
('d9/c360567cd536190c42985f8a01045de', 2894193190, 1542604113, 3836264746, 1542604113),
('fb/ca6683bff870894fa34975e3f53218b', 1511706221, 1542604114, 1497951576, 1542604114),
('25/c56ce99e3cb2a1c8992de2295e1cafd', 734641890, 1542604114, 2300644960, 1542604114),
('54/c21840b2bae6de403d30e35d8c1707b', 782328371, 1542604115, 2009226404, 1542604115),
('88/c2ff8e677052327ef5e8ca9a34bcc45', 301467608, 1542604116, 2470973765, 1542604116),
('74/c3b97666b9151f67042c9061d72b630', 2809108761, 1542604116, 4293663278, 1542604116),
('1a/c14d48873dcaa97f32984233743ccdd', 3377236107, 1542604117, 4201228238, 1542604117),
('b2/c51476cea64b946dba6bf874e7d5d40', 2327286147, 1542604118, 324136708, 1542604118),
('6c/c8fcf9bf6d191cecfc14db7a1da326b', 2107245358, 1542604120, 4201228238, 1542604120),
('17/cd3f4c201a83ac8824f052db6763b33', 3301725278, 1542604120, 1196078828, 1542604120),
('83/c638502c5876249d7fd19fd64751d50', 195131294, 1542604121, 2009226404, 1542604121),
('be/c0f99efcbc86dbf1a18823a1fd55d33', 3548740297, 1542604122, 2420432017, 1542604122),
('84/cf1b455b86b7ee02933a9a9cb033f47', 744061244, 1542604123, 2640452215, 1542604123),
('62/c7b6d429b1e9b9af4c40d010ca20c21', 289141946, 1542604124, 1943595189, 1542604124),
('35/c80a40d18c9dd9cfd6514cc9abcb598', 868045816, 1542607896, 3005509150, 1542607896),
('3f/c333386401018150c3f2627e130dd30', 1432363705, 1542622118, 3331788217, 1542622118),
('83/cd1b937676486f53c8d48042d74a2eb', 639307317, 1542698203, 1814144820, 1542698203),
('6d/c68a939c6b6a61d81c7fca0608c44a8', 4189798734, 1543754169, 680046527, 1543754169);

-- --------------------------------------------------------

--
-- Table structure for table `oc_lightning_product_to_page`
--

CREATE TABLE `oc_lightning_product_to_page` (
  `product_id` int(11) DEFAULT NULL,
  `page` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oc_lightning_product_to_page`
--

INSERT INTO `oc_lightning_product_to_page` (`product_id`, `page`) VALUES
(116, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(28, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(55, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(56, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(57, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(58, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(59, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(60, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(61, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(62, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(63, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(64, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(65, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(66, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(67, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(68, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(69, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(70, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(71, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(72, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(73, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(75, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(76, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(77, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(78, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(79, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(80, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(81, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(83, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(84, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(85, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(87, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(88, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(89, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(90, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(92, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(93, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(94, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(95, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(97, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(98, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(99, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(100, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(101, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(102, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(103, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(104, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(105, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(106, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(107, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(108, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(109, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(110, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(111, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(113, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(114, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(115, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(117, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(118, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(119, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(120, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(121, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(122, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(123, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(124, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(125, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(126, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(127, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(128, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(129, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(130, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(131, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(132, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(133, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(134, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(135, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(136, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(137, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(138, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(139, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(140, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(141, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(142, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(143, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(144, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(145, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(146, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(147, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(148, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(149, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(150, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(151, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(152, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(153, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(154, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(155, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(156, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(157, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(158, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(159, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(160, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(162, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(163, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(164, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(165, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(166, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(161, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(167, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(168, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(169, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(171, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(172, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(174, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(175, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(176, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(177, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(178, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(179, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(180, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(181, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(182, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(183, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(184, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(185, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(186, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(187, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(188, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(96, '6d/c68a939c6b6a61d81c7fca0608c44a8'),
(116, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(98, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(99, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(100, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(101, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(102, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(103, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(104, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(105, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(106, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(107, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(109, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(110, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(111, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(113, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(114, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(115, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(117, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(118, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(119, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(120, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(121, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(122, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(123, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(124, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(125, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(126, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(127, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(128, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(129, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(130, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(131, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(132, 'ed/ce6449efa890cef4a1bf11a18deb4e1'),
(187, '27/c46918e2a4d3728d00552e422d6f608'),
(174, '54/c0478730c43b39a13590c5dc926cd3c'),
(171, '54/c0478730c43b39a13590c5dc926cd3c'),
(172, '54/c0478730c43b39a13590c5dc926cd3c'),
(171, 'cb/c18b89626906d94b4c01a39856211e3'),
(174, 'cb/c18b89626906d94b4c01a39856211e3'),
(176, 'be/c7ff93dec453096bf232a38269b9ae8'),
(181, '54/c16503ab8c5eee45b2d20396596b9fd'),
(180, '8f/ce38fd6b25419f5e0184129986e1052'),
(185, 'ba/ca17d64502ca9fbff7c9ff62560fd7d'),
(116, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(28, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(55, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(56, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(57, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(58, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(59, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(60, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(61, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(62, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(63, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(64, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(65, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(66, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(67, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(68, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(69, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(70, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(71, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(72, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(73, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(75, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(76, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(77, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(78, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(79, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(80, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(81, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(83, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(84, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(85, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(87, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(88, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(89, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(90, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(92, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(93, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(94, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(95, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(97, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(98, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(99, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(100, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(101, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(102, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(103, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(104, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(105, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(106, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(107, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(108, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(109, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(110, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(111, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(113, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(114, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(115, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(117, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(118, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(119, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(120, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(121, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(122, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(123, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(124, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(125, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(126, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(127, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(128, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(129, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(130, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(131, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(132, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(133, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(134, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(135, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(136, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(137, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(138, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(139, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(140, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(141, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(142, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(143, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(144, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(145, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(146, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(147, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(148, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(149, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(150, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(151, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(152, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(153, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(154, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(155, '8f/c4ed34abe9a24e34659fa444ee1e7d7'),
(90, '5a/cb06339fdc287f974df80e650caada2'),
(92, '5a/cb06339fdc287f974df80e650caada2'),
(93, '5a/cb06339fdc287f974df80e650caada2'),
(94, '5a/cb06339fdc287f974df80e650caada2'),
(95, '5a/cb06339fdc287f974df80e650caada2'),
(96, '5a/cb06339fdc287f974df80e650caada2'),
(97, '5a/cb06339fdc287f974df80e650caada2'),
(90, 'b5/ca30e5cab9cb88423f13f6077558bc0'),
(92, 'b5/ca30e5cab9cb88423f13f6077558bc0'),
(93, 'b5/ca30e5cab9cb88423f13f6077558bc0'),
(94, 'b5/ca30e5cab9cb88423f13f6077558bc0'),
(95, 'b5/ca30e5cab9cb88423f13f6077558bc0'),
(96, 'b5/ca30e5cab9cb88423f13f6077558bc0'),
(97, 'b5/ca30e5cab9cb88423f13f6077558bc0'),
(131, '52/cf9ed7e352bfb9725590d50dea7cb2f'),
(108, '52/cf9ed7e352bfb9725590d50dea7cb2f'),
(109, '52/cf9ed7e352bfb9725590d50dea7cb2f'),
(110, '52/cf9ed7e352bfb9725590d50dea7cb2f'),
(111, '52/cf9ed7e352bfb9725590d50dea7cb2f'),
(113, '52/cf9ed7e352bfb9725590d50dea7cb2f'),
(178, '50/c58fc4003f72246cdc52a6928074534'),
(168, '61/cef099ccc6a46f28f2cd4f5e6036348'),
(172, '81/caf1c70e7ba3b1f0d597f4feb56fcf2'),
(174, '81/caf1c70e7ba3b1f0d597f4feb56fcf2'),
(182, 'b5/c468e057c48c3b01c0661a0d9be6e07'),
(28, '7a/c050e527045ff806724d34a9cf52619'),
(55, '7a/c050e527045ff806724d34a9cf52619'),
(56, '7a/c050e527045ff806724d34a9cf52619'),
(57, '7a/c050e527045ff806724d34a9cf52619'),
(58, '7a/c050e527045ff806724d34a9cf52619'),
(59, '7a/c050e527045ff806724d34a9cf52619'),
(60, '7a/c050e527045ff806724d34a9cf52619'),
(65, '7a/c050e527045ff806724d34a9cf52619'),
(75, '7a/c050e527045ff806724d34a9cf52619'),
(177, '20/ce7acf6f1cdd7641841accda7c57f97'),
(167, '02/c6f9a494bae9073ce06b66fc4969d69'),
(128, 'de/c2d7a2a62d0bddee264011840adda79'),
(108, 'de/c2d7a2a62d0bddee264011840adda79'),
(109, 'de/c2d7a2a62d0bddee264011840adda79'),
(110, 'de/c2d7a2a62d0bddee264011840adda79'),
(111, 'de/c2d7a2a62d0bddee264011840adda79'),
(113, 'de/c2d7a2a62d0bddee264011840adda79'),
(126, '51/cae7f7f537adbb0e49163819ee822db'),
(108, '51/cae7f7f537adbb0e49163819ee822db'),
(109, '51/cae7f7f537adbb0e49163819ee822db'),
(110, '51/cae7f7f537adbb0e49163819ee822db'),
(111, '51/cae7f7f537adbb0e49163819ee822db'),
(113, '51/cae7f7f537adbb0e49163819ee822db'),
(184, '7f/cf3cd7617ab866e42338b3c2bc6917f'),
(186, '10/c3ccc5549a5493258916538d91dd0fd'),
(169, 'bd/c9f877001b5adecb0e07f4996aec4d5'),
(116, 'c3/c538153656e0ccf54972e07661f6544'),
(28, 'c3/c538153656e0ccf54972e07661f6544'),
(55, 'c3/c538153656e0ccf54972e07661f6544'),
(56, 'c3/c538153656e0ccf54972e07661f6544'),
(57, 'c3/c538153656e0ccf54972e07661f6544'),
(58, 'c3/c538153656e0ccf54972e07661f6544'),
(59, 'c3/c538153656e0ccf54972e07661f6544'),
(60, 'c3/c538153656e0ccf54972e07661f6544'),
(61, 'c3/c538153656e0ccf54972e07661f6544'),
(62, 'c3/c538153656e0ccf54972e07661f6544'),
(63, 'c3/c538153656e0ccf54972e07661f6544'),
(64, 'c3/c538153656e0ccf54972e07661f6544'),
(65, 'c3/c538153656e0ccf54972e07661f6544'),
(66, 'c3/c538153656e0ccf54972e07661f6544'),
(67, 'c3/c538153656e0ccf54972e07661f6544'),
(68, 'c3/c538153656e0ccf54972e07661f6544'),
(69, 'c3/c538153656e0ccf54972e07661f6544'),
(70, 'c3/c538153656e0ccf54972e07661f6544'),
(71, 'c3/c538153656e0ccf54972e07661f6544'),
(72, 'c3/c538153656e0ccf54972e07661f6544'),
(73, 'c3/c538153656e0ccf54972e07661f6544'),
(75, 'c3/c538153656e0ccf54972e07661f6544'),
(76, 'c3/c538153656e0ccf54972e07661f6544'),
(77, 'c3/c538153656e0ccf54972e07661f6544'),
(78, 'c3/c538153656e0ccf54972e07661f6544'),
(79, 'c3/c538153656e0ccf54972e07661f6544'),
(80, 'c3/c538153656e0ccf54972e07661f6544'),
(81, 'c3/c538153656e0ccf54972e07661f6544'),
(83, 'c3/c538153656e0ccf54972e07661f6544'),
(84, 'c3/c538153656e0ccf54972e07661f6544'),
(85, 'c3/c538153656e0ccf54972e07661f6544'),
(87, 'c3/c538153656e0ccf54972e07661f6544'),
(88, 'c3/c538153656e0ccf54972e07661f6544'),
(89, 'c3/c538153656e0ccf54972e07661f6544'),
(90, 'c3/c538153656e0ccf54972e07661f6544'),
(92, 'c3/c538153656e0ccf54972e07661f6544'),
(93, 'c3/c538153656e0ccf54972e07661f6544'),
(94, 'c3/c538153656e0ccf54972e07661f6544'),
(95, 'c3/c538153656e0ccf54972e07661f6544'),
(97, 'c3/c538153656e0ccf54972e07661f6544'),
(98, 'c3/c538153656e0ccf54972e07661f6544'),
(99, 'c3/c538153656e0ccf54972e07661f6544'),
(100, 'c3/c538153656e0ccf54972e07661f6544'),
(101, 'c3/c538153656e0ccf54972e07661f6544'),
(102, 'c3/c538153656e0ccf54972e07661f6544'),
(103, 'c3/c538153656e0ccf54972e07661f6544'),
(104, 'c3/c538153656e0ccf54972e07661f6544'),
(105, 'c3/c538153656e0ccf54972e07661f6544'),
(106, 'c3/c538153656e0ccf54972e07661f6544'),
(107, 'c3/c538153656e0ccf54972e07661f6544'),
(108, 'c3/c538153656e0ccf54972e07661f6544'),
(109, 'c3/c538153656e0ccf54972e07661f6544'),
(110, 'c3/c538153656e0ccf54972e07661f6544'),
(111, 'c3/c538153656e0ccf54972e07661f6544'),
(113, 'c3/c538153656e0ccf54972e07661f6544'),
(114, 'c3/c538153656e0ccf54972e07661f6544'),
(115, 'c3/c538153656e0ccf54972e07661f6544'),
(117, 'c3/c538153656e0ccf54972e07661f6544'),
(118, 'c3/c538153656e0ccf54972e07661f6544'),
(119, 'c3/c538153656e0ccf54972e07661f6544'),
(120, 'c3/c538153656e0ccf54972e07661f6544'),
(121, 'c3/c538153656e0ccf54972e07661f6544'),
(122, 'c3/c538153656e0ccf54972e07661f6544'),
(123, 'c3/c538153656e0ccf54972e07661f6544'),
(124, 'c3/c538153656e0ccf54972e07661f6544'),
(125, 'c3/c538153656e0ccf54972e07661f6544'),
(126, 'c3/c538153656e0ccf54972e07661f6544'),
(127, 'c3/c538153656e0ccf54972e07661f6544'),
(128, 'c3/c538153656e0ccf54972e07661f6544'),
(129, 'c3/c538153656e0ccf54972e07661f6544'),
(130, 'c3/c538153656e0ccf54972e07661f6544'),
(131, 'c3/c538153656e0ccf54972e07661f6544'),
(132, 'c3/c538153656e0ccf54972e07661f6544'),
(133, 'c3/c538153656e0ccf54972e07661f6544'),
(134, 'c3/c538153656e0ccf54972e07661f6544'),
(135, 'c3/c538153656e0ccf54972e07661f6544'),
(136, 'c3/c538153656e0ccf54972e07661f6544'),
(137, 'c3/c538153656e0ccf54972e07661f6544'),
(138, 'c3/c538153656e0ccf54972e07661f6544'),
(139, 'c3/c538153656e0ccf54972e07661f6544'),
(141, 'c3/c538153656e0ccf54972e07661f6544'),
(140, 'c3/c538153656e0ccf54972e07661f6544'),
(142, 'c3/c538153656e0ccf54972e07661f6544'),
(143, 'c3/c538153656e0ccf54972e07661f6544'),
(144, 'c3/c538153656e0ccf54972e07661f6544'),
(145, 'c3/c538153656e0ccf54972e07661f6544'),
(146, 'c3/c538153656e0ccf54972e07661f6544'),
(147, 'c3/c538153656e0ccf54972e07661f6544'),
(148, 'c3/c538153656e0ccf54972e07661f6544'),
(149, 'c3/c538153656e0ccf54972e07661f6544'),
(150, 'c3/c538153656e0ccf54972e07661f6544'),
(151, 'c3/c538153656e0ccf54972e07661f6544'),
(152, 'c3/c538153656e0ccf54972e07661f6544'),
(153, 'c3/c538153656e0ccf54972e07661f6544'),
(154, 'c3/c538153656e0ccf54972e07661f6544'),
(155, 'c3/c538153656e0ccf54972e07661f6544'),
(171, 'd9/c360567cd536190c42985f8a01045de'),
(172, 'd9/c360567cd536190c42985f8a01045de'),
(174, 'd9/c360567cd536190c42985f8a01045de'),
(175, 'd9/c360567cd536190c42985f8a01045de'),
(176, 'd9/c360567cd536190c42985f8a01045de'),
(177, 'd9/c360567cd536190c42985f8a01045de'),
(178, 'd9/c360567cd536190c42985f8a01045de'),
(179, 'd9/c360567cd536190c42985f8a01045de'),
(180, 'd9/c360567cd536190c42985f8a01045de'),
(181, 'fb/ca6683bff870894fa34975e3f53218b'),
(182, 'fb/ca6683bff870894fa34975e3f53218b'),
(183, 'fb/ca6683bff870894fa34975e3f53218b'),
(184, 'fb/ca6683bff870894fa34975e3f53218b'),
(185, 'fb/ca6683bff870894fa34975e3f53218b'),
(186, 'fb/ca6683bff870894fa34975e3f53218b'),
(187, 'fb/ca6683bff870894fa34975e3f53218b'),
(188, 'fb/ca6683bff870894fa34975e3f53218b'),
(183, '54/c21840b2bae6de403d30e35d8c1707b'),
(28, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(55, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(56, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(57, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(58, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(59, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(60, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(61, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(62, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(63, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(64, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(65, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(66, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(67, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(68, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(69, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(70, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(71, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(72, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(73, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(75, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(76, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(77, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(78, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(79, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(80, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(81, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(83, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(84, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(85, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(87, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(89, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(90, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(92, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(93, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(94, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(95, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(97, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(108, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(133, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(134, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(135, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(136, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(137, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(138, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(139, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(141, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(140, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(142, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(143, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(144, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(145, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(146, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(147, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(148, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(149, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(150, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(151, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(152, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(153, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(154, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(155, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(156, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(157, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(160, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(162, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(163, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(164, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(165, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(166, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(161, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(167, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(168, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(169, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(96, '88/c2ff8e677052327ef5e8ca9a34bcc45'),
(175, '1a/c14d48873dcaa97f32984233743ccdd'),
(179, '6c/c8fcf9bf6d191cecfc14db7a1da326b'),
(188, '83/c638502c5876249d7fd19fd64751d50'),
(130, '84/cf1b455b86b7ee02933a9a9cb033f47'),
(108, '84/cf1b455b86b7ee02933a9a9cb033f47'),
(109, '84/cf1b455b86b7ee02933a9a9cb033f47'),
(110, '84/cf1b455b86b7ee02933a9a9cb033f47'),
(111, '84/cf1b455b86b7ee02933a9a9cb033f47'),
(113, '84/cf1b455b86b7ee02933a9a9cb033f47'),
(158, '62/c7b6d429b1e9b9af4c40d010ca20c21');

-- --------------------------------------------------------

--
-- Table structure for table `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_location`
--

INSERT INTO `oc_location` (`location_id`, `name`, `address`, `telephone`, `fax`, `geocode`, `image`, `open`, `comment`) VALUES
(1, 'Multipearls Traders LLP', 'Mumbai', '7666009599', '', 'Mumbai', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(11, 'Electro Sports', 'catalog/Logo.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_maxmind`
--

CREATE TABLE `oc_maxmind` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(309, 'Blog Admin', 'blog_admin', 'http://www.templatemonster.com', '2', '', '<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!-- Based on Simple Blog Module -->\r\n<modification>\r\n   <name>Blog Admin</name>\r\n   <code>blog_admin</code>\r\n   <version>2</version>\r\n   <author>http://www.templatemonster.com</author>\r\n\r\n   <file path=\"admin/controller/common/menu.php\">\r\n       <operation>\r\n           <search><![CDATA[$data[\'text_openbay_order_import\']]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $data[\'text_simple_blogs\'] = $this->language->get(\'text_simple_blogs\');\r\n               $data[\'text_simple_blog_author\'] = $this->language->get(\'text_simple_blog_author\');\r\n               $data[\'text_simple_blog_category\'] = $this->language->get(\'text_simple_blog_category\');\r\n               $data[\'text_simple_blog_article\'] = $this->language->get(\'text_simple_blog_article\');\r\n               $data[\'text_simple_blog_article_comment\'] = $this->language->get(\'text_simple_blog_article_comment\');\r\n               $data[\'text_simple_blog_view_report\'] = $this->language->get(\'text_simple_blog_view_report\');\r\n           ]]></add>\r\n       </operation>\r\n\r\n       <operation>\r\n           <search><![CDATA[$data[\'openbay_link_amazonus_links\']]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $data[\'simple_blog_author\'] = $this->url->link(\'simple_blog/author\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n               $data[\'simple_blog_category\'] = $this->url->link(\'simple_blog/category\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n               $data[\'simple_blog_article\'] = $this->url->link(\'simple_blog/article\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n               $data[\'simple_blog_comment\'] = $this->url->link(\'simple_blog/comment\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n               $data[\'simple_blog_view_report\'] = $this->url->link(\'simple_blog/report\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n           ]]></add>\r\n       </operation>\r\n\r\n   </file>\r\n\r\n   <file path=\"admin/language/*/common/menu.php\">\r\n       <operation>\r\n           <search><![CDATA[$_[\'text_paypal_manage\']]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $_[\'text_simple_blogs\']	= \'Blog\';\r\n               $_[\'text_simple_blog_author\']	= \'Author\';\r\n               $_[\'text_simple_blog_category\']	= \'Category\';\r\n               $_[\'text_simple_blog_article\']	= \'Article\';\r\n               $_[\'text_simple_blog_article_comment\']	= \'Article Comment\';\r\n               $_[\'text_simple_blog_view_report\'] = \'Report\';\r\n           ]]></add>\r\n       </operation>\r\n   </file>\r\n\r\n   <file path=\"admin/view/template/common/menu.tpl\">\r\n       <operation>\r\n           <search><![CDATA[<li id=\"reports\">]]></search>\r\n           <add position=\"before\"><![CDATA[\r\n               <li id=\"simple-blog\"><a class=\"parent\"><i class=\"fa fa-file-text-o fa-fw\"></i> <span><?php echo $text_simple_blogs; ?></span></a>\r\n                   <ul>\r\n                       <li><a href=\"<?php echo $simple_blog_article; ?>\"><?php echo $text_simple_blog_article; ?></a></li>\r\n                       <li><a href=\"<?php echo $simple_blog_category; ?>\"><?php echo $text_simple_blog_category; ?></a></li>\r\n                         <li><a href=\"<?php echo $simple_blog_author; ?>\"><?php echo $text_simple_blog_author; ?></a></li>\r\n                         <li><a href=\"<?php echo $simple_blog_comment; ?>\"><?php echo $text_simple_blog_article_comment; ?></a></li>\r\n                         <li><a href=\"<?php echo $simple_blog_view_report; ?>\"><?php echo $text_simple_blog_view_report; ?></a></li>\r\n                   </ul>\r\n               </li>\r\n           ]]></add>\r\n       </operation>\r\n   </file>\r\n\r\n   <file path=\"admin/view/template/setting/setting.tpl\">\r\n       <operation>\r\n           <search><![CDATA[<li><a href=\"#tab-server\" data-toggle=\"tab\"><?php echo $tab_server; ?></a></li>]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               <li><a href=\"#tab-blog\" data-toggle=\"tab\"><?php echo $tab_blog; ?></a></li>\r\n           ]]></add>\r\n       </operation>\r\n\r\n       <operation>\r\n           <search><![CDATA[</form>]]></search>\r\n           <add position=\"before\" offset=\"1\"><![CDATA[\r\n               <div class=\"tab-pane\" id=\"tab-blog\">\r\n                               <fieldset>\r\n                                   <div class=\"form-group\">\r\n                                       <label\r\n                                           class=\"col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label\"><?php echo $entry_status; ?></label>\r\n\r\n                                       <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-12\">\r\n                                           <select name=\"config_simple_blog_status\" class=\"form-control\">\r\n                                               <?php if ($config_simple_blog_status == 1) { ?>\r\n                                                   <option value=\"1\"\r\n                                                           selected=\'selected\'><?php echo $text_enabled; ?></option>\r\n                                                   <option value=\"0\"><?php echo $text_disabled; ?></option>\r\n                                               <?php } else { ?>\r\n                                                   <option value=\"1\"><?php echo $text_enabled; ?></option>\r\n                                                   <option value=\"0\"\r\n                                                           selected=\"selected\"><?php echo $text_disabled; ?></option>\r\n                                               <?php } ?>\r\n                                           </select>\r\n                                       </div>\r\n                                   </div>\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-sm-2 control-label\">\r\n                                       <span\r\n                                               data-toggle=\"tooltip\"\r\n                                               title=\"<?php echo $help_limit; ?>\"><?php echo $entry_limit; ?></span></label>\r\n                                       <div class=\"col-sm-10\">\r\n                                           <input type=\"text\" name=\"config_simple_blog_limit\" value=\"<?php echo (isset($config_simple_blog_limit) ? $config_simple_blog_limit : \'5\')  ; ?>\" placeholder=\"<?php echo $entry_limit; ?>\" class=\"form-control\" />\r\n                                       </div>\r\n                                   </div>\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-sm-2 control-label\">\r\n                                      <?php echo $entry_description_limit; ?></label>\r\n                                       <div class=\"col-sm-10\">\r\n                                           <input type=\"text\" name=\"config_simple_blog_description_limit\" value=\"<?php echo (isset($config_simple_blog_description_limit) ? $config_simple_blog_description_limit : \'5\')  ; ?>\" placeholder=\"<?php echo $entry_description_limit; ?>\" class=\"form-control\" />\r\n                                       </div>\r\n                                   </div>\r\n\r\n\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label\"><span\r\n                                               data-toggle=\"tooltip\"\r\n                                               title=\"<?php echo $help_comment_approval; ?>\"><?php echo $entry_comment_approval; ?></span>\r\n                                       </label>\r\n\r\n                                       <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-12\">\r\n                                           <div class=\"checkbox-inline\">\r\n                                               <?php if (isset($config_simple_blog_comment_auto_approval)) { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_comment_auto_approval\"\r\n                                                          value=\"1\" checked=\"checked\"/> <?php echo $text_yes; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_comment_auto_approval\"\r\n                                                          value=\"0\"/> <?php echo $text_no; ?>\r\n                                               <?php } else { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_comment_auto_approval\"\r\n                                                          value=\"1\"/> <?php echo $text_yes; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_comment_auto_approval\"\r\n                                                          value=\"0\" checked=\"checked\"/> <?php echo $text_no; ?>\r\n                                               <?php } ?>\r\n                                           </div>\r\n                                       </div>\r\n                                   </div>\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label\"><span\r\n                                               data-toggle=\"tooltip\"\r\n                                               title=\"<?php echo $help_author_information; ?>\"><?php echo $entry_author_information; ?></span>\r\n                                       </label>\r\n\r\n                                       <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-12\">\r\n                                           <div class=\"checkbox-inline\">\r\n                                               <?php if (isset($config_simple_blog_author_information)) { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_author_information\" value=\"1\"\r\n                                                          checked=\"checked\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_author_information\"\r\n                                                          value=\"0\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } else { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_author_information\"\r\n                                                          value=\"1\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_author_information\" value=\"0\"\r\n                                                          checked=\"checked\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } ?>\r\n                                           </div>\r\n                                       </div>\r\n                                   </div>\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label\"><span\r\n                                               data-toggle=\"tooltip\"\r\n                                               title=\"<?php echo $help_related_article; ?>\"><?php echo $entry_related_article; ?></span>\r\n                                       </label>\r\n\r\n                                       <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-12\">\r\n                                           <div class=\"checkbox-inline\">\r\n                                               <?php if (isset($config_simple_blog_related_articles)) { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_related_articles\" value=\"1\"\r\n                                                          checked=\"checked\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_related_articles\"\r\n                                                          value=\"0\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } else { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_related_articles\"\r\n                                                          value=\"1\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_related_articles\" value=\"0\"\r\n                                                          checked=\"checked\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } ?>\r\n                                           </div>\r\n                                       </div>\r\n                                   </div>\r\n\r\n                                   <div class=\"form-group\">\r\n                                       <label class=\"col-lg-2 col-md-2 col-sm-2 col-xs-12 control-label\"><span\r\n                                               data-toggle=\"tooltip\"\r\n                                               title=\"<?php echo $help_show_social_site_option; ?>\"><?php echo $entry_show_social_site_option; ?></span>\r\n                                       </label>\r\n\r\n                                       <div class=\"col-lg-10 col-md-10 col-sm-10 col-xs-12\">\r\n                                           <div class=\"checkbox-inline\">\r\n                                               <?php if (isset($config_simple_blog_share_social_site)) { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_share_social_site\" value=\"1\"\r\n                                                          checked=\"checked\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_share_social_site\"\r\n                                                          value=\"0\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } else { ?>\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_share_social_site\"\r\n                                                          value=\"1\"/> <?php echo $text_enabled; ?>&nbsp;\r\n                                                   <input type=\"radio\" name=\"config_simple_blog_share_social_site\" value=\"0\"\r\n                                                          checked=\"checked\"/> <?php echo $text_disabled; ?>\r\n                                               <?php } ?>\r\n                                           </div>\r\n                                       </div>\r\n                                   </div>\r\n                               </fieldset>\r\n                           </div>\r\n               ]]>\r\n\r\n\r\n           </add>\r\n       </operation>\r\n   </file>\r\n\r\n   <file path=\"admin/controller/setting/setting.php\">\r\n       <operation>\r\n           <search><![CDATA[$data[\'entry_status\'] = $this->language->get(\'entry_status\');]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $data[\'entry_comment_approval\'] = $this->language->get(\'entry_comment_approval\');\r\n               $data[\'entry_author_information\'] = $this->language->get(\'entry_author_information\');\r\n               $data[\'entry_show_social_site_option\'] = $this->language->get(\'entry_show_social_site_option\');\r\n               $data[\'entry_related_article\'] = $this->language->get(\'entry_related_article\');\r\n     $data[\'entry_limit\'] = $this->language->get(\'entry_limit\');\r\n     $data[\'entry_description_limit\'] = $this->language->get(\'entry_description_limit\');\r\n\r\n           ]]></add>\r\n       </operation>\r\n\r\n       <operation>\r\n           <search><![CDATA[$data[\'text_error\'] = $this->language->get(\'text_error\');]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $data[\'text_simple_blog\'] = $this->language->get(\'text_simple_blog\');\r\n               $data[\'text_blog_category\'] = $this->language->get(\'text_blog_category\');\r\n               $data[\'tab_blog\'] = $this->language->get(\'tab_blog\');\r\n           ]]></add>\r\n       </operation>\r\n\r\n       <operation>\r\n           <search><![CDATA[$data[\'help_compression\'] = $this->language->get(\'help_compression\');]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n\r\n           $data[\'help_comment_approval\'] = $this->language->get(\'help_comment_approval\');\r\n           $data[\'help_author_information\'] = $this->language->get(\'help_author_information\');\r\n           $data[\'help_related_article\'] = $this->language->get(\'help_related_article\');\r\n           $data[\'help_show_social_site_option\'] = $this->language->get(\'help_show_social_site_option\');\r\n           $data[\'help_show_author\'] = $this->language->get(\'help_show_author\');\r\n     $data[\'help_limit\'] = $this->language->get(\'help_limit\');\r\n           ]]></add>\r\n       </operation>\r\n\r\n       <operation>\r\n           <search><![CDATA[$data[\'header\'] = $this->load->controller(\'common/header\');]]></search>\r\n           <add position=\"before\"><![CDATA[\r\n  if (isset($this->request->post[\'config_simple_blog_status\'])) {\r\n       $data[\'config_simple_blog_status\'] = $this->request->post[\'config_simple_blog_status\'];\r\n     } else if ($this->config->get(\'config_simple_blog_status\')) {\r\n       $data[\'config_simple_blog_status\'] = $this->config->get(\'config_simple_blog_status\');\r\n     }\r\n\r\n     if (isset($this->request->post[\'config_simple_blog_comment_auto_approval\'])) {\r\n       $data[\'config_simple_blog_comment_auto_approval\'] = $this->request->post[\'config_simple_blog_comment_auto_approval\'];\r\n     } else if ($this->config->get(\'config_simple_blog_comment_auto_approval\')) {\r\n       $data[\'config_simple_blog_comment_auto_approval\'] = $this->config->get(\'config_simple_blog_comment_auto_approval\');\r\n     }\r\n\r\n     if (isset($this->request->post[\'config_simple_blog_author_information\'])) {\r\n       $data[\'config_simple_blog_author_information\'] = $this->request->post[\'config_simple_blog_author_information\'];\r\n     } else if ($this->config->get(\'config_simple_blog_author_information\')) {\r\n       $data[\'config_simple_blog_author_information\'] = $this->config->get(\'config_simple_blog_author_information\');\r\n     }\r\n\r\n     if (isset($this->request->post[\'config_simple_blog_share_social_site\'])) {\r\n       $data[\'config_simple_blog_share_social_site\'] = $this->request->post[\'config_simple_blog_share_social_site\'];\r\n     } else if ($this->config->get(\'config_simple_blog_share_social_site\')) {\r\n       $data[\'config_simple_blog_share_social_site\'] = $this->config->get(\'config_simple_blog_share_social_site\');\r\n     }\r\n\r\n     if (isset($this->request->post[\'config_simple_blog_related_articles\'])) {\r\n       $data[\'config_simple_blog_related_articles\'] = $this->request->post[\'config_simple_blog_related_articles\'];\r\n     } else if ($this->config->get(\'config_simple_blog_related_articles\')) {\r\n       $data[\'config_simple_blog_related_articles\'] = $this->config->get(\'config_simple_blog_related_articles\');\r\n     }\r\n\r\n     if (isset($this->request->post[\'config_simple_blog_limit\'])) {\r\n       $data[\'config_simple_blog_limit\'] = $this->request->post[\'config_simple_blog_limit\'];\r\n     } elseif ($this->config->get(\'config_simple_blog_limit\')) {\r\n       $data[\'config_simple_blog_limit\'] = $this->config->get(\'config_simple_blog_limit\');\r\n     }\r\n     if (isset($this->request->post[\'config_simple_blog_description_limit\'])) {\r\n       $data[\'config_simple_blog_description_limit\'] = $this->request->post[\'config_simple_blog_description_limit\'];\r\n     } elseif ($this->config->get(\'config_simple_blog_description_limit\')) {\r\n       $data[\'config_simple_blog_description_limit\'] = $this->config->get(\'config_simple_blog_description_limit\');\r\n     }\r\n\r\n           ]]></add>\r\n       </operation>\r\n   </file>\r\n\r\n   <file path=\"admin/language/english/setting/setting.php\">\r\n       <operation>\r\n           <search><![CDATA[$_[\'text_error\']                       = \'Error Handling\';]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $_[\'text_simple_blog\']              = \'Blog\';\r\n               $_[\'tab_blog\']              = \'Blog\';\r\n           ]]></add>\r\n       </operation>\r\n       <operation>\r\n           <search><![CDATA[$_[\'entry_status\']                     = \'Status\';]]></search>\r\n           <add position=\"after\"><![CDATA[\r\n               $_[\'entry_related_article\']    	= \'Related Article:\';\r\n               $_[\'entry_comment_approval\']	= \'Comment Auto approval:\';\r\n               $_[\'entry_author_information\']	= \'Author Information:\';\r\n               $_[\'entry_show_social_site_option\'] = \'Share with social site:\';\r\n               $_[\'entry_show_author\'] 		= \'Show Authors:\';\r\n       $_[\'entry_limit\']    = \'Limit\';\r\n       $_[\'entry_description_limit\']    = \'Description Symbol Limit\';\r\n               $_[\'help_comment_approval\']         = \'On Yes, Comment on the blog is auto approval.\';\r\n               $_[\'help_author_information\']       = \'On Enabled, information related to author will display.\';\r\n               $_[\'help_related_article\']          = \'On Enabled, Related article will display.\';\r\n               $_[\'help_show_social_site_option\']  = \'On Enabled, Article share with social networking site.\';\r\n$_[\'help_limit\']       = \'How many posts display per page (number)\';\r\n\r\n           ]]></add>\r\n       </operation>\r\n\r\n   </file>\r\n\r\n\r\n</modification>', 1, '2015-12-08 10:40:12'),
(310, 'Blog Catalog', 'blog_catalog', 'http://www.templatemonster.com', '2', '', '<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n<!-- Based on Simple Blog Module -->\r\n<modification>\r\n	<name>Blog Catalog</name>\r\n	<code>blog_catalog</code>\r\n	<version>2</version>\r\n	<author>http://www.templatemonster.com</author>\r\n    \r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[$data[\'powered\']]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n						if(($this->config->has(\'config_simple_blog_status\')) && ($this->config->get(\'config_simple_blog_status\'))) {\r\n				    $data[\'simple_blog_found\'] = 1;\r\n                    $tmp = $this->config->get(\'config_simple_blog_footer_heading\');\r\n				    if (!empty($tmp)) {\r\n				        $data[\'simple_blog_footer_heading\'] = $this->config->get(\'config_simple_blog_footer_heading\');\r\n				    } else {\r\n				        $data[\'simple_blog_footer_heading\'] = $this->language->get(\'text_simple_blog\');\r\n				    }\r\n                    $data[\'simple_blog\']	= $this->url->link(\'simple_blog/article\');\r\n				}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n    \r\n	<file path=\"catalog/language/english/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[$_[\'text_powered\']]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$_[\'text_simple_blog\']   = \'Blog\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n    <file path=\"catalog/language/de-DE/common/footer.php\">\r\n        <operation>\r\n            <search><![CDATA[$_[\'text_powered\']]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n				$_[\'text_simple_blog\']   = \'Blog\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    <file path=\"catalog/language/russian/common/footer.php\">\r\n        <operation>\r\n            <search><![CDATA[$_[\'text_powered\']]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n				$_[\'text_simple_blog\']   = \'Блог\';\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n    \r\n    <file path=\"catalog/controller/common/seo_url.php\">\r\n		\r\n        <operation>\r\n			<search><![CDATA[$this->request->get[\'route\'] = \'error/not_found\';]]></search>\r\n			<add position=\"replace\" offset=\"2\"><![CDATA[\r\n                /*if($this->db->escape($part) == \'simple-blog\') {\r\n                    \r\n                } else {\r\n                    $this->request->get[\'route\'] = \'error/not_found\';\r\n\r\n					break;\r\n                }*/\r\n                \r\n                if(($this->config->has(\'simple_blog_seo_keyword\')) && ($this->db->escape($part) == $this->config->get(\'simple_blog_seo_keyword\'))) {\r\n                    \r\n                } else if($this->db->escape($part) == \'simple-blog\') {\r\n                    \r\n                } else {\r\n                    $this->request->get[\'route\'] = \'error/not_found\';\r\n\r\n					break;\r\n                }\r\n                \r\n            ]]></add>\r\n		</operation>\r\n        \r\n		<operation>\r\n			<search><![CDATA[if ($url[0] == \'category_id\') {]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				if($url[0] == \'simple_blog_article_id\') {					\r\n					$this->request->get[\'simple_blog_article_id\'] = $url[1];\r\n				}\r\n				\r\n				if($url[0] == \'simple_blog_author_id\') {\r\n					$this->request->get[\'simple_blog_author_id\'] = $url[1];\r\n				}\r\n				\r\n				if ($url[0] == \'simple_blog_category_id\') {\r\n					if (!isset($this->request->get[\'simple_blog_category_id\'])) {\r\n						$this->request->get[\'simple_blog_category_id\'] = $url[1];\r\n					} else {\r\n						$this->request->get[\'simple_blog_category_id\'] .= \'_\' . $url[1];\r\n					}\r\n				}\r\n				\r\n			]]></add>\r\n		</operation>\r\n        \r\n		\r\n		<operation>\r\n			<search><![CDATA[$this->request->get[\'route\'] = \'information/information\';]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n					$this->request->get[\'route\'] = \'information/information\';\r\n				} else if (isset($this->request->get[\'simple_blog_article_id\'])) {\r\n					$this->request->get[\'route\'] = \'simple_blog/article/view\';\r\n				} else if (isset($this->request->get[\'simple_blog_author_id\'])) {\r\n					$this->request->get[\'route\'] = \'simple_blog/author\';\r\n				} else if (isset($this->request->get[\'simple_blog_category_id\'])) {\r\n					$this->request->get[\'route\'] = \'simple_blog/category\';\r\n				} /*else if ($this->request->get[\'_route_\'] ==  \'simple-blog\') {\r\n					$this->request->get[\'route\'] = \'simple_blog/article\';*/\r\n                    \r\n                    else {\r\n                        if(($this->config->has(\'simple_blog_seo_keyword\'))) {\r\n                            if($this->request->get[\'_route_\'] == $this->config->get(\'simple_blog_seo_keyword\')) {\r\n                                $this->request->get[\'route\'] = \'simple_blog/article\';\r\n                            }\r\n                        } if($this->request->get[\'_route_\'] == \'simple-blog\') {\r\n                            $this->request->get[\'route\'] = \'simple_blog/article\';\r\n                        }\r\n		\r\n			]]></add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search><![CDATA[} elseif ($key == \'path\') {]]></search>\r\n			<add position=\"replace\"><![CDATA[\r\n				} else if($data[\'route\'] == \'simple_blog/article/view\' && $key == \'simple_blog_article_id\') {\r\n					\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"url_alias WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\'\");\r\n					\r\n					if ($query->num_rows) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n						unset($data[$key]);\r\n					} else {\r\n						$url .= \'/simple-blog/\' . (int)$value;	\r\n						unset($data[$key]);\r\n					}\r\n					\r\n				} else if($data[\'route\'] == \'simple_blog/author\' && $key == \'simple_blog_author_id\') {\r\n					$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"url_alias WHERE `query` = \'\" . $this->db->escape($key . \'=\' . (int)$value) . \"\'\");\r\n					\r\n					if ($query->num_rows) {\r\n						$url .= \'/\' . $query->row[\'keyword\'];\r\n						unset($data[$key]);\r\n					} else {\r\n						$url .= \'/simple-blog/\' . (int)$value;	\r\n						unset($data[$key]);\r\n					}\r\n				} else if($data[\'route\'] == \'simple_blog/category\' && $key == \'simple_blog_category_id\') {\r\n				\r\n					$blog_categories = explode(\"_\", $value);\r\n					\r\n					foreach ($blog_categories as $blog_category) {\r\n						$query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"url_alias WHERE `query` = \'simple_blog_category_id=\" . (int)$blog_category . \"\'\");\r\n						\r\n						if ($query->num_rows) {\r\n							$url .= \'/\' . $query->row[\'keyword\'];\r\n						} else {\r\n							$url .= \'/simple-category\' . $blog_category;\r\n						}\r\n					}\r\n					unset($data[$key]);\r\n										\r\n				} else if($data[\'route\'] == \'simple_blog/search\') {\r\n					//echo $data[\'route\'];\r\n					if(isset($key) && ($key == \'blog_search\')) {\r\n						$url .= \'/search&blog_search=\' . $value;\r\n					} else {\r\n						$url .= \'/search\';\r\n					}		\r\n					//echo $url; \r\n				} else if(isset($data[\'route\']) && $data[\'route\'] == \'simple_blog/article\' && $key != \'simple_blog_article_id\' && $key != \'simple_blog_author_id\' && $key != \'simple_blog_category_id\' && $key != \'page\') {\r\n				    \r\n                    if($this->config->has(\'simple_blog_seo_keyword\')) {\r\n                        $url .=  \'/\' . $this->config->get(\'simple_blog_seo_keyword\');\r\n                    } else {\r\n                        $url .=  \'/simple-blog\';\r\n                    }\r\n				} elseif ($key == \'path\') {\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n	\r\n</modification>', 1, '2015-12-08 10:40:16'),
(312, 'TM Header Cart', '1', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Header Cart</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>1</code>\r\n	<file path=\"catalog/controller/common/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_loading\'] = $this->language->get(\'text_loading\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_items2\'] = sprintf($this->language->get(\'text_items2\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total));\r\n				$data[\'text_shopping_cart\'] = $this->language->get(\'text_shopping_cart\');\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $json[\'total\'] = sprintf($this->language->get(\'text_items\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total)); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$json[\'total2\'] = sprintf($this->language->get(\'text_items2\'), $this->cart->countProducts() + (isset($this->session->data[\'vouchers\']) ? count($this->session->data[\'vouchers\']) : 0), $this->currency->format($total));\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ if ($product_info) { ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				$products = $this->cart->getProducts();\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ if ($product_info) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$current_quantity = 0;\r\n            foreach ($products as $product) {\r\n                if ($product_info[\'product_id\'] == $product[\'product_id\']) {\r\n                    $current_quantity = $product[\'quantity\'];\r\n                }\r\n            }\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ if (isset($this->request->post[\'quantity\']) && ((int)$this->request->post[\'quantity\'] >= $product_info[\'minimum\'])) { ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				if (($product_info[\'quantity\'] >= (int)$this->request->post[\'quantity\']) && ($product_info[\'quantity\'] >= $current_quantity + (int)$this->request->post[\'quantity\'])) {\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $quantity = (int)$this->request->post[\'quantity\']; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				} else {\r\n                    $json[\'error\'][\'quantity\'] = sprintf($this->language->get(\'error_quantity\'), $product_info[\'quantity\']);\r\n                }\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'error_recurring_required\'] = \'Please select a payment recurring!\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'error_quantity\']    = \'Error! Only %s items available!\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n		<file path=\"catalog/language/de-DE/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'error_recurring_required\'] = \'Please select a payment recurring!\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'error_quantity\']    = \'Error! Nur %s Stück verfügbar!\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n		<file path=\"catalog/language/russian/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'error_recurring_required\'] = \'Please select a payment recurring!\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'error_quantity\']    = \'Ошибка! Доступно %s единиц!\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/english/common/cart.php|catalog/language/english/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_items\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_items2\']    = \'%s\';\r\n			$_[\'text_shopping_cart\']    = \'Shopping Cart:\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/common/cart.php|catalog/language/de-DE/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_recurring\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_shopping_cart\']= \'Warenkorb: \';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/common/cart.php|catalog/language/russian/checkout/cart.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_recurring\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$_[\'text_shopping_cart\'] = \'Корзина: \';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:40:38'),
(313, 'TM Description fo banners', '2', 'http://www.templatemonster.com', '1.0', 'http://www.opencart.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Description fo banners</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.opencart.com</link>\r\n	<code>2</code>\r\n	<file path=\"admin/controller/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_remove\'] = $this->language->get(\'button_remove\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n\r\n			$data[\'entry_description\'] = $this->language->get(\'entry_description\');\r\n			\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'banner_images\'][] = array(\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'description\'			   => $banner_image[\'description\'],\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/model/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[ $this->db->escape($banner_image_description[\'title\']) . \"\'\"); ]]>\r\n			</search>\r\n			<add position=\"replace\"><![CDATA[ $this->db->escape($banner_image_description[\'title\']) . \"\', description = \'\" .  $this->db->escape($banner_image_description[\'description\']) . \"\'\"); ]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$banner_image_description_data[$banner_image_description[\'language_id\']] = array(\'title\' => $banner_image_description[\'title\']);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$banner_image_description_desc[$banner_image_description[\'language_id\']] = array ( \'description\' => $banner_image_description[\'description\'] );\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'banner_image_description\' => $banner_image_description_data,\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			\'description\'              => $banner_image_description_desc,\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/english/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'entry_sort_order\']   = \'Sort Order\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'entry_description\']       = \'Description\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/de-DE/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'entry_sort_order\']	= \'Reihenfolge\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'entry_description\']       = \'Beschreibung\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/russian/design/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'entry_sort_order\']   = \'Порядок сортировки\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'entry_description\']       = \'Описание\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/design/banner_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<td class=\"text-left\"><?php echo $entry_title; ?></td>\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			<td class=\"text-left\"><?php echo $entry_description; ?></td>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			<input type=\"text\" name=\"banner_image[<?php echo $image_row; ?>][link]\" value=\"<?php echo $banner_image[\'link\']; ?>\" placeholder=\"<?php echo $entry_link; ?>\" class=\"form-control\" /></td>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			<td>\r\n				<?php foreach ($languages as $language) { ?>\r\n				<textarea style=\"width:300px; height:150px;\" name=\"banner_image[<?php echo $image_row; ?>][banner_image_description][<?php echo $language[\'language_id\']; ?>][description]\" id=\"description\"><?php echo isset($banner_image[\'description\'][$language[\'language_id\']]) ? $banner_image[\'description\'][$language[\'language_id\']][\'description\'] : \'\'; ?></textarea>\r\n				<img src=\"view/image/flags/<?php echo $language[\'image\']; ?>\" title=\"<?php echo $language[\'name\']; ?>\" /><br />\r\n				<?php } ?>\r\n				</td>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'  <td class=\"text-left\" style=\"width: 30%;\"><input type=\"text\" name=\"banner_image[\' + image_row + \'][link]\" value=\"\" placeholder=\"<?php echo $entry_link; ?>\" class=\"form-control\" /></td>\';\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n	 html += \'<td class=\"text-left\">\';\r\n	<?php foreach ($languages as $language) { ?>\r\n	html += \'<textarea style=\"width:300px; height:150px;\" name=\"banner_image[\' + image_row + \'][banner_image_description][<?php echo $language[\'language_id\']; ?>][description]\" id=\"description\"></textarea><br />\';\r\n	<?php } ?>\r\n	html += \'</td>\';\r\n	]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/module/banner.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			\'title\' => $result[\'title\'],\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			\'description\' => html_entity_decode($result[\'description\']),\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:40:45'),
(314, 'TM Footer', '4', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Footer</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>4</code>\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[ $data[\'text_newsletter\'] = $this->language->get(\'text_newsletter\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_account\'] = $this->language->get(\'text_account\');\r\n				$data[\'text_follow\'] = $this->language->get(\'text_follow\');\r\n				$data[\'text_support\'] = $this->language->get(\'text_support\');\r\n				$data[\'text_twi\'] = $this->language->get(\'text_twi\');\r\n				$data[\'text_fb\'] = $this->language->get(\'text_fb\');\r\n				$data[\'text_rss\'] = $this->language->get(\'text_rss\');\r\n				$data[\'text_yt\'] = $this->language->get(\'text_yt\');\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[ $data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'home\'] = $this->url->link(\'common/home\');\r\n				$data[\'address\'] = nl2br($this->config->get(\'config_address\'));\r\n				$data[\'telephone\'] = $this->config->get(\'config_telephone\');\r\n				$data[\'fax\'] = $this->config->get(\'config_fax\');\r\n				$data[\'name\'] = $this->config->get(\'config_name\');\r\n				$data[\'open\'] = $this->config->get(\'config_open\');\r\n				]]>\r\n			</add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[ $data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'tm_social_list\'] = $this->load->controller(\'module/tm_social_list\');\r\n				\r\n				if ($this->request->server[\'HTTPS\']) {\r\n				$server = $this->config->get(\'config_ssl\');\r\n				} else {\r\n				$server = $this->config->get(\'config_url\');\r\n				}\r\n\r\n				if (is_file(DIR_IMAGE . $this->config->get(\'config_logo\'))) {\r\n				$data[\'logo\'] = $server . \'image/\' . $this->config->get(\'config_logo\');\r\n				} else {\r\n				$data[\'logo\'] = \'\';\r\n				}\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:40:49'),
(316, 'TM Lazy load', 'TM Lazy load', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Lazy load</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>TM Lazy load</code>\r\n	<file path=\"catalog/controller/module/featured.php|catalog/controller/module/bestseller.php|catalog/controller/module/latest.php|catalog/controller/module/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $setting[\'width\'],\r\n				\'img-height\'       => $setting[\'height\'],\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'thumb\'       => $image, ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				\'img-width\'       => $this->config->get(\'config_image_product_width\'),\r\n				\'img-height\'       => $this->config->get(\'config_image_product_height\'),\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:41:00'),
(317, 'TM Top Menu All Levels', '9', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Top Menu All Levels</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>9</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'language\'] = $this->load->controller(\'common/language\');\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$this->load->model(\'design/topmenu\');\r\n			$data[\'categories_tm\'] = $this->model_design_topmenu->getMenu();\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:41:05'),
(318, 'TM NewsLetter', 'TM Newsletter', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM NewsLetter</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>TM Newsletter</code>\r\n	<file path=\"admin/controller/marketing/contact.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->load->model(\'sale/order\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->load->model(\'module/tm_newsletter\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$results = $this->model_sale_customer->getCustomers($customer_data);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$guest_results = $this->model_module_tm_newsletter->getNewsletters();\r\n			foreach ($guest_results as $result) {\r\n				$emails[] = $result[\'tm_newsletter_email\'];\r\n			}\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/account/register.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->load->model(\'account/customer\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->load->model(\'module/tm_newsletter\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->customer->login($this->request->post[\'email\'], $this->request->post[\'password\']);\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$this->model_module_tm_newsletter->deleteNewsletter($this->request->post[\'email\']);\r\n			]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>', 1, '2015-12-08 10:41:12');
INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(319, 'TM Pages Lang', 'lang', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Pages Lang</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>lang</code>\r\n	<file path=\"catalog/language/english/information/sitemap.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$_[\'text_contact\']     = \'Contact Us\';\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n				$_[\'text_category\']     = \'Categories\';\r\n				$_[\'text_pages\']     = \'Pages\';\r\n				]]></add>\r\n        </operation>\r\n	</file>\r\n	<file path=\"catalog/controller/information/sitemap.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_contact\'] = $this->language->get(\'text_contact\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_pages\'] = $this->language->get(\'text_pages\');\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/controller/account/wishlist.php\">\r\n		<operation>\r\n			<search><![CDATA[ $json[\'total\'] = sprintf($this->language->get(\'text_wishlist\'), (isset($this->session->data[\'wishlist\']) ? count($this->session->data[\'wishlist\']) : 0)); ]]></search>\r\n			<add position=\"replace\"><![CDATA[ $json[\'total\'] = sprintf($this->language->get(isset($this->session->data[\'wishlist\']) ? count($this->session->data[\'wishlist\']) : 0)); ]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $json[\'success\'] = sprintf($this->language->get(\'text_success\'), $this->url->link(\'product/product\', \'product_id=\' . $this->request->post[\'product_id\']), $product_info[\'name\'], $this->url->link(\'product/compare\'));]]></search>\r\n			<add position=\"replace\" offset=\"2\"><![CDATA[]]></add>\r\n		</operation>\r\n\r\n			<operation>\r\n			<search><![CDATA[ $this->session->data[\'compare\'][] = $this->request->post[\'product_id\'];]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$json[\'success\'] = sprintf($this->language->get(\'text_success\'), $this->url->link(\'product/product\', \'product_id=\' . $this->request->post[\'product_id\']), $product_info[\'name\'], $this->url->link(\'product/compare\'));\r\n\r\n			$json[\'total\'] = sprintf($this->language->get(\'text_compare\'), (isset($this->session->data[\'compare\']) ? count($this->session->data[\'compare\']) : 0));\r\n				]]></add>\r\n		</operation>\r\n			<operation>\r\n			<search><![CDATA[ array_shift($this->session->data[\'compare\']); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$json[\'warning\'] = $this->language->get(\'text_warning\');\r\n				]]></add>\r\n		</operation>\r\n			<operation>\r\n			<search><![CDATA[ $json[\'total\'] = sprintf($this->language->get(\'text_compare\'), (isset($this->session->data[\'compare\']) ? count($this->session->data[\'compare\']) : 0)); ]]></search>\r\n			<add position=\"after\" offset=\"2\"><![CDATA[ \r\n				else{\r\n					$json[\'info\'] = $this->language->get(\'text_info\');\r\n				}\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $json[\'total\'] = sprintf($this->language->get(\'text_compare\'), (isset($this->session->data[\'compare\']) ? count($this->session->data[\'compare\']) : 0)); ]]></search>\r\n			<add position=\"replace\"><![CDATA[ $json[\'total\'] = sprintf($this->language->get(isset($this->session->data[\'compare\']) ? count($this->session->data[\'compare\']) : 0)); ]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n\r\n	<file path=\"catalog/language/english/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_reviews\']      = \'Based on %s reviews.\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[		\r\n			$_[\'text_reviews\']      = \'%s reviews.\';\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_summary\']      = \'Summary\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n			$_[\'text_info\']      = \'This product already added in comparison list!\';\r\n			$_[\'text_warning\']      = \'Maximum products to compare is 4. First added product has been removed from comparison list.\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/russian/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_reviews\']      = \'Всего отзывов: %s\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[		\r\n			$_[\'text_reviews\']      = \'Отзывов: %s\';\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_summary\']      = \'Краткое описание\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n			$_[\'text_info\']      = \'Данный товар уже добавлен в список сравнения!\';\r\n			$_[\'text_warning\']      = \'Максимальное количество продуктов для сравнения - 4. Первый добавленный продукт удален со списка.\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/de-DE/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_summary\']		= \'Zusammenfassung\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n			$_[\'text_info\']      = \'Dieses Produkt ist bereits in Vergleichsliste hinzugefügt!\';\r\n			$_[\'text_warning\']      = \'Maximale Artikel zum Vergleichen ist 4. Erste hinzugefügt Produkt wurde aus Vergleichsliste entfernt wurden.\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"system/library/pagination.php\">\r\n		<operation>\r\n			<search><![CDATA[ 	public $num_links = 8; ]]></search>\r\n			<add position=\"replace\"><![CDATA[		\r\n				public $num_links = 3;\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:41:18'),
(320, 'TM Parallax ', 'parallax', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Parallax </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>parallax</code>\r\n	<file path=\"catalog/model/extension/module.php\">\r\n		<operation>\r\n			<search><![CDATA[public function getModule($module_id) {]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n    public function getModuleCode($module_id) {\r\n        $query = $this->db->query(\"SELECT * FROM \" . DB_PREFIX . \"module WHERE module_id = \'\" . (int)$module_id . \"\'\");\r\n        if ($query->row) {\r\n            return $query->row[\'code\'];\r\n        }else {\r\n            return array();\r\n        }\r\n    }\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:41:22'),
(321, 'Tm PathTheme', '14', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Tm PathTheme</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>14</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'name\'] = $this->config->get(\'config_name\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'theme_path\'] = $this->config->get(\'config_template\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/common/footer.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$this->load->language(\'common/footer\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'theme_path\'] = $this->config->get(\'config_template\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/controller/account/recurring.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_continue\'] = $this->language->get(\'button_continue\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'theme_path\'] = $this->config->get(\'config_template\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:41:27'),
(322, 'TM Positions on Home page', '7', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Positions on Home page</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>7</code>\r\n	<file path=\"catalog/controller/common/home.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'content_top\'] = $this->load->controller(\'common/content_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'top\'] = $this->load->controller(\'common/top\');\r\n			$data[\'bottom\'] = $this->load->controller(\'common/bottom\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/view/template/design/layout_form.tpl\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'content_top\') { ?>\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			<?php if ($layout_module[\'position\'] == \'top\') { ?>\r\n					<option value=\"top\" selected=\"selected\"><?php echo $text_top; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"top\"><?php echo $text_top; ?></option>\r\n					<?php } ?>\r\n\r\n						<?php if ($layout_module[\'position\'] == \'footer_top\') { ?>\r\n					<option value=\"footer_top\" selected=\"selected\"><?php echo $text_footer_top; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"footer_top\"><?php echo $text_footer_top; ?></option>\r\n					<?php } ?>\r\n											<?php if ($layout_module[\'position\'] == \'header_top\') { ?>\r\n					<option value=\"header_top\" selected=\"selected\"><?php echo $text_header_top; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"header_top\"><?php echo $text_header_top; ?></option>\r\n					<?php } ?>\r\n											<?php if ($layout_module[\'position\'] == \'bottom\') { ?>\r\n					<option value=\"bottom\" selected=\"selected\"><?php echo $text_bottom; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"bottom\"><?php echo $text_bottom; ?></option>\r\n					<?php } ?>\r\n\r\n					<?php if ($layout_module[\'position\'] == \'navigation\') { ?>\r\n					<option value=\"navigation\" selected=\"selected\"><?php echo $text_navigation; ?></option>\r\n					<?php } else { ?>\r\n					<option value=\"navigation\"><?php echo $text_navigation; ?></option>\r\n					<?php } ?>\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n			html += \'    <option value=\"content_top\"><?php echo $text_content_top; ?></option>\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				html += \'    <option value=\"top\"><?php echo $text_top; ?></option>\';\r\n				html += \'    <option value=\"footer_top\"><?php echo $text_footer_top; ?></option>\';\r\n				html += \'    <option value=\"header_top\"><?php echo $text_header_top; ?></option>\';\r\n				html += \'    <option value=\"bottom\"><?php echo $text_bottom; ?></option>\';\r\n				html += \'    <option value=\"navigation\"><?php echo $text_navigation; ?></option>\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/controller/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'text_content_top\'] = $this->language->get(\'text_content_top\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_top\'] = $this->language->get(\'text_top\');\r\n			$data[\'text_footer_top\'] = $this->language->get(\'text_footer_top\');\r\n			$data[\'text_header_top\'] = $this->language->get(\'text_header_top\');\r\n			$data[\'text_bottom\'] = $this->language->get(\'text_bottom\');\r\n			$data[\'text_navigation\'] = $this->language->get(\'text_navigation\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"admin/language/english/design/layout.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_content_top\']    = \'Content Top\';\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_top\']    = \'Top\';\r\n			$_[\'text_footer_top\']    = \'Footer\';\r\n			$_[\'text_header_top\']    = \'Header\';\r\n			$_[\'text_bottom\']    = \'Bottom\';\r\n			$_[\'text_navigation\']    = \'Navigation\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n    <file path=\"catalog/controller/common/footer.php\">\r\n        <operation>\r\n            <search><![CDATA[ $data[\'text_information\'] = $this->language->get(\'text_information\'); ]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n			$data[\'maintenance\'] = $this->config->get(\'config_maintenance\');\r\n			]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n			$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\');\r\n			]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n			$data[\'footer_top\'] = $this->load->controller(\'common/footer_top\');\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/common/header.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n			$data[\'base\'] = $server;\r\n			]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n			$data[\'header_top\'] = $this->load->controller(\'common/header_top\');\r\n			$data[\'navigation\'] = $this->load->controller(\'common/navigation\');\r\n			]]></add>\r\n        </operation>\r\n    </file>\r\n</modification>', 1, '2015-12-08 10:41:31'),
(323, 'TM Product', 'product', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Product</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>product</code>\r\n	<file path=\"catalog/controller/product/product.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'description\'] = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\'); ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n				    $desc = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n            $pos = strpos($desc,\'<iframe\');\r\n  			if (is_int($pos)) {\r\n                $pos2 = strpos($desc, \'</iframe>\') + 9;\r\n                $video = substr($desc, $pos, $pos2);\r\n                $data[\'video\'] = $video;\r\n                $data[\'description\'] = str_replace($video, \'\', $desc);\r\n            } else{\r\n                $data[\'video\'] = \'\';\r\n                $data[\'description\'] = $desc;\r\n            }\r\n				]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[$data[\'tab_attribute\'] = $this->language->get(\'tab_attribute\');]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				    $data[\'tab_video\'] = $this->language->get(\'tab_video\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[\'points\'] = $product_info[\'points\'];]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				   $data[\'stock_status\'] = $product_info[\'quantity\'];\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/product/product.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'tab_review\']               = \'Reviews (%s)\'; ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n				    $_[\'tab_video\']               = \'Video\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:41:38'),
(324, 'TM Product Category image', '10', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Product Category image</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>10</code>\r\n	<file path=\"catalog/controller/product/category.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[  \'name\' => $result[\'name\'] . ($this->config->get(\'config_product_count\') ? \' (\' . $this->model_catalog_product->getTotalProducts($filter_data) . \')\' : \'\'),]]></search>\r\n			<add position=\"after\"><![CDATA[\'thumb\' => $image,]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[  $data[\'categories\'][] = array(]]></search>\r\n			<add position=\"before\"><![CDATA[  $image = $this->model_tool_image->resize($result[\'image\'], $this->config->get(\'config_image_category_width\'), $this->config->get(\'config_image_category_height\'));   ]]></add>\r\n		</operation>\r\n		\r\n		\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:41:47'),
(325, 'TM QuickView ', 'quickview', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM QuickView </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>quickview</code>\r\n	<file path=\"catalog/controller/module/special.php|catalog/controller/module/bestseller.php|catalog/controller/module/latest.php|catalog/controller/module/featured.php\">\r\n		<operation>\r\n            <search><![CDATA[\r\n				public function index($setting) {\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					static $module = 0;\r\n				]]></add>\r\n        </operation>\r\n        	<operation>\r\n            <search><![CDATA[\r\n				if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\')\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					$data[\'module\'] = $module++;\r\n				]]></add>\r\n        </operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$this->load->model(\'tool/image\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n						$this->load->model(\'catalog/manufacturer\');\r\n						$this->language->load(\'product/product\');\r\n						$this->language->load(\'product/category\');\r\n						$this->load->model(\'catalog/review\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n				$data[\'text_quick\'] = $this->language->get(\'text_quick\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'button_wishlist\'] = $this->language->get(\'button_wishlist\');\r\n				$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n				$data[\'button_details\'] = $this->language->get(\'button_details\');\r\n				$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n				$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n				$data[\'text_model\'] = $this->language->get(\'text_model\');\r\n				$data[\'text_availability\'] = $this->language->get(\'text_availability\');\r\n				$data[\'text_instock\'] = $this->language->get(\'text_instock\');\r\n				$data[\'text_outstock\'] = $this->language->get(\'text_outstock\');\r\n				$data[\'reviews\'] = $this->language->get(\'reviews\');\r\n				$data[\'text_price\'] = $this->language->get(\'text_price\');\r\n				$data[\'text_product\'] = $this->language->get(\'text_product\');\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n    <file path=\"catalog/controller/module/special.php|catalog/controller/module/bestseller.php|catalog/controller/module/latest.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n				$desc = html_entity_decode($result[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n            $pos = strpos($desc,\'<iframe\');\r\n  			if (is_int($pos)) {\r\n                $pos2 = strpos($desc, \'</iframe>\') + 9;\r\n                $video = substr($desc, $pos, $pos2);\r\n                $quick_descr = str_replace($video, \'\', $desc);\r\n            } else{\r\n               $quick_descr = $desc;\r\n            }\r\n				]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $result[\'manufacturer\'],\r\n					\'description1\' => $quick_descr,\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $result[\'manufacturer_id\']),\r\n					\'model\' => $result[\'model\'],\r\n					\'text_availability\' => $result[\'quantity\'],\r\n					\'allow\' => $result[\'minimum\'],\r\n				]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[ foreach ($results as $result) { ]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($result[\'product_id\']);\r\n				]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n    <file path=\"catalog/controller/module/featured.php\">\r\n        <operation>\r\n            <search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n				$desc = html_entity_decode($product_info[\'description\'], ENT_QUOTES, \'UTF-8\');\r\n            $pos = strpos($desc,\'<iframe\');\r\n  			if (is_int($pos)) {\r\n                $pos2 = strpos($desc, \'</iframe>\') + 9;\r\n                $video = substr($desc, $pos, $pos2);\r\n                $quick_descr = str_replace($video, \'\', $desc);\r\n            } else{\r\n               $quick_descr = $desc;\r\n            }\r\n				]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[\r\n				\'rating\'      => $rating,\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n					\'reviews\'    => $review_total,\r\n					\'author\'     => $product_info[\'manufacturer\'],\r\n					\'description1\' => $quick_descr,\r\n					\'manufacturers\' =>$data[\'manufacturers\'] = $this->url->link(\'product/manufacturer/info\', \'manufacturer_id=\' . $product_info[\'manufacturer_id\']),\r\n					\'model\' => $product_info[\'model\'],\r\n					\'text_availability\' => $product_info[\'quantity\'],\r\n					\'allow\' => $product_info[\'minimum\'],\r\n				]]></add>\r\n        </operation>\r\n        <operation>\r\n            <search><![CDATA[ $product_info = $this->model_catalog_product->getProduct($product_id); ]]></search>\r\n            <add position=\"after\"><![CDATA[\r\n				$review_total = $this->model_catalog_review->getTotalReviewsByProductId($product_info[\'product_id\']);\r\n				]]></add>\r\n        </operation>\r\n    </file>\r\n\r\n\r\n	<file path=\"catalog/language/english/module/special.php|catalog/language/english/module/bestseller.php|catalog/language/english/module/latest.php|catalog/language/english/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'heading_title\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_category\'] = \'Categories\';\r\n				$_[\'text_manufacturer\'] = \'Brand:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Availability:\';\r\n				$_[\'text_instock\'] = \'In Stock\';\r\n				$_[\'text_outstock\'] = \'Out Stock\';\r\n				$_[\'text_price\']        = \'Price: \';\r\n				$_[\'text_tax\']          = \'Ex Tax:\';\r\n				$_[\'text_quick\']          = \'Quick View\'; \r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'reviews\']          = \'reviews \';\r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/special.php|catalog/language/de-DE/module/bestseller.php|catalog/language/de-DE/module/latest.php|catalog/language/de-DE/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']		= \'ohne Steuer\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Details\';\r\n				$_[\'text_category\'] = \'Kategorie:\';\r\n				$_[\'text_manufacturer\'] = \'Marke:\';\r\n				$_[\'text_model\'] = \'Model:\';\r\n				$_[\'text_availability\'] = \'Verfugbarkeit:\';\r\n				$_[\'text_instock\'] = \'Vorratig\';\r\n				$_[\'text_outstock\'] = \'Heraus \';\r\n				$_[\'text_price\']        = \'Preis: \';\r\n				$_[\'text_tax\']          = \'Preis ohne Steuer:\';\r\n				$_[\'text_quick\']          = \'Vorschau\'; \r\n				$_[\'text_product\']          = \'Artikel {current} von {total} \';\r\n				$_[\'text_sale\']      = \'Verkauf\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/special.php|catalog/language/russian/module/bestseller.php|catalog/language/russian/module/latest.php|catalog/language/russian/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'button_details\']          = \'Подробнее\';\r\n				$_[\'text_category\'] = \'Категория\';\r\n				$_[\'text_manufacturer\'] = \'Брєнд\';\r\n				$_[\'text_model\'] = \'Модель:\';\r\n				$_[\'text_availability\'] = \'Наличие:\';\r\n				$_[\'text_instock\'] = \'Доступно\';\r\n				$_[\'text_outstock\'] = \'нет в наличии \';\r\n				$_[\'text_price\']        = \'Цена: \';\r\n				$_[\'text_tax\']          = \'налог:\';\r\n				$_[\'text_quick\']          = \'Быстрый просмотр\'; \r\n				$_[\'text_product\']          = \'Product {current} of {total} \';\r\n				$_[\'text_sale\']      = \'Скидка\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:41:52'),
(326, 'TM Live search', '11', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Live search</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>11</code>\r\n	<file path=\"catalog/controller/product/search.php\">\r\n		<operation error=\"skip\">\r\n			<search><![CDATA[ class ControllerProductSearch extends Controller { ]]></search>\r\n			<add  position=\"after\"><![CDATA[\r\n				public function ajax()\r\n	{\r\n		// Contains results\r\n		$data = array();\r\n		if( isset($this->request->get[\'keyword\']) ) {\r\n			// Parse all keywords to lowercase\r\n			$keywords = strtolower( $this->request->get[\'keyword\'] );\r\n			// Perform search only if we have some keywords\r\n			if( strlen($keywords) >= 3 ) {\r\n				$parts = explode( \' \', $keywords );\r\n				$add = \'\';\r\n				// Generating search\r\n				foreach( $parts as $part ) {\r\n					$add .= \' AND (LOWER(pd.name) LIKE \"%\' . $this->db->escape($part) . \'%\"\';\r\n					$add .= \' OR LOWER(p.model) LIKE \"%\' . $this->db->escape($part) . \'%\")\';\r\n				}\r\n				$add = substr( $add, 4 );\r\n				$sql  = \'SELECT pd.product_id, pd.name, p.model, p.image FROM \' . DB_PREFIX . \'product_description AS pd \';\r\n				$sql .= \'LEFT JOIN \' . DB_PREFIX . \'product AS p ON p.product_id = pd.product_id \';\r\n				$sql .= \'LEFT JOIN \' . DB_PREFIX . \'product_to_store AS p2s ON p2s.product_id = pd.product_id \';\r\n				$sql .= \'WHERE \' . $add . \' AND p.status = 1 \';\r\n				$sql .= \'AND pd.language_id = \' . (int)$this->config->get(\'config_language_id\');\r\n				$sql .= \' AND p2s.store_id =  \' . (int)$this->config->get(\'config_store_id\'); \r\n				$sql .= \' ORDER BY p.sort_order ASC, LOWER(pd.name) ASC, LOWER(p.model) ASC\';\r\n				$sql .= \' LIMIT 15\';\r\n				$res = $this->db->query( $sql );\r\n				if( $res ) {\r\n					$data = ( isset($res->rows) ) ? $res->rows : $res->row;\r\n					$this->load->model(\'tool/image\'); \r\n					// For the seo url stuff\r\n					$basehref = \'product/product&keyword=\' . $this->request->get[\'keyword\'] . \'&product_id=\';\r\n					foreach( $data as $key => $values ) {\r\n						if ( $values[\'image\'] ) {\r\n							$image = $this->model_tool_image->resize($values[\'image\'], $this->config->get(\'config_image_cart_width\'), $this->config->get(\'config_image_cart_height\'));\r\n						}\r\n						else {\r\n							$image = $this->model_tool_image->resize(\'no_image.jpg\', $this->config->get(\'config_image_cart_width\'), $this->config->get(\'config_image_cart_height\'));\r\n						}\r\n						$data[$key] = array(\r\n							\'name\' => htmlspecialchars_decode($values[\'name\'] . \' (\' . $values[\'model\'] . \')\', ENT_QUOTES),\r\n							\'href\' => $this->url->link($basehref . $values[\'product_id\']),\r\n							\'image\' =>$image\r\n						);\r\n					}\r\n				}\r\n			}\r\n		}\r\n		echo json_encode( $data );\r\n	}\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:41:55'),
(329, 'TM label sale', '13', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM label sale</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>13</code>\r\n	<file path=\"catalog/controller/module/featured.php|catalog/controller/module/special.php|catalog/controller/module/latest.php|catalog/controller/product/product.php|catalog/controller/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$data[\'button_compare\'] = $this->language->get(\'button_compare\');\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$data[\'text_sale\'] = $this->language->get(\'text_sale\');\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/module/featured.php|catalog/language/english/module/special.php|catalog/language/english/module/latest.php|catalog/language/english/product/product.php|catalog/language/english/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"after\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Sale\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path=\"catalog/language/de-DE/module/featured.php|catalog/language/de-DE/module/special.php|catalog/language/de-DE/module/latest.php|catalog/language/de-DE/product/product.php|catalog/language/de-DE/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Verkauf\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/featured.php|catalog/language/russian/module/special.php|catalog/language/russian/module/latest.php|catalog/language/russian/product/product.php|catalog/language/russian/module/bestseller.php\">\r\n		<operation>\r\n			<search><![CDATA[\r\n			$_[\'text_tax\']\r\n			]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n			$_[\'text_sale\']      = \'Скидка\';\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-08 10:47:24'),
(332, 'TM Header', '6', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Header</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<author>Tm</author>\r\n	<code>6</code>\r\n	<file path=\"catalog/controller/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $data[\'name\'] = $this->config->get(\'config_name\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n			$data[\'maintenance\'] = $this->config->get(\'config_maintenance\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $data[\'text_all\'] = $this->language->get(\'text_all\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			\r\n			$data[\'text_shopcart\'] = $this->language->get(\'text_shopcart\');\r\n			$data[\'text_information\'] = $this->language->get(\'text_information\');\r\n			$data[\'text_service\'] = $this->language->get(\'text_service\');\r\n			$data[\'text_extra\'] = $this->language->get(\'text_extra\');\r\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\r\n			$data[\'text_contact\'] = $this->language->get(\'text_contact\');\r\n			$data[\'text_return\'] = $this->language->get(\'text_return\');\r\n			$data[\'text_sitemap\'] = $this->language->get(\'text_sitemap\');\r\n			$data[\'text_manufacturer\'] = $this->language->get(\'text_manufacturer\');\r\n			$data[\'text_voucher\'] = $this->language->get(\'text_voucher\');\r\n			$data[\'text_affiliate\'] = $this->language->get(\'text_affiliate\');\r\n			$data[\'text_special\'] = $this->language->get(\'text_special\');\r\n			$data[\'text_account\'] = $this->language->get(\'text_account\');\r\n			$data[\'text_order\'] = $this->language->get(\'text_order\');\r\n			$data[\'text_newsletter\'] = $this->language->get(\'text_newsletter\');\r\n			$data[\'text_category\'] = $this->language->get(\'text_category\');\r\n			$data[\'text_compare\'] = sprintf($this->language->get(isset($this->session->data[\'compare\']) ? count($this->session->data[\'compare\']) : 0));\r\n			\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $data[\'telephone\'] = $this->config->get(\'config_telephone\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\r\n			$data[\'special\'] = $this->url->link(\'product/special\');\r\n			$data[\'contact\'] = $this->url->link(\'information/contact\');\r\n			$data[\'contact\'] = $this->url->link(\'information/contact\');\r\n			$data[\'return\'] = $this->url->link(\'account/return/insert\', \'\', \'SSL\');\r\n			$data[\'sitemap\'] = $this->url->link(\'information/sitemap\');\r\n			$data[\'manufacturer\'] = $this->url->link(\'product/manufacturer\', \'\', \'SSL\');\r\n			$data[\'voucher\'] = $this->url->link(\'account/voucher\', \'\', \'SSL\');\r\n			$data[\'affiliate\'] = $this->url->link(\'affiliate/account\', \'\', \'SSL\');\r\n			$data[\'account\'] = $this->url->link(\'account/account\', \'\', \'SSL\');\r\n			$data[\'order\'] = $this->url->link(\'account/order\', \'\', \'SSL\');\r\n			$data[\'newsletter\'] = $this->url->link(\'account/newsletter\', \'\', \'SSL\');\r\n			$data[\'compare\'] = $this->url->link(\'product/compare\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[ $this->load->language(\'common/header\'); ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n			$this->load->model(\'catalog/information\');\r\n			if (($data[\'maintenance\']==0)) {\r\n			$data[\'informations\'] = array();\r\n			foreach ($this->model_catalog_information->getInformations() as $result) {\r\n				if ($result[\'bottom\']) {\r\n					$data[\'informations\'][] = array(\r\n						\'title\' => $result[\'title\'],\r\n						\'href\'  => $this->url->link(\'information/information\', \'information_id=\' . $result[\'information_id\'])\r\n					);\r\n				}\r\n			}	\r\n		}\r\n			]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[ $data[\'cart\'] = $this->load->controller(\'common/cart\'); ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$data[\'tm_login\'] = $this->load->controller(\'module/tm_header_login\');\r\n					$data[\'tm_social_list\'] = $this->load->controller(\'module/tm_social_list\');\r\n			]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[$data[\'text_wishlist\'] = sprintf($this->language->get(\'text_wishlist\'), (isset($this->session->data[\'wishlist\']) ? count($this->session->data[\'wishlist\']) : 0));]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$data[\'text_wishlist\'] = sprintf($this->language->get(isset($this->session->data[\'wishlist\']) ? count($this->session->data[\'wishlist\']) : 0));\r\n			]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_checkout\']      = \'Checkout\'; ]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n					$_[\'text_information\']  = \'Information\';\r\n					$_[\'text_service\']      = \'Customer Service\';\r\n					$_[\'text_extra\']        = \'Extras\';\r\n					$_[\'text_contact\']      = \'Contact Us\';\r\n					$_[\'text_return\']       = \'Returns\';\r\n					$_[\'text_sitemap\']      = \'Site Map\';\r\n					$_[\'text_manufacturer\'] = \'Brands\';\r\n					$_[\'text_voucher\']      = \'Gift Vouchers\';\r\n					$_[\'text_affiliate\']    = \'Affiliates\';\r\n					$_[\'text_special\']      = \'Specials\';\r\n					$_[\'text_account\']      = \'My Account\';\r\n					$_[\'text_order\']        = \'Order History\';\r\n					$_[\'text_newsletter\']   = \'Newsletter\';\r\n					$_[\'text_category\']   = \'Categories\';\r\n					$_[\'text_latest_added\']   = \'Latest added product(s):\';\r\n					$_[\'text_compare\']      = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/*/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_checkout\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[ \r\n					$_[\'text_compare\']      = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_compare\']      = \'Product Compare (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$_[\'text_compare\']      = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_compare\']		= \'Produktvergleich (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$_[\'text_compare\']      = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/product/compare.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_compare\']      = \'Сравнение товаров (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$_[\'text_compare\']      = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']      = \'Wish List (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$_[\'text_wishlist\']      = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']		= \'Wunschliste (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$_[\'text_wishlist\']      = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/common/header.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']      = \'Закладки (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$_[\'text_wishlist\']      = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/account/wishlist.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\'] = \'Wish List (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$_[\'text_wishlist\'] = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/english/account/wishlist.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\'] = \'Wish List (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$_[\'text_wishlist\'] = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/account/wishlist.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\']	= \'Wunschliste (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$_[\'text_wishlist\'] = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path=\"catalog/language/russian/account/wishlist.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_wishlist\'] = \'Закладки (%s)\'; ]]></search>\r\n			<add position=\"replace\"><![CDATA[ \r\n					$_[\'text_wishlist\'] = \'<span>%s</span>\';\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-14 16:58:20');
INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(333, 'TM Ajax add to cart ', 'ajax_add', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>TM Ajax add to cart </name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>ajax_add</code>\r\n\r\n <!-- Featured -->\r\n	<file path=\"catalog/controller/module/featured.php\">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_option\'] = $this->language->get(\'text_option\');\r\n				$data[\'text_select\'] = $this->language->get(\'text_select\');\r\n				$data[\'button_upload\'] = $this->language->get(\'button_upload\');\r\n				$data[\'text_loading\'] = $this->language->get(\'text_loading\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					   $options = array();\r\n                    foreach ($this->model_catalog_product->getProductOptions($product_id) as $option) {\r\n                        $product_option_value_data = array();\r\n                        foreach ($option[\'product_option_value\'] as $option_value) {\r\n                            if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\r\n                                if ((($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) && (float)$option_value[\'price\']) {\r\n                                    $price_option = $this->currency->format($this->tax->calculate($option_value[\'price\'], $product_info[\'tax_class_id\'], $this->config->get(\'config_tax\') ? \'P\' : false));\r\n                                } else {\r\n                                    $price_option = false;\r\n                                }\r\n                                $product_option_value_data[] = array(\r\n                                    \'product_option_value_id\' => $option_value[\'product_option_value_id\'],\r\n                                    \'option_value_id\'         => $option_value[\'option_value_id\'],\r\n                                    \'name\'                    => $option_value[\'name\'],\r\n                                    \'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], 50, 50),\r\n                                    \'price\'                   => $price_option,\r\n                                    \'price_prefix\'            => $option_value[\'price_prefix\']\r\n                                );\r\n                            }\r\n                        }\r\n                        $options[] = array(\r\n                            \'product_option_id\'    => $option[\'product_option_id\'],\r\n                            \'product_option_value\' => $product_option_value_data,\r\n                            \'option_id\'            => $option[\'option_id\'],\r\n                            \'name\'                 => $option[\'name\'],\r\n                            \'type\'                 => $option[\'type\'],\r\n                            \'value\'                => $option[\'value\'],\r\n                            \'required\'             => $option[\'required\']\r\n                        );\r\n                    }\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				 \'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $product_info[\'product_id\'])\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n <!-- Specials -->\r\n	<file path=\"catalog/controller/module/special.php|catalog/controller/module/bestseller.php|catalog/controller/module/latest.php|catalog/controller/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ \r\n				$data[\'button_cart\'] = $this->language->get(\'button_cart\');\r\n				]]></search>\r\n			<add position=\"after\"><![CDATA[ \r\n				$data[\'text_option\'] = $this->language->get(\'text_option\');\r\n				$data[\'text_select\'] = $this->language->get(\'text_select\');\r\n				$data[\'button_upload\'] = $this->language->get(\'button_upload\');\r\n				$data[\'text_loading\'] = $this->language->get(\'text_loading\');\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				$data[\'products\'][] = array(\r\n				]]></search>\r\n            <add position=\"before\"><![CDATA[\r\n					   $options = array();\r\n                    foreach ($this->model_catalog_product->getProductOptions($result[\'product_id\']) as $option) {\r\n                        $product_option_value_data = array();\r\n                        foreach ($option[\'product_option_value\'] as $option_value) {\r\n                            if (!$option_value[\'subtract\'] || ($option_value[\'quantity\'] > 0)) {\r\n                                if ((($this->config->get(\'config_customer_price\') && $this->customer->isLogged()) || !$this->config->get(\'config_customer_price\')) && (float)$option_value[\'price\']) {\r\n                                    $price_option = $this->currency->format($this->tax->calculate($option_value[\'price\'], $result[\'tax_class_id\'], $this->config->get(\'config_tax\') ? \'P\' : false));\r\n                                } else {\r\n                                    $price_option = false;\r\n                                }\r\n                                $product_option_value_data[] = array(\r\n                                    \'product_option_value_id\' => $option_value[\'product_option_value_id\'],\r\n                                    \'option_value_id\'         => $option_value[\'option_value_id\'],\r\n                                    \'name\'                    => $option_value[\'name\'],\r\n                                    \'image\'                   => $this->model_tool_image->resize($option_value[\'image\'], 50, 50),\r\n                                    \'price\'                   => $price_option,\r\n                                    \'price_prefix\'            => $option_value[\'price_prefix\']\r\n                                );\r\n                            }\r\n                        }\r\n                        $options[] = array(\r\n                            \'product_option_id\'    => $option[\'product_option_id\'],\r\n                            \'product_option_value\' => $product_option_value_data,\r\n                            \'option_id\'            => $option[\'option_id\'],\r\n                            \'name\'                 => $option[\'name\'],\r\n                            \'type\'                 => $option[\'type\'],\r\n                            \'value\'                => $option[\'value\'],\r\n                            \'required\'             => $option[\'required\']\r\n                        );\r\n                    }\r\n				]]></add>\r\n		</operation>\r\n		<operation>\r\n			<search><![CDATA[\r\n				 \'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'])\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[\r\n				\'href\'        => $this->url->link(\'product/product\', \'path=\' . $this->request->get[\'path\'] . \'&product_id=\' . $result[\'product_id\'] . $url)\r\n				]]></search>\r\n            <add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n		<file path=\"catalog/controller/product/search.php|catalog/controller/product/special.php\">\r\n		<operation>\r\n			<search><![CDATA[ \'href\'        => $this->url->link(\'product/product\', \'product_id=\' . $result[\'product_id\'] . $url) ]]></search>\r\n			<add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n			<file path=\"catalog/controller/product/manufacturer.php\">\r\n		<operation>\r\n			<search><![CDATA[\'href\'        => $this->url->link(\'product/product\', \'manufacturer_id=\' . $result[\'manufacturer_id\'] . \'&product_id=\' . $result[\'product_id\'] . $url) ]]></search>\r\n			<add position=\"after\"><![CDATA[,\r\n					  \'options\'     => $options\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n\r\n\r\n\r\n		<file path=\"catalog/language/english/module/featured.php|catalog/language/english/module/special.php|catalog/language/english/module/bestseller.php|catalog/language/english/module/latest.php|catalog/language/english/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\'] ]]></search>\r\n			<add position=\"before\"><![CDATA[\r\n				$_[\'text_option\']              = \'Available Options\';\r\n				$_[\'text_select\']              = \'--- Please Select ---\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/de-DE/module/featured.php|catalog/language/de-DE/module/special.php|catalog/language/de-DE/module/bestseller.php|catalog/language/de-DE/module/latest.php|catalog/language/de-DE/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\'] ]]></search>\r\n			<add position=\"after\"><![CDATA[		\r\n				$_[\'text_option\']              = \'Mögliche Optionen\';\r\n				$_[\'text_select\']              = \'--- Bitte wählen ---\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n	<file path=\"catalog/language/russian/module/featured.php|catalog/language/russian/module/special.php|catalog/language/russian/module/bestseller.php|catalog/language/russian/module/latest.php|catalog/language/russian/product/*.php\">\r\n		<operation>\r\n			<search><![CDATA[ $_[\'text_tax\']]]></search>\r\n			<add position=\"before\"><![CDATA[		\r\n				$_[\'text_option\']              = \'Доступные варианты\';\r\n				$_[\'text_select\']              = \'--- Выберите ---\';\r\n				]]></add>\r\n		</operation>\r\n		\r\n	</file>\r\n</modification>', 1, '2015-12-17 14:34:04'),
(334, 'Google captcha fix', 'captcha', 'http://www.templatemonster.com', '1.0', 'http://www.templatemonster.com', '<?xml version=\"1.0\" encoding=\"utf-8\"?>\r\n<modification>\r\n	<name>Google captcha fix</name>\r\n	<version>1.0</version>\r\n	<author>http://www.templatemonster.com</author>\r\n	<link>http://www.templatemonster.com</link>\r\n	<code>captcha</code>\r\n	<file path=\"catalog/controller/captcha/google_captcha.php\">\r\n		<operation>\r\n			<search><![CDATA[$this->document->addScript(\'https://www.google.com/recaptcha/api.js\');]]></search>\r\n			<add position=\"replace\"><![CDATA[// $this->document->addScript(\'https://www.google.com/recaptcha/api.js\');]]></add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2015-12-17 14:34:39'),
(343, 'Export/Import Tool (V3.20) for OpenCart 2.x', 'Export/Import Tool (V3.20) for OpenCart 2.x', 'mhccorp.com', '2.x-3.20', 'https://www.mhccorp.com', '<modification>\n	<name>Export/Import Tool (V3.20) for OpenCart 2.x</name>\n	<code>Export/Import Tool (V3.20) for OpenCart 2.x</code>\n	<version>2.x-3.20</version>\n	<author>mhccorp.com</author>\n	<link>https://www.mhccorp.com</link>\n	<file path=\"admin/controller/common/menu.php\">\n		<operation error=\"skip\">\n			<search><![CDATA[$data[\'text_backup\'] = $this->language->get(\'text_backup\');]]></search>\n			<add position=\"after\"><![CDATA[\n		$data[\'text_export_import\'] = $this->language->get(\'text_export_import\');\n			]]></add>\n		</operation>\n		<operation error=\"skip\">\n			<search><![CDATA[$data[\'backup\'] = $this->url->link(\'tool/backup\', \'token=\' . $this->session->data[\'token\'],]]></search>\n			<add position=\"after\"><![CDATA[\n		$data[\'export_import\'] = $this->url->link(\'tool/export_import\', \'token=\' . $this->session->data[\'token\'], (version_compare(PHP_VERSION, \'2.2.0.0\') >= 0) ? true : \'SSL\');\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/*/common/menu.php\">\n		<operation error=\"skip\">\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']               = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/view/template/common/menu.tpl\">\n		<operation error=\"skip\">\n			<search><![CDATA[<li><a href=\"<?php echo $backup; ?>\"><?php echo $text_backup; ?></a></li>]]></search>\n			<add position=\"replace\"><![CDATA[<li><a href=\"<?php echo $backup; ?>\"><?php echo $text_backup; ?></a></li><li><a href=\"<?php echo $export_import; ?>\"><?php echo $text_export_import; ?></a></li>]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/controller/common/column_left.php\">\n		<operation error=\"skip\">\n			<search><![CDATA[if ($this->user->hasPermission(\'access\', \'tool/log\')) {]]></search>\n			<add position=\"before\"><![CDATA[\n			if ($this->user->hasPermission(\'access\', \'tool/export_import\')) {\n				$tool[] = array(\n					\'name\'	   => $this->language->get(\'text_export_import\'),\n					\'href\'     => $this->url->link(\'tool/export_import\', \'token=\' . $this->session->data[\'token\'], true),\n					\'children\' => array()		\n				);\n			}\n			]]></add>\n		</operation>\n	</file>\n	<file path=\"admin/language/*/common/column_left.php\">\n		<operation error=\"skip\">\n			<search><![CDATA[$_[\'text_backup\']]]></search>\n			<add position=\"after\"><![CDATA[\n$_[\'text_export_import\']             = \'Export / Import\';\n			]]></add>\n		</operation>\n	</file>\n</modification>\n', 1, '2018-11-19 08:32:20'),
(344, 'Local copy OCMOD by iSenseLabs', 'isensealabs_quickfix_ocmod', 'iSenseLabs', '1.3', 'http://isenselabs.com', '<modification>\r\n    <name>Local copy OCMOD by iSenseLabs</name>\r\n	<version>1.3</version>\r\n	<link>http://isenselabs.com</link>\r\n	<author>iSenseLabs</author>\r\n	<code>isensealabs_quickfix_ocmod</code>\r\n\r\n	<file path=\"admin/controller/extension/installer.php\">\r\n		<operation error=\"skip\">\r\n			<search ><![CDATA[\'url\'  => str_replace(\'&amp;\', \'&\', $this->url->link(\'extension/installer/ftp\', \'token=\' . $this->session->data[\'token\'],]]></search>\r\n			<add position=\"replace\"><![CDATA[\'url\'  => str_replace(\'&amp;\', \'&\', $this->url->link(\'extension/installer/localcopy\', \'token=\' . $this->session->data[\'token\'],]]></add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search><![CDATA[public function unzip() {]]></search>\r\n			<add position=\"before\"><![CDATA[			\r\n	public function localcopy() {\r\n		$this->load->language(\'extension/installer\');\r\n\r\n		$json = array();\r\n\r\n		if (!$this->user->hasPermission(\'modify\', \'extension/installer\')) {\r\n			$json[\'error\'] = $this->language->get(\'error_permission\');\r\n		}\r\n\r\n		if (VERSION == \'2.0.0.0\') {\r\n		    $directory = DIR_DOWNLOAD  . str_replace(array(\'../\', \'..\\\\\', \'..\'), \'\', $this->request->post[\'path\']) . \'/upload/\';\r\n		} else {\r\n		    $directory = DIR_UPLOAD  . str_replace(array(\'../\', \'..\\\\\', \'..\'), \'\', $this->request->post[\'path\']) . \'/upload/\';\r\n		}\r\n\r\n		if (!is_dir($directory)) {\r\n			$json[\'error\'] = $this->language->get(\'error_directory\');\r\n		}\r\n\r\n		if (!$json) {\r\n			// Get a list of files ready to upload\r\n			$files = array();\r\n\r\n			$path = array($directory . \'*\');\r\n\r\n			while (count($path) != 0) {\r\n				$next = array_shift($path);\r\n\r\n				foreach (glob($next) as $file) {\r\n					if (is_dir($file)) {\r\n						$path[] = $file . \'/*\';\r\n					}\r\n\r\n					$files[] = $file;\r\n				}\r\n			}\r\n\r\n			$root = dirname(DIR_APPLICATION).\'/\';\r\n\r\n			foreach ($files as $file) {\r\n				// Upload everything in the upload directory\r\n				$destination = substr($file, strlen($directory));\r\n\r\n				// Update from newer OpenCart versions:\r\n				if (substr($destination, 0, 5) == \'admin\') {\r\n					$destination = DIR_APPLICATION . substr($destination, 5);\r\n				} else if (substr($destination, 0, 7) == \'catalog\') {\r\n					$destination = DIR_CATALOG . substr($destination, 7);\r\n				} else if (substr($destination, 0, 5) == \'image\') {\r\n					$destination = DIR_IMAGE . substr($destination, 5);\r\n				} else if (substr($destination, 0, 6) == \'system\') {\r\n					$destination = DIR_SYSTEM . substr($destination, 6);\r\n				} else {\r\n					$destination = $root.$destination;\r\n				}\r\n\r\n				if (is_dir($file)) {\r\n					if (!file_exists($destination)) {\r\n						if (!mkdir($destination)) {\r\n							$json[\'error\'] = sprintf($this->language->get(\'error_ftp_directory\'), $destination);\r\n						}\r\n					}\r\n				}\r\n\r\n				if (is_file($file)) {\r\n					if (!copy($file, $destination)) {\r\n						$json[\'error\'] = sprintf($this->language->get(\'error_ftp_file\'), $file);\r\n					}\r\n				}\r\n			}\r\n		}\r\n\r\n		$this->response->addHeader(\'Content-Type: application/json\');\r\n		$this->response->setOutput(json_encode($json));\r\n	}]]></add>\r\n		</operation>\r\n	</file>	\r\n</modification>\r\n', 1, '2018-11-21 21:56:11'),
(345, 'Customer Print Invoice', 'Customer Print Invoice', 'E-Intelligence', '2.0.x', '', '<modification>\n   <name>Customer Print Invoice</name>\n    <version>2.0.x</version>\n    <author>E-Intelligence</author>\n    <link></link>\n    <code>Customer Print Invoice</code>\n    \n    <file path=\"catalog/controller/account/order.php\">\n		<operation>\n			<search>\n				 <![CDATA[$data[\'orders\'] = array();]]>\n			</search>\n			<add position=\"before\">\n			 <![CDATA[\n				$data[\'customer_invoice_status\'] = $this->config->get(\'customer_invoice_status\');\n				\n				$data[\'button_print_invoice\'] = $this->language->get(\'button_print_invoice\');\n			 ]]>\n			</add>	\n		</operation>\n		\n		<operation>\n			<search>\n				 <![CDATA[$data[\'orders\'][]]]>\n			</search>\n			<add position=\"after\">\n			 <![CDATA[\n				\'invoice_href\' => $this->url->link(\'account/order/customerPrintInvoice\', \'order_id=\' . $result[\'order_id\'], \'SSL\'),\n			 ]]>\n			</add>	\n		</operation>\n		\n		<operation>\n			<search>\n				 <![CDATA[if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/account/order_info.tpl\')) {]]>\n			</search>\n			<add position=\"before\">\n			 <![CDATA[\n				\n				// check weather customer invoice print module is enable or not\n				$data[\'customer_invoice_status\'] = $this->config->get(\'customer_invoice_status\');\n				\n				$data[\'button_print_invoice\'] = $this->language->get(\'button_print_invoice\');\n				\n				$data[\'invoice_href\'] = $this->url->link(\'account/order/customerPrintInvoice\', \'order_id=\' . $this->request->get[\'order_id\'], \'SSL\');\n				\n			 ]]>\n			</add>	\n		</operation>\n		\n		\n		<operation>\n			<search>\n				 <![CDATA[public function index() {]]>\n			</search>\n			<add position=\"before\">\n			 <![CDATA[\n				public function customerPrintInvoice() {\n				\n					$this->load->language(\'account/order\');\n					\n					$this->load->model(\'account/order\');\n					$this->load->model(\'tool/upload\');\n					\n					$data[\'title\'] = $this->language->get(\'text_invoice\');\n\n					if ($this->request->server[\'HTTPS\']) {\n						$data[\'base\'] = HTTPS_SERVER;\n					} else {\n						$data[\'base\'] = HTTP_SERVER;\n					}\n\n					$data[\'direction\'] = $this->language->get(\'direction\');\n					$data[\'lang\'] = $this->language->get(\'code\');\n\n					$data[\'text_invoice\'] = $this->language->get(\'text_invoice\');\n					$data[\'text_order_detail\'] = $this->language->get(\'text_order_detail\');\n					$data[\'text_order_id\'] = $this->language->get(\'text_order_id\');\n					$data[\'text_invoice_no\'] = $this->language->get(\'text_invoice_no\');\n					$data[\'text_invoice_date\'] = $this->language->get(\'text_invoice_date\');\n					$data[\'text_date_added\'] = $this->language->get(\'text_date_added\');\n					$data[\'text_telephone\'] = $this->language->get(\'text_telephone\');\n					$data[\'text_fax\'] = $this->language->get(\'text_fax\');\n					$data[\'text_email\'] = $this->language->get(\'text_email\');\n					$data[\'text_website\'] = $this->language->get(\'text_website\');\n					$data[\'text_payment_address\'] = $this->language->get(\'text_payment_address\');\n					$data[\'text_shipping_address\'] = $this->language->get(\'text_shipping_address\');\n					$data[\'text_payment_method\'] = $this->language->get(\'text_payment_method\');\n					$data[\'text_shipping_method\'] = $this->language->get(\'text_shipping_method\');\n					$data[\'text_comment\'] = $this->language->get(\'text_comment\');\n\n					$data[\'column_product\'] = $this->language->get(\'column_product\');\n					$data[\'column_model\'] = $this->language->get(\'column_model\');\n					$data[\'column_quantity\'] = $this->language->get(\'column_quantity\');\n					$data[\'column_price\'] = $this->language->get(\'column_price\');\n					$data[\'column_total\'] = $this->language->get(\'column_total\');\n					\n					$data[\'button_print_invoice\'] = $this->language->get(\'button_print_invoice\');\n					\n					\n					if(isset($this->request->get[\'order_id\'])) {\n						$order_id = $this->request->get[\'order_id\'];\n					} else {\n						$order_id = 0;\n					}\n					\n					$order_info = $this->model_account_order->getOrder($order_id);\n					\n					$found = 0;\n					\n					if($order_info) {					\n						// check guest customer only print current order which place before some time.					\n						if(isset($this->session->data[\'guest_order_id\']) && ($this->session->data[\'guest_order_id\'] == $order_info[\'order_id\'])) {\n							$found = 1;\n						} else if($this->customer->getId() == $order_info[\'customer_id\']) {\n							// Logged customer only print his placed order\n							$found = 1;\n						} else {\n							// Customer try to print other customer order which is not allowed.\n							$found = 0;\n						}\n					}\n										\n					if($order_info && $found) {\n						\n						if ($order_info[\'invoice_no\']) {\n							$invoice_no = $order_info[\'invoice_prefix\'] . $order_info[\'invoice_no\'];\n						} else {\n							$invoice_no = \'\';\n						}\n						\n						if ($order_info[\'payment_address_format\']) {\n							$format = $order_info[\'payment_address_format\'];\n						} else {\n							$format = \'{firstname} {lastname}\' . \"\\n\" . \'{company}\' . \"\\n\" . \'{address_1}\' . \"\\n\" . \'{address_2}\' . \"\\n\" . \'{city} {postcode}\' . \"\\n\" . \'{zone}\' . \"\\n\" . \'{country}\';\n						}\n\n						$find = array(\n							\'{firstname}\',\n							\'{lastname}\',\n							\'{company}\',\n							\'{address_1}\',\n							\'{address_2}\',\n							\'{city}\',\n							\'{postcode}\',\n							\'{zone}\',\n							\'{zone_code}\',\n							\'{country}\'\n						);\n\n						$replace = array(\n							\'firstname\' => $order_info[\'payment_firstname\'],\n							\'lastname\'  => $order_info[\'payment_lastname\'],\n							\'company\'   => $order_info[\'payment_company\'],\n							\'address_1\' => $order_info[\'payment_address_1\'],\n							\'address_2\' => $order_info[\'payment_address_2\'],\n							\'city\'      => $order_info[\'payment_city\'],\n							\'postcode\'  => $order_info[\'payment_postcode\'],\n							\'zone\'      => $order_info[\'payment_zone\'],\n							\'zone_code\' => $order_info[\'payment_zone_code\'],\n							\'country\'   => $order_info[\'payment_country\']\n						);\n						\n						$payment_address = str_replace(array(\"\\r\\n\", \"\\r\", \"\\n\"), \'<br />\', preg_replace(array(\"/\\s\\s+/\", \"/\\r\\r+/\", \"/\\n\\n+/\"), \'<br />\', trim(str_replace($find, $replace, $format))));\n\n						if ($order_info[\'shipping_address_format\']) {\n							$format = $order_info[\'shipping_address_format\'];\n						} else {\n							$format = \'{firstname} {lastname}\' . \"\\n\" . \'{company}\' . \"\\n\" . \'{address_1}\' . \"\\n\" . \'{address_2}\' . \"\\n\" . \'{city} {postcode}\' . \"\\n\" . \'{zone}\' . \"\\n\" . \'{country}\';\n						}\n\n						$find = array(\n							\'{firstname}\',\n							\'{lastname}\',\n							\'{company}\',\n							\'{address_1}\',\n							\'{address_2}\',\n							\'{city}\',\n							\'{postcode}\',\n							\'{zone}\',\n							\'{zone_code}\',\n							\'{country}\'\n						);\n\n						$replace = array(\n							\'firstname\' => $order_info[\'shipping_firstname\'],\n							\'lastname\'  => $order_info[\'shipping_lastname\'],\n							\'company\'   => $order_info[\'shipping_company\'],\n							\'address_1\' => $order_info[\'shipping_address_1\'],\n							\'address_2\' => $order_info[\'shipping_address_2\'],\n							\'city\'      => $order_info[\'shipping_city\'],\n							\'postcode\'  => $order_info[\'shipping_postcode\'],\n							\'zone\'      => $order_info[\'shipping_zone\'],\n							\'zone_code\' => $order_info[\'shipping_zone_code\'],\n							\'country\'   => $order_info[\'shipping_country\']\n						);\n						\n						\n						$shipping_address = str_replace(array(\"\\r\\n\", \"\\r\", \"\\n\"), \'<br />\', preg_replace(array(\"/\\s\\s+/\", \"/\\r\\r+/\", \"/\\n\\n+/\"), \'<br />\', trim(str_replace($find, $replace, $format))));\n\n						$this->load->model(\'tool/upload\');\n\n						$product_data = array();\n\n						$products = $this->model_account_order->getOrderProducts($order_id);\n\n						foreach ($products as $product) {\n							$option_data = array();\n\n							$options = $this->model_account_order->getOrderOptions($order_id, $product[\'order_product_id\']);\n\n							foreach ($options as $option) {\n								if ($option[\'type\'] != \'file\') {\n									$value = $option[\'value\'];\n								} else {\n									$upload_info = $this->model_tool_upload->getUploadByCode($option[\'value\']);\n\n									if ($upload_info) {\n										$value = $upload_info[\'name\'];\n									} else {\n										$value = \'\';\n									}\n								}\n\n								$option_data[] = array(\n									\'name\'  => $option[\'name\'],\n									\'value\' => $value\n								);\n							}\n\n							$product_data[] = array(\n								\'name\'     => $product[\'name\'],\n								\'model\'    => $product[\'model\'],\n								\'option\'   => $option_data,\n								\'quantity\' => $product[\'quantity\'],\n								\'price\'    => $this->currency->format($product[\'price\'] + ($this->config->get(\'config_tax\') ? $product[\'tax\'] : 0), $order_info[\'currency_code\'], $order_info[\'currency_value\']),\n								\'total\'    => $this->currency->format($product[\'total\'] + ($this->config->get(\'config_tax\') ? ($product[\'tax\'] * $product[\'quantity\']) : 0), $order_info[\'currency_code\'], $order_info[\'currency_value\'])\n							);\n						}\n\n						$voucher_data = array();\n\n						$vouchers = $this->model_account_order->getOrderVouchers($order_id);\n\n						foreach ($vouchers as $voucher) {\n							$voucher_data[] = array(\n								\'description\' => $voucher[\'description\'],\n								\'amount\'      => $this->currency->format($voucher[\'amount\'], $order_info[\'currency_code\'], $order_info[\'currency_value\'])\n							);\n						}\n\n						$total_data = array();\n\n						$totals = $this->model_account_order->getOrderTotals($order_id);\n\n						foreach ($totals as $total) {\n							$total_data[] = array(\n								\'title\' => $total[\'title\'],\n								\'text\'  => $this->currency->format($total[\'value\'], $order_info[\'currency_code\'], $order_info[\'currency_value\']),\n							);\n						}\n						\n						// check weather store logo need to put on the invoice\n						$data[\'customer_invoice_store_logo\'] = $this->config->get(\'customer_invoice_store_logo\');\n						\n						if ($this->request->server[\'HTTPS\']) {\n							$server = $this->config->get(\'config_ssl\');\n						} else {\n							$server = $this->config->get(\'config_url\');\n						}\n						\n						if (is_file(DIR_IMAGE . $this->config->get(\'config_logo\'))) {\n							$data[\'logo\'] = $server . \'image/\' . $this->config->get(\'config_logo\');\n						} else {\n							$data[\'logo\'] = \'\';\n						}\n						\n						$data[\'order_id\'] = $order_id;\n						$data[\'invoice_no\'] = $invoice_no;\n						$data[\'date_added\'] = date($this->language->get(\'date_format_short\'), strtotime($order_info[\'date_added\']));\n						$data[\'store_name\'] = $order_info[\'store_name\'];\n						$data[\'store_url\']  = rtrim($order_info[\'store_url\'], \'/\');\n						$data[\'store_address\'] = nl2br($this->config->get(\'config_address\'));\n						$data[\'store_email\'] = $this->config->get(\'config_email\');\n						$data[\'store_telephone\'] = $this->config->get(\'config_telephone\');\n						$data[\'store_fax\'] = $this->config->get(\'config_fax\');\n						$data[\'email\'] = $order_info[\'email\'];\n						$data[\'telephone\'] = $order_info[\'telephone\'];\n						$data[\'shipping_address\'] = $shipping_address;\n						$data[\'shipping_method\'] = $order_info[\'shipping_method\'];\n						$data[\'payment_address\'] = $payment_address;\n						$data[\'payment_method\'] = $order_info[\'payment_method\'];\n						$data[\'products\'] = $product_data;\n						$data[\'vouchers\'] = $voucher_data;\n						$data[\'totals\'] = $total_data;\n						$data[\'comment\'] = nl2br($order_info[\'comment\']);\n						\n						if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/account/order_invoice.tpl\')) {\n							$this->response->setOutput($this->load->view($this->config->get(\'config_template\') . \'/template/account/order_invoice.tpl\', $data));\n						} else {\n							$this->response->setOutput($this->load->view(\'default/template/account/order_invoice.tpl\', $data));\n						}\n						\n					} else {\n						$this->document->setTitle($this->language->get(\'text_order\'));\n\n						$data[\'heading_title\'] = $this->language->get(\'text_order\');\n\n						$data[\'text_error\'] = $this->language->get(\'text_error\');\n\n						$data[\'button_continue\'] = $this->language->get(\'button_continue\');\n\n						$data[\'breadcrumbs\'] = array();\n\n						$data[\'breadcrumbs\'][] = array(\n							\'text\' => $this->language->get(\'text_home\'),\n							\'href\' => $this->url->link(\'common/home\')\n						);\n\n						$data[\'breadcrumbs\'][] = array(\n							\'text\' => $this->language->get(\'text_account\'),\n							\'href\' => $this->url->link(\'account/account\', \'\', \'SSL\')\n						);\n\n						$data[\'breadcrumbs\'][] = array(\n							\'text\' => $this->language->get(\'heading_title\'),\n							\'href\' => $this->url->link(\'account/order\', \'\', \'SSL\')\n						);\n\n						$data[\'breadcrumbs\'][] = array(\n							\'text\' => $this->language->get(\'text_order\'),\n							\'href\' => $this->url->link(\'account/order/info\', \'order_id=\' . $order_id, \'SSL\')\n						);\n\n						$data[\'continue\'] = $this->url->link(\'account/order\', \'\', \'SSL\');\n\n						$data[\'column_left\'] = $this->load->controller(\'common/column_left\');\n						$data[\'column_right\'] = $this->load->controller(\'common/column_right\');\n						$data[\'content_top\'] = $this->load->controller(\'common/content_top\');\n						$data[\'content_bottom\'] = $this->load->controller(\'common/content_bottom\');\n						$data[\'footer\'] = $this->load->controller(\'common/footer\');\n						$data[\'header\'] = $this->load->controller(\'common/header\');\n\n						if (file_exists(DIR_TEMPLATE . $this->config->get(\'config_template\') . \'/template/error/not_found.tpl\')) {\n							$this->response->setOutput($this->load->view($this->config->get(\'config_template\') . \'/template/error/not_found.tpl\', $data));\n						} else {\n							$this->response->setOutput($this->load->view(\'default/template/error/not_found.tpl\', $data));\n						}\n					}\n				}\n			 ]]>\n			</add>	\n		</operation>\n		\n	</file>\n	\n	<file path=\"catalog/controller/checkout/success.php\">\n		<operation>\n			<search>\n				 <![CDATA[$this->cart->clear();]]>\n			</search>\n			<add position=\"after\">\n			 <![CDATA[\n			 \n				// check weather customer invoice print module is enable or not\n				$data[\'customer_invoice_status\'] = $this->config->get(\'customer_invoice_status\');\n				\n				$data[\'button_print_invoice\'] = $this->language->get(\'button_print_invoice\');\n				\n				if(!$this->customer->getId()) {\n					if($this->config->get(\'customer_invoice_guest\')) {\n						if(isset($this->session->data[\'guest_order_id\'])) {\n							unset($this->session->data[\'guest_order_id\']);\n						}\n						\n						$this->session->data[\'guest_order_id\'] = $this->session->data[\'order_id\'];\n						\n						$data[\'invoice_href\'] = $this->url->link(\'account/order/customerPrintInvoice\', \'order_id=\' . $this->session->data[\'guest_order_id\'], \'SSL\');\n					} else {\n						$data[\'invoice_href\'] = \'\';\n					}\n					\n				} else {\n					\n					if(isset($this->session->data[\'logged_customer_id\'])) {\n						unset($this->session->data[\'logged_customer_id\']);\n					}\n				\n					$this->session->data[\'logged_customer_id\'] = $this->session->data[\'order_id\'];\n				\n					$data[\'invoice_href\'] = $this->url->link(\'account/order/customerPrintInvoice\', \'order_id=\' . $this->session->data[\'logged_customer_id\'], \'SSL\');\n				}\n			 ]]>\n			</add>	\n		</operation>\n		\n		<?php /* <operation>\n			<search>\n				 <![CDATA[if (isset($this->session->data[\'order_id\'])) {]]>\n			</search>\n			<add position=\"before\">\n			 <![CDATA[\n			 \n				// check weather customer invoice print module is enable or not\n				$data[\'customer_invoice_status\'] = $this->config->get(\'customer_invoice_status\');\n				\n				$data[\'button_print_invoice\'] = $this->language->get(\'button_print_invoice\');\n				\n				if(isset($this->session->data[\'logged_customer_id\']) || isset($this->session->data[\'guest_order_id\'])) {\n					if(!$this->customer->getId()) {\n						if($this->config->get(\'customer_invoice_guest\')) {\n							$data[\'invoice_href\'] = $this->url->link(\'account/order/customerPrintInvoice\', \'order_id=\' . $this->session->data[\'guest_order_id\'], \'SSL\');\n						} else {\n							$data[\'invoice_href\'] = \'\';\n						}\n					} else {\n						$data[\'invoice_href\'] = $this->url->link(\'account/order/customerPrintInvoice\', \'order_id=\' . $this->session->data[\'logged_customer_id\'], \'SSL\');\n					}\n				}\n			 ]]>\n			</add>	\n		</operation> */ ?>\n		\n	</file>\n	\n	<file path=\"catalog/language/*/account/order.php\">\n		<operation>\n			<search>\n				 <![CDATA[$_[\'heading_title\']]]>\n			</search>\n			<add position=\"after\">\n			 <![CDATA[\n				$_[\'button_print_invoice\'] = \'Print Invoice\';\n				\n				// Inovice Language \n				$_[\'code\'] = \'en\';\n				$_[\'direction\'] = \'ltr\';\n				$_[\'text_invoice\'] = \'Invoice\';\n				$_[\'text_invoice_date\'] = \'Invoice Date:\';\n				$_[\'text_telephone\'] = \'Telephone:\';\n				$_[\'text_fax\'] = \'Fax:\';\n				$_[\'text_email\'] = \'Email:\';\n				$_[\'text_website\'] = \'Web Site:\';\n								\n			 ]]>\n			</add>	\n		</operation>\n	</file>\n	\n	<file path=\"catalog/language/*/checkout/success.php\">\n		<operation>\n			<search>\n				 <![CDATA[$_[\'heading_title\']]]>\n			</search>\n			<add position=\"after\">\n			 <![CDATA[\n				$_[\'button_print_invoice\'] = \'Print Invoice\';\n			 ]]>\n			</add>	\n		</operation>\n	</file>\n	\n	<file path=\"catalog/view/theme/*/template/account/order_list.tpl\">\n		<operation>\n			<search>\n				 <![CDATA[<a href=\"<?php echo $order[\'href\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_view; ?>\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a>]]>\n			</search>\n			<add position=\"replace\">\n			 <![CDATA[\n				<?php if($customer_invoice_status) { ?>\n					<a href=\"<?php echo $order[\'invoice_href\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_print_invoice; ?>\" class=\"btn btn-primary\" target=\"_blank\"><i class=\"fa fa-print\"></i></a>\n					&nbsp;&nbsp;&nbsp;&nbsp;\n				<?php } ?>				\n				<a href=\"<?php echo $order[\'href\']; ?>\" data-toggle=\"tooltip\" title=\"<?php echo $button_view; ?>\" class=\"btn btn-info\"><i class=\"fa fa-eye\"></i></a>\n			 ]]>\n			</add>	\n		</operation>\n	</file>\n	\n	<file path=\"catalog/view/theme/*/template/account/order_info.tpl\">\n		<operation>\n			<search>\n				 <![CDATA[<h2><?php echo $heading_title; ?></h2>]]>\n			</search>\n			<add position=\"replace\">\n			 <![CDATA[\n				<?php if($customer_invoice_status) { ?>\n					<div class=\"row\">\n						<div class=\"col-sm-6\"><h2><?php echo $heading_title; ?></h2></div>\n						<div class=\"col-sm-6\">\n							<div class=\"pull-right\">\n								<a href=\"<?php echo $invoice_href; ?>\" class=\"btn btn-primary\" target=\"_blank\" style=\"margin-top: 20px;\"><?php echo $button_print_invoice; ?></a>\n							</div>\n						</div>\n					</div>\n				<?php } else { ?>\n					<h2><?php echo $heading_title; ?></h2>\n				<?php } ?>\n			 ]]>\n			</add>	\n		</operation>\n	</file>\n	\n	<file path=\"catalog/view/theme/*/template/common/success.tpl\">\n		<operation>\n			<search>\n				 <![CDATA[<div class=\"buttons\">]]>\n			</search>\n			<add position=\"after\">\n			 <![CDATA[\n				<?php if(isset($customer_invoice_status) && $customer_invoice_status && isset($invoice_href) && $invoice_href) { ?>\n					<div class=\"pull-left\"><a href=\"<?php echo $invoice_href; ?>\" class=\"btn btn-primary\" target=\"_blank\"><?php echo $button_print_invoice; ?></a></div>\n				<?php } ?>\n			 ]]>\n			</add>	\n		</operation>\n	</file>\n    \n</modification>\n', 1, '2018-11-26 11:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(33, 'banners', 'banner', '{\"name\":\"banners\",\"banner_id\":\"14\",\"width\":\"370\",\"height\":\"370\",\"status\":\"1\"}'),
(46, 'Tm Slideshow', 'tm_slideshow', '{\"name\":\"Tm Slideshow\",\"banner_id\":\"15\",\"width\":\"2048\",\"height\":\"680\",\"status\":\"1\"}'),
(50, 'Olark Chat', 'olark', '{\"name\":\"Olark Chat\",\"olark_version\":\"2.0.0\",\"olark_site_id\":\"7830-582-10-3714\",\"status\":\"1\"}'),
(54, 'Google Map', 'tm_google_map', '{\"name\":\"Google Map\",\"tm_google_map_key\":\"\",\"status\":\"1\",\"tm_google_map_zoom\":\"14\",\"tm_google_map_type\":\"1\",\"tm_google_map_sensor\":\"true\",\"tm_google_map_width\":\"100%\",\"tm_google_map_height\":\"440px\",\"tm_google_map_styles\":\"                                                                                                                                                                                                                                                                                              [{&quot;featureType&quot;:&quot;landscape&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:65},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;poi&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:51},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;road.highway&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;road.arterial&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:30},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;road.local&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;lightness&quot;:40},{&quot;visibility&quot;:&quot;on&quot;}]},{&quot;featureType&quot;:&quot;transit&quot;,&quot;stylers&quot;:[{&quot;saturation&quot;:-100},{&quot;visibility&quot;:&quot;simplified&quot;}]},{&quot;featureType&quot;:&quot;administrative.province&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;off&quot;}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;labels&quot;,&quot;stylers&quot;:[{&quot;visibility&quot;:&quot;on&quot;},{&quot;lightness&quot;:-25},{&quot;saturation&quot;:-100}]},{&quot;featureType&quot;:&quot;water&quot;,&quot;elementType&quot;:&quot;geometry&quot;,&quot;stylers&quot;:[{&quot;hue&quot;:&quot;#ffff00&quot;},{&quot;lightness&quot;:-25},{&quot;saturation&quot;:-97}]}]                                                                                                                                                                                                                                                                                                                                                                                      \",\"tm_google_map_disable_ui\":\"false\",\"tm_google_map_scrollwheel\":\"false\",\"tm_google_map_draggable\":\"true\",\"tm_google_map_marker\":\"\",\"tm_google_map_marker_active\":\"\",\"tm_google_map_marker_width\":\"\",\"tm_google_map_marker_height\":\"\"}'),
(90, 'Blog Categories', 'tm_blog_category', '{\"status\":\"1\",\"name\":\"Blog Categories\",\"category_search_article\":\"1\"}'),
(91, 'Blog Popular Articles', 'tm_blog_articles', '{\"status\":\"1\",\"name\":\"Blog Popular Articles\",\"article_limit\":\"3\",\"show_readmore\":\"0\",\"show_date\":\"0\",\"show_author\":\"0\",\"show_comments\":\"0\",\"show_image\":\"0\",\"image_width\":\"0\",\"image_height\":\"0\",\"description_limit\":\"150\",\"category_id\":\"popular\"}'),
(101, 'Blog Home Articles', 'tm_blog_articles', '{\"status\":\"1\",\"name\":\"Blog Home Articles\",\"article_limit\":\"3\",\"show_readmore\":\"1\",\"show_date\":\"1\",\"show_author\":\"1\",\"show_comments\":\"0\",\"show_image\":\"1\",\"image_width\":\"1170\",\"image_height\":\"780\",\"description_limit\":\"150\",\"category_id\":\"2\"}'),
(103, 'TM Megamenu', 'tm_megamenu', '{\"name\":\"TM Megamenu\",\"status\":\"1\",\"menu_item\":[{\"type\":\"0\",\"1\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"1\",\"columns\":\"3\",\"columns-per-row\":\"3\",\"image\":\"\",\"image_width\":\"230\",\"image_height\":\"230\",\"column\":[{\"width\":\"33%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"103\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"33%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"33%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"}]},{\"type\":\"0\",\"1\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"1\",\"columns\":\"3\",\"columns-per-row\":\"1\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"column\":[{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"}]},{\"type\":\"0\",\"1\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"1\",\"columns\":\"3\",\"columns-per-row\":\"1\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"column\":[{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"}]},{\"type\":\"0\",\"1\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"1\",\"columns\":\"3\",\"columns-per-row\":\"1\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"column\":[{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"}]},{\"type\":\"0\",\"1\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"1\",\"columns\":\"3\",\"columns-per-row\":\"1\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"column\":[{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"}]},{\"type\":\"0\",\"1\":{\"title\":\"\"},\"link\":\"\",\"submenu_show\":\"0\",\"submenu_type\":\"1\",\"columns\":\"3\",\"columns-per-row\":\"1\",\"image\":\"\",\"image_width\":\"\",\"image_height\":\"\",\"column\":[{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"10\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"30%\",\"content\":\"4\",\"limit\":\"0\",\"prod_limit\":\"10\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"},{\"width\":\"30%\",\"content\":\"3\",\"limit\":\"10\",\"prod_limit\":\"0\",\"module_id\":\"33\",\"category_id\":\"44\",\"category_show\":\"0\"}]}]}'),
(104, 'TM Newsletter', 'tm_newsletter', '{\"name\":\"TM Newsletter\",\"status\":\"1\",\"tm_newsletter_description\":{\"1\":{\"description\":\"Subscribe to the Tires list to receive updates on new arrivals,  special offers \\r\\nand other discount information.\"},\"2\":{\"description\":\"Subscribe to the Tires list to receive updates on new arrivals,  special offers \\r\\nand other discount information.\"},\"3\":{\"description\":\"Subscribe to the Tires list to receive updates on new arrivals,  special offers \\r\\nand other discount information.\"}}}'),
(108, 'TM Newsletter Popup', 'tm_newsletter_popup', '{\"name\":\"TM Newsletter Popup\",\"newsletter_popup_bg\":\"\",\"newsletter_popup_bg_width\":\"\",\"newsletter_popup_bg_height\":\"\",\"newsletter_popup_cookie\":\"60\",\"tm_newsletter_popup_description\":{\"1\":{\"title\":\"Newsletter\",\"description\":\"Subscribe to the Tires list to receive updates on new arrivals,  special offers \\r\\nand other discount information.\"},\"2\":{\"title\":\"Newsletter\",\"description\":\"Subscribe to the Tires list to receive updates on new arrivals,  special offers \\r\\nand other discount information.\"},\"3\":{\"title\":\"Newsletter\",\"description\":\"Subscribe to the Tires list to receive updates on new arrivals,  special offers \\r\\nand other discount information.\"}},\"status\":\"1\"}'),
(112, 'Order Specification', 'html', '{\"name\":\"Order Specification\",\"module_description\":{\"1\":{\"title\":\"Order Specification\",\"description\":\"&lt;style&gt;.Order.Specification{background: #fafafa;    padding: 10px;    margin: 0 auto;}.Order.Specification .flex-list div{background: rgba(17, 17, 17, 0.58);    color: #eee;    padding: 5px;    font-size: 14px;}.Order.Specification .flex-list{background: #fff; margin-bottom: 0;}.Order.Specification .dispatch{background-image: url(image\\/catalog\\/OrderSpecification\\/delivery.jpg);background-size: 100% 100%;    background-repeat: no-repeat;}.Order.Specification .checking{background-image: url(image\\/catalog\\/checking.jpg);background-size: 100% 100%;    background-repeat: no-repeat;}.Order.Specification .min-order{background-image: url(image\\/catalog\\/min-order.jpg);background-size: 100% 100%;    background-repeat: no-repeat;}&lt;\\/style&gt;&lt;ul class=&quot;flex-list&quot;&gt;\\t&lt;li class=&quot;dispatch&quot;&gt;\\t\\t\\t\\t\\t&lt;div&gt;Dispatch within 24 hours&lt;br&gt;On Printing &amp;amp; Embroidery&lt;\\/div&gt;\\t\\t\\t&lt;\\/li&gt;\\t&lt;li class=&quot;min-order&quot;&gt;\\t\\t\\t\\t\\t&lt;div&gt;No Minimum order&lt;br&gt;Order From 100 to 50000+&lt;\\/div&gt;\\t\\t\\t&lt;\\/li&gt;\\t&lt;li class=&quot;checking&quot;&gt;\\t\\t\\t\\t\\t&lt;div&gt;Every Order Checked&lt;br&gt;By Our Expert Team&lt;\\/div&gt;\\t\\t\\t&lt;\\/li&gt;&lt;\\/ul&gt;\"}},\"status\":\"1\"}'),
(120, 'featured', 'featured', '{\"name\":\"featured\",\"product\":[\"82\",\"63\",\"68\",\"183\",\"79\",\"89\",\"74\"],\"limit\":\"10\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(121, 'featured', 'tm_single_category_product', '{\"name\":\"featured\",\"path\":\"Special \",\"category\":\"69\",\"tabs\":\"1\",\"type\":\"3\",\"special\":\"0\",\"bestseller\":\"0\",\"latest\":\"0\",\"featured\":\"1\",\"product\":[\"82\",\"86\",\"79\",\"126\",\"128\",\"130\",\"131\",\"60\"],\"limit\":\"20\",\"width\":\"337\",\"height\":\"337\",\"status\":\"1\"}'),
(124, 'homepage category grid', 'html', '{\"name\":\"homepage category grid\",\"module_description\":{\"1\":{\"title\":\"workout essentials\",\"description\":\"&lt;style&gt;.multipearls-grid-container table{  max-width: 768px !important;  margin: 0 auto;}.multipearls-grid-container td{position: relative;    border: 0 !important;    width: 384px;    padding: 0!important;}.multipearls-grid-container .table&gt;tbody&gt;tr&gt;td img{  width: 100%;  height: 300px;}.multipearls-grid-container table span{    color: #fff;    font-size: 20px;    position: absolute;    top: 50%;    transform: translate(-100%,-54%);    white-space: nowrap;    background: rgba(18, 17, 17, 0.6);    padding: 0 10px;    letter-spacing: 1px;    display: block;    width: 0;    text-align: center;    transition: 0.5s;    opacity: 0;}.multipearls-grid-container span.even{left: 100%;}.multipearls-grid-container span.odd{left: 0;}.multipearls-grid-container td:hover span.odd{left: 55%;}.multipearls-grid-container td:hover span{    width: 55%;    opacity: 1;    -webkit-animation: slide 0.5s forwards;    -webkit-animation-delay: 0.5s;    animation: slide 0.5s forwards;    animation-delay: 0.5s;}&lt;\\/style&gt;&lt;div class=&quot;multipearls-grid-container&quot;&gt;&lt;h3&gt;EXPLORE OUR TOP CATEGORIES&lt;\\/h3&gt;&lt;table class=&quot;table&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;http:\\/\\/localhost\\/multipearls\\/image\\/catalog\\/homepage category grid\\/011.jpg&quot;&gt;&lt;span class=&quot;odd&quot;&gt;Men\'s Shoes&lt;\\/span&gt;&lt;\\/td&gt;&lt;td&gt;&lt;img src=&quot;http:\\/\\/localhost\\/multipearls\\/image\\/catalog\\/homepage category grid\\/013.jpg&quot;&gt;&lt;span class=&quot;even&quot;&gt;Bags&lt;\\/span&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;tr&gt;&lt;td&gt;&lt;img src=&quot;http:\\/\\/localhost\\/multipearls\\/image\\/catalog\\/jackets.jpeg&quot;&gt;&lt;span class=&quot;odd&quot;&gt;Leather Jackets&lt;\\/span&gt;&lt;\\/td&gt;&lt;td&gt;&lt;img src=&quot;http:\\/\\/localhost\\/multipearls\\/image\\/catalog\\/dims.jpeg&quot;&gt;&lt;span class=&quot;even&quot;&gt;Workout Necessities&lt;\\/span&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/tbody&gt;&lt;\\/table&gt;&lt;\\/div&gt;\"}},\"status\":\"1\"}'),
(127, 'All Categories Column Layout', 'html', '{\"name\":\"All Categories Column Layout\",\"module_description\":{\"1\":{\"title\":\"categories-in-columns\",\"description\":\"&lt;style&gt;.categories-in-columns .table{    border-collapse: separate;    border-spacing: 10px;    table-layout: fixed;}.categories-in-columns td {   position:relative; text-transform: uppercase; height: 400px;    border: 2px solid rgba(174, 174, 174, 0.1); padding: 0 !important;} .categories-in-columns td h2{font-size: 18px; position: absolute;bottom: -20px; margin: 0;transform: translate(-50%,-50%); left: 50%;}.categories-in-columns .men{    background-image: url(image\\/catalog\\/categories-in-columns\\/men_clothing.jpg);    background-size: cover;    background-position: center;}.categories-in-columns .women{    background-image: url(image\\/catalog\\/categories-in-columns\\/4139.jpg);    background-size: cover;    background-position: center;}.categories-in-columns .baby{    background-image: url(image\\/catalog\\/categories-in-columns\\/Baby_clothing.jpg);    background-size: cover;    background-position: center;}.categories-in-columns .kids{    background-image: url(image\\/catalog\\/categories-in-columns\\/kids_clothing.jpg);    background-size: cover;    background-position: center;} .categories-in-columns td span{background: #fff; padding: 5px 20px;}&lt;\\/style&gt;&lt;table class=&quot;table&quot;&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td style=&quot;text-align: center;&quot; class=&quot;women&quot;&gt;&lt;h2&gt;&lt;span style=&quot;border: 3px solid rgb(255, 0, 0); text-decoration-line: underline;&quot;&gt;Women&lt;\\/span&gt;&lt;\\/h2&gt;&lt;\\/td&gt;&lt;td style=&quot;text-align: center;&quot; class=&quot;men&quot;&gt;&lt;h2&gt;&lt;span style=&quot;border: 3px solid rgb(0, 255, 0); text-decoration-line: underline;&quot;&gt;Men&lt;\\/span&gt;&lt;\\/h2&gt;&lt;\\/td&gt;&lt;td style=&quot;text-align: center;&quot; class=&quot;kids&quot;&gt;&lt;h2&gt;&lt;span style=&quot;border: 3px solid rgb(156, 0, 255); text-decoration-line: underline;&quot;&gt;Kids&lt;\\/span&gt;&lt;\\/h2&gt;&lt;\\/td&gt;&lt;td style=&quot;text-align: center;&quot; class=&quot;baby&quot;&gt;&lt;h2&gt;&lt;span style=&quot;border: 3px solid rgb(0, 255, 255); text-decoration-line: underline;&quot;&gt;baby&lt;\\/span&gt;&lt;\\/h2&gt;&lt;\\/td&gt;&lt;\\/tr&gt;&lt;\\/tbody&gt;&lt;\\/table&gt;\"}},\"status\":\"1\"}'),
(129, 'latest', 'tm_single_category_product', '{\"name\":\"latest\",\"path\":\"Special \",\"category\":\"69\",\"tabs\":\"1\",\"type\":\"2\",\"special\":\"0\",\"bestseller\":\"0\",\"latest\":\"1\",\"featured\":\"0\",\"product\":\"\",\"limit\":\"20\",\"width\":\"337\",\"height\":\"337\",\"status\":\"1\"}'),
(133, 'special', 'tm_single_category_product', '{\"name\":\"special\",\"path\":\"Special \",\"category\":\"69\",\"tabs\":\"1\",\"type\":\"3\",\"special\":\"1\",\"bestseller\":\"0\",\"latest\":\"0\",\"featured\":\"0\",\"product\":\"\",\"limit\":\"20\",\"width\":\"337\",\"height\":\"337\",\"status\":\"1\"}'),
(134, 'best seller', 'tm_single_category_product', '{\"name\":\"best seller\",\"path\":\"Special \",\"category\":\"69\",\"tabs\":\"1\",\"type\":\"3\",\"special\":\"0\",\"bestseller\":\"1\",\"latest\":\"0\",\"featured\":\"0\",\"product\":\"\",\"limit\":\"20\",\"width\":\"337\",\"height\":\"337\",\"status\":\"1\"}'),
(135, 'ALL OFFER', 'tm_module_tab', '{\"name\":\"ALL OFFER\",\"special\":\"1\",\"bestseller\":\"1\",\"latest\":\"1\",\"featured\":\"1\",\"product\":[\"82\",\"86\",\"91\",\"61\",\"74\"],\"limit\":\"25\",\"width\":\"200\",\"height\":\"200\",\"status\":\"1\"}'),
(137, 'cookies', 'tm_cookie_policy', '{\"name\":\"cookies\",\"status\":\"1\",\"tm_cookie_policy_message\":{\"1\":{\"description\":\"We use cookies to enhance your experience. By continuing to visit this site you agree to our use of cookies.\"}}}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 11),
(7, 'file', 10),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 7),
(12, 'date', 11),
(13, 'image', 6);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(5, 1, 'Select'),
(6, 1, 'Textarea'),
(7, 1, 'File'),
(8, 1, 'Date'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(11, 1, 'Size'),
(12, 1, 'Delivery Date'),
(13, 1, 'Color');

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(23, 2, '', 1),
(24, 2, '', 2),
(31, 1, '', 2),
(32, 1, '', 1),
(39, 5, '', 1),
(40, 5, '', 2),
(41, 5, '', 3),
(42, 5, '', 4),
(43, 1, '', 3),
(44, 2, '', 3),
(45, 2, '', 4),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3),
(49, 13, 'catalog/red.png', 2),
(52, 13, 'catalog/calendar-icon-solid-black.png', 0),
(53, 13, 'catalog/white.png', 1),
(54, 11, '', 4),
(55, 11, '', 5),
(56, 11, '', 6),
(57, 11, '', 7);

-- --------------------------------------------------------

--
-- Table structure for table `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(31, 1, 1, 'Medium'),
(32, 1, 1, 'Small'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(41, 1, 5, 'Green'),
(42, 1, 5, 'Yellow'),
(43, 1, 1, 'Large'),
(44, 1, 2, 'Checkbox 3'),
(45, 1, 2, 'Checkbox 4'),
(46, 1, 11, 'XS'),
(47, 1, 11, 'S'),
(48, 1, 11, 'M'),
(49, 1, 13, 'red'),
(52, 1, 13, 'black'),
(53, 1, 13, 'white'),
(54, 1, 11, 'L'),
(55, 1, 11, 'XL'),
(56, 1, 11, '2XL'),
(57, 1, 11, '3XlL');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(2, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 5, 1, 'wholesaler', 'test', 'shahzeensk@rediffmail.com', '8898751072', '', '{\"1\":\"12345678\"}', 'wholesaler', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"4CNPE\"}', 'Credit Card / Debit Card (SagePay)', 'sagepay_direct', 'wholesaler', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"4CNPE\"}', 'Flat Shipping Rate', 'flat.flat', '', '599.0000', 0, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'en-US,en;q=0.9', '2018-11-11 17:43:46', '2018-11-11 17:43:46'),
(3, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 6, 2, 'normal', 'test', 'test@test.com', '8898751072', '', '{\"1\":\"\"}', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Cash On Delivery', 'cod', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Flat Shipping Rate', 'flat.flat', '', '20046.0000', 15, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'en-US,en;q=0.9', '2018-11-11 19:47:59', '2018-11-11 19:59:57'),
(4, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 6, 2, 'normal', 'test', 'test@test.com', '8898751072', '', '', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Cash On Delivery', 'cod', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Pickup From Store', 'pickup.pickup', '', '40000.0000', 0, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'en-US,en;q=0.9', '2018-11-11 21:06:14', '2018-11-11 21:06:14'),
(5, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 6, 2, 'normal', 'test', 'test@test.com', '8898751072', '', '', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Cash On Delivery', 'cod', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Maharashtra  (Weight: 25.00kg)', 'weight.weight_6', 'fddgfdgfdgfdggg', '40200.0000', 5, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'en-US,en;q=0.9', '2018-11-11 21:06:32', '2018-11-11 21:06:47'),
(6, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 6, 2, 'normal', 'test', 'test@test.com', '8898751072', '', '', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Cheque / Money Order', 'cheque', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Maharashtra  (Weight: 0.25kg)', 'weight.weight_6', '', '525.0000', 2, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'en-US,en;q=0.9', '2018-11-11 21:27:21', '2018-11-11 21:28:17'),
(7, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 6, 2, 'normal', 'test', 'test@test.com', '8898751072', '', '', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Cash On Delivery', 'cod', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Maharashtra  (Weight: 0.25kg)', 'weight.weight_6', '', '525.0000', 15, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'en-US,en;q=0.9', '2018-11-11 22:02:53', '2018-11-11 22:03:03'),
(8, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 6, 2, 'normal', 'test', 'test@test.com', '8898751072', '', '', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Cheque / Money Order', 'cheque', 'normal', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"\"}', 'Pickup From Store', 'pickup.pickup', '', '78750.0000', 2, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.77 Safari/537.36', 'en-US,en;q=0.9', '2018-11-11 22:25:06', '2018-11-11 22:25:21'),
(9, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 5, 1, 'wholesaler', 'test', 'shahzeensk@rediffmail.com', '8898751072', '', '{\"1\":\"12345678\"}', 'wholesaler', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"4CNPE\"}', 'Cheque / Money Order', 'cheque', 'wholesaler', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"4CNPE\"}', 'Maharashtra  (Weight: 0.00kg)', 'weight.weight_6', '', '7560.0000', 0, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', 'en-US,en;q=0.9,hi;q=0.8', '2018-11-20 22:02:43', '2018-11-20 22:02:43'),
(10, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 5, 1, 'wholesaler', 'test', 'shahzeensk@rediffmail.com', '8898751072', '', '{\"1\":\"12345678\"}', 'wholesaler', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"4CNPE\"}', 'Cheque / Money Order', 'cheque', 'wholesaler', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"4CNPE\"}', 'Maharashtra  (Weight: 2.00kg)', 'weight.weight_6', '', '2625.0000', 2, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', 'en-US,en;q=0.9,hi;q=0.8', '2018-11-26 11:17:15', '2018-11-26 11:17:19'),
(11, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 5, 1, 'wholesaler', 'test', 'shahzeensk@rediffmail.com', '8898751072', '', '{\"1\":\"12345678\"}', 'wholesaler', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"4CNPE\"}', 'Cheque / Money Order', 'cheque', 'wholesaler', 'test', '', '603/aditya darshan chs ltd,haidri chowk,naya nagar,mira road east', '', 'Mumbai', '401107', 'India', 99, 'Maharashtra', 1493, '', '{\"3\":\"4CNPE\"}', 'Maharashtra  (Weight: 0.00kg)', 'weight.weight_6', '', '7560.0000', 2, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', 'en-US,en;q=0.9,hi;q=0.8', '2018-11-26 11:22:11', '2018-11-26 11:22:14'),
(12, 0, 'INV-2018-20', 0, 'Multipearls Traders ', 'http://localhost/multipearls/', 0, 2, 'Shaikh', 'Ali', 'surelockrich@gmail.com', '+917666009599', '7666009599', '{\"1\":\"27AACCDDTEST2516\"}', 'Shaikh', 'Ali', 'surelockrich@gmail.com', '103/A Wing 1st Floor Nagree Apartment Co-operative Housing Society', '', 'Mumbai', '400017', 'India', 99, 'Arunachal Pradesh', 1477, '', '{\"3\":\"\"}', 'Cash On Delivery', 'cod', 'Shaikh', 'Ali', 'surelockrich@gmail.com', '103/A Wing 1st Floor Nagree Apartment Co-operative Housing Society', '', 'Mumbai', '400017', 'India', 99, 'Arunachal Pradesh', 1477, '', '{\"3\":\"\"}', 'Pickup From Store', 'pickup.pickup', '', '420.0000', 15, 0, '0.0000', 0, '', 1, 5, 'INR', '1.00000000', '::1', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36', 'en-US,en;q=0.9,hi;q=0.8', '2018-11-26 11:28:20', '2018-11-26 11:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(3, 3, 7, 0, '', '2018-11-11 19:48:05'),
(4, 3, 0, 0, '', '2018-11-11 19:59:32'),
(5, 3, 7, 0, '', '2018-11-11 19:59:32'),
(6, 3, 0, 0, '', '2018-11-11 19:59:40'),
(7, 3, 7, 0, '', '2018-11-11 19:59:40'),
(8, 3, 0, 0, '', '2018-11-11 19:59:57'),
(9, 3, 15, 0, '', '2018-11-11 19:59:57'),
(10, 5, 5, 0, '', '2018-11-11 21:06:47'),
(11, 6, 2, 1, 'Make Payable To: \nMULTIPEARLS TRADERS &amp; IT SOLUTIONS LLP\n\nSend To: \n103/A Wing 1st Floor Nagree Apartment Co-operative Housing Society\n\nYour order will not ship until we receive payment.\n', '2018-11-11 21:28:17'),
(12, 7, 15, 0, '', '2018-11-11 22:03:03'),
(13, 8, 2, 1, 'Make Payable To: \nMULTIPEARLS TRADERS &amp; IT SOLUTIONS LLP\n\nSend To: \n103/A Wing 1st Floor Nagree Apartment Co-operative Housing Society\n\nYour order will not ship until we receive payment.\n', '2018-11-11 22:25:21'),
(14, 10, 2, 1, 'Make Payable To: \nMULTIPEARLS TRADERS &amp; IT SOLUTIONS LLP\n\nSend To: \n103/A Wing 1st Floor Nagree Apartment Co-operative Housing Society\n\nYour order will not ship until we receive payment.\n', '2018-11-26 11:17:19'),
(15, 11, 2, 1, 'Make Payable To: \nMULTIPEARLS TRADERS &amp; IT SOLUTIONS LLP\n\nSend To: \n103/A Wing 1st Floor Nagree Apartment Co-operative Housing Society\n\nYour order will not ship until we receive payment.\n', '2018-11-26 11:22:14'),
(16, 12, 15, 0, '', '2018-11-26 11:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(3, 2, 3, 130, 476, 'Size', 'Small', 'select'),
(4, 2, 4, 143, 541, 'Size', 'Small', 'select'),
(11, 3, 11, 1, 2, 'Size', 'Medium', 'select'),
(12, 3, 12, 130, 477, 'Size', 'Medium', 'select'),
(13, 6, 15, 162, 636, 'Color', 'red', 'image'),
(14, 7, 16, 162, 636, 'Color', 'red', 'image'),
(15, 8, 17, 162, 638, 'Color', 'white', 'image'),
(16, 9, 18, 56, 109, 'Size', 'S', 'select'),
(17, 11, 20, 56, 109, 'Size', 'S', 'select');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(2, 2, 82, 'Electro  Black full Sleeves Jersey with ( Neon Matching ) ', 'JF29MM1920', 1, '400.0000', '400.0000', '0.0000', 0),
(3, 2, 158, 'Electro V-Cum Colar Melange T-shirts', 'JS107MM1920', 1, '99.0000', '99.0000', '0.0000', 0),
(4, 2, 171, 'Electro Plain Round Neck T-shirt', 'N123MM1920', 1, '95.0000', '95.0000', '0.0000', 0),
(11, 3, 28, 'Electro Tri Colour Jersey With Collar', 'JS01MM1920', 1, '142.0000', '142.0000', '0.0000', 0),
(12, 3, 158, 'Electro V-Cum Colar Melange T-shirts', 'JS107MM1920', 201, '99.0000', '19899.0000', '0.0000', 0),
(13, 4, 82, 'Electro  Black full Sleeves Jersey with ( Neon Matching ) ', 'JF29MM1920', 100, '400.0000', '40000.0000', '0.0000', 0),
(14, 5, 82, 'Electro  Black full Sleeves Jersey with ( Neon Matching ) ', 'JF29MM1920', 100, '400.0000', '40000.0000', '0.0000', 0),
(15, 6, 82, 'Electro  Black full Sleeves Jersey with ( Neon Matching ) ', 'JF29MM1920', 1, '400.0000', '400.0000', '20.0000', 0),
(16, 7, 82, 'Electro  Black full Sleeves Jersey with ( Neon Matching ) ', 'JF29MM1920', 1, '400.0000', '400.0000', '20.0000', 0),
(17, 8, 82, 'Electro  Black full Sleeves Jersey with ( Neon Matching ) ', 'JF29MM1920', 500, '150.0000', '75000.0000', '7.5000', 0),
(18, 9, 55, 'Electro Sports Black With (Neon Pattern) Jersey', 'JS02MM1920', 50, '142.0000', '7100.0000', '7.1000', 0),
(19, 10, 82, 'Electro Sports  Black full Sleeves Jersey with ( Neon Matching ) ', 'JF29MM1920', 8, '300.0000', '2400.0000', '15.0000', 0),
(20, 11, 55, 'Electro Sports Black With (Neon Pattern) Jersey', 'JS02MM1920', 50, '142.0000', '7100.0000', '7.1000', 0),
(21, 12, 82, 'Electro Sports  Black full Sleeves Jersey with ( Neon Matching ) ', 'JF29MM1920', 1, '400.0000', '400.0000', '20.0000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_shipment`
--

CREATE TABLE `oc_order_shipment` (
  `order_shipment_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `shipping_courier_id` varchar(255) NOT NULL DEFAULT '',
  `tracking_number` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(5, 1, 'Complete'),
(7, 1, 'Canceled'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(14, 1, 'Expired'),
(15, 1, 'Processed'),
(16, 1, 'Voided'),
(17, 1, 'Fraud'),
(18, 1, 'Fraud Review');

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(5, 2, 'sub_total', 'Sub-Total', '245.0000', 1),
(6, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(7, 2, 'tax', 'Eco Tax (-2.00)', '6.0000', 5),
(8, 2, 'tax', 'VAT (20%)', '50.0000', 5),
(9, 2, 'total', 'Total', '306.0000', 9),
(20, 2, 'sub_total', 'Sub-Total', '594.0000', 1),
(21, 2, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(22, 2, 'total', 'Total', '599.0000', 9),
(32, 3, 'sub_total', 'Sub-Total', '20041.0000', 1),
(33, 3, 'shipping', 'Flat Shipping Rate', '5.0000', 3),
(34, 3, 'total', 'Total', '20046.0000', 9),
(35, 4, 'sub_total', 'Sub-Total', '40000.0000', 1),
(36, 4, 'shipping', 'Pickup From Store', '0.0000', 3),
(37, 4, 'total', 'Total', '40000.0000', 9),
(38, 5, 'sub_total', 'Sub-Total', '40000.0000', 1),
(39, 5, 'shipping', 'Maharashtra  (Weight: 25.00kg)', '200.0000', 3),
(40, 5, 'total', 'Total', '40200.0000', 9),
(41, 6, 'sub_total', 'Sub-Total', '400.0000', 1),
(42, 6, 'shipping', 'Maharashtra  (Weight: 0.25kg)', '100.0000', 3),
(43, 6, 'tax', 'GST (5%)', '25.0000', 5),
(44, 6, 'total', 'Total', '525.0000', 9),
(45, 7, 'sub_total', 'Sub-Total', '400.0000', 1),
(46, 7, 'shipping', 'Maharashtra  (Weight: 0.25kg)', '100.0000', 3),
(47, 7, 'tax', 'GST (5%)', '25.0000', 5),
(48, 7, 'total', 'Total', '525.0000', 9),
(49, 8, 'sub_total', 'Sub-Total', '75000.0000', 1),
(50, 8, 'shipping', 'Pickup From Store', '0.0000', 3),
(51, 8, 'tax', 'GST (5%)', '3750.0000', 5),
(52, 8, 'total', 'Total', '78750.0000', 9),
(53, 9, 'sub_total', 'Sub-Total', '7100.0000', 1),
(54, 9, 'shipping', 'Maharashtra  (Weight: 0.00kg)', '100.0000', 3),
(55, 9, 'tax', 'GST (5%)', '360.0000', 5),
(56, 9, 'total', 'Total', '7560.0000', 9),
(57, 10, 'sub_total', 'Sub-Total', '2400.0000', 1),
(58, 10, 'shipping', 'Maharashtra  (Weight: 2.00kg)', '100.0000', 3),
(59, 10, 'tax', 'GST (5%)', '125.0000', 5),
(60, 10, 'total', 'Total', '2625.0000', 9),
(61, 11, 'sub_total', 'Sub-Total', '7100.0000', 1),
(62, 11, 'shipping', 'Maharashtra  (Weight: 0.00kg)', '100.0000', 3),
(63, 11, 'tax', 'GST (5%)', '360.0000', 5),
(64, 11, 'total', 'Total', '7560.0000', 9),
(65, 12, 'sub_total', 'Sub-Total', '400.0000', 1),
(66, 12, 'shipping', 'Pickup From Store', '0.0000', 3),
(67, 12, 'tax', 'GST (5%)', '20.0000', 5),
(68, 12, 'total', 'Total', '420.0000', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(28, 'JS01MM1920', 'JS01-WH', '', '', '', '', '', 'India', 3000, 7, 'catalog/JS-01.jpg', 11, 1, '142.0000', 0, 9, '2018-01-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 0, 1, 1, 100, '2009-02-03 16:06:50', '2018-11-20 12:47:08'),
(55, 'JS02MM1920', 'JS02-BK', '', '', '', '', '', 'India', 2950, 7, 'catalog/JS-02.jpg', 11, 1, '142.0000', 0, 9, '2018-01-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 50, 2, 1, 11, '2018-09-20 11:49:52', '2018-11-04 11:58:24'),
(56, 'JS03MM1920', 'JS03-PK', '', '', '', '', '', 'India', 3000, 7, 'catalog/01-JS/JS-03.jpg', 11, 1, '142.0000', 0, 9, '2018-01-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 0, 3, 1, 11, '2018-09-20 12:04:07', '2018-11-04 14:45:20'),
(57, 'JS04MM1920', 'JS04-YEL', '', '', '', '', '', 'India', 3000, 7, 'catalog/01-JS/JS-04.jpg', 11, 1, '142.0000', 0, 9, '2018-01-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 0, 4, 1, 5, '2018-09-20 12:06:55', '2018-11-04 15:49:40'),
(58, 'JS05MM1920', 'JS05-RB', '', '', '', '', '', 'India', 3000, 7, 'catalog/01-JS/JS-05.jpg', 11, 1, '142.0000', 0, 9, '2018-01-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 0, 5, 1, 1, '2018-09-20 12:16:46', '2018-11-04 15:10:24'),
(59, 'JS06MM1920', 'JS06-WHSB', '', '', '', '', '', 'India', 3000, 7, 'catalog/01-JS/JS-06.jpg', 11, 1, '142.0000', 0, 9, '2018-01-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 0, 6, 1, 2, '2018-09-20 12:20:03', '2018-11-04 15:37:33'),
(60, 'JS07MM1920', 'JS07-NB', '', '', '', '', '', 'India', 3000, 7, 'catalog/01-JS/JS-07.jpg', 11, 1, '142.0000', 0, 9, '2018-01-01', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 0, 7, 1, 6, '2018-09-20 13:46:08', '2018-11-04 14:24:39'),
(61, 'JS08MM1920', 'JS08-BK', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-08.jpg', 11, 1, '142.0000', 0, 9, '2018-09-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 50, 8, 1, 6, '2018-09-22 09:01:33', '2018-11-04 11:54:33'),
(62, 'JS09MM1920', 'JS09-WH', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-09.jpg', 11, 1, '142.0000', 0, 0, '2018-09-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 9, 1, 1, '2018-09-22 09:06:01', '2018-11-04 15:48:27'),
(63, 'JS10MM1920', 'JS10-YEL', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-10.jpg', 11, 1, '142.0000', 0, 9, '2018-09-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 10, 1, 4, '2018-09-22 09:09:42', '2018-11-04 15:49:32'),
(64, 'JS11MM1920', 'JS11-NB', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-11.jpg', 11, 1, '142.0000', 0, 9, '2018-09-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 11, 1, 1, '2018-09-22 09:13:46', '2018-11-04 14:44:17'),
(65, 'JS12MM1920', 'JS12-WH', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-12.jpg', 11, 1, '142.0000', 0, 9, '2018-09-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 12, 1, 0, '2018-09-22 09:26:14', '2018-11-04 15:48:44'),
(66, 'JS13MM1920', 'JS13-OR', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-13.jpg', 11, 1, '142.0000', 0, 9, '2018-09-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 13, 1, 2, '2018-09-22 09:28:52', '2018-11-04 14:44:42'),
(67, 'JS14MM1920', 'JS14-RB', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-14.jpg', 11, 1, '142.0000', 0, 9, '2018-09-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 14, 1, 4, '2018-09-22 09:32:24', '2018-11-04 15:36:59'),
(68, 'JS15MM1920', 'JS15-RD', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-15.jpg', 11, 1, '142.0000', 0, 9, '2018-09-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 15, 1, 3, '2018-09-22 09:35:18', '2018-11-04 15:09:57'),
(69, 'JS16MM1920', 'JS16-SKYB', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-16.jpg', 11, 1, '142.0000', 0, 9, '2018-09-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 16, 1, 1, '2018-09-22 09:39:16', '2018-11-04 12:03:09'),
(70, 'JS17MM1920', 'JS17-BK', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-17.jpg', 11, 1, '142.0000', 0, 9, '2018-09-22', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 17, 1, 3, '2018-09-22 09:48:57', '2018-11-04 12:02:55'),
(71, 'JS18MM1920', 'JS18-WH', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-18.jpg', 11, 1, '142.0000', 0, 9, '2018-09-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 18, 1, 1, '2018-09-23 21:31:57', '2018-11-04 15:48:36'),
(72, 'JS19MM1920', 'JS19-SKYB', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-19.jpg', 11, 1, '142.0000', 0, 9, '2018-09-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 19, 1, 0, '2018-09-23 21:35:02', '2018-11-04 15:37:09'),
(73, 'JS20MM1920', 'JS20-BKSB', '', '', '', '', '', 'India', 3000, 6, 'catalog/01-JS/JS-20.jpg', 11, 1, '152.0000', 0, 9, '2018-09-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 50, 20, 1, 3, '2018-09-23 21:38:11', '2018-11-04 11:54:55'),
(74, 'NN21MM1920', 'NN21-WH', '', '', '', '', '', 'India', 3000, 6, 'catalog/02-NN/NN-21.jpg', 11, 1, '154.0000', 0, 9, '2018-09-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 50, 21, 1, 4, '2018-09-23 21:59:58', '2018-11-24 12:05:50'),
(75, 'NN22MM1920', 'NN22-WH', '', '', '', '', '', 'India', 3000, 6, 'catalog/02-NN/NN-22.jpg', 11, 1, '175.0000', 0, 9, '2018-09-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 22, 1, 2, '2018-09-23 22:03:32', '2018-11-04 15:48:53'),
(76, 'NN23MM1920', 'NN23-NB', '', '', '', '', '', 'India', 3000, 6, 'catalog/02-NN/NN-23.jpg', 11, 1, '175.0000', 0, 9, '2018-09-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 23, 1, 1, '2018-09-23 22:10:12', '2018-11-04 14:44:26'),
(77, 'NN24MM1920', 'NN24-OR', '', '', '', '', '', 'India', 3000, 6, 'catalog/02-NN/NN-24.jpg', 11, 1, '175.0000', 0, 9, '2018-09-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 24, 1, 5, '2018-09-23 22:15:46', '2018-11-04 14:45:09'),
(78, 'NN25MM1920', 'NN25-RB', '', '', '', '', '', 'India', 3000, 6, 'catalog/02-NN/NN-25.jpg', 11, 1, '175.0000', 0, 0, '2018-09-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 24, 1, 1, '2018-09-23 22:20:27', '2018-11-04 15:10:08'),
(79, 'NN26MM1920', 'NN26-BK', '', '', '', '', '', 'India', 3000, 6, 'catalog/02-NN/NN-26.jpg', 11, 1, '175.0000', 0, 9, '2018-09-23', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 50, 26, 1, 6, '2018-09-23 22:26:24', '2018-11-04 11:55:15');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(28, 12, 1, 'Text 01'),
(28, 13, 1, 'Text 02');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(28, 1, ' Electro Sports Tri Colour Jersey With Collar', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;477&quot; style=&quot;width: 358pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;320&quot; style=&quot;height:240.0pt&quot;&gt;  &lt;td height=&quot;320&quot; class=&quot;xl63&quot; width=&quot;477&quot; style=&quot;height:240.0pt;width:358pt&quot;&gt;&lt;p&gt;Get  this Tri Colour Jersey from Electro Sports.Electro Sports&amp;nbsp;  Proudly Presents This Tshirt Made Out Of The &lt;b&gt;Super Light Polyester  Fabric&lt;/b&gt;. This Fabric Transports Moisture Away From The Body, Keeping You Cool  And Dry. Quick Dry Out and moisture management of the fabric offers coolness  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for  all kinds of indoor and outdoor sports activities like Cricket, Running,  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Fabric&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :  Polyester(100%)&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Sleeve&lt;/span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand  Sleeve&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Neck&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Sports Round Neck T-shirts Multiple colour', 'Electro Sports Sports Round Neck T-shirts Multiple colour', 'Electro Sports Sports Round Neck T-shirts Multiple colour'),
(55, 1, 'Electro Sports Black With (Neon Pattern) Jersey', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Black With (Neon Pattern) Jersey', 'Electro Sports Black With (Neon Pattern) Jersey\n', 'Electro Sports Black With (Neon Pattern) Jersey\n'),
(56, 1, 'Electro Sports Pink with (Sublimation Patch) Jersey', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;477&quot; style=&quot;width: 358pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;320&quot; style=&quot;height:240.0pt&quot;&gt;  &lt;td height=&quot;320&quot; class=&quot;xl63&quot; width=&quot;477&quot; style=&quot;height:240.0pt;width:358pt&quot;&gt;&lt;p&gt;Get  this Tri Colour Jersey from Electro Sports.Electro Sports&amp;nbsp;  Proudly Presents This Tshirt Made Out Of The &lt;b&gt;Super Light Polyester  Fabric&lt;/b&gt;. This Fabric Transports Moisture Away From The Body, Keeping You Cool  And Dry. Quick Dry Out and moisture management of the fabric offers coolness  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for  all kinds of indoor and outdoor sports activities like Cricket, Running,  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Fabric&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :  Polyester(100%)&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Sleeve&lt;/span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand  Sleeve&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Neck&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Pink with (Sublimation Patch) Jersey', 'Electro Sports Pink with (Sublimation Patch) Jersey\n', 'Electro Sports Pink with (Sublimation Patch) Jersey\n'),
(57, 1, 'Electro Sports Yellow Mix Colour Patch Jersey ', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;477&quot; style=&quot;width: 358pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;320&quot; style=&quot;height:240.0pt&quot;&gt;  &lt;td height=&quot;320&quot; class=&quot;xl63&quot; width=&quot;477&quot; style=&quot;height:240.0pt;width:358pt&quot;&gt;&lt;p&gt;Get  this Tri Colour Jersey from Electro Sports.Electro Sports&amp;nbsp;  Proudly Presents This Tshirt Made Out Of The &lt;b&gt;Super Light Polyester  Fabric&lt;/b&gt;. This Fabric Transports Moisture Away From The Body, Keeping You Cool  And Dry. Quick Dry Out and moisture management of the fabric offers coolness  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for  all kinds of indoor and outdoor sports activities like Cricket, Running,  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Fabric&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :  Polyester(100%)&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Sleeve&lt;/span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand  Sleeve&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Neck&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Yellow Mix Colour Patch Jersey ', 'Electro Sports Yellow Mix Colour Patch Jersey \n', 'Electro Sports Yellow Mix Colour Patch Jersey \n'),
(58, 1, 'Electro Sports Royal Blue Jersey ', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;477&quot; style=&quot;width: 358pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;320&quot; style=&quot;height:240.0pt&quot;&gt;  &lt;td height=&quot;320&quot; class=&quot;xl63&quot; width=&quot;477&quot; style=&quot;height:240.0pt;width:358pt&quot;&gt;&lt;p&gt;Get  this Tri Colour Jersey from Electro Sports.Electro Sports&amp;nbsp;  Proudly Presents This Tshirt Made Out Of The &lt;b&gt;Super Light Polyester  Fabric&lt;/b&gt;. This Fabric Transports Moisture Away From The Body, Keeping You Cool  And Dry. Quick Dry Out and moisture management of the fabric offers coolness  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for  all kinds of indoor and outdoor sports activities like Cricket, Running,  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Fabric&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :  Polyester(100%)&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Sleeve&lt;/span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand  Sleeve&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Neck&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Royal Blue Jersey ', 'Electro Sports Royal Blue Jersey \n', 'Electro Sports Royal Blue Jersey \n'),
(59, 1, 'Electro Sports Tri Colour Jersey With (Sublimation Print)', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;477&quot; style=&quot;width: 358pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;320&quot; style=&quot;height:240.0pt&quot;&gt;  &lt;td height=&quot;320&quot; class=&quot;xl63&quot; width=&quot;477&quot; style=&quot;height:240.0pt;width:358pt&quot;&gt;&lt;p&gt;Get  this Tri Colour Jersey from Electro Sports.Electro Sports&amp;nbsp;  Proudly Presents This Tshirt Made Out Of The &lt;b&gt;Super Light Polyester  Fabric&lt;/b&gt;. This Fabric Transports Moisture Away From The Body, Keeping You Cool  And Dry. Quick Dry Out and moisture management of the fabric offers coolness  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for  all kinds of indoor and outdoor sports activities like Cricket, Running,  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Fabric&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :  Polyester(100%)&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Sleeve&lt;/span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand  Sleeve&lt;br&gt;    &lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;    Neck&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Tri Colour Jersey With (Sublimation Print)', 'Electro Sports Tri Colour Jersey With (Sublimation Print)\n', 'Electro Sports Tri Colour Jersey With (Sublimation Print)\n'),
(60, 1, 'Electro Sports Navy blue  With (Neon Pattern Jersey)', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;477&quot; style=&quot;background-color: rgb(255, 255, 255); width: 358pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;320&quot; style=&quot;height: 240pt;&quot;&gt;&lt;td height=&quot;320&quot; class=&quot;xl63&quot; width=&quot;477&quot; style=&quot;height: 240pt; width: 358pt;&quot;&gt;&lt;p&gt;Get this Tri Colour Jersey from Electro Sports.Electro Sports&amp;nbsp; Proudly Presents This Tshirt Made Out Of The&amp;nbsp;&lt;b&gt;Super Light Polyester Fabric&lt;/b&gt;. This Fabric Transports Moisture Away From The Body, Keeping You Cool And Dry. Quick Dry Out and moisture management of the fabric offers coolness &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for all kinds of indoor and outdoor sports activities like Cricket, Running, Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports, Swimming, Football, Surfing, Volleyball etc&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Fabric&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Polyester(100%)&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Sleeve&lt;/span&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand Sleeve&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Neck&lt;/span&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Navy blue  With (Neon Pattern Jersey)', 'Electro Sports Navy blue  With (Neon Pattern Jersey)\n', 'Electro Sports Navy blue  With (Neon Pattern Jersey)\n'),
(61, 1, 'Electro Sports Black Jersey with ( Neon Matching )', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl63&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Black Jersey with ( Neon Matching )', 'Electro Sports Black Jersey with ( Neon Matching )', 'Electro Sports Black Jersey with ( Neon Matching )'),
(62, 1, 'Electro Sports White Jersey with (Neon Matching Patch)', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports White Jersey with (Neon Matching Patch)', 'Electro Sports White Jersey with (Neon Matching Patch)', 'Electro Sports White Jersey with (Neon Matching Patch)'),
(63, 1, 'Electro Sports Yellow matching Grey Jersey ', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This T-shirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Yellow matching Grey Jersey ', 'Electro Sports Yellow matching Grey Jersey \n', 'Electro Sports Yellow matching Grey Jersey \n'),
(64, 1, 'Electro Sports Navy Blue Jersey (Red &amp; Grey Matching)', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl63&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Navy Blue Jersey (Red &amp; Grey Matching)', 'Electro Sports Navy Blue Jersey (Red &amp; Grey Matching)\n', 'Electro Sports Navy Blue Jersey (Red &amp; Grey Matching)\n'),
(65, 1, 'Electro Sports white with (Light Blue Matching Jersey )', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This T-shirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports white with (Light Blue Matching Jersey )', 'Electro Sports white with (Light Blue Matching Jersey )\n', 'Electro Sports white with (Light Blue Matching Jersey )\n'),
(66, 1, 'Electro Sports Orange and White matching Jersey ', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Orange and White matching Jersey ', 'Electro Sports Orange and White matching Jersey \n', 'Electro Sports Orange and White matching Jersey \n'),
(67, 1, 'Electro Sports Royal Blue with (white &amp; Black Matching )', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This T-shirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Royal Blue with (white &amp; Black Matching )', 'Electro Sports Royal Blue with (white &amp; Black Matching )\n', 'Electro Sports Royal Blue with (white &amp; Black Matching )\n'),
(68, 1, 'Electro Sports Red Colour Jersey with Colour Matching ', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Red Colour Jersey with Colour Matching ', 'Electro Sports Red Colour Jersey with Colour Matching \n', 'Electro Sports Red Colour Jersey with Colour Matching \n'),
(69, 1, 'Electro Sports Dark Sky Blue Colour Jersey ', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Dark Sky Blue Colour Jersey ', 'Electro Sports Dark Sky Blue Colour Jersey \n', 'Electro Sports Dark Sky Blue Colour Jersey \n'),
(70, 1, 'Electro Sports Black with Pink Matching Jersey ', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Black with Pink Matching Jersey ', 'Electro Sports Black with Pink Matching Jersey \n', 'Electro Sports Black with Pink Matching Jersey \n'),
(71, 1, 'Electro Sports white white matching (Orange and Blue Jersey )', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl63&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports white white matching (Orange and Blue Jersey )', 'Electro Sports white white matching (Orange and Blue Jersey )\n', 'Electro Sports white white matching (Orange and Blue Jersey )\n'),
(72, 1, 'Electro Sports Sky blue Jersey with macthing Patches', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This T-shirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Sky blue Jersey with macthing Patches', 'Electro Sports Sky blue Jersey with macthing Patches\n', 'Electro Sports Sky blue Jersey with macthing Patches\n'),
(73, 1, 'Electro Sports Black Jersey with (sublimation Patch)', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Polyester\n  Fabric. This Fabric Transports Moisture Away From The Body, Keeping You Cool\n  And Dry. Quick Dry Out and moisture management of the fabric offers coolness\n  &amp;amp; dryness even in during highest level of sweat.This T shirt is ideal for\n  all kinds of indoor and outdoor sports activities like Cricket, Running,\n  Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water sports,\n  Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; :\n  Polyester(100%)&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand\n  Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Black Jersey with (sublimation Patch)', 'Electro Sports Black Jersey with (sublimation Patch)\n', 'Electro Sports Black Jersey with (sublimation Patch)\n'),
(74, 1, 'Electro Sports  white Tri Pattern Jersey ', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Nirmal Net\n  (NETTED) Fabric. This Fabric Transports Moisture Away From The Body, Keeping\n  You Cool And Dry. Quick Dry Out and moisture management of the fabric offers\n  coolness &amp;amp; dryness even in during highest level of sweat.This T shirt is\n  ideal for all kinds of indoor and outdoor sports activities like Cricket,\n  Running, Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water\n  sports, Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Nirmal Netted&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports  white Tri Pattern Jersey ', 'Electro Sports  white Tri Pattern Jersey \n', 'Electro Sports  white Tri Pattern Jersey \n'),
(75, 1, 'Electro Sports White with matching (Pink &amp; Black Jersey )', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The &lt;span style=&quot;font-weight: bold;&quot;&gt;Super Light Nirmal Net\n  (NETTED) Fabric&lt;/span&gt;. This Fabric Transports Moisture Away From The Body, Keeping\n  You Cool And Dry. Quick Dry Out and moisture management of the fabric offers\n  coolness &amp;amp; dryness even in during highest level of sweat.This T shirt is\n  ideal for all kinds of indoor and outdoor sports activities like Cricket,\n  Running, Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water\n  sports, Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : &lt;span style=&quot;font-weight: bold;&quot;&gt;Nirmal Netted&lt;/span&gt;&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; : Short Hand Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports White with matching (Pink &amp; Black Jersey )', 'Electro Sports White with matching (Pink &amp; Black Jersey )\n', 'Electro Sports White with matching (Pink &amp; Black Jersey )\n'),
(76, 1, 'Electro Sports Navy Blue Jersey Matching (red &amp; white)', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The Super Light Nirmal Net\n  (NETTED) Fabric. This Fabric Transports Moisture Away From The Body, Keeping\n  You Cool And Dry. Quick Dry Out and moisture management of the fabric offers\n  coolness &amp;amp; dryness even in during highest level of sweat.This T shirt is\n  ideal for all kinds of indoor and outdoor sports activities like Cricket,\n  Running, Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water\n  sports, Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : &lt;span style=&quot;font-weight: bold;&quot;&gt;Nirmal Netted&lt;/span&gt;&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Navy Blue Jersey Matching (red &amp; white)', 'Electro Sports Navy Blue Jersey Matching (red &amp; white)\n', 'Electro Sports Navy Blue Jersey Matching (red &amp; white)\n'),
(77, 1, 'Electro Sports Orange Pattern Jersey ', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The &lt;span style=&quot;font-weight: bold;&quot;&gt;Super Light Nirmal Net\n  (NETTED) Fabric&lt;/span&gt;. This Fabric Transports Moisture Away From The Body, Keeping\n  You Cool And Dry. Quick Dry Out and moisture management of the fabric offers\n  coolness &amp;amp; dryness even in during highest level of sweat.This T shirt is\n  ideal for all kinds of indoor and outdoor sports activities like Cricket,\n  Running, Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water\n  sports, Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : &lt;span style=&quot;font-weight: bold;&quot;&gt;Nirmal Netted&lt;/span&gt;&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Orange Pattern Jersey ', 'Electro Sports Orange Pattern Jersey \n', 'Electro Sports Orange Pattern Jersey \n'),
(78, 1, 'Electro Sports Royal Blue &amp; white matching Jersey ', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This T-shirt Made Out Of The &lt;span style=&quot;font-weight: bold;&quot;&gt;Super Light Nirmal Net\n  (NETTED) Fabric&lt;/span&gt;. This Fabric Transports Moisture Away From The Body, Keeping\n  You Cool And Dry. Quick Dry Out and moisture management of the fabric offers\n  coolness &amp;amp; dryness even in during highest level of sweat.This T shirt is\n  ideal for all kinds of indoor and outdoor sports activities like Cricket,\n  Running, Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water\n  sports, Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : &lt;span style=&quot;font-weight: bold;&quot;&gt;Nirmal Netted&lt;/span&gt;&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Royal Blue &amp; white matching Jersey ', 'Electro Sports Royal Blue &amp; white matching Jersey \n', 'Electro Sports Royal Blue &amp; white matching Jersey \n'),
(79, 1, 'Electro Sports Black Jersey with matching (Red &amp; grey)', '&lt;table border=&quot;0&quot; cellpadding=&quot;0&quot; cellspacing=&quot;0&quot; width=&quot;861&quot; style=&quot;width: 646pt;&quot;&gt;&lt;tbody&gt;&lt;tr height=&quot;20&quot; style=&quot;height:15.0pt&quot;&gt;\n  &lt;td height=&quot;20&quot; class=&quot;xl65&quot; width=&quot;861&quot; style=&quot;height:15.0pt;width:646pt&quot;&gt;Get this\n  Impressive Jersey from Electro Sports.Electro Sports&amp;nbsp;\n  Proudly Presents This Tshirt Made Out Of The &lt;span style=&quot;font-weight: bold;&quot;&gt;Super Light Nirmal Net\n  (NETTED) Fabric&lt;/span&gt;. This Fabric Transports Moisture Away From The Body, Keeping\n  You Cool And Dry. Quick Dry Out and moisture management of the fabric offers\n  coolness &amp;amp; dryness even in during highest level of sweat.This T shirt is\n  ideal for all kinds of indoor and outdoor sports activities like Cricket,\n  Running, Walking, Jogging, Yoga, Golf, Aerobics, Hockey, Fitness, Gym, Water\n  sports, Swimming, Football, Surfing, Volleyball etc&lt;br&gt;\n    &lt;br&gt;\n    Fabric&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : &lt;span style=&quot;font-weight: bold;&quot;&gt;Nirmal Netted&lt;/span&gt;&lt;br&gt;\n    &lt;br&gt;\n    Sleeve&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;: Short Hand Sleeve&lt;br&gt;\n    &lt;br&gt;\n    Neck&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp; : Colar Neck &lt;br&gt;\n    &lt;br&gt;\n    &lt;br&gt;\n    Note : Now You Can Customize This T-shirt As Per Your Requirement&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 'T-Shirts', 'Electro Sports Black Jersey with matching (Red &amp; grey)', 'Electro Sports Black Jersey with matching (Red &amp; grey)\n', 'Electro Sports Black Jersey with matching (Red &amp; grey)\n');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(1, 28, 1, 200, 0, '132.0000', '0000-00-00', '0000-00-00'),
(2, 55, 1, 200, 0, '132.0000', '0000-00-00', '0000-00-00'),
(3, 56, 1, 200, 0, '132.0000', '0000-00-00', '0000-00-00'),
(4, 57, 1, 200, 0, '132.0000', '0000-00-00', '0000-00-00'),
(5, 58, 1, 200, 0, '132.0000', '0000-00-00', '0000-00-00'),
(6, 59, 1, 200, 0, '132.0000', '0000-00-00', '0000-00-00'),
(7, 60, 1, 200, 0, '132.0000', '0000-00-00', '0000-00-00'),
(8, 74, 2, 1, 2, '300.0000', '2018-11-24', '2018-11-30'),
(9, 74, 1, 200, 1, '160.0000', '2018-11-24', '2018-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(1, 28, 'catalog/Tri Colour Matching.jpg', 1),
(2, 55, 'catalog/Ultra Coling System Matching Fabric.jpg', 0),
(3, 56, 'catalog/01-JS/Sublimation Patch.jpg', 1),
(4, 57, 'catalog/01-JS/Black and Red Matching.jpg', 1),
(5, 58, 'catalog/01-JS/white and royal blue matching.jpg', 1),
(6, 59, 'catalog/01-JS/tri color sublimation print.jpg', 1),
(7, 60, 'catalog/01-JS/Ultra Coling System Matching Fabric red.jpg', 1),
(8, 61, 'catalog/01-JS/neon matching.jpg', 1),
(9, 62, 'catalog/01-JS/Ultra Coling System Matching Fabric pink.jpg', 1),
(10, 63, 'catalog/01-JS/jersey matching pattern yellow and grey.jpg', 1),
(11, 64, 'catalog/01-JS/Ultra Coling System Matching Fabric on front.jpg', 1),
(12, 65, 'catalog/01-JS/white and blue matching.jpg', 1),
(13, 66, 'catalog/01-JS/js-12-cut-1.jpg', 1),
(14, 66, 'catalog/01-JS/js-12-cut-2.jpg', 2),
(15, 67, 'catalog/01-JS/JS-14-cut.jpg', 1),
(16, 67, 'catalog/01-JS/JS-14-cut-1.jpg', 2),
(17, 68, 'catalog/01-JS/JS-15-cut.jpg', 1),
(18, 69, 'catalog/01-JS/JS-16-cut.jpg', 1),
(19, 70, 'catalog/01-JS/JS-17-cut.jpg', 1),
(20, 70, 'catalog/01-JS/JS-17-cut-1.jpg', 2),
(21, 73, 'catalog/01-JS/JS-20-cut.jpg', 1),
(22, 74, 'catalog/02-NN/NN-21-CUT.jpg', 1),
(23, 74, 'catalog/02-NN/NN-21-CUT-1.jpg', 2),
(24, 75, 'catalog/02-NN/NN-22-CUT.jpg', 1),
(25, 75, 'catalog/02-NN/NN-22-CUT-1.jpg', 2),
(26, 76, 'catalog/02-NN/NN-23-CUT.jpg', 1),
(27, 76, 'catalog/02-NN/NN-23-CUT-1.jpg', 2),
(28, 77, 'catalog/02-NN/NN-24-CUT.jpg', 1),
(29, 77, 'catalog/02-NN/NN-24-CUT-1.jpg', 2),
(30, 78, 'catalog/02-NN/NN-25-CUT.jpg', 1),
(31, 78, 'catalog/02-NN/NN-25-CUT-1.jpg', 2),
(32, 79, 'catalog/02-NN/NN-26-CUT.jpg', 1),
(33, 79, 'catalog/02-NN/NN-26-CUT-1.jpg', 2),
(34, 79, 'catalog/02-NN/NN-26-CUT-2.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(1, 28, 11, '', 1),
(2, 55, 11, '', 1),
(3, 56, 11, '', 1),
(4, 57, 11, '', 1),
(5, 58, 11, '', 1),
(6, 59, 11, '', 1),
(7, 60, 11, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(1, 1, 28, 11, 47, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(2, 1, 28, 11, 48, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(3, 1, 28, 11, 54, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(4, 1, 28, 11, 55, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(5, 1, 28, 11, 56, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(6, 2, 55, 11, 46, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(7, 2, 55, 11, 47, 100, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(8, 2, 55, 11, 48, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(9, 2, 55, 11, 54, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(10, 2, 55, 11, 55, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(11, 3, 56, 11, 46, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(12, 3, 56, 11, 47, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(13, 3, 56, 11, 48, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(14, 3, 56, 11, 54, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(15, 3, 56, 11, 55, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(16, 4, 57, 11, 46, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(17, 4, 57, 11, 47, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(18, 4, 57, 11, 48, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(19, 4, 57, 11, 54, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(20, 4, 57, 11, 55, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(21, 5, 58, 11, 46, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(22, 5, 58, 11, 47, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(23, 5, 58, 11, 48, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(24, 5, 58, 11, 54, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(25, 5, 58, 11, 55, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(26, 6, 59, 11, 46, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(27, 6, 59, 11, 47, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(28, 6, 59, 11, 48, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(29, 6, 59, 11, 54, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(30, 6, 59, 11, 55, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(31, 7, 60, 11, 46, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(32, 7, 60, 11, 47, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(33, 7, 60, 11, 48, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(34, 7, 60, 11, 54, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(35, 7, 60, 11, 55, 150, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(28, 28),
(28, 55),
(28, 56),
(28, 57),
(28, 58),
(28, 59),
(28, 60),
(28, 65),
(28, 75),
(55, 28),
(55, 58),
(55, 59),
(55, 60),
(55, 61),
(55, 62),
(55, 65),
(55, 69),
(55, 70),
(55, 72),
(55, 73),
(56, 28),
(56, 58),
(56, 59),
(56, 60),
(56, 61),
(56, 63),
(56, 66),
(57, 28),
(57, 58),
(57, 59),
(57, 60),
(57, 64),
(57, 67),
(57, 69),
(57, 70),
(58, 28),
(58, 55),
(58, 56),
(58, 57),
(58, 63),
(58, 65),
(59, 28),
(59, 55),
(59, 56),
(59, 57),
(59, 68),
(60, 28),
(60, 55),
(60, 56),
(60, 57),
(60, 61),
(60, 62),
(60, 63),
(60, 64),
(60, 66),
(60, 67),
(60, 72),
(61, 55),
(61, 56),
(61, 60),
(61, 61),
(61, 62),
(61, 67),
(61, 70),
(61, 71),
(61, 73),
(61, 74),
(61, 90),
(61, 91),
(61, 92),
(61, 93),
(61, 94),
(61, 95),
(61, 96),
(62, 55),
(62, 60),
(62, 61),
(62, 63),
(62, 65),
(62, 66),
(62, 68),
(62, 80),
(63, 56),
(63, 58),
(63, 60),
(63, 62),
(63, 64),
(63, 66),
(63, 68),
(63, 69),
(63, 70),
(63, 71),
(64, 57),
(64, 60),
(64, 63),
(64, 67),
(64, 68),
(65, 28),
(65, 55),
(65, 58),
(65, 62),
(65, 80),
(66, 56),
(66, 60),
(66, 62),
(66, 63),
(66, 77),
(67, 57),
(67, 60),
(67, 61),
(67, 64),
(68, 59),
(68, 62),
(68, 63),
(68, 64),
(68, 69),
(68, 71),
(68, 72),
(69, 55),
(69, 57),
(69, 63),
(69, 68),
(69, 71),
(69, 72),
(70, 55),
(70, 57),
(70, 61),
(70, 63),
(70, 73),
(71, 61),
(71, 63),
(71, 68),
(71, 69),
(71, 80),
(72, 55),
(72, 60),
(72, 68),
(72, 69),
(73, 55),
(73, 61),
(73, 70),
(73, 80),
(73, 90),
(73, 91),
(74, 61),
(74, 76),
(74, 77),
(74, 78),
(74, 79),
(74, 91),
(74, 92),
(74, 93),
(74, 94),
(74, 95),
(74, 96),
(74, 97),
(75, 28),
(75, 76),
(75, 77),
(75, 78),
(75, 79),
(76, 74),
(76, 75),
(76, 78),
(76, 79),
(77, 66),
(77, 74),
(77, 75),
(77, 78),
(77, 79),
(78, 74),
(78, 75),
(78, 76),
(78, 77),
(78, 79),
(79, 74),
(79, 75),
(79, 76),
(79, 77),
(79, 78);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(1, 74, 1, 1, '150.0000', '2018-11-24', '2018-11-30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(28, 18),
(55, 18),
(56, 18),
(57, 18),
(58, 18),
(59, 18),
(60, 18),
(61, 18),
(62, 18),
(63, 18),
(64, 18),
(65, 18),
(66, 18),
(67, 18),
(68, 18),
(69, 18),
(70, 18),
(71, 18),
(72, 18),
(73, 18),
(74, 18),
(75, 18),
(76, 18),
(77, 18),
(78, 18),
(79, 18),
(28, 29),
(55, 29),
(56, 29),
(57, 29),
(58, 29),
(59, 29),
(60, 29),
(61, 29),
(62, 29),
(63, 29),
(64, 29),
(65, 29),
(66, 29),
(67, 29),
(68, 29),
(69, 29),
(70, 29),
(71, 29),
(72, 29),
(73, 29),
(74, 29),
(75, 29),
(76, 29),
(77, 29),
(78, 29),
(79, 29),
(28, 44),
(55, 44),
(56, 44),
(57, 44),
(58, 44),
(59, 44),
(60, 44),
(61, 44),
(62, 44),
(63, 44),
(64, 44),
(65, 44),
(66, 44),
(67, 44),
(68, 44),
(69, 44),
(70, 44),
(71, 44),
(72, 44),
(73, 44),
(74, 44),
(75, 44),
(76, 44),
(77, 44),
(78, 44),
(79, 44),
(28, 69),
(55, 69),
(56, 69),
(57, 69),
(58, 69),
(59, 69),
(60, 69),
(61, 69),
(62, 69),
(63, 69),
(64, 69),
(65, 69),
(66, 69),
(67, 69),
(68, 69),
(69, 69),
(70, 69),
(71, 69),
(72, 69),
(73, 69),
(74, 69),
(75, 69),
(76, 69),
(77, 69),
(78, 69),
(79, 69);

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(28, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0),
(69, 0),
(70, 0),
(71, 0),
(72, 0),
(73, 0),
(74, 0),
(75, 0),
(76, 0),
(77, 0),
(78, 0),
(79, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return`
--

INSERT INTO `oc_return` (`return_id`, `order_id`, `product_id`, `customer_id`, `firstname`, `lastname`, `email`, `telephone`, `product`, `model`, `quantity`, `opened`, `return_reason_id`, `return_action_id`, `return_status_id`, `comment`, `date_ordered`, `date_added`, `date_modified`) VALUES
(1, 3, 0, 6, 'normal', 'test', 'test@test.com', '8898751072', 'Electro V-Cum Colar Melange T-shirts', 'JS107MM1920', 1, 0, 1, 0, 1, '', '2018-11-11', '2018-11-11 21:42:32', '2018-11-11 21:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_history`
--

INSERT INTO `oc_return_history` (`return_history_id`, `return_id`, `return_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 1, 'wait', '2018-11-11 21:43:49'),
(2, 1, 2, 1, 'this is cancled entry', '2018-11-11 21:44:40'),
(3, 1, 1, 1, 'test mail', '2018-11-11 21:49:09');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(1, 1, 'Dead On Arrival'),
(2, 1, 'Received Wrong Item'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details');

-- --------------------------------------------------------

--
-- Table structure for table `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 1, 'Pending'),
(2, 1, 'Awaiting Products'),
(3, 1, 'Complete');

-- --------------------------------------------------------

--
-- Table structure for table `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(39, 28, 0, 'Albert', 'I wanted to say thank you for the amazing product and for the fast processing and delivery. It was impressive, you weren\'t kidding. I was surprised with such an excellent quality...My family is very happy. I would definitely use this site again and again and recommend it to others.', 5, 1, '2014-12-03 12:14:08', '2015-09-24 10:01:24'),
(48, 28, 5, 'Ali', 'I wanted to say thank you for the amazing product and for the fast processing and delivery. It was impressive, you weren\'t kidding. I was surprised with such an excellent quality...My family is very happy. I would definitely use this site again and again and recommend it to others.', 5, 1, '2018-11-20 22:52:49', '2018-11-20 22:54:26'),
(49, 28, 5, 'Shaikh', ' I was surprised with such an excellent quality...My family is very happy. I would definitely use this site again and again and recommend it to others.', 4, 1, '2018-11-20 22:53:07', '2018-11-20 22:54:18'),
(50, 28, 5, 'Shaikh Ali ', ' I was surprised with such an excellent quality...My family is very happy. I would definitely use this site again and again and recommend it to others.\r\n I was surprised with such an excellent quality...My family is very happy. I would definitely use this site again and again and recommend it to others.', 5, 1, '2018-11-20 22:53:25', '2018-11-20 22:54:10'),
(51, 28, 5, 'Mus', ' I would definitely use this site again and again and recommend it to others. I would definitely use this site again and again and recommend it to others.', 5, 1, '2018-11-20 22:53:41', '2018-11-23 17:03:30');

-- --------------------------------------------------------

--
-- Table structure for table `oc_seo_url`
--

CREATE TABLE `oc_seo_url` (
  `seo_url_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_seo_url`
--

INSERT INTO `oc_seo_url` (`seo_url_id`, `store_id`, `language_id`, `query`, `keyword`) VALUES
(730, 0, 1, 'manufacturer_id=8', 'apple'),
(768, 0, 1, 'product_id=42', 'test'),
(772, 0, 1, 'information_id=4', 'about_us'),
(774, 0, 1, 'category_id=18', 'laptop-notebook'),
(775, 0, 1, 'category_id=46', 'macs'),
(776, 0, 1, 'category_id=45', 'windows'),
(777, 0, 1, 'category_id=25', 'component'),
(778, 0, 1, 'category_id=29', 'mouse'),
(779, 0, 1, 'category_id=28', 'monitor'),
(780, 0, 1, 'category_id=35', 'test1'),
(781, 0, 1, 'category_id=36', 'test2'),
(782, 0, 1, 'category_id=30', 'printer'),
(783, 0, 1, 'category_id=31', 'scanner'),
(784, 0, 1, 'category_id=32', 'web-camera'),
(785, 0, 1, 'category_id=57', 'tablet'),
(786, 0, 1, 'category_id=17', 'software'),
(787, 0, 1, 'category_id=24', 'smartphone'),
(788, 0, 1, 'category_id=33', 'camera'),
(789, 0, 1, 'category_id=34', 'mp3-players'),
(790, 0, 1, 'category_id=43', 'test11'),
(791, 0, 1, 'category_id=44', 'test12'),
(792, 0, 1, 'category_id=47', 'test15'),
(793, 0, 1, 'category_id=48', 'test16'),
(794, 0, 1, 'category_id=49', 'test17'),
(795, 0, 1, 'category_id=50', 'test18'),
(796, 0, 1, 'category_id=51', 'test19'),
(797, 0, 1, 'category_id=52', 'test20'),
(798, 0, 1, 'category_id=58', 'test25'),
(799, 0, 1, 'category_id=53', 'test21'),
(800, 0, 1, 'category_id=54', 'test22'),
(801, 0, 1, 'category_id=55', 'test23'),
(802, 0, 1, 'category_id=56', 'test24'),
(803, 0, 1, 'category_id=38', 'test4'),
(804, 0, 1, 'category_id=37', 'test5'),
(805, 0, 1, 'category_id=39', 'test6'),
(806, 0, 1, 'category_id=40', 'test7'),
(807, 0, 1, 'category_id=41', 'test8'),
(808, 0, 1, 'category_id=42', 'test9'),
(809, 0, 1, 'product_id=30', 'canon-eos-5d'),
(811, 0, 1, 'product_id=28', 'htc-touch-hd'),
(812, 0, 1, 'product_id=43', 'macbook'),
(813, 0, 1, 'product_id=44', 'macbook-air'),
(814, 0, 1, 'product_id=45', 'macbook-pro'),
(816, 0, 1, 'product_id=31', 'nikon-d300'),
(817, 0, 1, 'product_id=29', 'palm-treo-pro'),
(818, 0, 1, 'product_id=35', 'product-8'),
(819, 0, 1, 'product_id=49', 'samsung-galaxy-tab-10-1'),
(820, 0, 1, 'product_id=33', 'samsung-syncmaster-941bw'),
(821, 0, 1, 'product_id=46', 'sony-vaio'),
(823, 0, 1, 'product_id=40', 'iphone'),
(824, 0, 1, 'product_id=48', 'ipod-classic'),
(825, 0, 1, 'product_id=36', 'ipod-nano'),
(826, 0, 1, 'product_id=34', 'ipod-shuffle'),
(827, 0, 1, 'product_id=32', 'ipod-touch'),
(828, 0, 1, 'manufacturer_id=9', 'canon'),
(829, 0, 1, 'manufacturer_id=5', 'htc'),
(830, 0, 1, 'manufacturer_id=7', 'hewlett-packard'),
(831, 0, 1, 'manufacturer_id=6', 'palm'),
(832, 0, 1, 'manufacturer_id=10', 'sony'),
(834, 0, 1, 'category_id=26', 'pc'),
(835, 0, 1, 'category_id=27', 'mac'),
(836, 0, 1, 'category_id=20', 'desktops'),
(837, 0, 1, 'product_id=41', 'imac'),
(840, 0, 1, 'product_id=47', 'hp-lp3065'),
(841, 0, 1, 'information_id=6', 'delivery'),
(842, 0, 1, 'information_id=3', 'privacy'),
(843, 0, 1, 'information_id=5', 'terms');

-- --------------------------------------------------------

--
-- Table structure for table `oc_session`
--

CREATE TABLE `oc_session` (
  `session_id` varchar(32) NOT NULL,
  `data` text NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_session`
--

INSERT INTO `oc_session` (`session_id`, `data`, `expire`) VALUES
('1e2683c29a73ee5a9715456b18', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"kls9WbXIi4fwP94r38tKfPo8S8C69jN9\"}', '2018-08-23 18:12:57'),
('600c4fd3960e3ff1180b5d25a5', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"RCMx7Dq3K3LyIL1bLMejuNhm7tGSMbcJ\"}', '2018-08-26 07:48:25'),
('a3325787570edc10fa5c5b9697', '{\"language\":\"en-gb\",\"currency\":\"USD\",\"user_id\":\"1\",\"user_token\":\"dAiaNyLwq8aeyXtmxpIOteb148UqNsSi\"}', '2018-08-24 07:20:53'),
('ee5be4abb2304f67dbaff44020', '{\"user_id\":\"1\",\"user_token\":\"MjGCh00R0YI2TEO3tC3ciIavvHN7ExzD\",\"language\":\"en-gb\",\"currency\":\"GBP\"}', '2018-08-24 08:51:46'),
('f91f33a13d437f29d0dd02a19c', '{\"language\":\"en-gb\",\"currency\":\"GBP\",\"user_id\":\"1\",\"user_token\":\"TlwWEHqrHgp8tDGM8ZJTqNB1xjUWYRRN\"}', '2018-08-24 09:01:54');

-- --------------------------------------------------------

--
-- Table structure for table `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(954, 0, 'affiliate', 'affiliate_status', '1', 0),
(11496, 0, 'export_import', 'export_import_settings_use_attribute_id', '1', 0),
(11497, 0, 'export_import', 'export_import_settings_use_export_cache', '0', 0),
(11498, 0, 'export_import', 'export_import_settings_use_import_cache', '0', 0),
(15436, 0, 'tm_social_list', 'tm_social_list_status', '1', 0),
(15437, 0, 'tm_social_list', 'tm_social_list_youtube', '', 0),
(15438, 0, 'tm_social_list', 'tm_social_list_facebook', '//www.youtube.com', 0),
(15439, 0, 'tm_social_list', 'tm_social_list_google_plus', '//www.youtube.com', 0),
(15440, 0, 'tm_social_list', 'tm_social_list_twitter', '//www.youtube.com', 0),
(15441, 0, 'tm_social_list', 'tm_social_list_pinterest', '', 0),
(15442, 0, 'tm_social_list', 'tm_social_list_instagram', '', 0),
(15443, 0, 'tm_social_list', 'tm_social_list_vimeo', '', 0),
(16178, 0, 'fraudlabspro', 'fraudlabspro_score', '80', 0),
(16179, 0, 'fraudlabspro', 'fraudlabspro_order_status_id', '17', 0),
(16180, 0, 'fraudlabspro', 'fraudlabspro_review_status_id', '18', 0),
(16181, 0, 'fraudlabspro', 'fraudlabspro_approve_status_id', '2', 0),
(16182, 0, 'fraudlabspro', 'fraudlabspro_reject_status_id', '8', 0),
(17032, 0, 'basic_captcha', 'basic_captcha_status', '1', 0),
(18610, 0, 'weight', 'weight_tax_class_id', '9', 0),
(18611, 0, 'weight', 'weight_status', '1', 0),
(18612, 0, 'weight', 'weight_sort_order', '1', 0),
(18613, 0, 'weight', 'weight_5_rate', '10:200,30:400,50:1000', 0),
(18614, 0, 'weight', 'weight_5_status', '1', 0),
(18615, 0, 'weight', 'weight_7_rate', '10:100,30:200,50:500', 0),
(18616, 0, 'weight', 'weight_7_status', '0', 0),
(18617, 0, 'weight', 'weight_6_rate', '10:100,30:200,50:500', 0),
(18618, 0, 'weight', 'weight_6_status', '1', 0),
(18619, 0, 'pickup', 'pickup_geo_zone_id', '0', 0),
(18620, 0, 'pickup', 'pickup_status', '1', 0),
(18621, 0, 'pickup', 'pickup_sort_order', '2', 0),
(18632, 0, 'cod', 'cod_total', '100', 0),
(18633, 0, 'cod', 'cod_order_status_id', '15', 0),
(18634, 0, 'cod', 'cod_geo_zone_id', '7', 0),
(18635, 0, 'cod', 'cod_status', '1', 0),
(18636, 0, 'cod', 'cod_sort_order', '1', 0),
(18637, 0, 'cheque', 'cheque_payable', 'MULTIPEARLS TRADERS &amp; IT SOLUTIONS LLP', 0),
(18638, 0, 'cheque', 'cheque_total', '500', 0),
(18639, 0, 'cheque', 'cheque_order_status_id', '2', 0),
(18640, 0, 'cheque', 'cheque_geo_zone_id', '7', 0),
(18641, 0, 'cheque', 'cheque_status', '1', 0),
(18642, 0, 'cheque', 'cheque_sort_order', '1', 0),
(19742, 0, 'customer_invoice', 'customer_invoice_status', '1', 0),
(19743, 0, 'customer_invoice', 'customer_invoice_store_logo', '0', 0),
(19744, 0, 'customer_invoice', 'customer_invoice_guest', '1', 0),
(19745, 0, 'config', 'config_meta_title', 'Multipearls Traders', 0),
(19746, 0, 'config', 'config_meta_description', 'Multipearls Traders ', 0),
(19747, 0, 'config', 'config_meta_keyword', '', 0),
(19748, 0, 'config', 'config_template', 'theme647', 0),
(19749, 0, 'config', 'config_layout_id', '4', 0),
(19750, 0, 'config', 'config_name', 'Multipearls Traders ', 0),
(19751, 0, 'config', 'config_owner', 'Multipearls Traders ', 0),
(19752, 0, 'config', 'config_address', '103/A Wing 1st Floor Nagree Apartment Co-operative Housing Society', 0),
(19753, 0, 'config', 'config_geocode', '40.6700, -73.9400', 0),
(19754, 0, 'config', 'config_email', 'sharfraz.2008@rediffmail.com', 0),
(19755, 0, 'config', 'config_telephone', '+917666009599', 0),
(19756, 0, 'config', 'config_fax', '80023456789', 0),
(19757, 0, 'config', 'config_image', 'catalog/LogoMakr_1XnDRc.png', 0),
(19758, 0, 'config', 'config_open', '7 Days a week from 9:00 am to 7:00 pm', 0),
(19759, 0, 'config', 'config_comment', 'We are glad to see you here!', 0),
(19760, 0, 'config', 'config_country_id', '99', 0),
(19761, 0, 'config', 'config_zone_id', '1493', 0),
(19762, 0, 'config', 'config_language', 'en', 0),
(19763, 0, 'config', 'config_admin_language', 'en', 0),
(19764, 0, 'config', 'config_currency', 'INR', 0),
(19765, 0, 'config', 'config_currency_auto', '1', 0),
(19766, 0, 'config', 'config_length_class_id', '1', 0),
(19767, 0, 'config', 'config_weight_class_id', '2', 0),
(19768, 0, 'config', 'config_product_count', '1', 0),
(19769, 0, 'config', 'config_product_limit', '120', 0),
(19770, 0, 'config', 'config_product_description_length', '120', 0),
(19771, 0, 'config', 'config_limit_admin', '20', 0),
(19772, 0, 'config', 'config_review_status', '1', 0),
(19773, 0, 'config', 'config_review_guest', '0', 0),
(19774, 0, 'config', 'config_review_mail', '0', 0),
(19775, 0, 'config', 'config_voucher_min', '1', 0),
(19776, 0, 'config', 'config_voucher_max', '1000', 0),
(19777, 0, 'config', 'config_tax', '0', 0),
(19778, 0, 'config', 'config_tax_default', 'shipping', 0),
(19779, 0, 'config', 'config_tax_customer', 'shipping', 0),
(19780, 0, 'config', 'config_customer_online', '1', 0),
(19781, 0, 'config', 'config_customer_group_id', '1', 0),
(19782, 0, 'config', 'config_customer_group_display', '[\"2\",\"1\"]', 1),
(19783, 0, 'config', 'config_customer_price', '0', 0),
(19784, 0, 'config', 'config_login_attempts', '5', 0),
(19785, 0, 'config', 'config_account_id', '3', 0),
(19786, 0, 'config', 'config_account_mail', '1', 0),
(19787, 0, 'config', 'config_invoice_prefix', 'INV-2018-20', 0),
(19788, 0, 'config', 'config_cart_weight', '1', 0),
(19789, 0, 'config', 'config_checkout_guest', '1', 0),
(19790, 0, 'config', 'config_checkout_id', '5', 0),
(19791, 0, 'config', 'config_order_status_id', '1', 0),
(19792, 0, 'config', 'config_processing_status', '[\"1\",\"2\"]', 1),
(19793, 0, 'config', 'config_complete_status', '[\"5\"]', 1),
(19794, 0, 'config', 'config_fraud_status_id', '7', 0),
(19795, 0, 'config', 'config_order_mail', '1', 0),
(19796, 0, 'config', 'config_api_id', '3', 0),
(19797, 0, 'config', 'config_stock_display', '0', 0),
(19798, 0, 'config', 'config_stock_warning', '1', 0),
(19799, 0, 'config', 'config_stock_checkout', '1', 0),
(19800, 0, 'config', 'config_affiliate_approval', '1', 0),
(19801, 0, 'config', 'config_affiliate_auto', '1', 0),
(19802, 0, 'config', 'config_affiliate_commission', '10', 0),
(19803, 0, 'config', 'config_affiliate_id', '4', 0),
(19804, 0, 'config', 'config_affiliate_mail', '1', 0),
(19805, 0, 'config', 'config_return_id', '6', 0),
(19806, 0, 'config', 'config_return_status_id', '2', 0),
(19807, 0, 'config', 'config_captcha', 'basic_captcha', 0),
(19808, 0, 'config', 'config_captcha_page', '[\"review\",\"return\",\"contact\"]', 1),
(19809, 0, 'config', 'config_logo', 'catalog/LogoMakr_1XnDRc.png', 0),
(19810, 0, 'config', 'config_icon', 'catalog/LogoMakr_1XnDRc.png', 0),
(19811, 0, 'config', 'config_image_category_width', '800', 0),
(19812, 0, 'config', 'config_image_category_height', '800', 0),
(19813, 0, 'config', 'config_image_thumb_width', '800', 0),
(19814, 0, 'config', 'config_image_thumb_height', '800', 0),
(19815, 0, 'config', 'config_image_popup_width', '800', 0),
(19816, 0, 'config', 'config_image_popup_height', '800', 0),
(19817, 0, 'config', 'config_image_product_width', '220', 0),
(19818, 0, 'config', 'config_image_product_height', '220', 0),
(19819, 0, 'config', 'config_image_additional_width', '88', 0),
(19820, 0, 'config', 'config_image_additional_height', '88', 0),
(19821, 0, 'config', 'config_image_related_width', '270', 0),
(19822, 0, 'config', 'config_image_related_height', '270', 0),
(19823, 0, 'config', 'config_image_compare_width', '180', 0),
(19824, 0, 'config', 'config_image_compare_height', '180', 0),
(19825, 0, 'config', 'config_image_wishlist_width', '47', 0),
(19826, 0, 'config', 'config_image_wishlist_height', '47', 0),
(19827, 0, 'config', 'config_image_cart_width', '100', 0),
(19828, 0, 'config', 'config_image_cart_height', '100', 0),
(19829, 0, 'config', 'config_image_location_width', '234', 0),
(19830, 0, 'config', 'config_image_location_height', '64', 0),
(19831, 0, 'config', 'config_ftp_hostname', 'cpanel.freehosting.com', 0),
(19832, 0, 'config', 'config_ftp_port', '21', 0),
(19833, 0, 'config', 'config_ftp_username', 'multipea', 0),
(19834, 0, 'config', 'config_ftp_password', 'b83t3yP9Jb', 0),
(19835, 0, 'config', 'config_ftp_root', 'public_html', 0),
(19836, 0, 'config', 'config_ftp_status', '1', 0),
(19837, 0, 'config', 'config_mail_protocol', 'mail', 0),
(19838, 0, 'config', 'config_mail_parameter', 'multipearls@gmail.com', 0),
(19839, 0, 'config', 'config_mail_smtp_hostname', 'smtp.gmail.com', 0),
(19840, 0, 'config', 'config_mail_smtp_username', 'multipearls@gmail.com', 0),
(19841, 0, 'config', 'config_mail_smtp_password', 'Shahzeen@786', 0),
(19842, 0, 'config', 'config_mail_smtp_port', '587', 0),
(19843, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(19844, 0, 'config', 'config_mail_alert', '', 0),
(19845, 0, 'config', 'config_maintenance', '0', 0),
(19846, 0, 'config', 'config_seo_url', '0', 0),
(19847, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(19848, 0, 'config', 'config_compression', '0', 0),
(19849, 0, 'config', 'config_secure', '0', 0),
(19850, 0, 'config', 'config_password', '1', 0),
(19851, 0, 'config', 'config_shared', '0', 0),
(19852, 0, 'config', 'config_encryption', 'OZt8CNy70T7coHVq0hef3oy4WYqxCjE4uqyBht2BHtXnax1kFQCumEoUuzHM9id0L4qN2ChICOhz5JjlKPlS1AzfVfzJXRBJsnOfOUqE8X6i0QB4P1y9EodvEz17XIhUfwPkH6rtdFm2WGNjDz26ubjdwksHJFwbNKvnrKKwWLua1yjrzSVNjT0apnADENubrfIKGHvrP5d5iVZ0VCBGygNCH09Gp34llwtNSKR1JSLFZhbgi11Lznp1wCkDFbQODrGY9NvRwiPO9I1cCcHJvL1G3R40Lzc8qyS2kITqQRUMSiPYzvjbtVHIH7GZfmP1NiQER5Rx8vWvSSWE55nAEUH8Av6hCdA5VyUI0R7tsmAIiGuOkx48pbXvQ8T8i6HWnUkfTI6LyQb9ek4NyzuS1NzZ0WLufmz8092A7FHIGyI1Iscd8t4OHy76zYLwxIQNvUmfOIWaUSo3Dy1WPYPv4liqUKY6NKZsxuiKBS9iacA806iXx5WgeSenYtpoVlZrtSbExQCGGQNQpyA22yOq9osh47vWGlmUbMaytaFM5zBGSY9L2SCRhKTCot4T1m3Qefm3EBDoFqD548H21x4G5aLWkROPqloOzguptGsouTUUd8GurPmgPYSxD2G60RXapBV8Cy5YtlmU2qVFaF1EIEMRziQOx6Sw3mxTxnRwDTRQ1BeipFxvCF3pP4uMYk2UirhaE9R7QaPBpxwHScwt8Q7v4VkSJuIoyUKAWpAEWNCWBEfJaUycNdgYk7kQavwHN5jnz2aEtmeNwSJWxG8QiyTdOtzG8mXNmKYt2rhpkXAiD9BMhM7Bu9fZ3H2jCx4wfLxbubwDBVvJ1MFHV7V2YBXdaB4Kd1p7v2eWv5A6O2cEi5Gi8ypnfARaz00qhmAgJgnv2kn8pmSNt1SFUsTUzkb8AmZhVzyGarEXfETXsUOGPIoe2nSHmqtXT0ZTylpdvI080y2A8oxJFfULu0lcMqBZcQ9ErmX6p84kELBl13ieV0ndlOJhIqNhoNVtjqph', 0),
(19853, 0, 'config', 'config_file_max_size', '400000', 0),
(19854, 0, 'config', 'config_file_ext_allowed', 'txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods', 0),
(19855, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet', 0),
(19856, 0, 'config', 'config_error_display', '1', 0),
(19857, 0, 'config', 'config_error_log', '1', 0),
(19858, 0, 'config', 'config_error_filename', 'error.log', 0),
(19859, 0, 'config', 'config_simple_blog_status', '1', 0),
(19860, 0, 'config', 'config_simple_blog_limit', '6', 0),
(19861, 0, 'config', 'config_simple_blog_description_limit', '250', 0),
(19862, 0, 'config', 'config_simple_blog_comment_auto_approval', '1', 0),
(19863, 0, 'config', 'config_simple_blog_author_information', '1', 0),
(19864, 0, 'config', 'config_simple_blog_related_articles', '1', 0),
(19865, 0, 'config', 'config_simple_blog_share_social_site', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_shipping_courier`
--

CREATE TABLE `oc_shipping_courier` (
  `shipping_courier_id` int(11) NOT NULL,
  `shipping_courier_code` varchar(255) NOT NULL DEFAULT '',
  `shipping_courier_name` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_shipping_courier`
--

INSERT INTO `oc_shipping_courier` (`shipping_courier_id`, `shipping_courier_code`, `shipping_courier_name`) VALUES
(1, 'dhl', 'DHL'),
(2, 'fedex', 'Fedex'),
(3, 'ups', 'UPS'),
(4, 'royal-mail', 'Royal Mail'),
(5, 'usps', 'United States Postal Service'),
(6, 'auspost', 'Australia Post'),
(7, 'citylink', 'Citylink');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article`
--

CREATE TABLE `oc_simple_blog_article` (
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_author_id` int(16) NOT NULL,
  `allow_comment` tinyint(1) NOT NULL,
  `image` mediumtext NOT NULL,
  `featured_image` mediumtext NOT NULL,
  `article_related_method` varchar(64) NOT NULL,
  `article_related_option` mediumtext NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article`
--

INSERT INTO `oc_simple_blog_article` (`simple_blog_article_id`, `simple_blog_author_id`, `allow_comment`, `image`, `featured_image`, `article_related_method`, `article_related_option`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 1, '', 'catalog/blog/post-1.jpg', 'product_wise', '', 0, 1, '2015-09-16 17:26:55', '2015-09-28 17:10:13'),
(2, 1, 1, '', 'catalog/blog/post-2.jpg', 'product_wise', '', 1, 1, '2015-09-17 10:25:42', '2015-09-28 17:12:45'),
(3, 2, 1, '', 'catalog/blog/post-3.jpg', 'category_wise', '{\"category_wise\":[\"25\"]}', 2, 1, '2015-09-17 10:28:08', '2015-09-28 17:14:21'),
(4, 3, 1, '', 'catalog/blog/post-4.jpg', 'manufacturer_wise', '{\"manufacturer_wise\":[\"9\",\"6\"]}', 3, 1, '2015-09-21 16:51:28', '2015-10-13 12:36:33'),
(5, 3, 1, '', 'catalog/blog/post-5.jpg', 'category_wise', '{\"category_wise\":[\"25\"]}', 4, 1, '2015-09-21 16:53:36', '2015-10-13 12:55:24'),
(6, 4, 1, '', 'catalog/blog/post-6.jpg', 'product_wise', '', 5, 1, '2015-09-21 16:55:11', '2015-10-13 13:00:07'),
(7, 4, 1, '', 'catalog/blog/post-7.jpg', 'product_wise', '', 6, 1, '2015-09-21 16:57:06', '2015-10-13 13:02:56'),
(8, 2, 1, '', 'catalog/blog/post-8.jpg', 'product_wise', '', 7, 1, '2015-09-21 16:59:22', '2015-10-13 15:35:43'),
(9, 1, 1, '', 'catalog/blog/post-9.jpg', 'product_wise', '', 8, 1, '2015-09-21 17:01:01', '2015-10-13 14:18:04'),
(10, 1, 1, '', 'catalog/blog/post-10.jpg', 'product_wise', '', 9, 1, '2015-10-13 15:07:26', '2015-10-13 15:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_description`
--

CREATE TABLE `oc_simple_blog_article_description` (
  `simple_blog_article_description_id` int(16) NOT NULL,
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `article_title` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article_description`
--

INSERT INTO `oc_simple_blog_article_description` (`simple_blog_article_description_id`, `simple_blog_article_id`, `language_id`, `article_title`, `description`, `meta_description`, `meta_keyword`) VALUES
(118, 1, 1, 'Establishing Your Brand on College Campuses', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;', '', ''),
(119, 1, 2, 'Establishing Your Brand on College Campuses', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;', '', ''),
(120, 1, 3, 'Establishing Your Brand on College Campuses', '&lt;p&gt;Many students are cash-strapped, nowadays. Nevertheless, their purchasing power is very high. Research reveals that 20 million students in the US have a combined disposable income of $417 billion. Moreover, another survey of students\' parents reveals that students now make 70 percent of their purchases themselves. These purchases are often made on credit cards. Therefore, students often have a significantly higher purchasing power.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you know this, you can utilize it to capture the attention of the 16-24 age demographic. However, it is essential for your product or service to appeal to the lifestyle of the students. Additionally, student ambassadors should be utilized to spread the word about your product or service to their friends and classmates.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;If you have not yet considered this demographic, it is time to reach out to them now!\r\nSocial media is a popular method for socialization and communication between many young people. Students are the majority users of social networking sites like Facebook and Twitter. These are the right places to introduce brands to young people.It is probably the right place to introduce a brand to them. To capture the student audience, it is essential to be a part of the conversation; it is also important to keep them engaged. Social media is the ideal platform for this.&lt;/p&gt;\r\n&lt;p&gt;However, studies state that half of these social media savvy youngsters fail to follow brands on social networking sites. Students who do follow often only show temporary, marginal support. Social media is definitely a great platform for engaging students and spreading the word. However, it is definitely not the best for brand introduction and recognition.&lt;/p&gt;', '', ''),
(121, 2, 1, 'Believe in the Business of Your Dreams', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;', '', ''),
(122, 2, 2, 'Believe in the Business of Your Dreams', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;', '', ''),
(123, 2, 3, 'Believe in the Business of Your Dreams', '&lt;p&gt;What is stopping you from believing in the business of your dreams? Insecurity? Fear? Lack of confidence? All of the above? How can you overcome these obstructions?&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Your Mantras&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;You may be wondering if you have the necessary skills, time, connections, and a million other things in order to create the business of your dreams. If you let your uncertainty and insecurity overpower you, you won\'t ever be able to unleash your true business potential. To unlock the positive forces of your creativity and drive that will yield amazing results, make these your mantras:\r\n&quot;I will abandon all negative thoughts that prevent me from realizing my business objectives.&quot;\r\n&quot;I will focus my energy on growing the business of my dreams.&quot;&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;A Dreamer and a Doer&lt;/strong&gt;&lt;/p&gt;\r\n&lt;p&gt;It is important to take time to develop your vision; and your practical thinking should be geared to this vision. You need to work with conviction. Being a dreamer does not mean that you can\'t also be a doer. In fact, having a dream is the starting point for building your dream business. The problem starts when you stop there instead of setting realizable immediate targets. Success cannot come from one day to the next. So you need to build your dream business bit by bit. When your dreams begin to be transformed into reality thanks to your actions, you become aware of the power you possess for catalyzing success; and this further strengthens your determination to reach every single one of your business goals.&lt;/p&gt;\r\n&lt;p&gt;&lt;strong&gt;Make It Happen&lt;/strong&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;Nothing can happen without tenacity, fortitude, and courage. Be bold enough to make choices; don\'t just let things happen to you. Though you cannot have control over everything, you can focus on what you can handle and influence with your actions in a given situation. You have the power to make decisions that will move your business forward. You should not feel daunted by your lack of knowledge of business strategies either. You learn and grow while building your business. No women entrepreneur/mompreneur possesses absolute knowledge; there are so many examples of hugely successful businesswomen who started out without having any clue about business promotion techniques. Their motivation to learn, their unwavering belief that they could create the business of their dreams, and their steadfastness were key factors for their success.\r\n&lt;/p&gt;', '', ''),
(124, 3, 1, 'Impact - The Heart of Business', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;', '', ''),
(125, 3, 2, 'Impact - The Heart of Business', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;', '', ''),
(126, 3, 3, 'Impact - The Heart of Business', '&lt;p&gt;Thousands of people dream of having their own business and even more so be a successful entrepreneur. But what does it take to achieve success in the business industry?&lt;/p&gt;\r\n\r\n&lt;p&gt;One of the most successful entrepreneurs featured at the Forbes website, Wendy Lipton - Dibner said that &quot;the success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot;.\r\nShe shared her success story at the Forbes website and said that when she was young she learned a very important business objective from her high school activity and that is to go out, explore, come back and explain how money is made in business. This is an objective she never forgot until she made millions for herself.&lt;/p&gt;\r\n\r\n\r\n&lt;p&gt;When she was already very successful, she never stopped understanding business and how it really works. Profit is the number one goal in business and how you make it is a natural talent. Yes, there may be a lot of guidelines given and showed on television and the internet but only you know how you will make your sales to the top.\r\n&lt;/p&gt;\r\n&lt;p&gt;Try to ponder on these notes when thinking of a business:\r\n&lt;/p&gt;\r\n\r\n&lt;ol&gt;\r\n&lt;li&gt;Passion. Business may be set on profit but the core of your business should be something you love. Passion counts a lot in businesses because it also builds your determination in achieving your goal.&lt;/li&gt;\r\n&lt;li&gt; Impact. Business is a big and competitive world, what will matter is how you make a difference to your market. How your business will impact your market. The profit of your business will rely on the impact of your business. The mark it will leave to your customers will make it grow.&lt;/li&gt;\r\n&lt;li&gt;Three Guidelines.&lt;/li&gt;\r\n&lt;/ol&gt;\r\n&lt;p&gt;If you have noticed, the three guidelines below are very simple and natural.&lt;/p&gt;', '', ''),
(181, 4, 1, 'Beautiful Rumi Quotes that are Worth Reading', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;\r\n&lt;/blockquote&gt;', '', ''),
(182, 4, 2, 'Beautiful Rumi Quotes that are Worth Reading', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n\r\n', '', ''),
(183, 4, 3, 'Beautiful Rumi Quotes that are Worth Reading', '&lt;p&gt;Rumi, is the most popular Sufi poet in the world. His work is not only deep and intense, but also very ethereal. His poetry often stirs an emotion never touched and shows a facet never seen. This Buzzle article has a collection of some beautiful Rumi quotes that are worth reading, without which, life would literally feel quite disregarded.&lt;/p&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;As you start to walk on the way, the way appears.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Let yourself be silently drawn by the strange pull of what you really love. It will not lead you astray.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Two there are who are never satisfied -- the lover of the world and the lover of knowledge.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;What you seek is seeking you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t be satisfied with stories, how things have gone with others. Unfold your own myth.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Raise your words, not voice. It is rain that grows flowers, not thunder.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;You are not a drop in the ocean. You are the entire ocean in a drop.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Do you know what you are? You are a manuscript oƒ a divine letter. You are a mirror reflecting a noble face. This universe is not outside of you. Look inside yourself; everything that you want, you are already that.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Don\'t grieve. Anything you lose comes round in another form.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.&quot;\r\n&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Stop acting so small. You are the universe in ecstatic motion.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Forget safety. Live where you fear to live. Destroy your reputation. Be notorious.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;Start a huge, foolish project, like Noah...it makes absolutely no difference what people think of you.&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n&lt;blockquote&gt;&lt;p&gt;&quot;When you go through a hard period, when everything seems to oppose you, ... When you feel you cannot even bear one more minute, NEVER GIVE UP! Because it is the time and place that the course will divert!&quot;&lt;/p&gt;&lt;/blockquote&gt;\r\n\r\n', '', ''),
(187, 5, 1, 'How to Keep Your Heart Healthy', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt;', '', ''),
(188, 5, 2, 'How to Keep Your Heart Healthy', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt;', '', ''),
(189, 5, 3, 'How to Keep Your Heart Healthy', '&lt;p&gt;So how to keep your heart healthy? With so many heart diseases on the rise, most health-conscious people strive\r\n       to\r\n       seek the answer to this question. This article attempts to help you find the answer.&lt;/p&gt;\r\n    &lt;h5&gt;Go Green&lt;/h5&gt;\r\n\r\n    &lt;p&gt;When we speak of heart, we cannot miss out on the importance and benefits of plant foods. Vegetables are an\r\n       excellent source of glutamic acid. It is a class of amino acid which helps keeping blood pressure at lower\r\n       levels; safe levels, so to say. What\'s more? Veggies lack cholesterol, fat and even calories, which otherwise\r\n       tend to be the common culprits for causing heart diseases. Not to mention, the amount of vitamins and minerals\r\n       that vegetables provide to the body do the most for health.\r\n\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Be Active&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Without the aid of daily exercise, maintaining a good overall health is just more than a daunting task. Exercises\r\n       not\r\n       only improve heart function, but also help in bringing down blood pressure, and cholesterol levels in the body. A\r\n       mere 30 minutes stroll daily does good for the heart, if not much. It is recommended that sprinting is more\r\n       beneficial for the heart, than jogging.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Reduce Oil&lt;/h5&gt;\r\n\r\n    &lt;p&gt;The next tip is about keeping oil from your diet. Although, you cannot avoid oil completely,\r\n       you can keep its consumption to a small amount. Oils are a storehouse of calories and contain\r\n       little nutrition. As they mostly comprise fat, they have all chances to lead to the\r\n       development of plaque in the arteries thus, giving rise to some nasty heart problems. However,\r\n       not all types of oil are unhealthy. Fish oil contains omega-3 fatty acids, which not only help\r\n       in preventing cardiovascular diseases, but also reduce instances of heart attack. According to\r\n       a study published in the Journal of the American College of Cardiology, a group of patients\r\n       with cardiovascular disease had 30% less likelihood of heart attack because of omega-3 fatty\r\n       acids. Best sources include salmon, mackerel and herring. Flaxseed, walnuts, and soybeans are\r\n       also good sources.\r\n    &lt;/p&gt;\r\n    &lt;h5&gt;Cut the Smoke&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If you think you cannot shun the habit of smoking, then you might as well know that you\r\n       cannot do anything good for your heart. One of the most severe risks of smoking relates to\r\n       heart diseases in almost every smoker. Quit smoking, and you have done half the job in\r\n       keeping your heart healthy!&lt;/p&gt;\r\n    &lt;h5&gt;Lose Weight&lt;/h5&gt;\r\n\r\n    &lt;p&gt;If your figure is slim, and belly\r\n       flat, then you may have less things\r\n       to worry about heart diseases. I am\r\n       talking about weight loss. Being\r\n       overweight puts extra load on the\r\n       heart thus, increases the risk of\r\n       heart conditions. So, consume less\r\n       sugary foods and more of fiber and\r\n       complex carbohydrates, and fruits and\r\n       vegetables. Maintaining a healthy\r\n       weight is one of the basic\r\n       necessities for a healthy heart\r\n       today.&lt;/p&gt;\r\n    &lt;h5&gt;Add More Fiber&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        Fiber exists in two major groups; soluble (dissolves in water) and insoluble (does not dissolve in water).\r\n        Although\r\n        both the types are beneficial to health, it is the former type that does way better to reduce cholesterol levels\r\n        in\r\n        the body. Due to its soluble nature, it binds with the cholesterol in the intestines thus, keep it from being\r\n        absorbed. This keeps the level of LDL and total cholesterol down, while not affecting the HDL cholesterol level\r\n        in\r\n        any way. All a healthy person requires is a serving of 5 to 10 grams or more of soluble fiber in a day to avail\r\n        this\r\n        benefit of low cholesterol. Foods rich in this fiber include apples, peas, kidney beans, prunes, etc.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Beware of Saturated Fats&lt;/h5&gt;\r\n\r\n    &lt;p&gt;It is important that you limit the amount of saturated and trans fats you consume\r\n       from your food. These spike cholesterol levels in the body thus, increasing the risk\r\n       of coronary artery disease. So avoid or limit consumption of food such as red meat,\r\n       dairy products, coconut oil, palm oil. These are rich in saturated fatty acids. To\r\n       avoid trans fats, eat less of fast foods, bakery products, snacks, crackers, and\r\n       margarines. Go for foods rich in healthy fats such as polyunsaturated and\r\n       monounsaturated fats.&lt;/p&gt;\r\n    &lt;h5&gt;Eat Less Salt&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Sodium is good for the body, but\r\n       in petty amounts. High salt intake\r\n       means high blood pressure, which\r\n       eventually points out to heart\r\n       conditions. When sodium starts\r\n       accumulating in the blood, it\r\n       attracts water which in turn,\r\n       increases the blood volume. Now to\r\n       keep this blood circulating\r\n       through the blood vessels, the\r\n       heart has to work harder thus,\r\n       causing high blood pressure. The\r\n       recommended amount of sodium in\r\n       the food per day must be less than\r\n       2300 milligrams.&lt;/p&gt;\r\n    &lt;h5&gt;Take the\r\n        Right\r\n        Medication&lt;/h5&gt;\r\n\r\n    &lt;p&gt;\r\n        In most cases, heart diseases are also related to the use of drugs. So, it is important that you take medicines\r\n        as\r\n        prescribed by the doctors, or get them altered if necessary.&lt;/p&gt;&lt;h5&gt;Moderate Alcohol&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Drinking alcohol in moderate amounts does not harm the body. In fact, some studies show that moderate consumption\r\n       provides some benefits for the heart. However, the habit of drinking is analogous to walking on thin ice. It is\r\n       not\r\n       difficult for any one to step out of his limit, and become a heavy drinker. So, ensure that either you stick to\r\n       moderate drinking or you don\'t drink at all.&lt;/p&gt;\r\n    &lt;h5&gt;\r\n        Manage Stress&lt;/h5&gt;\r\n\r\n    &lt;p&gt;Stress has also been known to be one of the common culprits of heart problems. Any stressful\r\n       situation elevates blood pressure and this response takes its toll on the heart. So, keep\r\n       yourself relaxed by practicing meditation, yoga, and other relaxation techniques.&lt;/p&gt;\r\n\r\n    &lt;p&gt;\r\n        To conclude, make a note of the above methods, and keep them handy in case you find it difficult to recall them.\r\n        And\r\n        now I would like to take your leave, as I have some sprinting to do! Take care!&lt;/p&gt;', '', '');
INSERT INTO `oc_simple_blog_article_description` (`simple_blog_article_description_id`, `simple_blog_article_id`, `language_id`, `article_title`, `description`, `meta_description`, `meta_keyword`) VALUES
(190, 6, 1, 'Four Types of Verbal Communication', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt;', '', ''),
(191, 6, 2, 'Looking into the future', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt;', '', ''),
(192, 6, 3, 'Looking into the future', '&lt;p&gt;Verbal communication include sounds, words, language, and speech. Speaking is an effective way of communicating\r\n       and helps in expressing our emotions in words. This form of communication is further classified into four types,\r\n       which are:\r\n    &lt;/p&gt;\r\n    &lt;ol&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Intrapersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication is extremely private and restricted to ourselves. It includes the silent\r\n               conversations we have with ourselves, wherein we juggle roles between the sender and receiver who are\r\n               processing our thoughts and actions. This process of communication when analyzed can either be conveyed\r\n               verbally to someone or stay confined as thoughts.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Interpersonal Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This form of communication takes place between two individuals and is thus a one-on-one conversation.\r\n               Here, the two individuals involved will swap their roles of sender and receiver in order to communicate\r\n               in a clearer manner.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Small Group Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication can take place only when there are more than two people involved. Here the\r\n               number of people will be small enough to allow each participant to interact and converse with the rest.\r\n               Press conferences, board meetings, and team meetings are examples of group communication. Unless a\r\n               specific issue is being discussed, small group discussions can become chaotic and difficult to interpret\r\n               by everybody. This lag in understanding information completely can result in miscommunication.\r\n            &lt;/p&gt;\r\n        &lt;/li&gt;\r\n        &lt;li&gt;\r\n            &lt;h5&gt;Public Communication&lt;/h5&gt;\r\n\r\n            &lt;p&gt;This type of communication takes place when one individual addresses a large gathering of people.\r\n               Election campaigns and public speeches are example of this type of communication. In such cases, there is\r\n               usually a single sender of information and several receivers who are being addressed.&lt;/p&gt;\r\n        &lt;/li&gt;\r\n    &lt;/ol&gt;', '', ''),
(193, 7, 1, 'Proper color solutions for the office', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt;', '', ''),
(194, 7, 2, 'Proper color solutions for the office', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt;', '', ''),
(195, 7, 3, 'Proper color solutions for the office', '&lt;p&gt;When it comes to remodeling an office, one of the most important aspects is painting. Any shade of paint can\r\n       change the complete look of a room as a color has an ability to change a drab and boring room into a stunning\r\n       one. Many people prefer to paint their homes in serene colors as it relaxes the mind. There are many hues of\r\n       colors to choose from that match the atmosphere of a room.&lt;/p&gt;\r\n\r\n    &lt;p&gt;An office is a place where many people come and go. Choose some paint colors that will stimulate the employees,\r\n       relax the customers and make them feel welcome. Here are some ideas for interior paint colors and combinations to\r\n       remodel your office and make it look more appealing to the vision.&lt;/p&gt;\r\n\r\n    &lt;p&gt;Avoid using white, as this color gives a very sterile look to the walls. Remember a shade of color can make a\r\n       room look large or small. So, it is better to avoid black or dark colors that will give off a repulsive look to\r\n       your office.&lt;/p&gt;\r\n\r\n    &lt;p&gt;The popular choice of paint colors that will give a soothing and inviting look to your office are beige, tan,\r\n       light yellow and some shades of blue.&lt;/p&gt;\r\n\r\n    &lt;p&gt;When you choose paint colors for your office make sure that these colors have a resemblance to the flooring and\r\n       office furniture.&lt;/p&gt;\r\n\r\n    &lt;p&gt;These were some tips for choosing paint colors. Before you paint the walls of the room, always paint a small\r\n       portion of the wall to check how it looks. If you are satisfied with the result, you can go ahead with the task,\r\n       or else you can always try other combinations. Whatever color you choose, make sure that it serves its purpose\r\n       and brightens up the atmosphere of the room. Happy painting!&lt;/p&gt;', '', ''),
(199, 9, 1, 'Feeling Stressed? Try the One Joke per Day Therapy', '&lt;p&gt;There are so many elements today in our lives that make things more and more hectic by the day, and there hardly\r\n       seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody,\r\n       plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While\r\n       one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n    &lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;', '', ''),
(200, 9, 2, 'Feeling Stressed? Try the One Joke per Day Therapy', '&lt;p&gt;There are so many elements today in our lives that make things more and more hectic by the day, and there hardly\r\n       seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody,\r\n       plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While\r\n       one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n    &lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;', '', ''),
(201, 9, 3, 'Feeling Stressed? Try the One Joke per Day Therapy', '&lt;p&gt;There are so many elements today in our lives that make things more and more hectic by the day, and there hardly\r\n       seems to be any respite from the constantly mounting pressures and tough competition to stay ahead of everybody,\r\n       plan for the future, etc. However, this has also led to rising stress-related issues, blood pressure, etc. While\r\n       one cannot simply sit at home to avoid all this, a bit of humor has always helped in bringing cheer to one’s day.\r\n    &lt;/p&gt;\r\n\r\n    &lt;p&gt;Yes, it is true. Just one good joke in a day can actually relieve a high amount of stress, and make your hormones\r\n       come to their normal levels despite all the anxiety and pressures of the professional life. Think of it this way,\r\n       has not there been a day when you were told a joke by a friend or relative on the phone or via SMS, and you kept\r\n       on thinking about the same throughout the day, and had a great, stress-free working experience. You might also\r\n       have spread the cheer by telling the joke to your colleagues, thereby also brightening their day and bringing\r\n       some laughter in their lives. Is not this proof enough of what a great joke can do to your entire day?&lt;/p&gt;\r\n\r\n    &lt;p&gt;Presently, there are many sources from where one can get funny jokes, with the best one being the internet.\r\n       Clearly, there are quite a few of those who like to share their humorous side online, which is visible from the\r\n       great compilation of jokes that are available online. There are many kinds of redhead jokes, lawyer jokes, doctor\r\n       jokes, and so on, giving you ample variety in terms of choosing the kind of laugh you want to have according to\r\n       your taste.&lt;/p&gt;\r\n\r\n    &lt;p&gt;But one thing that must be kept in mind is that these jokes are completely in the spirit of humor, and should be\r\n       taken sportingly, and not personally. Remember, it takes only 7 muscles to smile, and 32 to frown, and the former\r\n       always gets a better reaction from the other person.&lt;/p&gt;', '', ''),
(205, 10, 1, 'Going Green Is So Much Simpler Than Most People Think', '&lt;p&gt;An increasing number of people now want to do their part to save the planet due to the worsening problems caused by\r\n   global warming. Unfortunately, numerous people assume that going green is costly and time consuming. Read on to\r\n   discover several immediate things you can do to get on the path to living green.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;', '', ''),
(206, 10, 2, 'Going Green Is So Much Simpler Than Most People Think', '&lt;p&gt;An increasing number of people now want to do their part to save the planet due to the worsening problems caused by\r\n   global warming. Unfortunately, numerous people assume that going green is costly and time consuming. Read on to\r\n   discover several immediate things you can do to get on the path to living green.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;', '', ''),
(207, 10, 3, 'Going Green Is So Much Simpler Than Most People Think', '&lt;p&gt;An increasing number of people now want to do their part to save the planet due to the worsening problems caused by\r\n   global warming. Unfortunately, numerous people assume that going green is costly and time consuming. Read on to\r\n   discover several immediate things you can do to get on the path to living green.&lt;/p&gt;\r\n&lt;p&gt;Recycling is the top way to start. A lot of people continue to place glass and aluminum items in their normal garbage\r\n   even though recycling is not that hard to do today. In the US, it\'s not hard to locate a trash service that offers\r\n   glass and aluminum recycling choices. Many people still continue to discard these items even though recycling bins\r\n   are not hard to find. It merely takes a few minutes to wash off the cans and bottles before placing them into the\r\n   recycle bin.&lt;/p&gt;\r\n&lt;p&gt;Newspapers are other items that overburden our landfills. Virtually all people will merely take their daily paper and\r\n   toss it in the garbage when they are done with it. But, there are many other uses that you can get out of your\r\n   newsprint other than poring over it. Did you know that you can keep your windows clean using newspapers? If you\'re\r\n   tired of seeing small white fragments and streaks on your windowpanes after you clean them with paper towels and\r\n   cleaner, try to use old newspapers instead. Several community groups run regular paper drives. Merely compile all of\r\n   your old newspapers, put them in a stack, and see if the paper drive organizers will come to your location and pick\r\n   them up.&lt;/p&gt;\r\n&lt;p&gt;One more thing that could help you to start to live green is to begin walking a bit more. Lots of people routinely\r\n   drive short distances merely to buy one thing at their local corner market. If you just walk to the store, it can\r\n   take less time, because you won\'t have to locate a parking spot, but you will be saving money on gas and helping to\r\n   save planet Earth by not burning those fuels.&lt;/p&gt;\r\n&lt;p&gt;If you wish to save even more on gas, take the chance to carpool when you can and only mow your lawn two times a\r\n   month instead of weekly. A gorgeous lawn is good to have but skipping an additional week before you mow again\r\n   shouldn\'t significantly affect it. Using a manual push mower like those more normally used many, many years ago will\r\n   help to save the environment even more. Numerous hardware shops still carry this type of mower.\r\n&lt;/p&gt;\r\n&lt;p&gt;When people make up their mind to try green living, it\'s easy to make a few lifestyle modifications that will benefit\r\n   our environment. Likewise, you can find lots of info all over the Internet on other ways to start living green, you\r\n   only have to look for it.&lt;/p&gt;', '', ''),
(208, 8, 1, '5 Most Common Mistakes New Managers Make', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt;', '', ''),
(209, 8, 2, '5 Most Common Mistakes New Managers Make', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt;', '', ''),
(210, 8, 3, '5 Most Common Mistakes New Managers Make', '&lt;p&gt;Learn which five most common mistakes a new manager is likely to make, and how to avoid them.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No.1 - Who\'s the Boss?&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;Some of your subordinates will be young and new, eager to follow you. But, the experienced ones might be more\r\n       resistant to your directives. especially if it comes across as an order, disregarding their experience or\r\n       suggestions. Though, being the one with the responsibility, you also need to assert your authority, and make sure\r\n       your employees respect you and follow you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Your subordinates have a working style of their own, and it will not work well to dictate your ways on them. Stay\r\n       cool as long as they are committed to the work, compliance is another matter. Set targets and deadlines, but do\r\n       not interfere in their work, especially if they are long-standing employees in the company, even though you are\r\n       the one in the upper position.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 2 - I Want to Be the Cool Guy&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;While understanding your subordinates\' viewpoint and respecting their opinions is important, it is another thing\r\n       if you are letting them run the show or take it easy. It is you, after all, who will have to explain things when\r\n       the performance falls.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Everyone hates to be the bad guy, that too, when you are new. But you have to find a balance between\r\n       micromanaging and giving no direction at all. Keep your mind open for suggestions, listen to everyone, but\r\n       ultimately you have to decide on the final direction your team/company takes. Also, do not excuse any slack\r\n       behavior. Tardiness or frequent leaves should not be taken lightly.&lt;/p&gt;\r\n\r\n\r\n    &lt;h5&gt;Mistake No. 3 - Setting Uniform, Inflexible Rules&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;If an employee is frequently late or absent, take him/her to task, but first, do understand the reasons behind\r\n       this issue. Some of them might be suffering from a health condition, or they might have a sick relative at home.\r\n       Same goes for other aspects of the job too.\r\n       While focusing on performance and target, it is easy to forget that you are dealing with people - not processes\r\n       or software which are programmed to run in a certain way. &lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Understand that every employee is different, and will respond differently to authority or pressure. Rather than\r\n       take offense, it is best to find a way around.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 4 - Not Being Clear With Instructions&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;A few months? What exactly do you mean by few - is it two or six? As the planner, you might have a clear, precise\r\n       idea of what you want. But you also need to convey that to your subordinates. Being too vague can leave them\r\n       confused and lose trust in you.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;Make a clear, concise, and precise guideline. Give the employees fixed goals and targets. Numbers, not\r\n       approximates. They need to have a proper idea of how their performance will be measured, to stay motivated and\r\n       work efficiently and smartly.&lt;/p&gt;\r\n\r\n    &lt;h5&gt;Mistake No. 5 - Overestimating Yourself and Your Team&lt;/h5&gt;\r\n\r\n\r\n    &lt;p&gt;New managers are often eager and overenthusiastic. Free from the crutches of their B-school or the restrictions\r\n       of their previous job, they want to prove a lot. Brimming with new ideas, they just can\'t wait to implement them\r\n       and the processes that they learned. They want to bring about a positive change, and fast.&lt;/p&gt;\r\n\r\n\r\n    &lt;p&gt;This enthusiasm is very infectious, affecting the entire team, resulting in a boost in productivity and morale.\r\n       But, unfortunately, it also means that the goals they set are also unrealistically high. Other employees may take\r\n       time adjusting to the sudden changes a new manager and his new processes demand. Add to that, they both will need\r\n       to be perfected and tweaked till you get the expected results. So, set realistic goals, and accept that the new\r\n       processes might also result in losses.&lt;/p&gt;', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_description_additional`
--

CREATE TABLE `oc_simple_blog_article_description_additional` (
  `simple_blog_article_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `additional_description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article_description_additional`
--

INSERT INTO `oc_simple_blog_article_description_additional` (`simple_blog_article_id`, `language_id`, `additional_description`) VALUES
(3, 3, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;'),
(3, 2, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;'),
(3, 1, '&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto beatae consectetur ducimus esse necessitatibus quisquam rerum velit voluptas voluptates!&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_product_related`
--

CREATE TABLE `oc_simple_blog_article_product_related` (
  `simple_blog_article_id` int(16) NOT NULL,
  `product_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article_product_related`
--

INSERT INTO `oc_simple_blog_article_product_related` (`simple_blog_article_id`, `product_id`) VALUES
(4, 30),
(3, 46),
(3, 43),
(3, 31),
(5, 46),
(5, 43),
(5, 31);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_category`
--

CREATE TABLE `oc_simple_blog_article_to_category` (
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_category_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article_to_category`
--

INSERT INTO `oc_simple_blog_article_to_category` (`simple_blog_article_id`, `simple_blog_category_id`) VALUES
(2, 2),
(4, 4),
(4, 2),
(6, 2),
(6, 1),
(3, 2),
(7, 4),
(7, 3),
(8, 4),
(8, 1),
(9, 4),
(9, 2),
(9, 1),
(5, 2),
(5, 3),
(1, 1),
(10, 2),
(10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_layout`
--

CREATE TABLE `oc_simple_blog_article_to_layout` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_article_to_store`
--

CREATE TABLE `oc_simple_blog_article_to_store` (
  `simple_blog_article_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_article_to_store`
--

INSERT INTO `oc_simple_blog_article_to_store` (`simple_blog_article_id`, `store_id`) VALUES
(2, 0),
(4, 0),
(6, 0),
(3, 0),
(7, 0),
(8, 0),
(9, 0),
(5, 0),
(1, 0),
(10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_author`
--

CREATE TABLE `oc_simple_blog_author` (
  `simple_blog_author_id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `image` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_author`
--

INSERT INTO `oc_simple_blog_author` (`simple_blog_author_id`, `name`, `image`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Jessica Prinston', 'catalog/avatar.jpg', 1, '2015-09-16 17:26:04', '2015-09-29 17:51:00'),
(2, 'Sam Kromstain', 'catalog/avatar.jpg', 1, '2015-09-17 10:26:40', '2015-09-29 17:52:05'),
(3, 'Robert Johnson', 'catalog/avatar.jpg', 1, '2015-09-21 16:32:38', '2015-09-29 17:51:32'),
(4, 'Edna Barton', 'catalog/avatar.jpg', 1, '2015-09-21 16:34:45', '2015-09-29 17:52:34');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_author_description`
--

CREATE TABLE `oc_simple_blog_author_description` (
  `simple_blog_author_description_id` int(16) NOT NULL,
  `simple_blog_author_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_author_description`
--

INSERT INTO `oc_simple_blog_author_description` (`simple_blog_author_description_id`, `simple_blog_author_id`, `language_id`, `description`, `meta_description`, `meta_keyword`, `date_added`) VALUES
(34, 1, 1, '&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(35, 1, 2, '&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(36, 1, 3, '&lt;p&gt;Mega positive shop assistant always ready to help you make the right choice and charm you with a smile.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(37, 3, 1, '&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(38, 3, 2, '&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(39, 3, 3, '&lt;p&gt;Senior salesman with 15 years of experience. He knows everything about the products he offers.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(40, 2, 1, '&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(41, 2, 2, '&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(42, 2, 3, '&lt;p&gt;Wholesale manager. Contact him if you want to buy a batch of the products offered at our store. &lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(43, 4, 1, '&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(44, 4, 2, '&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;', '', '', '0000-00-00 00:00:00'),
(45, 4, 3, '&lt;p&gt;Quality control manager. Her mission is to check the products we ship and settle quality issues if any.&lt;/p&gt;', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category`
--

CREATE TABLE `oc_simple_blog_category` (
  `simple_blog_category_id` int(16) NOT NULL,
  `image` mediumtext NOT NULL,
  `parent_id` int(16) NOT NULL,
  `top` tinyint(1) NOT NULL,
  `blog_category_column` int(16) NOT NULL,
  `column` int(8) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_category`
--

INSERT INTO `oc_simple_blog_category` (`simple_blog_category_id`, `image`, `parent_id`, `top`, `blog_category_column`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(1, '', 0, 1, 0, 3, 0, 1, '2015-09-16 17:23:22', '2015-09-28 17:00:31'),
(2, 'catalog/product-1.png', 0, 0, 0, 5, 0, 1, '2015-09-17 10:24:12', '2015-09-28 17:05:27'),
(3, '', 0, 0, 0, 5, 0, 1, '2015-09-21 16:44:25', '2015-09-28 17:01:16'),
(4, '', 0, 1, 0, 5, 3, 1, '2015-09-28 17:06:19', '2015-09-28 17:06:19');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_description`
--

CREATE TABLE `oc_simple_blog_category_description` (
  `simple_blog_category_description_id` int(16) NOT NULL,
  `simple_blog_category_id` int(16) NOT NULL,
  `language_id` int(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` mediumtext NOT NULL,
  `meta_description` varchar(256) NOT NULL,
  `meta_keyword` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_category_description`
--

INSERT INTO `oc_simple_blog_category_description` (`simple_blog_category_description_id`, `simple_blog_category_id`, `language_id`, `name`, `description`, `meta_description`, `meta_keyword`) VALUES
(43, 1, 1, 'Branding', '', '', ''),
(44, 1, 2, 'Branding', '', '', ''),
(45, 1, 3, 'Branding', '', '', ''),
(46, 3, 1, 'Consulting', '&lt;br&gt;', '', ''),
(47, 3, 2, 'Consulting', '', '', ''),
(48, 3, 3, 'Consulting', '&lt;br&gt;', '', ''),
(49, 2, 1, 'Customer Service', '', '', ''),
(50, 2, 2, 'Customer Service', '', '', ''),
(51, 2, 3, 'Customer Service', '', '', ''),
(52, 4, 1, 'Management', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(53, 4, 2, 'Management', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', ''),
(54, 4, 3, 'Management', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_to_layout`
--

CREATE TABLE `oc_simple_blog_category_to_layout` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL,
  `layout_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_category_to_store`
--

CREATE TABLE `oc_simple_blog_category_to_store` (
  `simple_blog_category_id` int(16) NOT NULL,
  `store_id` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_category_to_store`
--

INSERT INTO `oc_simple_blog_category_to_store` (`simple_blog_category_id`, `store_id`) VALUES
(2, 0),
(3, 0),
(1, 0),
(4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_comment`
--

CREATE TABLE `oc_simple_blog_comment` (
  `simple_blog_comment_id` int(16) NOT NULL,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_reply_id` int(16) NOT NULL,
  `author` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_comment`
--

INSERT INTO `oc_simple_blog_comment` (`simple_blog_comment_id`, `simple_blog_article_id`, `simple_blog_article_reply_id`, `author`, `comment`, `status`, `date_added`, `date_modified`) VALUES
(1, 1, 0, 'Bernard Show', 'That’s awesome! Future belongs to youngsters, so businessmen can’t ignore their needs in any case.', 1, '2015-09-17 10:05:35', '2015-09-28 17:18:32'),
(2, 3, 0, 'Zack Hernandez', 'The success of your business would solely depend on you. The only thing you can rely on is your power to achieve your goal&quot; – very true to life statement', 1, '2015-09-18 11:39:25', '2015-09-28 17:19:38'),
(3, 3, 0, 'James Anderson', ' I am thinking of starting my own business and will ponder on the author’s notes. Concise and understandable, good job.', 1, '2015-09-18 11:48:36', '2015-09-28 17:20:05'),
(4, 3, 0, 'Greg Wilson', 'Unbelievable… Three simple guidelines to follow that can change your life. Worth trying out, sure they will work as everything genius is simple.', 1, '2015-09-18 12:08:42', '2015-09-28 17:19:53'),
(6, 1, 0, 'Michael Ventura', 'Completely agree with the author. Modern businessmen should involve young people, introduce brands to them, socialize… Looks like a fresh product market!', 1, '2015-09-21 18:18:56', '2015-09-28 17:18:47'),
(14, 1, 1, 'Sarah Cole', 'The author did a great job with all these research work. Really valuable information, thank you!', 1, '2015-09-28 17:18:32', '2015-09-28 17:18:32'),
(15, 2, 0, 'Taylor Miller', 'Follow your dream and it will turn to reality. A very inspiring article. Thanks for sharing!', 1, '2015-09-28 17:20:34', '2015-09-28 17:20:34'),
(16, 2, 0, 'Max Harris', 'Will try to repeat your mantras every day. Hopefully they will help in my current project.', 1, '2015-09-28 17:20:59', '2015-09-28 17:20:59'),
(17, 2, 0, 'Sidney Garcia', 'I thought I am just a dreamer, but now I know how to become a doer. That’s cool, appreciate it!', 1, '2015-09-28 17:21:18', '2015-09-28 17:21:18'),
(18, 4, 0, 'Joe Lee', 'Very inspiring! So much wisdom in simple words…', 1, '2015-10-13 12:37:35', '2015-10-13 14:27:08'),
(19, 4, 0, 'Kate Taylor', 'Love this poet! Absolutely brilliant quotes!', 1, '2015-10-13 12:37:45', '2015-10-13 14:27:02'),
(20, 4, 0, 'Kim Martin', 'He is phenomenal! Rumi is considered to be the most popular poet in America.', 1, '2015-10-13 12:37:54', '2015-10-13 14:26:57'),
(21, 5, 0, 'Rob Gonzalez', 'Thanks for your pieces of advice. Will try to stick to them.', 1, '2015-10-13 12:56:02', '2015-10-13 14:26:52'),
(22, 5, 0, 'Paul Young', 'Gosh! I have been slowly damaging my heart all these years! It’s time to stop ruining myself.', 1, '2015-10-13 12:56:12', '2015-10-13 14:26:47'),
(23, 5, 0, 'Sandy Hill', 'Human life is the most precious thing in this world. It’s really time to stop committing lazy suicides.', 1, '2015-10-13 12:56:22', '2015-10-13 14:26:41'),
(24, 6, 0, 'Libi Ramirez', 'Communication is the process of exchanging information in the form of messages, symbols, thoughts, signs, and opinions. It’s utterly important for such social beings like people', 1, '2015-10-13 13:01:26', '2015-10-13 14:26:35'),
(25, 6, 0, 'Kirsten Evans', 'Indeed, it would be extremely hard to imagine a world without some form of interpersonal interaction.', 1, '2015-10-13 13:01:32', '2015-10-13 14:26:30'),
(26, 6, 0, 'Brook Murphy', 'Some of the basic ways by which we communicate with one another is through speech, sign language, body language, touch, and eye contact. So, waiting for the sequel of your post.\r\n', 1, '2015-10-13 13:01:40', '2015-10-13 14:26:25'),
(27, 7, 0, 'Ashley Cooper', 'Now I know what colors to choose for me office, thank you!', 1, '2015-10-13 13:05:32', '2015-10-13 14:26:21'),
(28, 7, 0, 'Gomez Bell', 'The repairing does not seem that challenging any more. Great tips!', 1, '2015-10-13 13:05:39', '2015-10-13 14:26:16'),
(29, 7, 0, 'Morgan Cook', 'Colors that stimulate the employees, relax the customers and make them feel welcome… Cool! That’s a dream!', 1, '2015-10-13 13:05:45', '2015-10-13 14:26:10'),
(30, 8, 0, 'Nancy Long', 'Thanks for sharing! Will try to avoid the listed mistakes.', 1, '2015-10-13 14:16:59', '2015-10-13 14:26:06'),
(31, 8, 0, 'Eva Reed', 'I wish I’ve read this article earlier… Useful tips for all young managers.', 1, '2015-10-13 14:17:05', '2015-10-13 14:23:53'),
(32, 8, 0, 'Betty Butler', 'Just got my new position. The discussed matter is really urgent for me.', 1, '2015-10-13 14:17:14', '2015-10-13 14:23:48'),
(33, 9, 0, 'Melany Wood', 'Smile, the depression will think you are an idiot and go away', 1, '2015-10-13 14:22:47', '2015-10-13 14:23:26'),
(34, 9, 0, 'York Cruz', 'BTW, your smiling face looks much more appealing and beautiful too.', 1, '2015-10-13 14:22:56', '2015-10-13 14:23:20'),
(35, 9, 0, 'Vivien Foster', 'I like to spread my laughter around as it\'s contagious', 1, '2015-10-13 14:23:05', '2015-10-13 14:23:16'),
(36, 10, 0, 'Mark Jenkins', 'You’ve raised an important topic. Hopefully many people will at least consider shifting to green life.', 1, '2015-10-13 15:31:41', '2015-10-13 15:32:18'),
(37, 10, 0, 'Dudley Diaz', 'Going green turned out to be really simple. Let’s go green, guys!', 1, '2015-10-13 15:31:51', '2015-10-13 15:32:13'),
(38, 10, 0, 'Meril Ward', 'Preserving our planet for future generation is a necessity. So, go green now while it’s not too late.\r\n', 1, '2015-10-13 15:31:58', '2015-10-13 15:32:08');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_related_article`
--

CREATE TABLE `oc_simple_blog_related_article` (
  `simple_blog_related_article_id` int(16) NOT NULL,
  `simple_blog_article_id` int(16) NOT NULL,
  `simple_blog_article_related_id` int(16) NOT NULL,
  `sort_order` int(8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_related_article`
--

INSERT INTO `oc_simple_blog_related_article` (`simple_blog_related_article_id`, `simple_blog_article_id`, `simple_blog_article_related_id`, `sort_order`, `status`, `date_added`) VALUES
(28, 1, 7, 0, 1, '2015-09-28 17:10:13'),
(29, 2, 1, 0, 1, '2015-09-28 17:12:45'),
(30, 3, 1, 2, 1, '2015-09-28 17:14:21'),
(31, 3, 2, 1, 1, '2015-09-28 17:14:21'),
(37, 4, 1, 0, 1, '2015-10-13 12:36:33');

-- --------------------------------------------------------

--
-- Table structure for table `oc_simple_blog_view`
--

CREATE TABLE `oc_simple_blog_view` (
  `simple_blog_view_id` int(16) NOT NULL,
  `simple_blog_article_id` int(16) NOT NULL,
  `view` int(16) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_simple_blog_view`
--

INSERT INTO `oc_simple_blog_view` (`simple_blog_view_id`, `simple_blog_article_id`, `view`, `date_added`, `date_modified`) VALUES
(1, 1, 110, '2015-09-16 18:15:21', '2015-12-07 15:00:09'),
(2, 3, 158, '2015-09-17 10:28:27', '2015-12-22 15:58:12'),
(3, 2, 4, '2015-09-21 16:08:28', '2015-09-28 17:21:28'),
(5, 7, 11, '2015-09-21 17:30:47', '2015-12-22 15:27:11'),
(6, 5, 29, '2015-09-21 17:53:05', '2015-12-22 15:27:16'),
(7, 8, 16, '2015-09-22 12:42:49', '2015-12-22 15:27:08'),
(8, 4, 12, '2015-09-23 17:59:14', '2015-12-22 15:27:18'),
(9, 9, 5, '2015-09-25 17:55:16', '2015-12-22 15:27:11'),
(10, 6, 22, '2015-09-29 10:44:23', '2018-11-25 18:58:55'),
(11, 10, 12, '2015-10-13 15:31:30', '2018-11-25 18:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `oc_statistics`
--

CREATE TABLE `oc_statistics` (
  `statistics_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `value` decimal(15,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_statistics`
--

INSERT INTO `oc_statistics` (`statistics_id`, `code`, `value`) VALUES
(1, 'order_sale', '0.0000'),
(2, 'order_processing', '0.0000'),
(3, 'order_complete', '0.0000'),
(4, 'order_other', '0.0000'),
(5, 'returns', '0.0000'),
(6, 'product', '0.0000'),
(7, 'review', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order');

-- --------------------------------------------------------

--
-- Table structure for table `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Tax on Apparels (5%)', 'Tax on Apparels', '2009-01-06 23:21:53', '2018-11-11 21:20:44'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2018-11-11 20:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 7, 'GST (5%)', '5.0000', 'P', '2011-03-09 21:17:10', '2018-11-11 21:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(86, 2);

-- --------------------------------------------------------

--
-- Table structure for table `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(130, 10, 86, 'payment', 1),
(137, 9, 86, 'shipping', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_theme`
--

CREATE TABLE `oc_theme` (
  `theme_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `theme` varchar(64) NOT NULL,
  `route` varchar(64) NOT NULL,
  `code` mediumtext NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_tm_newsletter`
--

CREATE TABLE `oc_tm_newsletter` (
  `tm_newsletter_id` int(11) NOT NULL,
  `tm_newsletter_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `oc_translation`
--

CREATE TABLE `oc_translation` (
  `translation_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `route` varchar(64) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_upload`
--

INSERT INTO `oc_upload` (`upload_id`, `name`, `filename`, `code`, `date_added`) VALUES
(1, 'a-ti-tochno76223476orig01.jpg', 'a-ti-tochno76223476orig01.jpg.hkYyuAPU3eZSbQbzCBC6GywRe1cb5Pqy', 'ad44d58e9222d1b402ca96d2010f965c84614f3c', '2015-12-22 14:57:02');

-- --------------------------------------------------------

--
-- Table structure for table `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(845, 'common/home', ''),
(846, 'information/contact', 'contact-us'),
(847, 'information/sitemap', 'sitemap'),
(848, 'product/special', 'specials'),
(849, 'product/manufacturer', 'brands'),
(850, 'product/compare', 'compare-products'),
(851, 'product/search', 'search'),
(852, 'checkout/cart', 'cart'),
(853, 'checkout/checkout', 'checkout'),
(854, 'account/login', 'login'),
(855, 'account/logout', 'logout'),
(856, 'account/voucher', 'vouchers'),
(857, 'account/wishlist', 'wishlist'),
(858, 'account/account', 'my-account'),
(859, 'account/order', 'order-history'),
(860, 'account/newsletter', 'newsletter'),
(861, 'account/return/add', 'return-add'),
(862, 'account/forgotten', 'forgot-password'),
(863, 'account/download', 'downloads'),
(864, 'account/return', 'returns'),
(865, 'account/transaction', 'transactions'),
(866, 'account/register', 'create-account'),
(867, 'account/recurring', 'recurring'),
(868, 'account/address', 'address-book'),
(869, 'account/reward', 'reward-points'),
(870, 'affiliate/forgotten', 'affiliate-forgot-password'),
(871, 'affiliate/register', 'create-affiliate-account'),
(872, 'affiliate/login', 'affiliate-login'),
(873, 'affiliate/account', 'affiliates'),
(1164, 'information_id=6', 'delivery'),
(1182, 'simple_blog_category_id=1', 'brands'),
(1183, 'simple_blog_category_id=3', 'lady'),
(1184, 'simple_blog_category_id=2', 'unisex'),
(1185, 'simple_blog_category_id=4', 'management'),
(1186, 'simple_blog_article_id=1', 'lorem'),
(1187, 'simple_blog_article_id=2', 'test'),
(1188, 'simple_blog_article_id=3', 'test2'),
(1225, 'simple_blog_author_id=1', 'jessica-prinston'),
(1226, 'simple_blog_author_id=3', 'robert-johnson'),
(1227, 'simple_blog_author_id=2', 'sam-kromstain'),
(1228, 'simple_blog_author_id=4', 'edna-barton'),
(1246, 'simple_blog_article_id=4', 'delectus'),
(1248, 'simple_blog_article_id=5', 'eveniet'),
(1249, 'simple_blog_article_id=6', 'Incidunt'),
(1250, 'simple_blog_article_id=7', 'laboriosam'),
(1252, 'simple_blog_article_id=9', 'repellat'),
(1254, 'simple_blog_article_id=10', 'post10'),
(1255, 'simple_blog_article_id=8', 'molestias'),
(1299, 'category_id=30', 'Van'),
(1301, 'category_id=33', 'Classic cars'),
(1326, 'category_id=38', ''),
(1331, 'category_id=32', 'Motorsports'),
(1368, 'category_id=18', 'Men'),
(1369, 'category_id=45', 'Women 1'),
(1371, 'category_id=55', ''),
(1374, 'category_id=29', 'T-shirts'),
(1375, 'category_id=28', 'Round-Neck'),
(1376, 'category_id=58', ''),
(1540, 'category_id=59', ''),
(1541, 'category_id=60', ''),
(1545, 'category_id=63', 'Boys Accessories'),
(1546, 'category_id=64', 'Womens Footwear'),
(1547, 'category_id=65', 'Womens Accessories'),
(1548, 'category_id=66', 'Girls Footwear'),
(1550, 'category_id=67', 'Girls Accessories'),
(1551, 'category_id=68', 'Girls Clothing'),
(1552, 'manufacturer_id=11', 'ELECTRO SPORTS TSHIRTS ELECTRO SPORTS WHOLE SALE JERSEY ELECTRO SPPORTS ONLINE SHOPPING '),
(1555, 'category_id=31', 'Motorhome'),
(1562, 'product_id=28', 'Electro Sports Tri Colour Jersey With Collar'),
(1574, 'information_id=4', 'about_us'),
(1584, 'information_id=5', 'terms'),
(1586, 'information_id=3', 'privacy');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'admin', 'a13d159ffbd15321e36cd80bc82e7e0111e6b3a5', '5PM3EEUI9', 'John', 'Doe', 'sharfraz.2008@rediffmail.com', '', '2cc7bd97b1f6e7d964250dc1b010d449d5e8c75a', '45.248.66.151', 1, '2018-08-26 14:25:55'),
(2, 1, 'ADMIN', '123456', '5PM3EEUI9', 'John', 'Doe', 'sharfraz.2008@rediffmail.com', '', '2cc7bd97b1f6e7d964250dc1b010d449d5e8c75a', '::1', 1, '2018-08-26 14:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{\"access\":[\"analytics\\/google_analytics\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/sass\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/d_export_import\\/excel\",\"extension\\/d_export_import\\/setting\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/module\\/d_export_import\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/shipping\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/amazon_button\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/carousel\",\"module\\/category\",\"module\\/d_opencart_patch\",\"module\\/ebay_listing\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/olark\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"module\\/tm_blog_articles\",\"module\\/tm_blog_category\",\"module\\/tm_category\",\"module\\/tm_category_menu\",\"module\\/tm_cookie_policy\",\"module\\/tm_countdown\",\"module\\/tm_fbbox\",\"module\\/tm_google_map\",\"module\\/tm_instagram\",\"module\\/tm_manufacturer\",\"module\\/tm_megamenu\",\"module\\/tm_module_tab\",\"module\\/tm_newsletter\",\"module\\/tm_newsletter_popup\",\"module\\/tm_parallax\",\"module\\/tm_pinterest\",\"module\\/tm_product_slideshow\",\"module\\/tm_progress_bars\",\"module\\/tm_single_category_product\",\"module\\/tm_slideshow\",\"module\\/tm_social_list\",\"module\\/tm_twitter\",\"module\\/tm_videobg\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"payment\\/amazon_checkout\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_redirect\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/liqpay\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/custom_field\",\"sale\\/customer\",\"sale\\/customer_ban_ip\",\"sale\\/customer_group\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"simple_blog\\/article\",\"simple_blog\\/author\",\"simple_blog\\/category\",\"simple_blog\\/comment\",\"simple_blog\\/install\",\"simple_blog\\/report\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/export_import\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"module\\/recently_viewed\",\"extension\\/module\\/recently_viewed\",\"module\\/faq\",\"extension\\/module\\/faq\",\"module\\/elfsight_faq\",\"module\\/tm_countdown\",\"module\\/recently_viewed\",\"module\\/tm_category\",\"module\\/recently_viewed\",\"module\\/tm_cookie_policy\",\"module\\/customer_invoice\",\"module\\/tm_countdown\"],\"modify\":[\"analytics\\/google_analytics\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/sass\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/d_export_import\\/excel\",\"extension\\/d_export_import\\/setting\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/module\\/d_export_import\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/shipping\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/amazon_button\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/carousel\",\"module\\/category\",\"module\\/d_opencart_patch\",\"module\\/ebay_listing\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/olark\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"module\\/tm_blog_articles\",\"module\\/tm_blog_category\",\"module\\/tm_category\",\"module\\/tm_category_menu\",\"module\\/tm_cookie_policy\",\"module\\/tm_countdown\",\"module\\/tm_fbbox\",\"module\\/tm_google_map\",\"module\\/tm_instagram\",\"module\\/tm_manufacturer\",\"module\\/tm_megamenu\",\"module\\/tm_module_tab\",\"module\\/tm_newsletter\",\"module\\/tm_newsletter_popup\",\"module\\/tm_parallax\",\"module\\/tm_pinterest\",\"module\\/tm_product_slideshow\",\"module\\/tm_progress_bars\",\"module\\/tm_single_category_product\",\"module\\/tm_slideshow\",\"module\\/tm_social_list\",\"module\\/tm_twitter\",\"module\\/tm_videobg\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"payment\\/amazon_checkout\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_redirect\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/liqpay\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/custom_field\",\"sale\\/customer\",\"sale\\/customer_ban_ip\",\"sale\\/customer_group\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"simple_blog\\/article\",\"simple_blog\\/author\",\"simple_blog\\/category\",\"simple_blog\\/comment\",\"simple_blog\\/install\",\"simple_blog\\/report\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/export_import\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\",\"module\\/recently_viewed\",\"extension\\/module\\/recently_viewed\",\"module\\/faq\",\"extension\\/module\\/faq\",\"module\\/elfsight_faq\",\"module\\/tm_countdown\",\"module\\/recently_viewed\",\"module\\/tm_category\",\"module\\/recently_viewed\",\"module\\/tm_cookie_policy\",\"module\\/customer_invoice\",\"module\\/tm_countdown\"]}'),
(10, 'Demonstration', '{\"access\":[\"analytics\\/google_analytics\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/faq\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/sass\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"event\\/d_twig_manager\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/d_export_import\\/excel\",\"extension\\/d_export_import\\/setting\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/module\\/d_export_import\",\"extension\\/module\\/faq\",\"extension\\/module\\/recently_viewed\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/payment\\/ccav\",\"extension\\/shipping\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/amazon_button\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/carousel\",\"module\\/category\",\"module\\/d_opencart_patch\",\"module\\/ebay_listing\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/olark\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"module\\/tm_blog_articles\",\"module\\/tm_blog_category\",\"module\\/tm_category\",\"module\\/tm_category_menu\",\"module\\/tm_cookie_policy\",\"module\\/tm_countdown\",\"module\\/tm_fbbox\",\"module\\/tm_google_map\",\"module\\/tm_instagram\",\"module\\/tm_manufacturer\",\"module\\/tm_megamenu\",\"module\\/tm_module_tab\",\"module\\/tm_newsletter\",\"module\\/tm_newsletter_popup\",\"module\\/tm_parallax\",\"module\\/tm_pinterest\",\"module\\/tm_product_slideshow\",\"module\\/tm_progress_bars\",\"module\\/tm_single_category_product\",\"module\\/tm_slideshow\",\"module\\/tm_social_list\",\"module\\/tm_twitter\",\"module\\/tm_videobg\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"payment\\/amazon_checkout\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_redirect\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/liqpay\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/custom_field\",\"sale\\/customer\",\"sale\\/customer_ban_ip\",\"sale\\/customer_group\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"simple_blog\\/article\",\"simple_blog\\/author\",\"simple_blog\\/category\",\"simple_blog\\/comment\",\"simple_blog\\/install\",\"simple_blog\\/report\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/export_import\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"],\"modify\":[\"analytics\\/google_analytics\",\"captcha\\/basic_captcha\",\"captcha\\/google_captcha\",\"catalog\\/attribute\",\"catalog\\/attribute_group\",\"catalog\\/category\",\"catalog\\/download\",\"catalog\\/faq\",\"catalog\\/filter\",\"catalog\\/information\",\"catalog\\/manufacturer\",\"catalog\\/option\",\"catalog\\/product\",\"catalog\\/recurring\",\"catalog\\/review\",\"common\\/column_left\",\"common\\/filemanager\",\"common\\/menu\",\"common\\/profile\",\"common\\/sass\",\"common\\/stats\",\"customer\\/custom_field\",\"customer\\/customer\",\"customer\\/customer_group\",\"design\\/banner\",\"design\\/layout\",\"event\\/d_twig_manager\",\"extension\\/analytics\",\"extension\\/captcha\",\"extension\\/d_export_import\\/excel\",\"extension\\/d_export_import\\/setting\",\"extension\\/feed\",\"extension\\/fraud\",\"extension\\/installer\",\"extension\\/modification\",\"extension\\/module\",\"extension\\/module\\/d_export_import\",\"extension\\/module\\/faq\",\"extension\\/module\\/recently_viewed\",\"extension\\/openbay\",\"extension\\/payment\",\"extension\\/payment\\/ccav\",\"extension\\/shipping\",\"extension\\/total\",\"feed\\/google_base\",\"feed\\/google_sitemap\",\"feed\\/openbaypro\",\"fraud\\/fraudlabspro\",\"fraud\\/ip\",\"fraud\\/maxmind\",\"localisation\\/country\",\"localisation\\/currency\",\"localisation\\/geo_zone\",\"localisation\\/language\",\"localisation\\/length_class\",\"localisation\\/location\",\"localisation\\/order_status\",\"localisation\\/return_action\",\"localisation\\/return_reason\",\"localisation\\/return_status\",\"localisation\\/stock_status\",\"localisation\\/tax_class\",\"localisation\\/tax_rate\",\"localisation\\/weight_class\",\"localisation\\/zone\",\"marketing\\/affiliate\",\"marketing\\/contact\",\"marketing\\/coupon\",\"marketing\\/marketing\",\"module\\/account\",\"module\\/affiliate\",\"module\\/amazon_button\",\"module\\/amazon_login\",\"module\\/amazon_pay\",\"module\\/banner\",\"module\\/bestseller\",\"module\\/carousel\",\"module\\/category\",\"module\\/d_opencart_patch\",\"module\\/ebay_listing\",\"module\\/featured\",\"module\\/filter\",\"module\\/google_hangouts\",\"module\\/html\",\"module\\/information\",\"module\\/latest\",\"module\\/olark\",\"module\\/pp_button\",\"module\\/pp_login\",\"module\\/slideshow\",\"module\\/special\",\"module\\/store\",\"module\\/tm_blog_articles\",\"module\\/tm_blog_category\",\"module\\/tm_category\",\"module\\/tm_category_menu\",\"module\\/tm_cookie_policy\",\"module\\/tm_countdown\",\"module\\/tm_fbbox\",\"module\\/tm_google_map\",\"module\\/tm_instagram\",\"module\\/tm_manufacturer\",\"module\\/tm_megamenu\",\"module\\/tm_module_tab\",\"module\\/tm_newsletter\",\"module\\/tm_newsletter_popup\",\"module\\/tm_parallax\",\"module\\/tm_pinterest\",\"module\\/tm_product_slideshow\",\"module\\/tm_progress_bars\",\"module\\/tm_single_category_product\",\"module\\/tm_slideshow\",\"module\\/tm_social_list\",\"module\\/tm_twitter\",\"module\\/tm_videobg\",\"openbay\\/amazon\",\"openbay\\/amazon_listing\",\"openbay\\/amazon_product\",\"openbay\\/amazonus\",\"openbay\\/amazonus_listing\",\"openbay\\/amazonus_product\",\"openbay\\/ebay\",\"openbay\\/ebay_profile\",\"openbay\\/ebay_template\",\"openbay\\/etsy\",\"openbay\\/etsy_product\",\"openbay\\/etsy_shipping\",\"openbay\\/etsy_shop\",\"payment\\/amazon_checkout\",\"payment\\/amazon_login_pay\",\"payment\\/authorizenet_aim\",\"payment\\/authorizenet_sim\",\"payment\\/bank_transfer\",\"payment\\/bluepay_hosted\",\"payment\\/bluepay_redirect\",\"payment\\/cheque\",\"payment\\/cod\",\"payment\\/firstdata\",\"payment\\/firstdata_remote\",\"payment\\/free_checkout\",\"payment\\/g2apay\",\"payment\\/globalpay\",\"payment\\/globalpay_remote\",\"payment\\/klarna_account\",\"payment\\/klarna_invoice\",\"payment\\/liqpay\",\"payment\\/nochex\",\"payment\\/paymate\",\"payment\\/paypoint\",\"payment\\/payza\",\"payment\\/perpetual_payments\",\"payment\\/pp_express\",\"payment\\/pp_payflow\",\"payment\\/pp_payflow_iframe\",\"payment\\/pp_pro\",\"payment\\/pp_pro_iframe\",\"payment\\/pp_standard\",\"payment\\/realex\",\"payment\\/realex_remote\",\"payment\\/sagepay_direct\",\"payment\\/sagepay_server\",\"payment\\/sagepay_us\",\"payment\\/securetrading_pp\",\"payment\\/securetrading_ws\",\"payment\\/skrill\",\"payment\\/twocheckout\",\"payment\\/web_payment_software\",\"payment\\/worldpay\",\"report\\/affiliate\",\"report\\/affiliate_activity\",\"report\\/affiliate_login\",\"report\\/customer_activity\",\"report\\/customer_credit\",\"report\\/customer_login\",\"report\\/customer_online\",\"report\\/customer_order\",\"report\\/customer_reward\",\"report\\/marketing\",\"report\\/product_purchased\",\"report\\/product_viewed\",\"report\\/sale_coupon\",\"report\\/sale_order\",\"report\\/sale_return\",\"report\\/sale_shipping\",\"report\\/sale_tax\",\"sale\\/custom_field\",\"sale\\/customer\",\"sale\\/customer_ban_ip\",\"sale\\/customer_group\",\"sale\\/order\",\"sale\\/recurring\",\"sale\\/return\",\"sale\\/voucher\",\"sale\\/voucher_theme\",\"setting\\/setting\",\"setting\\/store\",\"shipping\\/auspost\",\"shipping\\/citylink\",\"shipping\\/fedex\",\"shipping\\/flat\",\"shipping\\/free\",\"shipping\\/item\",\"shipping\\/parcelforce_48\",\"shipping\\/pickup\",\"shipping\\/royal_mail\",\"shipping\\/ups\",\"shipping\\/usps\",\"shipping\\/weight\",\"simple_blog\\/article\",\"simple_blog\\/author\",\"simple_blog\\/category\",\"simple_blog\\/comment\",\"simple_blog\\/install\",\"simple_blog\\/report\",\"tool\\/backup\",\"tool\\/error_log\",\"tool\\/export_import\",\"tool\\/upload\",\"total\\/coupon\",\"total\\/credit\",\"total\\/handling\",\"total\\/klarna_fee\",\"total\\/low_order_fee\",\"total\\/reward\",\"total\\/shipping\",\"total\\/sub_total\",\"total\\/tax\",\"total\\/total\",\"total\\/voucher\",\"user\\/api\",\"user\\/user\",\"user\\/user_permission\"]}');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(1, 'catalog/article/article-2.jpg'),
(2, 'catalog/article/article-3.jpg'),
(3, 'catalog/article/article-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(1, 1, 'Birthday'),
(2, 1, 'Christmas'),
(3, 1, 'General'),
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1000.00000000'),
(2, '1.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Table structure for table `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'grams', 'gm'),
(2, 1, 'kilograms', 'kg'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M\'Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu\'a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark\'unik\'', 'GEG', 1),
(184, 11, 'Kotayk\'', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik\'', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots\' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore\'s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel\'skaya (Homyel\')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George\'s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith\'s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M\'Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O\'Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '\'Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma\'iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa\'id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina\'', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina\'', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d\'Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand\'Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Pondicherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta\'mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be\'er Sheva', 'BS', 1),
(1613, 104, 'Bika\'at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '\'Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al \'Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa\'', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa\'', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma\'an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P\'yongan-bukto', 'PYB', 1),
(1769, 112, 'P\'yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P\'yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch\'ungch\'ong-bukto', 'CO', 1),
(1774, 113, 'Ch\'ungch\'ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch\'on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t\'ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al \'Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra\'', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale\'s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha\'s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al \'Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati\'', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke\'s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa\'id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul\'yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust\'-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A\'ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa\'asaleleaga', 'FA', 1),
(2856, 181, 'Gaga\'emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa\'itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va\'a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '\'Asir', 'AS', 1),
(2882, 184, 'Ha\'il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand\' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand\' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A\'ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa\'iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa\'iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1),
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t\'ou', 'NT', 1),
(3145, 206, 'P\'eng-hu', 'PH', 1),
(3146, 206, 'P\'ing-tung', 'PT', 1),
(3147, 206, 'T\'ai-chung', 'TG', 1),
(3148, 206, 'T\'ai-nan', 'TA', 1),
(3149, 206, 'T\'ai-pei county', 'TP', 1),
(3150, 206, 'T\'ai-tung', 'TT', 1),
(3151, 206, 'T\'ao-yuan', 'TY', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T\'ai-chung', 'TH', 1),
(3157, 206, 'T\'ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T\'ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha\'apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava\'u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas\'ka Oblast\'', '71', 1),
(3481, 220, 'Chernihivs\'ka Oblast\'', '74', 1),
(3482, 220, 'Chernivets\'ka Oblast\'', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs\'ka Oblast\'', '12', 1),
(3485, 220, 'Donets\'ka Oblast\'', '14', 1),
(3486, 220, 'Ivano-Frankivs\'ka Oblast\'', '26', 1),
(3487, 220, 'Khersons\'ka Oblast\'', '65', 1),
(3488, 220, 'Khmel\'nyts\'ka Oblast\'', '68', 1),
(3489, 220, 'Kirovohrads\'ka Oblast\'', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs\'ka Oblast\'', '32', 1),
(3492, 220, 'Luhans\'ka Oblast\'', '09', 1),
(3493, 220, 'L\'vivs\'ka Oblast\'', '46', 1),
(3494, 220, 'Mykolayivs\'ka Oblast\'', '48', 1),
(3495, 220, 'Odes\'ka Oblast\'', '51', 1),
(3496, 220, 'Poltavs\'ka Oblast\'', '53', 1),
(3497, 220, 'Rivnens\'ka Oblast\'', '56', 1),
(3498, 220, 'Sevastopol\'', '40', 1),
(3499, 220, 'Sums\'ka Oblast\'', '59', 1),
(3500, 220, 'Ternopil\'s\'ka Oblast\'', '61', 1),
(3501, 220, 'Vinnyts\'ka Oblast\'', '05', 1),
(3502, 220, 'Volyns\'ka Oblast\'', '07', 1),
(3503, 220, 'Zakarpats\'ka Oblast\'', '21', 1),
(3504, 220, 'Zaporiz\'ka Oblast\'', '23', 1),
(3505, 220, 'Zhytomyrs\'ka oblast\'', '18', 1),
(3506, 221, 'Abu Zaby', 'AZ', 1),
(3507, 221, '\'Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubayy', 'DU', 1),
(3511, 221, 'R\'as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg\'ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog\'iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma\'rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa\'dah', 'SD', 1),
(3805, 235, 'San\'a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta\'izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs\'ka Oblast\'', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1),
(4232, 99, 'india', 'Ind', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(112, 99, 1493, 6, '2018-11-11 21:03:08', '0000-00-00 00:00:00'),
(113, 99, 1485, 5, '2018-11-11 21:04:10', '0000-00-00 00:00:00'),
(114, 99, 0, 7, '2018-11-11 21:15:29', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Indexes for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Indexes for table `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Indexes for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Indexes for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Indexes for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Indexes for table `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Indexes for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Indexes for table `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Indexes for table `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Indexes for table `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
  ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Indexes for table `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Indexes for table `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Indexes for table `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Indexes for table `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Indexes for table `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Indexes for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Indexes for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Indexes for table `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Indexes for table `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `oc_customer_affiliate`
--
ALTER TABLE `oc_customer_affiliate`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  ADD PRIMARY KEY (`customer_approval_id`);

--
-- Indexes for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Indexes for table `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Indexes for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Indexes for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Indexes for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  ADD PRIMARY KEY (`customer_search_id`);

--
-- Indexes for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Indexes for table `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Indexes for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Indexes for table `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Indexes for table `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Indexes for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Indexes for table `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Indexes for table `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Indexes for table `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Indexes for table `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Indexes for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  ADD PRIMARY KEY (`extension_install_id`);

--
-- Indexes for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  ADD PRIMARY KEY (`extension_path_id`);

--
-- Indexes for table `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Indexes for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Indexes for table `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Indexes for table `oc_fraudlabspro`
--
ALTER TABLE `oc_fraudlabspro`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_fraud_ip`
--
ALTER TABLE `oc_fraud_ip`
  ADD PRIMARY KEY (`ip`);

--
-- Indexes for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Indexes for table `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Indexes for table `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Indexes for table `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Indexes for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Indexes for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Indexes for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Indexes for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Indexes for table `oc_letscms_faq`
--
ALTER TABLE `oc_letscms_faq`
  ADD PRIMARY KEY (`faq_id`);

--
-- Indexes for table `oc_lightning_modified`
--
ALTER TABLE `oc_lightning_modified`
  ADD KEY `page` (`page`);

--
-- Indexes for table `oc_lightning_product_to_page`
--
ALTER TABLE `oc_lightning_product_to_page`
  ADD KEY `product_id` (`product_id`),
  ADD KEY `page` (`page`);

--
-- Indexes for table `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Indexes for table `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Indexes for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Indexes for table `oc_maxmind`
--
ALTER TABLE `oc_maxmind`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Indexes for table `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Indexes for table `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Indexes for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Indexes for table `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Indexes for table `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Indexes for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Indexes for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Indexes for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Indexes for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Indexes for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  ADD PRIMARY KEY (`order_shipment_id`);

--
-- Indexes for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Indexes for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Indexes for table `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `model` (`model`),
  ADD KEY `date_modified` (`date_modified`);

--
-- Indexes for table `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Indexes for table `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Indexes for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Indexes for table `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Indexes for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Indexes for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `category_id_product_id` (`category_id`,`product_id`);

--
-- Indexes for table `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Indexes for table `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Indexes for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Indexes for table `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Indexes for table `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Indexes for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Indexes for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Indexes for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Indexes for table `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  ADD PRIMARY KEY (`seo_url_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_session`
--
ALTER TABLE `oc_session`
  ADD PRIMARY KEY (`session_id`);

--
-- Indexes for table `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `oc_shipping_courier`
--
ALTER TABLE `oc_shipping_courier`
  ADD PRIMARY KEY (`shipping_courier_id`);

--
-- Indexes for table `oc_simple_blog_article`
--
ALTER TABLE `oc_simple_blog_article`
  ADD PRIMARY KEY (`simple_blog_article_id`);

--
-- Indexes for table `oc_simple_blog_article_description`
--
ALTER TABLE `oc_simple_blog_article_description`
  ADD PRIMARY KEY (`simple_blog_article_description_id`);

--
-- Indexes for table `oc_simple_blog_author`
--
ALTER TABLE `oc_simple_blog_author`
  ADD PRIMARY KEY (`simple_blog_author_id`);

--
-- Indexes for table `oc_simple_blog_author_description`
--
ALTER TABLE `oc_simple_blog_author_description`
  ADD PRIMARY KEY (`simple_blog_author_description_id`);

--
-- Indexes for table `oc_simple_blog_category`
--
ALTER TABLE `oc_simple_blog_category`
  ADD PRIMARY KEY (`simple_blog_category_id`);

--
-- Indexes for table `oc_simple_blog_category_description`
--
ALTER TABLE `oc_simple_blog_category_description`
  ADD PRIMARY KEY (`simple_blog_category_description_id`);

--
-- Indexes for table `oc_simple_blog_comment`
--
ALTER TABLE `oc_simple_blog_comment`
  ADD PRIMARY KEY (`simple_blog_comment_id`);

--
-- Indexes for table `oc_simple_blog_related_article`
--
ALTER TABLE `oc_simple_blog_related_article`
  ADD PRIMARY KEY (`simple_blog_related_article_id`);

--
-- Indexes for table `oc_simple_blog_view`
--
ALTER TABLE `oc_simple_blog_view`
  ADD PRIMARY KEY (`simple_blog_view_id`);

--
-- Indexes for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  ADD PRIMARY KEY (`statistics_id`);

--
-- Indexes for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Indexes for table `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Indexes for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Indexes for table `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Indexes for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Indexes for table `oc_theme`
--
ALTER TABLE `oc_theme`
  ADD PRIMARY KEY (`theme_id`);

--
-- Indexes for table `oc_tm_newsletter`
--
ALTER TABLE `oc_tm_newsletter`
  ADD PRIMARY KEY (`tm_newsletter_id`);

--
-- Indexes for table `oc_translation`
--
ALTER TABLE `oc_translation`
  ADD PRIMARY KEY (`translation_id`);

--
-- Indexes for table `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Indexes for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Indexes for table `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Indexes for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Indexes for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Indexes for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Indexes for table `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Indexes for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Indexes for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Indexes for table `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;

--
-- AUTO_INCREMENT for table `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `oc_customer_approval`
--
ALTER TABLE `oc_customer_approval`
  MODIFY `customer_approval_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_search`
--
ALTER TABLE `oc_customer_search`
  MODIFY `customer_search_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=519;

--
-- AUTO_INCREMENT for table `oc_extension_install`
--
ALTER TABLE `oc_extension_install`
  MODIFY `extension_install_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_extension_path`
--
ALTER TABLE `oc_extension_path`
  MODIFY `extension_path_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2158;

--
-- AUTO_INCREMENT for table `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=431;

--
-- AUTO_INCREMENT for table `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_letscms_faq`
--
ALTER TABLE `oc_letscms_faq`
  MODIFY `faq_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=346;

--
-- AUTO_INCREMENT for table `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_shipment`
--
ALTER TABLE `oc_order_shipment`
  MODIFY `order_shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `oc_seo_url`
--
ALTER TABLE `oc_seo_url`
  MODIFY `seo_url_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=844;

--
-- AUTO_INCREMENT for table `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19868;

--
-- AUTO_INCREMENT for table `oc_simple_blog_article`
--
ALTER TABLE `oc_simple_blog_article`
  MODIFY `simple_blog_article_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_simple_blog_article_description`
--
ALTER TABLE `oc_simple_blog_article_description`
  MODIFY `simple_blog_article_description_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `oc_simple_blog_author`
--
ALTER TABLE `oc_simple_blog_author`
  MODIFY `simple_blog_author_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_simple_blog_author_description`
--
ALTER TABLE `oc_simple_blog_author_description`
  MODIFY `simple_blog_author_description_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `oc_simple_blog_category`
--
ALTER TABLE `oc_simple_blog_category`
  MODIFY `simple_blog_category_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oc_simple_blog_category_description`
--
ALTER TABLE `oc_simple_blog_category_description`
  MODIFY `simple_blog_category_description_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `oc_simple_blog_comment`
--
ALTER TABLE `oc_simple_blog_comment`
  MODIFY `simple_blog_comment_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `oc_simple_blog_related_article`
--
ALTER TABLE `oc_simple_blog_related_article`
  MODIFY `simple_blog_related_article_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `oc_simple_blog_view`
--
ALTER TABLE `oc_simple_blog_view`
  MODIFY `simple_blog_view_id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `oc_statistics`
--
ALTER TABLE `oc_statistics`
  MODIFY `statistics_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT for table `oc_theme`
--
ALTER TABLE `oc_theme`
  MODIFY `theme_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_tm_newsletter`
--
ALTER TABLE `oc_tm_newsletter`
  MODIFY `tm_newsletter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_translation`
--
ALTER TABLE `oc_translation`
  MODIFY `translation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1587;

--
-- AUTO_INCREMENT for table `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4233;

--
-- AUTO_INCREMENT for table `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
