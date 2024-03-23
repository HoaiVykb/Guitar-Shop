-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2019 at 07:53 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

DELIMITER $$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getcat` (IN `cid` INT)  SELECT * FROM categories WHERE cat_id=cid$$

DELIMITER ;


CREATE TABLE `admin_info` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `admin_email` varchar(300) NOT NULL,
  `admin_password` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin_info` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '25f9e794323b453885f5181f1b624d0b');


CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--



-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `p_id`, `ip_add`, `user_id`, `qty`) VALUES
(6, 26, '::1', 4, 1),
(9, 10, '::1', 7, 1),
(10, 11, '::1', 7, 1),
(11, 45, '::1', 7, 1),
(44, 5, '::1', 3, 0),
(46, 2, '::1', 3, 0),
(48, 72, '::1', 3, 0),
(49, 60, '::1', 8, 1),
(50, 61, '::1', 8, 1),
(51, 1, '::1', 8, 1),
(52, 5, '::1', 9, 1),
(53, 2, '::1', 14, 1),
(54, 3, '::1', 14, 1),
(55, 5, '::1', 14, 1),
(56, 1, '::1', 9, 1),
(57, 2, '::1', 9, 1),
(71, 61, '127.0.0.1', -1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Acoustic Guitar'),
(2, 'Classic Guitar'),
(3, 'Electric Guitar'),
(4, 'Ukulele'),
(5, 'Bass Guitar'),
(6, 'Piano'),
(7, 'DIGITAL Piano');

-- --------------------------------------------------------

--
-- Table structure for table `email_info`
--

CREATE TABLE `email_info` (
  `email_id` int(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `email_info`
--

INSERT INTO `email_info` (`email_id`, `email`) VALUES
(3, 'admin@gmail.com'),
(4, 'puneethreddy951@gmail.com'),
(5, 'puneethreddy@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 12, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 14, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `orders_info`
--

CREATE TABLE `orders_info` (
  `order_id` int(10) NOT NULL,
  `user_id` int(11) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zip` int(10) NOT NULL,
  `cardname` varchar(255) NOT NULL,
  `cardnumber` varchar(20) NOT NULL,
  `expdate` varchar(255) NOT NULL,
  `prod_count` int(15) DEFAULT NULL,
  `total_amt` int(15) DEFAULT NULL,
  `cvv` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders_info`
--

INSERT INTO `orders_info` (`order_id`, `user_id`, `f_name`, `email`, `address`, `city`, `state`, `zip`, `cardname`, `cardnumber`, `expdate`, `prod_count`, `total_amt`, `cvv`) VALUES
(1, 12, 'Puneeth', 'puneethreddy951@gmail.com', 'Bangalore, Kumbalagodu, Karnataka', 'Bangalore', 'Karnataka', 560074, 'pokjhgfcxc', '4321 2345 6788 7654', '12/90', 3, 77000, 1234);

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order_pro_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(15) DEFAULT NULL,
  `amt` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`order_pro_id`, `order_id`, `product_id`, `qty`, `amt`) VALUES
(73, 1, 1, 1, 5000),
(74, 1, 4, 2, 64000),
(75, 1, 8, 1, 40000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Taylor AD17E', 39900000, 'Taylor AD17E', 'Taylor_AD17E-400x400.png', 'Acoustic Taylor'),
(2, 1, 3, 'Fender CD-60S', 5650000, 'Fender CD-60S', 'fender-cd-60s.png', 'Acoustic Fender'),
(3, 1, 3, 'Takamine GD10CE', 8730000, 'Takamine GD10CE', 'Takamine-GD10CE-1-400x400-400x400.png', 'Acoustic Takamine'),
(4, 1, 3, 'Kapok D-118AC', 2100000, 'Kapok D-118AC', 'Kapok-D-118AC-1-400x400-400x400.png', 'Acoustic Kapok'),
(5, 1, 2, 'Taylor 114CE-S', 22320000, 'Taylor 114CE-S', 'taylor-114ce-s-400x400.png', 'Acoustic Taylor'),
(6, 1, 1, 'Taylor 110CE-S', 22320000, 'Taylor 110CE-S', 'taylor-110ce-s-400x400.png', 'Acoustic Taylor'),
(7, 1, 1, 'Taylor 310CE', 60530000, 'Taylor 310CE', 'taylor-310ce-01-400x400.png', 'Acoustic Taylor'),
(8, 1, 4, 'Fender CC-60SCE', 8300000, 'Fender CC-60SCE', 'fender-CC-60SCE-0970153006-01-400x400.png', 'Acoustic Taylor'),
(9, 1, 3, 'Fender FSR V3 CD60 MAH WN', 5300000, 'Fender', 'fender-fsr-v3-cd60-mah-wn-01-400x400.png', 'Acoustic Fender'),
(10, 2, 6, 'Guitar Cordoba Stage', 18270000, 'Guitar Cordoba Stage', 'guitar-cordoba-stage-001-400x400.png', 'Classic cordoba'),
(11, 2, 6, 'Guitar Classic Cordoba Fusion 5 Kèm Bag Guclcor-05407', 11120000, 'Guitar Classic Cordoba Fusion 5 Kèm Bag Guclcor-05407', 'guitar-classic-cordoba-fusion-5-kem-bag-guclcor-05407-400x400.png', 'Classic cordoba'),
(12, 2, 6, 'Cordoba 55FCE Negra - Ziricote ', 43900000, 'Cordoba 55FCE Negra - Ziricote ', 'cordoba-55FCE-2-400x400.png', 'Classic codoba'),
(13, 2, 6, 'Cordoba C1M-CE', 6570000, 'Cordoba C1M-CE', 'cordoba-C1M-CE-01-400x400.png', 'Classic cordoba'),
(14, 2, 6, 'Takamine TC132SC', 46190000, 'Takamine TC132SC', 'Takamine-TC132SC-1-400x400-400x400.png', 'Classic Takamine'),
(15, 2, 6, 'Takamine TC135SC', 63160000, 'Takamine TC135SC', 'takamine-tc135sc-01-400x400.png', 'Classic Takamine'),
(16, 3, 6, 'Fender AM Ultra Strat Maple HSS UltraBurst ', 62100000, 'Fender AM Ultra Strat Maple HSS UltraBurst ', 'fender-am-ultra-strat-maple-hss-ultraburst-0118022712-400x400.png', 'Electric Fender'),
(17, 3, 6, 'Fender AM Ultra Strat Maple HSS Texas Tea', 57900000, 'Fender AM Ultra Strat Maple HSS Texas Tea', 'fender-am-ultra-strat-maple-hss-texas-tea-0118022790-400x400.png', 'Electric Fender'),
(19, 3, 6, 'Squier FSR Affinity Strat Laurel HSS Metallic Black', 7810000, 'Squier FSR Affinity Strat Laurel HSS Metallic Black', 'squier-fsr-affinity-strat-laurel-hss-metallic-black-0378108565-400x400.png', 'Electric Squier'),
(20, 3, 6, 'Squier FSR Affinity Strat Laurel HSS Olympic White', 7810000, 'Squier FSR Affinity Strat Laurel HSS Olympic White', 'squier-fsr-affinity-strat-laurel-hss-olympic-white-0378108505-400x400.png', 'Electric Squier'),
(21, 3, 6, 'Squier FSR Affinity Strat Laurel HSS Ice Blue Metallic', 7810000, 'Squier FSR Affinity Strat Laurel HSS Ice Blue Metallic', 'squier-fsr-affinity-strat-laurel-hss-ice-blue-metallic-0378100583-400x400.png', 'Electric Squier'),
(22, 4, 6, 'Fender Venice Soprano Ukulele', 2650000, 'Fender Venice Soprano Ukulele', 'fender-venice-soprano-ukulele-3.png', 'Ukulele Fender'),
(23, 4, 6, 'Deviser UK-21-30', 1120000, 'sDeviser UK-21-30', 'Ukulele-Deviser-UK-21-30-400x400-400x400.png', 'Ukulele Deviser'),
(24, 4, 6, 'Deviser UK-21-65', 1230000, 'Deviser UK-21-65', 'Ukulele-Deviser-UK-21-65-400x400-400x400', 'Ukulele Deviser'),
(25, 4, 6, 'Deviser UK-24-30', 1280000, 'Deviser UK-24-30', 'Ukulele-Deviser-UK-24-30_-400x400-400x400.png', 'Ukulele Deviser'),
(27, 4, 6, 'Deviser UK-24-50', 1280000, 'Deviser UK-24-30', 'dan_ukulele_UK_24_50.png', 'Ukulele Deviser'),
(32, 5, 0, 'Squier FSR Affinity P Bass PJ Maple Surf Green', 8180000, 'Squier FSR Affinity P Bass PJ Maple Surf Green', 'squier-fsr-affinity-p-bass-pj-maple-surf-green-0378552557-400x400.png', 'Bass Squier'),
(33, 6, 2, 'Kawai ND-21', 90000000, 'Kawai ND-21', 'dan-piano-kawai-nd21-chinh-hang-400x400.png', 'Piano Kawai'),
(34, 6, 4, 'KAWAI K-15E', 76000000, 'KAWAI K-15E', 'piano-kawai-k15e.png', 'Piano Kawai'), 
(35, 6, 0, 'Kawai K-300', 136000000, 'Kawai K-300', 'dan-piano-kawai-k300-mau-den-sang-trong.png', 'Piano Kawai'),
(36, 6, 5, 'Kawai K-800', 272000000, 'Kawai K-800', 'dan-piano-kawai-k800-sang-trong-400x400.png', 'Piano Kawai'),
(37, 6, 5, 'Samick JS115EB/EBHP', 84500000, 'Samick JS115EB/EBHP', 'piano-samick-JS115EB-EBHP-400x400.png', 'Piano Samick'),
(38, 6, 4, 'Samick J310B/WHHP', 95000000, 'Samick J310B/WHHP', 'piano-samick-j310b-400x400.png', 'Piano Samick'),
(39, 6, 5, 'Samick JS121FD', 96000000, 'Samick JS121FD', 'piano-samick-JS121FD-400x400.png', 'Piano Samick'),
(40, 2, 6, 'Cordoba C7', 12000000, 'Cordoba C7', 'cordoda-c7-01-400x400.png', 'Classic Codoba'),
(45, 5, 2, 'Squier AFFINITY SERIES™ PRECISION BASS® PJ', 7940000, 'Squier AFFINITY SERIES™ PRECISION BASS® PJ', 'squier-affinity-series-precision-bass-pj-3.png', 'Bass Squier'),
(46, 5, 2, 'Jackson JS Series Spectra Bass Laurel JS23 Red Stain', 7940000, 'Jackson JS Series Spectra Bass Laurel JS23 Red Stain', 'jackson-js-series-spectra-bass-laurel-js23-red-stain-2919004577-400x400.png', 'Bass Jason'),
(47, 5, 6, 'Jackson JS Series Spectra Bass Laurel JS23 Walnut Stain', 7940000, 'Jackson JS Series Spectra Bass Laurel JS23 Walnut Stain', 'jackson-js-series-spectra-bass-laurel-js23-walnut-stain-2919004557-400x400.png', 'Bass Jackson'),
(48, 5, 7, 'Jackson JS Series Spectra Bass Laurel JS2P Black Burst', 8940000, 'Jackson JS Series Spectra Bass Laurel JS2P Black Burst', 'jackson-js-series-spectra-bass-laurel-js2p-black-burst-2919004585-400x400.png', 'Bass Jackson'),
(49, 5, 7, 'Jackson JS Series Spectra Bass Laurel JS2P Blue Burst', 8940000, 'Jackson JS Series Spectra Bass Laurel JS2P Blue Burst', 'jackson-js-series-spectra-bass-laurel-js2p-blue-burst-2919004586-400x400.png', 'Bass Jackson'),
(50, 5, 6, 'Jackson JS Series Spectra Bass Laurel JS3 Gold Hardware Snow White', 10010000, 'Jackson JS Series Spectra Bass Laurel JS3 Gold Hardware Snow White', 'jackson-js-series-spectra-bass-laurel-js2p-black-burst-2919004585-400x400.png', 'Bass Jackson'),
(51, 5, 6, 'Jackson JS Series Spectra Bass Laurel JS3 Silverburst', 11000000, 'Jackson JS Series Spectra Bass Laurel JS3 Silverburst', 'jackson-js-series-spectra-bass-laurel-js3-silverburst-2919904521-400x400.png', 'Bass Jackson'),
(52, 5, 6, 'SQ SONIC P.Bass MN 2-Color Sunburst', 6340000, 'SQ SONIC P.Bass MN 2-Color Sunburst', 'sq-sonic-p_bass-mn-2-color-sunburst-0373902503-400x400.png', 'Bass SQ SONIC'),
(53, 5, 6, 'SQ SONIC P.Bass MN California Blue', 6340000, 'SQ SONIC P.Bass MN California Blue', 'sq-sonic-pbass-mn-california-blue-0373902526-400x400.png', 'Bass SQ SONIC'),
(54, 5, 6, 'SQ SONIC P.Bass LRL Black', 6340000, 'SQ SONIC P.Bass LRL Black', 'sq-sonic-p_bass-lrl-black-0373900506-400x400.png', 'Bass SQ SONIC'),
(55, 5, 6, 'SQUIER VINTAGE MODIFIED JAZZ BASS', 9140000, 'SQUIER VINTAGE MODIFIED JAZZ BASS', 'squier-vm-jazz-bass.png', 'Bass Squier'),
(56, 5, 6, 'SQUIER AFFINITY PJ BASS', 12000000, 'SQUIER AFFINITY PJ BASS', 'squier-affinity-series-pj.png', 'Bass Squier'),
(57, 5, 6, 'SQUIER AFFINITY J BASS', 260, 'SQUIER AFFINITY J BASS', 'squier-affinity-jazz-bass-1.png', 'Bass Squier'),
(58, 1, 6, 'Taylor Academy A12E', 20170000, 'Taylor Academy A12E', 'taylor-academy-12e-01-400x400.png', 'Acoustic Taylor'),
(59, 1, 6, 'Taylor Academy A10E', 20170000, 'Taylor Academy A10E', 'taylor-academy-10e-01-400x400.png', 'Acoustic Taylor'),
(60, 1, 6, 'Taylor 114E', 21150000, 'Taylor 114E', 'Taylor-114E-400x400-400x400.png', 'Acoustic Taylor'),
(61, 1, 6, 'Taylor Academy A10',16780000, 'Taylor Academy A10s', 'taylor-310ce-01-400x400.png', 'Acoustic Taylor'),
(62, 1, 6, 'Takamine GD93CE-NAT', 14840000, 'Takamine GD93CE-NAT', 'Takamine-GD93CE-400x400.png', 'Acoustic Takamine'),
(63, 1, 6, 'Taylor Gsmini-E Mahogany Shaded Edge Burst', 30000000, 'Taylor Gsmini-E Mahogany Shaded Edge Burst', 'taylor-gsmini-e-mahogany-shaded-edge-burst-01-400x400.png', 'Acoustic Taylor'),
(64, 1, 6, 'Takamine GD15CE', 12150000, 'Takamine GD15CE', 'takamine-gd15ce-nat.png', 'Acoustic Takamine'),
(65, 3, 6, 'Fender B1 LTD 1962 STRAT MPL BT JRN - SFASNB', 122390000, 'Fender B1 LTD 1962 STRAT MPL BT JRN - SFASNB', 'fender-b1-ltd-1962-strat-mpl-bt-jrn-sfasnb-400x400.png', 'Electric Fender'),
(66, 3, 6, 'Fender Squier Affinity Series™ Telecaster®', 6200000, 'Fender Squier Affinity Series™ Telecaster®', 'fender-squier-affinity-seriestm-telecasterr.png', 'Electric Fender'),
(67, 3, 6, 'FENDER SQUIER FSR AF STRAT QMT LRL WPPG BBST', 11280000, 'FENDER SQUIER FSR AF STRAT QMT LRL WPPG BBST', 'Squier-FSR-AF-Strat-0378034539-01-400x400.png', 'Electric Fender'),
(68, 3, 6, 'FENDER SQUIER FSR AFF STRAT HSS LRL MBPG OWT', 7810000, 'FENDER SQUIER FSR AFF STRAT HSS LRL MBPG OWT', 'Squier-FSR-AF-Strat-0378108505-01-400x400.png', 'Electric Fender'),
(69, 3, 6, 'FENDER SQUIER FSR AFF STRAT QMT LRL WPPG', 11280000, 'FENDER SQUIER FSR AFF STRAT QMT LRL WPPG', 'Squier-FSR-AF-Strat-0378034527-01-400x400.png', 'Electric Fender'),
(70, 3, 6, 'Ltd Ed Carlos Lopez Masterbuilt Eric Johnson Virginia Stratocaster', 399, 'Ltd Ed Carlos Lopez Masterbuilt Eric Johnson Virginia Stratocaster', 'eric-johnson-virginia-stratocaster-maple-fingerboard-2-color-sunburst-400x400.png', 'Electric Fender'),
(71, 7, 2, 'Roland RP-30',15800000 , 'Roland RP-30', 'dan-piano-dien-roland-rp30-chinh-hang-400x400.png', 'piano roland'),
(72, 7, 2, 'Roland RP-501R',24500000 , 'Roland RP-501R', 'piano-roland-501r-mau-den.png', 'piano roland'),
(73, 7, 2, 'Casio CDP-S160', 25450000, 'Casio CDP-S160', 'casio-cdp-s160-bk.png', 'piano casio'),
(74, 7, 2, 'Casio AP-470', 27000000, 'Casio AP-470', 'dan-piano-dien-casio-ap-470.png', 'Piano casio'),
(75, 7, 2, 'KAWAI KDP75', 23000000, 'KAWAI KDP75', 'piano-kawai-kdp-75-400x400.png', 'Piano Kawai'),
(76, 7, 5, 'Casio PX-S1100', 21000000, 'Casio PX-S1100', 'dan-piano-dien-casio-px-s1100.png', 'Piano casio'),
(77, 7, 4, 'Casio PX-S6000', 5499, 'Casio PX-S6000', 'dan-piano-dien-roland-rp30-chinh-hang-400x400.png', 'Casio PX-S6000');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', 'puneeth', '9448121558', '123456789', 'sdcjns,djc'),
(15, 'hemu', 'ajhgdg', 'puneethreddy951@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu');

--
-- Triggers `user_info`
--
DELIMITER $$
CREATE TRIGGER `after_user_info_insert` AFTER INSERT ON `user_info` FOR EACH ROW BEGIN 
INSERT INTO user_info_backup VALUES(new.user_id,new.first_name,new.last_name,new.email,new.password,new.mobile,new.address1,new.address2);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_info_backup`
--

CREATE TABLE `user_info_backup` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info_backup`
--

INSERT INTO `user_info_backup` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(12, 'puneeth', 'Reddy', 'puneethreddy951@gmail.com', '123456789', '9448121558', '123456789', 'sdcjns,djc'),
(14, 'hemanthu', 'reddy', 'hemanthreddy951@gmail.com', '123456788', '6526436723', 's,dc wfjvnvn', 'b efhfhvvbr'),
(15, 'hemu', 'ajhgdg', 'keeru@gmail.com', '346778', '536487276', ',mdnbca', 'asdmhmhvbv'),
(16, 'venky', 'vs', 'venkey@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(19, 'abhishek', 'bs', 'abhishekbs@gmail.com', 'asdcsdcc', '9871236534', 'bangalore', 'hassan'),
(20, 'pramod', 'vh', 'pramod@gmail.com', '124335353', '9767645653', 'ksbdfcdf', 'sjrgrevgsib'),
(21, 'prajval', 'mcta', 'prajvalmcta@gmail.com', '1234545662', '202-555-01', 'bangalore', 'kumbalagodu'),
(22, 'puneeth', 'v', 'hemu@gmail.com', '1234534', '9877654334', 'snhdgvajfehyfygv', 'asdjbhfkeur'),
(23, 'hemanth', 'reddy', 'hemanth@gmail.com', 'Puneeth@123', '9876543234', 'Bangalore', 'Kumbalagodu'),
(24, 'newuser', 'user', 'newuser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu'),
(25, 'otheruser', 'user', 'otheruser@gmail.com', 'puneeth@123', '9535688928', 'Bangalore', 'Kumbalagodu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_info`
--
ALTER TABLE `admin_info`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `email_info`
--
ALTER TABLE `email_info`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order_pro_id`),
  ADD KEY `order_products` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_info`
--
ALTER TABLE `admin_info`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_info`
--
ALTER TABLE `email_info`
  MODIFY `email_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders_info`
--
ALTER TABLE `orders_info`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `order_products`
--
ALTER TABLE `order_products`
  MODIFY `order_pro_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_info_backup`
--
ALTER TABLE `user_info_backup`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders_info`
--
ALTER TABLE `orders_info`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user_info` (`user_id`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products` FOREIGN KEY (`order_id`) REFERENCES `orders_info` (`order_id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
