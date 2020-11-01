-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2020 at 05:41 AM
-- Server version: 8.0.21
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bylancerclassified`
--
CREATE DATABASE IF NOT EXISTS `bylancerclassified` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `bylancerclassified`;

-- --------------------------------------------------------

--
-- Table structure for table `ad_admins`
--

CREATE TABLE `ad_admins` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_hash` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default_user.png',
  `permission` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_admins`
--

INSERT INTO `ad_admins` (`id`, `username`, `password_hash`, `name`, `email`, `image`, `permission`) VALUES
(1, 'admin', '$2y$13$jb0bGXQesG7IkIPFNdgtlu3nfh5OZXurCqVeSjU9mCqYMQfdg79o6', 'Admin', 'admin@clickripple.com', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `ad_adsense`
--

CREATE TABLE `ad_adsense` (
  `id` int NOT NULL,
  `slug` text,
  `provider_name` varchar(255) DEFAULT NULL,
  `large_track_code` text,
  `tablet_track_code` text,
  `phone_track_code` text,
  `status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_adsense`
--

INSERT INTO `ad_adsense` (`id`, `slug`, `provider_name`, `large_track_code`, `tablet_track_code`, `phone_track_code`, `status`) VALUES
(1, 'top', 'Google AdSense', '<img src=\"//bylancer.com/products/classified-php-script/storage/adsense/ads-banner-top.jpg\"/>', '', '', '0'),
(2, 'bottom', 'Google AdSense', '<img src=\"//bylancer.com/products/classified-php-script/storage/adsense/ads-banner-bottom.png\"/>', '', '', '0'),
(3, 'left_sidebar', 'Google AdSense', '<img src=\"//bylancer.com/products/classified-php-script/storage/adsense/ads-banner-left.png\"/>', '', '', '0'),
(4, 'right_sidebar', 'Google AdSense', '<img src=\"//bylancer.com/products/classified-php-script/storage/adsense/ads-banner-right.jpg\"/>', '', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ad_balance`
--

CREATE TABLE `ad_balance` (
  `id` int NOT NULL,
  `current_balance` double(9,2) DEFAULT NULL,
  `total_earning` double(9,2) DEFAULT NULL,
  `total_withdrawal` double(9,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_balance`
--

INSERT INTO `ad_balance` (`id`, `current_balance`, `total_earning`, `total_withdrawal`) VALUES
(1, 0.00, 0.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `ad_blog`
--

CREATE TABLE `ad_blog` (
  `id` int NOT NULL,
  `author` int DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` text CHARACTER SET utf32 COLLATE utf32_unicode_ci,
  `status` enum('publish','pending') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_blog`
--

INSERT INTO `ad_blog` (`id`, `author`, `title`, `description`, `image`, `tags`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'First Blog', '<p>Consectetur adipisicing elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<blockquote>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</blockquote><p>Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim.</p><p></p></p>\n', NULL, 'travel fun, love', 'publish', '2020-01-15 23:05:15', '2020-01-17 19:12:18');

-- --------------------------------------------------------

--
-- Table structure for table `ad_blog_categories`
--

CREATE TABLE `ad_blog_categories` (
  `id` int NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int NOT NULL DEFAULT '0',
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_blog_categories`
--

INSERT INTO `ad_blog_categories` (`id`, `title`, `slug`, `position`, `active`) VALUES
(1, 'Fashion', 'fashion', 0, '1'),
(2, 'Lifestyle', 'lifestyle', 1, '1');

-- --------------------------------------------------------

--
-- Table structure for table `ad_blog_cat_relation`
--

CREATE TABLE `ad_blog_cat_relation` (
  `id` int NOT NULL,
  `blog_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_blog_cat_relation`
--

INSERT INTO `ad_blog_cat_relation` (`id`, `blog_id`, `category_id`) VALUES
(1, 1, 1),
(2, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ad_blog_comment`
--

CREATE TABLE `ad_blog_comment` (
  `id` int NOT NULL,
  `blog_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `is_admin` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` tinytext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `active` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `parent` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_catagory_main`
--

CREATE TABLE `ad_catagory_main` (
  `cat_id` int NOT NULL,
  `cat_order` int DEFAULT NULL,
  `cat_name` varchar(300) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(300) NOT NULL DEFAULT 'fa-usd',
  `picture` varchar(300) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_catagory_main`
--

INSERT INTO `ad_catagory_main` (`cat_id`, `cat_order`, `cat_name`, `slug`, `icon`, `picture`) VALUES
(18, NULL, 'Movie Screens', 'moviescreens', 'fas fa-film', 'https://img.icons8.com/dusk/64/000000/traffic-jam.png'),
(19, NULL, 'Transportation', 'transportation', 'fas fa-car', 'https://www.infinitylimousine.ca/wp-content/uploads/2018/03/limousine-2.png'),
(20, NULL, 'Photographers', 'photographers', 'fas fa-photo-video', 'https://cdn2.iconfinder.com/data/icons/ios-7-style-metro-ui-icons/512/MetroUI_Mac_Photo_Booth.png'),
(16, NULL, 'Animals', 'animals', 'fas fa-paw', 'https://www.iconarchive.com/download/i107326/google/noto-emoji-animals-nature/22215-dog.ico'),
(17, NULL, 'Interactive Games', 'interactivegames', 'fas fa-gamepad', 'https://alternative.me/media/256/probqa-interactive-recommendation-system-for-games-icon-20jdpz65u2ctxmty-c.png'),
(15, NULL, 'Party Tents/Tables', 'party', 'fas fa-chair', 'https://www.shareicon.net/data/256x256/2016/09/02/824410_party_512x512.png'),
(13, NULL, 'Food Trucks', 'foodtrucks', 'fas fa-truck', 'https://image.flaticon.com/icons/png/128/3617/3617567.png'),
(14, NULL, 'Water Activities', 'wateractivities', 'fas fa-ship', 'https://image.flaticon.com/icons/png/128/3145/3145000.png'),
(9, NULL, 'Inflatables', 'inflatables', 'fas fa-border-all', 'https://www.gweentertainment.com/wp/wp-content/uploads/2018/04/inflatable-icon.png'),
(10, NULL, 'Carnival Games', 'carnivalgames', 'fas fa-mask', 'https://image.flaticon.com/icons/png/128/3189/3189615.png'),
(11, NULL, 'Entertainers', 'entertainers', 'fas fa-laugh', 'https://img.icons8.com/dusk/64/000000/dancing.png'),
(12, NULL, 'Concession Equipment', 'concessionequipment', 'fas fa-hotdog', 'https://freeiconshop.com/wp-content/uploads/edd/barbeque-solid.png');

-- --------------------------------------------------------

--
-- Table structure for table `ad_catagory_sub`
--

CREATE TABLE `ad_catagory_sub` (
  `sub_cat_id` int NOT NULL,
  `main_cat_id` int DEFAULT NULL,
  `sub_cat_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat_order` mediumint DEFAULT NULL,
  `photo_show` enum('0','1') NOT NULL DEFAULT '1',
  `price_show` enum('0','1') NOT NULL DEFAULT '1',
  `picture` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_catagory_sub`
--

INSERT INTO `ad_catagory_sub` (`sub_cat_id`, `main_cat_id`, `sub_cat_name`, `slug`, `cat_order`, `photo_show`, `price_show`, `picture`) VALUES
(88, 12, 'Nacho MAchine', 'nacho-machine', 88, '1', '1', NULL),
(87, 12, 'Mini Donuts Machine', 'mini-donuts-machine', 87, '1', '1', NULL),
(86, 12, 'Hot Dog Machine', 'hot-dog-machine', 86, '1', '1', NULL),
(83, 12, 'Popcorn Machine', 'popcorn-machine', 83, '1', '1', NULL),
(84, 12, 'Sno Cones', 'sno-cones', 84, '1', '1', NULL),
(85, 12, 'Slush Machines', 'slush-machines', 85, '1', '1', NULL),
(82, 12, 'Cotton Candy Machine', 'cotton-candy-machine', 82, '1', '1', NULL),
(81, 11, 'Other', 'other-1', 81, '1', '1', NULL),
(80, 11, 'Juggler', 'juggler-1', 80, '1', '1', NULL),
(79, 11, 'Story Teller', 'story-teller', 79, '1', '1', NULL),
(78, 11, 'Unicyclist', 'unicyclist', 78, '1', '1', NULL),
(76, 11, 'Mime', 'mime', 76, '1', '1', NULL),
(77, 11, 'Sword Swallower', 'sword-swallower', 77, '1', '1', NULL),
(75, 11, 'Street Performer', 'street-performer', 75, '1', '1', NULL),
(74, 11, 'Human Statue', 'human-statue', 74, '1', '1', NULL),
(73, 11, 'Fire Eater', 'fire-eater', 73, '1', '1', NULL),
(72, 11, 'Juggler', 'juggler', 72, '1', '1', NULL),
(71, 11, 'Contortionist', 'contortionist', 71, '1', '1', NULL),
(70, 11, 'Hypnotist', 'hypnotist', 70, '1', '1', NULL),
(69, 11, 'Singing Telegram', 'singing-telegram', 69, '1', '1', NULL),
(68, 11, 'Henna Tattoos', 'henna-tattoos', 68, '1', '1', NULL),
(67, 11, 'Face-painter', 'face-painter', 67, '1', '1', NULL),
(66, 11, 'Balloon Twister', 'balloon-twister', 66, '1', '1', NULL),
(65, 11, 'Airbrush Tattooist', 'airbrush-tattooist', 65, '1', '1', NULL),
(64, 11, 'Santa Claus', 'santa-claus', 64, '1', '1', NULL),
(63, 11, 'Caricaturist', 'caricaturist', 63, '1', '1', NULL),
(62, 11, 'Impersonator', 'impersonator', 62, '1', '1', NULL),
(61, 11, 'Clown', 'clown', 61, '1', '1', NULL),
(60, 11, 'Magician', 'magician', 60, '1', '1', NULL),
(59, 11, 'Comedian', 'comedian', 59, '1', '1', NULL),
(58, 10, 'Other', 'other', 58, '1', '1', NULL),
(57, 10, 'Balloon Blaster', 'balloon-blaster', 57, '1', '1', NULL),
(56, 10, 'Roller Bowler', 'roller-bowler', 56, '1', '1', NULL),
(47, 9, 'Bounce House', 'bounce-house', 47, '1', '1', NULL),
(48, 9, 'Slides', 'slides', 48, '1', '1', NULL),
(49, 9, 'Obstacles', 'obstacles', 49, '1', '1', NULL),
(50, 9, 'Combo Unit', 'combo-unit', 50, '1', '1', NULL),
(51, 9, 'Tunnels', 'tunnels', 51, '1', '1', NULL),
(52, 9, 'Interactive', 'interactive', 52, '1', '1', NULL),
(53, 9, 'Packages', 'packages', 53, '1', '1', NULL),
(54, 10, 'High Striker', 'high-striker', 54, '1', '1', NULL),
(55, 10, 'Cash Cube', 'cash-cube', 55, '1', '1', NULL),
(89, 12, 'Other', 'other-2', 89, '1', '1', NULL),
(90, 14, 'Water Wars', 'water-wars', 90, '1', '1', NULL),
(91, 14, 'Dunk Tank', 'dunk-tank', 91, '1', '1', NULL),
(92, 14, 'Boat Rental', 'boat-rental', 92, '1', '1', NULL),
(93, 14, 'Kayak Rental', 'kayak-rental', 93, '1', '1', NULL),
(94, 14, 'Paddle Board', 'paddle-board', 94, '1', '1', NULL),
(95, 14, 'House Boat Rental', 'house-boat-rental', 95, '1', '1', NULL),
(96, 14, 'Canoe', 'canoe', 96, '1', '1', NULL),
(97, 14, 'Fishing Boat', 'fishing-boat', 97, '1', '1', NULL),
(98, 14, 'Foam Pit', 'foam-pit', 98, '1', '1', NULL),
(99, 14, 'Other', 'other-3', 99, '1', '1', NULL),
(100, 15, 'All Party Tents', 'all-party-tents', 100, '1', '1', NULL),
(101, 15, 'Tables', 'tables', 101, '1', '1', NULL),
(102, 15, 'Chairs', 'chairs', 102, '1', '1', NULL),
(103, 15, 'Linens', 'linens', 103, '1', '1', NULL),
(104, 16, 'Petting Zoo', 'petting-zoo', 104, '1', '1', NULL),
(105, 16, 'Reptile Show', 'reptile-show', 105, '1', '1', NULL),
(106, 16, 'Pony Riders', 'pony-riders', 106, '1', '1', NULL),
(107, 16, 'Animals for Parties', 'animals-for-parties', 107, '1', '1', NULL),
(108, 16, 'Dog Show', 'dog-show', 108, '1', '1', NULL),
(109, 16, 'Other', 'other-4', 109, '1', '1', NULL),
(110, 17, 'Laser Tag', 'laser-tag', 110, '1', '1', NULL),
(111, 17, 'Bungee Jump', 'bungee-jump', 111, '1', '1', NULL),
(112, 17, 'Bumper Balls', 'bumper-balls', 112, '1', '1', NULL),
(113, 17, 'Human Bowling', 'human-bowling', 113, '1', '1', NULL),
(114, 17, 'Rock Climb Wall', 'rock-climb-wall', 114, '1', '1', NULL),
(115, 17, 'Mechanical Bull', 'mechanical-bull', 115, '1', '1', NULL),
(116, 17, 'Mechanical Surf', 'mechanical-surf', 116, '1', '1', NULL),
(117, 17, 'Zip Line', 'zip-line', 117, '1', '1', NULL),
(118, 17, 'Bowling', 'bowling', 118, '1', '1', NULL),
(119, 17, 'Mini Golf', 'mini-golf', 119, '1', '1', NULL),
(120, 17, 'Mobile Viideo Game Trailer', 'mobile-viideo-game-trailer', 120, '1', '1', NULL),
(121, 17, 'Other', 'other-5', 121, '1', '1', NULL),
(122, 19, 'Party Bus', 'party-bus', 122, '1', '1', NULL),
(123, 19, 'Bus', 'bus', 123, '1', '1', NULL),
(124, 19, 'Limosine', 'limosine', 124, '1', '1', NULL),
(125, 19, 'Taxi', 'taxi', 125, '1', '1', NULL),
(126, 19, 'Other', 'other-6', 126, '1', '1', NULL),
(127, 20, 'VideoGrapher', 'videographer', 127, '1', '1', NULL),
(128, 20, 'Drone Photography', 'drone-photography', 128, '1', '1', NULL),
(129, 20, 'Photographer', 'photographer', 129, '1', '1', NULL),
(130, 20, 'Photo Booth', 'photo-booth', 130, '1', '1', NULL),
(131, 18, 'Other', 'all-1', 131, '1', '1', ''),
(132, 20, 'Other', 'other-7', 132, '1', '1', NULL),
(133, 15, 'Other', 'other-8', 133, '1', '1', NULL),
(134, 13, 'Other', 'other-9', 134, '1', '1', NULL),
(135, 9, 'Other', 'other-10', 135, '1', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_category_translation`
--

CREATE TABLE `ad_category_translation` (
  `id` int NOT NULL,
  `translation_id` int DEFAULT NULL,
  `lang_code` varchar(10) DEFAULT NULL,
  `category_type` varchar(22) DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ad_cities`
--

CREATE TABLE `ad_cities` (
  `id` int UNSIGNED NOT NULL,
  `country_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ISO-3166 2-letter country code, 2 characters',
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'name of geographical point (utf8) varchar(200)',
  `asciiname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT 'name of geographical point in plain ascii characters, varchar(200)',
  `latitude` float DEFAULT NULL COMMENT 'longitude in decimal degrees (wgs84)',
  `longitude` float DEFAULT NULL COMMENT 'latitude in decimal degrees (wgs84)',
  `feature_class` char(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see http://www.geonames.org/export/codes.html, char(1)',
  `feature_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'see http://www.geonames.org/export/codes.html, varchar(10)',
  `subadmin1_code` varchar(80) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'fipscode (subject to change to iso code), see exceptions below, see file admin1Codes.txt for display names of this code; varchar(20)',
  `subadmin2_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'code for the second administrative division, a county in the US, see file admin2Codes.txt; varchar(80)',
  `population` bigint DEFAULT NULL COMMENT 'bigint (4 byte int) ',
  `time_zone` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'the timezone id (see file timeZone.txt)',
  `active` tinyint UNSIGNED DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_cities`
--

INSERT INTO `ad_cities` (`id`, `country_code`, `name`, `asciiname`, `latitude`, `longitude`, `feature_class`, `feature_code`, `subadmin1_code`, `subadmin2_code`, `population`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
(5881791, 'CA', 'Abbotsford', 'Abbotsford', 49.058, -122.253, 'P', 'PPL', 'CA.02', 'CA.02.5957659', 151683, 'America/Vancouver', 1, '2013-04-21 23:00:00', '2013-04-21 23:00:00'),
(5882142, 'CA', 'Acton Vale', 'Acton Vale', 45.6501, -72.5658, 'P', 'PPL', 'CA.10', 'CA.10.16', 5135, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5882799, 'CA', 'Airdrie', 'Airdrie', 51.3001, -114.035, 'P', 'PPL', 'CA.01', NULL, 24673, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5882873, 'CA', 'Ajax', 'Ajax', 43.8501, -79.0329, 'P', 'PPL', 'CA.08', NULL, 90167, 'America/Toronto', 1, '2011-12-29 23:00:00', '2011-12-29 23:00:00'),
(5884083, 'CA', 'Alma', 'Alma', 48.5501, -71.6491, 'P', 'PPL', 'CA.10', 'CA.10.02', 29526, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5884467, 'CA', 'Amherst', 'Amherst', 45.8335, -64.1987, 'P', 'PPL', 'CA.07', NULL, 9336, 'America/Halifax', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5884473, 'CA', 'Amherstburg', 'Amherstburg', 42.1168, -83.0499, 'P', 'PPL', 'CA.08', NULL, 11459, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5884588, 'CA', 'Amos', 'Amos', 48.5669, -78.1162, 'P', 'PPL', 'CA.10', 'CA.10.08', 17918, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5885280, 'CA', 'Angus', 'Angus', 44.3168, -79.8829, 'P', 'PPLL', 'CA.08', NULL, 10269, 'America/Toronto', 1, '2006-01-26 23:00:00', '2006-01-26 23:00:00'),
(5885383, 'CA', 'Anmore', 'Anmore', 49.3164, -122.853, 'P', 'PPL', 'CA.02', 'CA.02.5915', 126456, 'America/Vancouver', 1, '2013-08-27 23:00:00', '2013-08-27 23:00:00'),
(5886182, 'CA', 'Antigonish', 'Antigonish', 45.6169, -61.9986, 'P', 'PPL', 'CA.07', NULL, 5003, 'America/Halifax', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5887214, 'CA', 'Arnprior', 'Arnprior', 45.4334, -76.3494, 'P', 'PPL', 'CA.08', NULL, 9607, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5887470, 'CA', 'Asbestos', 'Asbestos', 45.7668, -71.9324, 'P', 'PPL', 'CA.10', 'CA.10.05', 7190, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5888716, 'CA', 'Aylmer', 'Aylmer', 42.7668, -80.983, 'P', 'PPL', 'CA.08', NULL, 7527, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5889745, 'CA', 'Baie-Comeau', 'Baie-Comeau', 49.2168, -68.1489, 'P', 'PPL', 'CA.10', 'CA.10.09', 29808, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5892532, 'CA', 'Banff', 'Banff', 51.1762, -115.57, 'P', 'PPL', 'CA.01', NULL, 7502, 'America/Edmonton', 1, '2010-06-23 23:00:00', '2010-06-23 23:00:00'),
(5894171, 'CA', 'Barrie', 'Barrie', 44.4001, -79.6663, 'P', 'PPL', 'CA.08', NULL, 182041, 'America/Toronto', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(5895424, 'CA', 'Bay Roberts', 'Bay Roberts', 47.5999, -53.2648, 'P', 'PPL', 'CA.05', NULL, 13737, 'America/St_Johns', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5895650, 'CA', 'Beaconsfield', 'Beaconsfield', 45.4334, -73.8659, 'P', 'PPL', 'CA.10', 'CA.10.06', 19194, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5896495, 'CA', 'Beauharnois', 'Beauharnois', 45.3134, -73.8725, 'P', 'PPL', 'CA.10', 'CA.10.16', 11918, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5896522, 'CA', 'Beaumont', 'Beaumont', 53.3501, -113.419, 'P', 'PPL', 'CA.01', NULL, 7366, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5897209, 'CA', 'Bécancour', 'Becancour', 46.3334, -72.4324, 'P', 'PPL', 'CA.10', 'CA.10.17', 11134, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5897884, 'CA', 'Belleville', 'Belleville', 44.1668, -77.3828, 'P', 'PPL', 'CA.08', 'CA.08.3512', 49454, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5898070, 'CA', 'Bells Corners', 'Bells Corners', 45.3159, -75.8301, 'P', 'PPL', 'CA.08', NULL, 9977, 'America/Toronto', 1, '2010-03-17 23:00:00', '2010-03-17 23:00:00'),
(5898138, 'CA', 'Beloeil', 'Beloeil', 45.5684, -73.2057, 'P', 'PPL', 'CA.10', 'CA.10.16', 18927, 'America/Toronto', 1, '2017-01-30 23:00:00', '2017-01-30 23:00:00'),
(5901272, 'CA', 'Binbrook', 'Binbrook', 43.1213, -79.811, 'P', 'PPLX', 'CA.08', 'CA.08.3525', 8796, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5903510, 'CA', 'Blainville', 'Blainville', 45.6668, -73.8825, 'P', 'PPL', 'CA.10', 'CA.10.15', 46493, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5904501, 'CA', 'Bluewater', 'Bluewater', 43.4668, -81.5998, 'P', 'PPL', 'CA.08', NULL, 7044, 'America/Toronto', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(5905132, 'CA', 'Boisbriand', 'Boisbriand', 45.6168, -73.8325, 'P', 'PPL', 'CA.10', 'CA.10.15', 26483, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5905152, 'CA', 'Bois-des-Filion', 'Bois-des-Filion', 45.6668, -73.7492, 'P', 'PPL', 'CA.10', 'CA.10.13', 8383, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5905616, 'CA', 'Bonnyville', 'Bonnyville', 54.2668, -110.735, 'P', 'PPL', 'CA.01', NULL, 6003, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5906267, 'CA', 'Boucherville', 'Boucherville', 45.591, -73.4361, 'P', 'PPL', 'CA.10', 'CA.10.16', 39062, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5907092, 'CA', 'Bracebridge', 'Bracebridge', 45.0334, -79.3163, 'P', 'PPL', 'CA.08', NULL, 8238, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5907364, 'CA', 'Brampton', 'Brampton', 43.6834, -79.7663, 'P', 'PPL', 'CA.08', NULL, 433806, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5907896, 'CA', 'Brandon', 'Brandon', 49.8469, -99.9531, 'P', 'PPL', 'CA.03', NULL, 26234, 'America/Winnipeg', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(5907983, 'CA', 'Brant', 'Brant', 43.1334, -80.3497, 'P', 'PPL', 'CA.08', NULL, 34415, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5907990, 'CA', 'Brantford', 'Brantford', 43.1334, -80.2664, 'P', 'PPL', 'CA.08', NULL, 87759, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5908723, 'CA', 'Bridgewater', 'Bridgewater', 44.3786, -64.5188, 'P', 'PPL', 'CA.07', NULL, 8070, 'America/Halifax', 1, '2015-06-25 23:00:00', '2015-06-25 23:00:00'),
(5909294, 'CA', 'Brockville', 'Brockville', 44.5913, -75.687, 'P', 'PPL', 'CA.08', NULL, 23886, 'America/Toronto', 1, '2013-05-15 23:00:00', '2013-05-15 23:00:00'),
(5909403, 'CA', 'Bromont', 'Bromont', 45.3168, -72.6491, 'P', 'PPL', 'CA.10', 'CA.10.16', 6049, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5909514, 'CA', 'Brooks', 'Brooks', 50.5834, -111.885, 'P', 'PPL', 'CA.01', NULL, 12744, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5909629, 'CA', 'Brossard', 'Brossard', 45.4501, -73.4658, 'P', 'PPL', 'CA.10', 'CA.10.16', 69575, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5909969, 'CA', 'Brownsburg-Chatham', 'Brownsburg-Chatham', 45.6834, -74.4159, 'P', 'PPL', 'CA.10', 'CA.10.15', 6664, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5911592, 'CA', 'Burlington', 'Burlington', 43.3862, -79.8371, 'P', 'PPL', 'CA.08', NULL, 164415, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5911606, 'CA', 'Burnaby', 'Burnaby', 49.2664, -122.953, 'P', 'PPL', 'CA.02', NULL, 202799, 'America/Vancouver', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5913490, 'CA', 'Calgary', 'Calgary', 51.0501, -114.085, 'P', 'PPL', 'CA.01', NULL, 1019942, 'America/Edmonton', 1, '2015-04-23 23:00:00', '2015-04-23 23:00:00'),
(5913695, 'CA', 'Cambridge', 'Cambridge', 43.3601, -80.3127, 'P', 'PPL', 'CA.08', NULL, 120372, 'America/Toronto', 1, '2010-04-27 23:00:00', '2010-04-27 23:00:00'),
(5913934, 'CA', 'Camlachie', 'Camlachie', 43.036, -82.1616, 'P', 'PPL', 'CA.08', NULL, 7506, 'America/Toronto', 1, '2011-11-26 23:00:00', '2011-11-26 23:00:00'),
(5914132, 'CA', 'Campbell River', 'Campbell River', 50.0163, -125.245, 'P', 'PPL', 'CA.02', NULL, 33430, 'America/Vancouver', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5914653, 'CA', 'Camrose', 'Camrose', 53.0168, -112.835, 'P', 'PPL', 'CA.01', NULL, 15686, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5914826, 'CA', 'Candiac', 'Candiac', 45.3834, -73.5159, 'P', 'PPL', 'CA.10', 'CA.10.16', 15947, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5914894, 'CA', 'Canmore', 'Canmore', 51.0834, -115.352, 'P', 'PPL', 'CA.01', NULL, 12288, 'America/Edmonton', 1, '2015-07-07 23:00:00', '2015-07-07 23:00:00'),
(5916722, 'CA', 'Carbonear', 'Carbonear', 47.7332, -53.2148, 'P', 'PPL', 'CA.05', NULL, 6814, 'America/St_Johns', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5917117, 'CA', 'Carignan', 'Carignan', 45.4501, -73.2992, 'P', 'PPL', 'CA.10', 'CA.10.16', 7426, 'America/Toronto', 1, '2016-04-12 23:00:00', '2016-04-12 23:00:00'),
(5917158, 'CA', 'Carleton Place', 'Carleton Place', 45.1334, -76.1494, 'P', 'PPL', 'CA.08', NULL, 9743, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5918118, 'CA', 'Castlegar', 'Castlegar', 49.2998, -117.669, 'P', 'PPL', 'CA.02', NULL, 8715, 'America/Vancouver', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5919566, 'CA', 'Chambly', 'Chambly', 45.4501, -73.2825, 'P', 'PPL', 'CA.10', 'CA.10.16', 22608, 'America/Toronto', 1, '2016-04-12 23:00:00', '2016-04-12 23:00:00'),
(5920089, 'CA', 'Charlemagne', 'Charlemagne', 45.7168, -73.4825, 'P', 'PPL', 'CA.10', 'CA.10.14', 5594, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(5920288, 'CA', 'Charlottetown', 'Charlottetown', 46.239, -63.1341, 'P', 'PPLA', 'CA.09', 'CA.09.1102', 42402, 'America/Halifax', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(5920433, 'CA', 'Châteauguay', 'Chateauguay', 45.3834, -73.7492, 'P', 'PPL', 'CA.10', 'CA.10.16', 42786, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(5920457, 'CA', 'Chatham', 'Chatham', 42.4122, -82.1849, 'P', 'PPL', 'CA.08', 'CA.08.3536', 43550, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5921147, 'CA', 'Chibougamau', 'Chibougamau', 49.9168, -74.3659, 'P', 'PPL', 'CA.10', 'CA.10.10', 7563, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(5921356, 'CA', 'Chilliwack', 'Chilliwack', 49.1664, -121.953, 'P', 'PPLA2', 'CA.02', 'CA.02.5909', 77000, 'America/Vancouver', 1, '2013-07-26 23:00:00', '2013-07-26 23:00:00'),
(5923101, 'CA', 'Clarence-Rockland', 'Clarence-Rockland', 45.5501, -75.291, 'P', 'PPL', 'CA.08', NULL, 20790, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5924417, 'CA', 'Coaldale', 'Coaldale', 49.7167, -112.619, 'P', 'PPL', 'CA.01', NULL, 6317, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5924500, 'CA', 'Coaticook', 'Coaticook', 45.1334, -71.7991, 'P', 'PPL', 'CA.10', 'CA.10.05', 7021, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5924579, 'CA', 'Cobourg', 'Cobourg', 43.9598, -78.1652, 'P', 'PPL', 'CA.08', NULL, 18099, 'America/Toronto', 1, '2013-11-01 23:00:00', '2013-11-01 23:00:00'),
(5924618, 'CA', 'Cochrane', 'Cochrane', 51.1834, -114.469, 'P', 'PPL', 'CA.01', NULL, 16365, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5925024, 'CA', 'Cold Lake', 'Cold Lake', 54.4652, -110.182, 'P', 'PPL', 'CA.01', NULL, 11595, 'America/Edmonton', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(5925975, 'CA', 'Collingwood', 'Collingwood', 44.4834, -80.2164, 'P', 'PPL', 'CA.08', NULL, 15809, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5926268, 'CA', 'Colwood', 'Colwood', 48.4329, -123.486, 'P', 'PPL', 'CA.02', NULL, 14687, 'America/Vancouver', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5926511, 'CA', 'Conception Bay South', 'Conception Bay South', 47.4999, -52.9981, 'P', 'PPL', 'CA.05', NULL, 17087, 'America/St_Johns', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5926526, 'CA', 'Concord', 'Concord', 43.8001, -79.4829, 'P', 'PPL', 'CA.08', NULL, 8255, 'America/Toronto', 1, '2012-02-29 23:00:00', '2012-02-29 23:00:00'),
(5927689, 'CA', 'Coquitlam', 'Coquitlam', 49.283, -122.753, 'P', 'PPL', 'CA.02', NULL, 114565, 'America/Vancouver', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5927969, 'CA', 'Corner Brook', 'Corner Brook', 48.95, -57.952, 'P', 'PPL', 'CA.05', NULL, 18693, 'America/St_Johns', 1, '2013-08-09 23:00:00', '2013-08-09 23:00:00'),
(5928065, 'CA', 'Cornwall', 'Cornwall', 45.0181, -74.7281, 'P', 'PPL', 'CA.08', NULL, 48821, 'America/Toronto', 1, '2009-07-30 23:00:00', '2009-07-30 23:00:00'),
(5928488, 'CA', 'Côte-Saint-Luc', 'Cote-Saint-Luc', 45.4654, -73.6658, 'P', 'PPL', 'CA.10', 'CA.10.06', 31395, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5930890, 'CA', 'Courtenay', 'Courtenay', 49.6866, -124.994, 'P', 'PPL', 'CA.02', NULL, 32793, 'America/Vancouver', 1, '2013-10-26 23:00:00', '2013-10-26 23:00:00'),
(5931074, 'CA', 'Cowansville', 'Cowansville', 45.2001, -72.7491, 'P', 'PPL', 'CA.10', 'CA.10.16', 10887, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(5931800, 'CA', 'Cranbrook', 'Cranbrook', 49.4999, -115.769, 'P', 'PPL', 'CA.02', NULL, 18610, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5935277, 'CA', 'Dartmouth', 'Dartmouth', 44.6713, -63.5772, 'P', 'PPL', 'CA.07', NULL, 101343, 'America/Halifax', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5935341, 'CA', 'Dauphin', 'Dauphin', 51.1494, -100.05, 'P', 'PPL', 'CA.03', NULL, 8418, 'America/Winnipeg', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5935804, 'CA', 'Dawson Creek', 'Dawson Creek', 55.7598, -120.24, 'P', 'PPL', 'CA.02', 'CA.02.5955', 10802, 'America/Dawson_Creek', 1, '2015-01-08 23:00:00', '2015-01-08 23:00:00'),
(5937612, 'CA', 'Delson', 'Delson', 45.3668, -73.5492, 'P', 'PPL', 'CA.10', 'CA.10.16', 7322, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5937615, 'CA', 'Delta', 'Delta', 49.144, -122.907, 'P', 'PPL', 'CA.02', NULL, 101668, 'America/Vancouver', 1, '2010-02-26 23:00:00', '2010-02-26 23:00:00'),
(5938513, 'CA', 'Deux-Montagnes', 'Deux-Montagnes', 45.5345, -73.9017, 'P', 'PPL', 'CA.10', 'CA.10.15', 17402, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5938801, 'CA', 'Devon', 'Devon', 53.3668, -113.735, 'P', 'PPL', 'CA.01', NULL, 5225, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5939219, 'CA', 'Dieppe', 'Dieppe', 46.0784, -64.6873, 'P', 'PPL', 'CA.04', NULL, 18565, 'America/Moncton', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5940934, 'CA', 'Dolbeau-Mistassini', 'Dolbeau-Mistassini', 48.8786, -72.2314, 'P', 'PPL', 'CA.10', 'CA.10.02', 12916, 'America/Toronto', 1, '2016-02-23 23:00:00', '2016-02-23 23:00:00'),
(5940956, 'CA', 'Dollard-Des Ormeaux', 'Dollard-Des Ormeaux', 45.4945, -73.8242, 'P', 'PPL', 'CA.10', NULL, 48930, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5941761, 'CA', 'Dorchester', 'Dorchester', 42.9834, -81.0664, 'P', 'PPL', 'CA.08', NULL, 9329, 'America/Toronto', 1, '2013-07-16 23:00:00', '2013-07-16 23:00:00'),
(5941925, 'CA', 'Dorval', 'Dorval', 45.4473, -73.7533, 'P', 'PPL', 'CA.10', 'CA.10.06', 18088, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5942547, 'CA', 'Drayton Valley', 'Drayton Valley', 53.2168, -114.985, 'P', 'PPL', 'CA.01', NULL, 6099, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5942845, 'CA', 'Drummondville', 'Drummondville', 45.8834, -72.4824, 'P', 'PPL', 'CA.10', 'CA.10.17', 59489, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(5942913, 'CA', 'Dryden', 'Dryden', 49.7833, -92.7503, 'P', 'PPL', 'CA.08', NULL, 8195, 'America/Winnipeg', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5943865, 'CA', 'Duncan', 'Duncan', 48.7829, -123.703, 'P', 'PPL', 'CA.02', NULL, 22199, 'America/Vancouver', 1, '2013-07-20 23:00:00', '2013-07-20 23:00:00'),
(5946768, 'CA', 'Edmonton', 'Edmonton', 53.5501, -113.469, 'P', 'PPLA', 'CA.01', NULL, 712391, 'America/Edmonton', 1, '2010-07-23 23:00:00', '2010-07-23 23:00:00'),
(5946820, 'CA', 'Edson', 'Edson', 53.5835, -116.436, 'P', 'PPL', 'CA.01', NULL, 7975, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5947866, 'CA', 'Elliot Lake', 'Elliot Lake', 46.3834, -82.6331, 'P', 'PPL', 'CA.08', NULL, 12508, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5949568, 'CA', 'Estevan', 'Estevan', 49.1334, -102.984, 'P', 'PPL', 'CA.11', NULL, 9904, 'America/Regina', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5950267, 'CA', 'Etobicoke', 'Etobicoke', 43.6542, -79.5671, 'P', 'PPL', 'CA.08', NULL, 347948, 'America/Toronto', 1, '2012-02-21 23:00:00', '2012-02-21 23:00:00'),
(5951289, 'CA', 'Fall River', 'Fall River', 44.8168, -63.6154, 'P', 'PPL', 'CA.07', NULL, 11526, 'America/Halifax', 1, '2017-11-25 23:00:00', '2017-11-25 23:00:00'),
(5951644, 'CA', 'Farnham', 'Farnham', 45.2834, -72.9824, 'P', 'PPL', 'CA.10', 'CA.10.16', 6061, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(5952370, 'CA', 'Fernie', 'Fernie', 49.5, -115.069, 'P', 'PPL', 'CA.02', NULL, 5019, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5954718, 'CA', 'Flin Flon', 'Flin Flon', 54.767, -101.874, 'P', 'PPL', 'CA.03', NULL, 6002, 'America/Winnipeg', 1, '2016-04-22 23:00:00', '2016-04-22 23:00:00'),
(5955815, 'CA', 'Fort Erie', 'Fort Erie', 42.9001, -78.9329, 'P', 'PPL', 'CA.08', NULL, 15953, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5955826, 'CA', 'Fort Frances', 'Fort Frances', 48.6167, -93.4003, 'P', 'PPL', 'CA.08', 'CA.08.3559', 7931, 'America/Winnipeg', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5955895, 'CA', 'Fort McMurray', 'Fort McMurray', 56.7268, -111.381, 'P', 'PPL', 'CA.01', NULL, 76000, 'America/Edmonton', 1, '2011-10-07 23:00:00', '2011-10-07 23:00:00'),
(5955948, 'CA', 'Fort Saskatchewan', 'Fort Saskatchewan', 53.7168, -113.219, 'P', 'PPL', 'CA.01', NULL, 14957, 'America/Edmonton', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(5955960, 'CA', 'Fort St. John', 'Fort St. John', 56.2499, -120.853, 'P', 'PPL', 'CA.02', NULL, 17402, 'America/Dawson_Creek', 1, '2013-10-05 23:00:00', '2013-10-05 23:00:00'),
(5957776, 'CA', 'Fredericton', 'Fredericton', 45.9454, -66.6656, 'P', 'PPLA', 'CA.04', NULL, 52337, 'America/Moncton', 1, '2010-07-28 23:00:00', '2010-07-28 23:00:00'),
(5959326, 'CA', 'Gananoque', 'Gananoque', 44.3334, -76.1661, 'P', 'PPL', 'CA.08', NULL, 5458, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5959878, 'CA', 'Gaspé', 'Gaspe', 48.8334, -64.4819, 'P', 'PPL', 'CA.10', 'CA.10.11', 14819, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5959974, 'CA', 'Gatineau', 'Gatineau', 45.4772, -75.7016, 'P', 'PPL', 'CA.10', 'CA.10.07', 242124, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5960971, 'CA', 'Gibsons', 'Gibsons', 49.3954, -123.506, 'P', 'PPL', 'CA.02', 'CA.02.5929', 6821, 'America/Vancouver', 1, '2013-09-22 23:00:00', '2013-09-22 23:00:00'),
(5961564, 'CA', 'Glace Bay', 'Glace Bay', 46.1969, -59.957, 'P', 'PPL', 'CA.07', NULL, 19968, 'America/Glace_Bay', 1, '2008-08-27 23:00:00', '2008-08-27 23:00:00'),
(5962442, 'CA', 'Goderich', 'Goderich', 43.7417, -81.7134, 'P', 'PPL', 'CA.08', 'CA.08.3540', 8032, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5964215, 'CA', 'Granby', 'Granby', 45.4001, -72.7324, 'P', 'PPL', 'CA.10', 'CA.10.16', 53979, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(5964347, 'CA', 'Grande Prairie', 'Grande Prairie', 55.1667, -118.803, 'P', 'PPL', 'CA.01', NULL, 41462, 'America/Edmonton', 1, '2016-04-16 23:00:00', '2016-04-16 23:00:00'),
(5964378, 'CA', 'Grand Falls-Windsor', 'Grand Falls-Windsor', 48.9332, -55.6649, 'P', 'PPL', 'CA.05', NULL, 12076, 'America/St_Johns', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5964700, 'CA', 'Greater Sudbury', 'Greater Sudbury', 46.49, -80.99, 'P', 'PPL', 'CA.08', NULL, 157857, 'America/Toronto', 1, '2014-05-11 23:00:00', '2014-05-11 23:00:00'),
(5965546, 'CA', 'Gravenhurst', 'Gravenhurst', 44.9168, -79.3663, 'P', 'PPL', 'CA.08', NULL, 5839, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5965812, 'CA', 'Greater Napanee', 'Greater Napanee', 44.2501, -76.9494, 'P', 'PPL', 'CA.08', NULL, 15132, 'America/Toronto', 1, '2010-04-05 23:00:00', '2010-04-05 23:00:00'),
(5966689, 'CA', 'Greenwood', 'Greenwood', 44.9741, -64.9317, 'P', 'PPL', 'CA.07', NULL, 6915, 'America/Halifax', 1, '2015-06-25 23:00:00', '2015-06-25 23:00:00'),
(5967629, 'CA', 'Guelph', 'Guelph', 43.5459, -80.256, 'P', 'PPL', 'CA.08', 'CA.08.3523', 115760, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5969782, 'CA', 'Hamilton', 'Hamilton', 43.2501, -79.8496, 'P', 'PPL', 'CA.08', NULL, 519949, 'America/Toronto', 1, '2013-02-15 23:00:00', '2013-02-15 23:00:00'),
(5970014, 'CA', 'Hampstead', 'Hampstead', 45.4806, -73.6631, 'P', 'PPL', 'CA.10', 'CA.10.06', 6996, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5970063, 'CA', 'Hanceville', 'Hanceville', 51.9192, -123.045, 'P', 'PPLL', 'CA.02', NULL, 10000, 'America/Vancouver', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(5970301, 'CA', 'Hanover', 'Hanover', 44.1501, -81.033, 'P', 'PPL', 'CA.08', NULL, 7255, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5970458, 'CA', 'Happy Valley-Goose Bay', 'Happy Valley-Goose Bay', 53.3038, -60.3258, 'P', 'PPL', 'CA.05', NULL, 7572, 'America/Goose_Bay', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(5972360, 'CA', 'Hawkesbury', 'Hawkesbury', 45.6001, -74.616, 'P', 'PPL', 'CA.08', NULL, 12283, 'America/Toronto', 1, '2016-05-04 23:00:00', '2016-05-04 23:00:00'),
(5975038, 'CA', 'High River', 'High River', 50.5834, -113.869, 'P', 'PPL', 'CA.01', NULL, 9826, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5975503, 'CA', 'Hinton', 'Hinton', 53.4001, -117.586, 'P', 'PPL', 'CA.01', NULL, 9889, 'America/Edmonton', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(5978126, 'CA', 'Hudson', 'Hudson', 45.4501, -74.1492, 'P', 'PPL', 'CA.10', 'CA.10.16', 5088, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5978765, 'CA', 'Huntsville', 'Huntsville', 45.3334, -79.2163, 'P', 'PPL', 'CA.08', NULL, 19579, 'America/Toronto', 1, '2009-05-18 23:00:00', '2009-05-18 23:00:00'),
(5978831, 'CA', 'Huron East', 'Huron East', 43.6168, -81.2998, 'P', 'PPL', 'CA.08', NULL, 9264, 'America/Toronto', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(5983175, 'CA', 'Ingersoll', 'Ingersoll', 43.0334, -80.883, 'P', 'PPL', 'CA.08', NULL, 11874, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(5983433, 'CA', 'Innisfil', 'Innisfil', 44.3001, -79.6496, 'P', 'PPL', 'CA.08', NULL, 7345, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(5983720, 'CA', 'Iqaluit', 'Iqaluit', 63.747, -68.5173, 'P', 'PPLA', 'CA.14', NULL, 6124, 'America/Iqaluit', 1, '2016-04-16 23:00:00', '2016-04-16 23:00:00'),
(5987650, 'CA', 'Joliette', 'Joliette', 46.0164, -73.4236, 'P', 'PPL', 'CA.10', 'CA.10.14', 34772, 'America/Toronto', 1, '2016-06-19 23:00:00', '2016-06-19 23:00:00'),
(5989045, 'CA', 'Kamloops', 'Kamloops', 50.6665, -120.319, 'P', 'PPL', 'CA.02', NULL, 68714, 'America/Vancouver', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(5989403, 'CA', 'Kapuskasing', 'Kapuskasing', 49.4169, -82.4331, 'P', 'PPL', 'CA.08', 'CA.08.3556', 9240, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5990579, 'CA', 'Kelowna', 'Kelowna', 49.8831, -119.486, 'P', 'PPL', 'CA.02', NULL, 125109, 'America/Vancouver', 1, '2011-02-18 23:00:00', '2011-02-18 23:00:00'),
(5991055, 'CA', 'Kenora', 'Kenora', 49.7674, -94.4899, 'P', 'PPL', 'CA.08', 'CA.08.3560', 15096, 'America/Winnipeg', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5991148, 'CA', 'Kentville', 'Kentville', 45.0771, -64.496, 'P', 'PPL', 'CA.07', 'CA.07.1207', 12636, 'America/Halifax', 1, '2014-08-30 23:00:00', '2014-08-30 23:00:00'),
(5991370, 'CA', 'Keswick', 'Keswick', 44.2501, -79.4663, 'P', 'PPLX', 'CA.08', NULL, 21000, 'America/Toronto', 1, '2010-08-22 23:00:00', '2010-08-22 23:00:00'),
(5992059, 'CA', 'Kimberley', 'Kimberley', 49.6707, -115.978, 'P', 'PPL', 'CA.02', 'CA.02.5901', 6513, 'America/Edmonton', 1, '2014-02-07 23:00:00', '2014-02-07 23:00:00'),
(5992144, 'CA', 'Kincardine', 'Kincardine', 44.1834, -81.6331, 'P', 'PPL', 'CA.08', NULL, 6725, 'America/Toronto', 1, '2015-11-08 23:00:00', '2015-11-08 23:00:00'),
(5992500, 'CA', 'Kingston', 'Kingston', 44.2298, -76.481, 'P', 'PPL', 'CA.08', NULL, 114195, 'America/Toronto', 1, '2014-05-10 23:00:00', '2014-05-10 23:00:00'),
(5992830, 'CA', 'Kirkland', 'Kirkland', 45.4501, -73.8659, 'P', 'PPL', 'CA.10', 'CA.10.06', 20491, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(5992836, 'CA', 'Kirkland Lake', 'Kirkland Lake', 48.1446, -80.0377, 'P', 'PPL', 'CA.08', NULL, 7775, 'America/Toronto', 1, '2012-01-06 23:00:00', '2012-01-06 23:00:00'),
(5992996, 'CA', 'Kitchener', 'Kitchener', 43.4254, -80.5112, 'P', 'PPLA2', 'CA.08', 'CA.08.3530', 233700, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(5993072, 'CA', 'Kitimat', 'Kitimat', 54.0524, -128.653, 'P', 'PPL', 'CA.02', NULL, 8987, 'America/Vancouver', 1, '2010-05-26 23:00:00', '2010-05-26 23:00:00'),
(5994839, 'CA', 'Labrador City', 'Labrador City', 52.9463, -66.9114, 'P', 'PPL', 'CA.05', NULL, 10313, 'America/Goose_Bay', 1, '2008-09-16 23:00:00', '2008-09-16 23:00:00'),
(6002133, 'CA', 'Lac-Brome', 'Lac-Brome', 45.2168, -72.5158, 'P', 'PPL', 'CA.10', 'CA.10.16', 5629, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6024829, 'CA', 'Lachute', 'Lachute', 45.6501, -74.3325, 'P', 'PPL', 'CA.10', 'CA.10.15', 9562, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6035615, 'CA', 'Lacombe', 'Lacombe', 52.4668, -113.735, 'P', 'PPL', 'CA.01', NULL, 10059, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6047817, 'CA', 'Ladysmith', 'Ladysmith', 48.9902, -123.817, 'P', 'PPL', 'CA.02', 'CA.02.5919', 8740, 'America/Vancouver', 1, '2014-02-07 23:00:00', '2014-02-07 23:00:00'),
(6049024, 'CA', 'Lambton Shores', 'Lambton Shores', 43.1668, -81.9331, 'P', 'PPL', 'CA.08', NULL, 10656, 'America/Toronto', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(6049388, 'CA', 'Langford', 'Langford', 48.4496, -123.503, 'P', 'PPL', 'CA.02', NULL, 22459, 'America/Vancouver', 1, '2014-02-07 23:00:00', '2014-02-07 23:00:00'),
(6049429, 'CA', 'Langley', 'Langley', 49.1011, -122.659, 'P', 'PPL', 'CA.02', NULL, 23606, 'America/Vancouver', 1, '2013-05-31 23:00:00', '2013-05-31 23:00:00'),
(6049430, 'CA', 'Langley', 'Langley', 49.083, -122.586, 'P', 'PPL', 'CA.02', NULL, 93726, 'America/Vancouver', 1, '2011-02-18 23:00:00', '2011-02-18 23:00:00'),
(6049863, 'CA', 'La Prairie', 'La Prairie', 45.4168, -73.4992, 'P', 'PPL', 'CA.10', 'CA.10.16', 21763, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6050194, 'CA', 'La Sarre', 'La Sarre', 48.8002, -79.1996, 'P', 'PPL', 'CA.10', 'CA.10.08', 7206, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6050263, 'CA', 'L\'Assomption', 'L\'Assomption', 45.8232, -73.4294, 'P', 'PPL', 'CA.10', 'CA.10.14', 16738, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6050416, 'CA', 'La Tuque', 'La Tuque', 47.4334, -72.7824, 'P', 'PPLX', 'CA.10', 'CA.10.04', 9503, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6050610, 'CA', 'Laval', 'Laval', 45.57, -73.692, 'P', 'PPL', 'CA.10', 'CA.10.13', 376845, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6050650, 'CA', 'Lavaltrie', 'Lavaltrie', 45.8834, -73.2824, 'P', 'PPL', 'CA.10', 'CA.10.14', 8762, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6051562, 'CA', 'Leduc', 'Leduc', 53.2668, -113.552, 'P', 'PPL', 'CA.01', NULL, 15561, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6052788, 'CA', 'Les Coteaux', 'Les Coteaux', 45.2834, -74.2325, 'P', 'PPL', 'CA.10', 'CA.10.16', 10622, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6053154, 'CA', 'Lethbridge', 'Lethbridge', 49.7, -112.819, 'P', 'PPL', 'CA.01', NULL, 70617, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6053877, 'CA', 'L\'Île-Perrot', 'L\'Ile-Perrot', 45.3834, -73.9492, 'P', 'PPL', 'CA.10', 'CA.10.16', 9927, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6058024, 'CA', 'Lloydminster', 'Lloydminster', 53.2835, -110.002, 'P', 'PPL', 'CA.11', NULL, 15910, 'America/Edmonton', 1, '2018-01-13 23:00:00', '2018-01-13 23:00:00'),
(6058560, 'CA', 'London', 'London', 42.9834, -81.233, 'P', 'PPL', 'CA.08', NULL, 346765, 'America/Toronto', 1, '2012-08-18 23:00:00', '2012-08-18 23:00:00'),
(6059891, 'CA', 'Longueuil', 'Longueuil', 45.5312, -73.5181, 'P', 'PPL', 'CA.10', 'CA.10.16', 229330, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6060407, 'CA', 'Lorraine', 'Lorraine', 45.6834, -73.7825, 'P', 'PPL', 'CA.10', 'CA.10.14', 9613, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6060839, 'CA', 'Louiseville', 'Louiseville', 46.2559, -72.9415, 'P', 'PPL', 'CA.10', 'CA.10.04', 5819, 'America/Toronto', 1, '2016-02-23 23:00:00', '2016-02-23 23:00:00'),
(6062163, 'CA', 'Lutes Mountain', 'Lutes Mountain', 46.1354, -64.905, 'P', 'PPL', 'CA.04', NULL, 16311, 'America/Moncton', 1, '2016-06-28 23:00:00', '2016-06-28 23:00:00'),
(6064180, 'CA', 'Magog', 'Magog', 45.2668, -72.1491, 'P', 'PPL', 'CA.10', 'CA.10.05', 15550, 'America/Toronto', 1, '2016-05-15 23:00:00', '2016-05-15 23:00:00'),
(6065686, 'CA', 'Maple Ridge', 'Maple Ridge', 49.2194, -122.602, 'P', 'PPL', 'CA.02', NULL, 70000, 'America/Vancouver', 1, '2010-02-26 23:00:00', '2010-02-26 23:00:00'),
(6066350, 'CA', 'Marieville', 'Marieville', 45.4334, -73.1658, 'P', 'PPL', 'CA.10', 'CA.10.16', 5600, 'America/Toronto', 1, '2016-04-12 23:00:00', '2016-04-12 23:00:00'),
(6066513, 'CA', 'Markham', 'Markham', 43.8668, -79.2663, 'P', 'PPL', 'CA.08', NULL, 261573, 'America/Toronto', 1, '2011-12-29 23:00:00', '2011-12-29 23:00:00'),
(6067494, 'CA', 'Mascouche', 'Mascouche', 45.7496, -73.5996, 'P', 'PPL', 'CA.10', 'CA.10.14', 34626, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6071618, 'CA', 'Medicine Hat', 'Medicine Hat', 50.0393, -110.677, 'P', 'PPL', 'CA.01', NULL, 63138, 'America/Edmonton', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6071876, 'CA', 'Melfort', 'Melfort', 52.8667, -104.618, 'P', 'PPL', 'CA.11', NULL, 5410, 'America/Regina', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6072206, 'CA', 'Mercier', 'Mercier', 45.3168, -73.7492, 'P', 'PPL', 'CA.10', 'CA.10.16', 10121, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6072350, 'CA', 'Merritt', 'Merritt', 50.1123, -120.794, 'P', 'PPL', 'CA.02', NULL, 7179, 'America/Vancouver', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6073363, 'CA', 'Midland', 'Midland', 44.7501, -79.883, 'P', 'PPL', 'CA.08', NULL, 31502, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6074377, 'CA', 'Milton', 'Milton', 43.5168, -79.8829, 'P', 'PPLA2', 'CA.08', 'CA.08.3524', 84362, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6075061, 'CA', 'Mirabel', 'Mirabel', 45.6501, -74.0825, 'P', 'PPL', 'CA.10', 'CA.10.15', 34626, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6075081, 'CA', 'Miramichi', 'Miramichi', 47.0289, -65.5019, 'P', 'PPL', 'CA.04', 'CA.04.1309', 18129, 'America/Moncton', 1, '2013-08-09 23:00:00', '2013-08-09 23:00:00'),
(6075357, 'CA', 'Mississauga', 'Mississauga', 43.5789, -79.6583, 'P', 'PPL', 'CA.08', NULL, 668549, 'America/Toronto', 1, '2012-06-30 23:00:00', '2012-06-30 23:00:00'),
(6076211, 'CA', 'Moncton', 'Moncton', 46.0945, -64.7965, 'P', 'PPL', 'CA.04', 'CA.04.1307', 87467, 'America/Moncton', 1, '2015-08-28 23:00:00', '2015-08-28 23:00:00'),
(6077128, 'CA', 'Mont-Laurier', 'Mont-Laurier', 46.5501, -75.4993, 'P', 'PPL', 'CA.10', 'CA.10.15', 13405, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6077243, 'CA', 'Montréal', 'Montreal', 45.5088, -73.5878, 'P', 'PPLA2', 'CA.10', 'CA.10.06', 1600000, 'America/Toronto', 1, '2015-09-04 23:00:00', '2015-09-04 23:00:00'),
(6077265, 'CA', 'Montréal-Ouest', 'Montreal-Ouest', 45.4529, -73.6492, 'P', 'PPL', 'CA.10', NULL, 5184, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6077315, 'CA', 'Mont-Royal', 'Mont-Royal', 45.5168, -73.6492, 'P', 'PPL', 'CA.10', 'CA.10.06', 18933, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6077340, 'CA', 'Mont-Saint-Hilaire', 'Mont-Saint-Hilaire', 45.5652, -73.1868, 'P', 'PPL', 'CA.10', 'CA.10.16', 15720, 'America/Toronto', 1, '2017-01-30 23:00:00', '2017-01-30 23:00:00'),
(6077445, 'CA', 'Mont-Tremblant', 'Mont-Tremblant', 46.2127, -74.5844, 'P', 'PPL', 'CA.10', 'CA.10.15', 8892, 'America/Toronto', 1, '2013-08-16 23:00:00', '2013-08-16 23:00:00'),
(6078112, 'CA', 'Moose Jaw', 'Moose Jaw', 50.4001, -105.534, 'P', 'PPL', 'CA.11', NULL, 32166, 'America/Regina', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(6078447, 'CA', 'Morden', 'Morden', 49.1919, -98.1014, 'P', 'PPL', 'CA.03', NULL, 6395, 'America/Winnipeg', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6078636, 'CA', 'Morinville', 'Morinville', 53.8001, -113.652, 'P', 'PPL', 'CA.01', NULL, 8108, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6082231, 'CA', 'Mount Pearl', 'Mount Pearl', 47.5166, -52.7813, 'P', 'PPL', 'CA.05', NULL, 24671, 'America/St_Johns', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6085772, 'CA', 'Nanaimo', 'Nanaimo', 49.1664, -123.94, 'P', 'PPL', 'CA.02', NULL, 84905, 'America/Vancouver', 1, '2013-06-22 23:00:00', '2013-06-22 23:00:00'),
(6086871, 'CA', 'Nelson', 'Nelson', 49.4999, -117.286, 'P', 'PPL', 'CA.02', NULL, 9813, 'America/Vancouver', 1, '2012-02-19 23:00:00', '2012-02-19 23:00:00'),
(6087029, 'CA', 'Nepean', 'Nepean', 45.3521, -75.7398, 'P', 'PPL', 'CA.08', NULL, 180000, 'America/Toronto', 1, '2017-11-13 23:00:00', '2017-11-13 23:00:00'),
(6087579, 'CA', 'New Glasgow', 'New Glasgow', 45.5834, -62.6486, 'P', 'PPL', 'CA.07', NULL, 20322, 'America/Halifax', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6087701, 'CA', 'Newmarket', 'Newmarket', 44.0501, -79.4663, 'P', 'PPL', 'CA.08', NULL, 74295, 'America/Toronto', 1, '2011-12-29 23:00:00', '2011-12-29 23:00:00'),
(6087844, 'CA', 'New Westminster', 'New Westminster', 49.2068, -122.911, 'P', 'PPL', 'CA.02', NULL, 58549, 'America/Vancouver', 1, '2014-02-08 23:00:00', '2014-02-08 23:00:00'),
(6087892, 'CA', 'Niagara Falls', 'Niagara Falls', 43.1001, -79.0663, 'P', 'PPL', 'CA.08', NULL, 82000, 'America/Toronto', 1, '2009-06-06 23:00:00', '2009-06-06 23:00:00'),
(6088132, 'CA', 'Nicolet', 'Nicolet', 46.2168, -72.6158, 'P', 'PPL', 'CA.10', 'CA.10.17', 5257, 'America/Toronto', 1, '2016-02-22 23:00:00', '2016-02-22 23:00:00'),
(6089125, 'CA', 'Norfolk County', 'Norfolk County', 42.8334, -80.383, 'P', 'PPL', 'CA.08', NULL, 60847, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6089404, 'CA', 'North Battleford', 'North Battleford', 52.7797, -108.297, 'P', 'PPL', 'CA.11', NULL, 19440, 'America/Regina', 1, '2013-10-05 23:00:00', '2013-10-05 23:00:00'),
(6089426, 'CA', 'North Bay', 'North Bay', 46.3168, -79.4663, 'P', 'PPL', 'CA.08', 'CA.08.3548', 50170, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6089661, 'CA', 'North Cowichan', 'North Cowichan', 48.8413, -123.686, 'P', 'PPL', 'CA.02', NULL, 32272, 'America/Vancouver', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6090405, 'CA', 'North Perth', 'North Perth', 43.7251, -80.9672, 'P', 'PPL', 'CA.08', NULL, 12254, 'America/Toronto', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(6090579, 'CA', 'North Saanich', 'North Saanich', 48.6663, -123.419, 'P', 'PPL', 'CA.02', NULL, 11089, 'America/Vancouver', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(6090785, 'CA', 'North Vancouver', 'North Vancouver', 49.3164, -123.069, 'P', 'PPL', 'CA.02', 'CA.02.5909', 48000, 'America/Vancouver', 1, '2013-08-27 23:00:00', '2013-08-27 23:00:00'),
(6091104, 'CA', 'North York', 'North York', 43.7668, -79.4163, 'P', 'PPL', 'CA.08', NULL, 636000, 'America/Toronto', 1, '2011-12-06 23:00:00', '2011-12-06 23:00:00'),
(6091314, 'CA', 'Notre-Dame-de-Grâce', 'Notre-Dame-de-Grace', 45.4767, -73.6143, 'P', 'PPLX', 'CA.10', 'CA.10.06', 67000, 'America/Toronto', 1, '2017-11-28 23:00:00', '2017-11-28 23:00:00'),
(6091369, 'CA', 'Notre-Dame-de-l\'Île-Perrot', 'Notre-Dame-de-l\'Ile-Perrot', 45.3668, -73.9325, 'P', 'PPL', 'CA.10', 'CA.10.16', 9885, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6091422, 'CA', 'Notre-Dame-des-Prairies', 'Notre-Dame-des-Prairies', 46.0501, -73.4324, 'P', 'PPL', 'CA.10', 'CA.10.14', 8230, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6091919, 'CA', 'Oak Bay', 'Oak Bay', 48.4496, -123.303, 'P', 'PPL', 'CA.02', NULL, 18015, 'America/Vancouver', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(6092122, 'CA', 'Oakville', 'Oakville', 43.4501, -79.6829, 'P', 'PPL', 'CA.08', NULL, 165697, 'America/Toronto', 1, '2012-01-14 23:00:00', '2012-01-14 23:00:00'),
(6093010, 'CA', 'Okotoks', 'Okotoks', 50.7289, -113.983, 'P', 'PPL', 'CA.01', NULL, 14826, 'America/Edmonton', 1, '2009-03-24 23:00:00', '2009-03-24 23:00:00'),
(6093347, 'CA', 'Olds', 'Olds', 51.7834, -114.102, 'P', 'PPL', 'CA.01', NULL, 6947, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6094201, 'CA', 'Orangeville', 'Orangeville', 43.9168, -80.0997, 'P', 'PPL', 'CA.08', NULL, 32640, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6094325, 'CA', 'Orillia', 'Orillia', 44.6087, -79.4207, 'P', 'PPL', 'CA.08', NULL, 30178, 'America/Toronto', 1, '2009-07-30 23:00:00', '2009-07-30 23:00:00'),
(6094407, 'CA', 'Oromocto', 'Oromocto', 45.8351, -66.4792, 'P', 'PPL', 'CA.04', NULL, 8998, 'America/Moncton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6094578, 'CA', 'Oshawa', 'Oshawa', 43.9001, -78.8496, 'P', 'PPL', 'CA.08', NULL, 247989, 'America/Toronto', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(6094817, 'CA', 'Ottawa', 'Ottawa', 45.4112, -75.6981, 'P', 'PPLC', 'CA.08', NULL, 812129, 'America/Toronto', 1, '2016-01-19 23:00:00', '2016-01-19 23:00:00'),
(6094884, 'CA', 'Otterburn Park', 'Otterburn Park', 45.5334, -73.2159, 'P', 'PPL', 'CA.10', 'CA.10.16', 8464, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6095645, 'CA', 'Owen Sound', 'Owen Sound', 44.5672, -80.9435, 'P', 'PPL', 'CA.08', NULL, 22625, 'America/Toronto', 1, '2009-07-30 23:00:00', '2009-07-30 23:00:00'),
(6098642, 'CA', 'Parksville', 'Parksville', 49.3195, -124.316, 'P', 'PPL', 'CA.02', 'CA.02.5921', 12000, 'America/Vancouver', 1, '2016-08-31 23:00:00', '2016-08-31 23:00:00'),
(6098747, 'CA', 'Parry Sound', 'Parry Sound', 45.3473, -80.0353, 'P', 'PPL', 'CA.08', 'CA.08.3549', 6469, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6100069, 'CA', 'Peace River', 'Peace River', 56.2371, -117.292, 'P', 'PPL', 'CA.01', NULL, 5340, 'America/Edmonton', 1, '2016-07-01 23:00:00', '2016-07-01 23:00:00'),
(6100832, 'CA', 'Pembroke', 'Pembroke', 45.8168, -77.1162, 'P', 'PPL', 'CA.08', NULL, 15551, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6101141, 'CA', 'Penticton', 'Penticton', 49.4806, -119.586, 'P', 'PPL', 'CA.02', NULL, 37721, 'America/Vancouver', 1, '2017-12-23 23:00:00', '2017-12-23 23:00:00'),
(6101546, 'CA', 'Perth', 'Perth', 44.9001, -76.2494, 'P', 'PPL', 'CA.08', NULL, 6481, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6101606, 'CA', 'Petawawa', 'Petawawa', 45.8945, -77.2801, 'P', 'PPL', 'CA.08', NULL, 15988, 'America/Toronto', 1, '2013-10-25 23:00:00', '2013-10-25 23:00:00'),
(6101645, 'CA', 'Peterborough', 'Peterborough', 44.3001, -78.3162, 'P', 'PPL', 'CA.08', NULL, 75877, 'America/Toronto', 1, '2016-07-01 23:00:00', '2016-07-01 23:00:00'),
(6103581, 'CA', 'Petrolia', 'Petrolia', 42.8668, -82.1498, 'P', 'PPL', 'CA.08', NULL, 5453, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6104111, 'CA', 'Pickering', 'Pickering', 43.9001, -79.1329, 'P', 'PPL', 'CA.08', NULL, 87838, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6104876, 'CA', 'Pincourt', 'Pincourt', 45.3834, -73.9825, 'P', 'PPL', 'CA.10', 'CA.10.16', 11197, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6105815, 'CA', 'Pitt Meadows', 'Pitt Meadows', 49.2212, -122.69, 'P', 'PPL', 'CA.02', NULL, 17410, 'America/Vancouver', 1, '2010-04-14 23:00:00', '2010-04-14 23:00:00'),
(6107272, 'CA', 'Pointe-Calumet', 'Pointe-Calumet', 45.5001, -73.9659, 'P', 'PPL', 'CA.10', 'CA.10.15', 6396, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6107325, 'CA', 'Pointe-Claire', 'Pointe-Claire', 45.4487, -73.8167, 'P', 'PPL', 'CA.10', 'CA.10.06', 30161, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6109273, 'CA', 'Ponoka', 'Ponoka', 52.6768, -113.581, 'P', 'PPL', 'CA.01', NULL, 6656, 'America/Edmonton', 1, '2010-12-15 23:00:00', '2010-12-15 23:00:00'),
(6110611, 'CA', 'Pont Rouge', 'Pont Rouge', 48.8833, -72.0825, 'P', 'PPL', 'CA.10', 'CA.10.02', 7518, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6111529, 'CA', 'Portage la Prairie', 'Portage la Prairie', 49.9728, -98.2926, 'P', 'PPL', 'CA.03', NULL, 12957, 'America/Winnipeg', 1, '2013-09-21 23:00:00', '2013-09-21 23:00:00'),
(6111632, 'CA', 'Port Alberni', 'Port Alberni', 49.2413, -124.803, 'P', 'PPL', 'CA.02', NULL, 21282, 'America/Vancouver', 1, '2017-11-08 23:00:00', '2017-11-08 23:00:00'),
(6111696, 'CA', 'Port-Cartier', 'Port-Cartier', 50.0334, -66.8654, 'P', 'PPL', 'CA.10', 'CA.10.09', 5851, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6111704, 'CA', 'Port Colborne', 'Port Colborne', 42.9001, -79.2329, 'P', 'PPL', 'CA.08', NULL, 18599, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6111962, 'CA', 'Port Moody', 'Port Moody', 49.283, -122.853, 'P', 'PPL', 'CA.02', NULL, 27512, 'America/Vancouver', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6112608, 'CA', 'Powell River', 'Powell River', 49.8328, -124.524, 'P', 'PPL', 'CA.02', 'CA.02.5927', 12779, 'America/Vancouver', 1, '2016-04-22 23:00:00', '2016-04-22 23:00:00'),
(6113198, 'CA', 'Prévost', 'Prevost', 45.8668, -74.0825, 'P', 'PPL', 'CA.10', 'CA.10.15', 10132, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6113335, 'CA', 'Prince Albert', 'Prince Albert', 53.2001, -105.768, 'P', 'PPL', 'CA.11', NULL, 34609, 'America/Regina', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6113355, 'CA', 'Prince Edward', 'Prince Edward', 44.0001, -77.2495, 'P', 'PPL', 'CA.08', NULL, 25496, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6113365, 'CA', 'Prince George', 'Prince George', 53.9166, -122.753, 'P', 'PPL', 'CA.02', NULL, 65558, 'America/Vancouver', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(6113406, 'CA', 'Prince Rupert', 'Prince Rupert', 54.3151, -130.321, 'P', 'PPL', 'CA.02', 'CA.02.5947', 14708, 'America/Vancouver', 1, '2017-12-30 23:00:00', '2017-12-30 23:00:00'),
(6113466, 'CA', 'Princeville', 'Princeville', 45.7668, -61.2985, 'P', 'PPL', 'CA.07', NULL, 5571, 'America/Halifax', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6115187, 'CA', 'Quesnel', 'Quesnel', 52.9784, -122.493, 'P', 'PPL', 'CA.02', NULL, 13788, 'America/Vancouver', 1, '2017-12-31 23:00:00', '2017-12-31 23:00:00'),
(6115355, 'CA', 'Quinte West', 'Quinte West', 44.1834, -77.5662, 'P', 'PPL', 'CA.08', NULL, 42697, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6117611, 'CA', 'Rawdon', 'Rawdon', 46.0501, -73.7159, 'P', 'PPL', 'CA.10', 'CA.10.14', 10400, 'America/Toronto', 1, '2016-04-12 23:00:00', '2016-04-12 23:00:00'),
(6117731, 'CA', 'Rayside-Balfour', 'Rayside-Balfour', 46.6087, -81.2076, 'P', 'PPL', 'CA.08', NULL, 16050, 'America/Toronto', 1, '2013-07-19 23:00:00', '2013-07-19 23:00:00'),
(6118158, 'CA', 'Red Deer', 'Red Deer', 52.2668, -113.802, 'P', 'PPL', 'CA.01', NULL, 73593, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6119109, 'CA', 'Regina', 'Regina', 50.4501, -104.618, 'P', 'PPLA', 'CA.11', NULL, 176183, 'America/Regina', 1, '2010-07-28 23:00:00', '2010-07-28 23:00:00'),
(6119448, 'CA', 'Renfrew', 'Renfrew', 45.4668, -76.6827, 'P', 'PPL', 'CA.08', NULL, 8018, 'America/Toronto', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6119518, 'CA', 'Repentigny', 'Repentigny', 45.7422, -73.4501, 'P', 'PPL', 'CA.10', 'CA.10.14', 76237, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6121621, 'CA', 'Revelstoke', 'Revelstoke', 50.9971, -118.195, 'P', 'PPL', 'CA.02', 'CA.02.5939', 7533, 'America/Vancouver', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6122037, 'CA', 'Richelieu', 'Richelieu', 45.4434, -73.246, 'P', 'PPL', 'CA.10', 'CA.10.16', 5208, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6122085, 'CA', 'Richmond', 'Richmond', 49.17, -123.137, 'P', 'PPL', 'CA.02', NULL, 182000, 'America/Vancouver', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(6122091, 'CA', 'Richmond Hill', 'Richmond Hill', 43.8711, -79.4372, 'P', 'PPL', 'CA.08', 'CA.08.3519', 185541, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6125653, 'CA', 'Roberval', 'Roberval', 48.5168, -72.2324, 'P', 'PPL', 'CA.10', 'CA.10.02', 9287, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6126305, 'CA', 'Rock Forest', 'Rock Forest', 45.357, -71.9968, 'P', 'PPLX', 'CA.10', 'CA.10.05', 35500, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6126749, 'CA', 'Rocky Mountain House', 'Rocky Mountain House', 52.3668, -114.919, 'P', 'PPL', 'CA.01', NULL, 6527, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6127681, 'CA', 'Rosemère', 'Rosemere', 45.6334, -73.7992, 'P', 'PPL', 'CA.10', 'CA.10.15', 14173, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6128577, 'CA', 'Rouyn-Noranda', 'Rouyn-Noranda', 48.2366, -79.0231, 'P', 'PPL', 'CA.10', 'CA.10.08', 24023, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137063, 'CA', 'Sackville', 'Sackville', 45.9188, -64.3846, 'P', 'PPL', 'CA.04', NULL, 5411, 'America/Moncton', 1, '2010-06-07 23:00:00', '2010-06-07 23:00:00'),
(6137270, 'CA', 'Saguenay', 'Saguenay', 48.4168, -71.0657, 'P', 'PPL', 'CA.10', 'CA.10.02', 143692, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137489, 'CA', 'Saint-Basile-le-Grand', 'Saint-Basile-le-Grand', 45.5334, -73.2825, 'P', 'PPL', 'CA.10', 'CA.10.16', 15605, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137540, 'CA', 'Saint-Bruno-de-Montarville', 'Saint-Bruno-de-Montarville', 45.5334, -73.3492, 'P', 'PPL', 'CA.10', NULL, 24388, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6137633, 'CA', 'Saint-Constant', 'Saint-Constant', 45.3668, -73.5659, 'P', 'PPL', 'CA.10', 'CA.10.16', 23957, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137696, 'CA', 'Sainte-Adèle', 'Sainte-Adele', 45.9501, -74.1325, 'P', 'PPL', 'CA.10', 'CA.10.15', 10634, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6137702, 'CA', 'Sainte-Agathe-des-Monts', 'Sainte-Agathe-des-Monts', 46.0501, -74.2825, 'P', 'PPL', 'CA.10', 'CA.10.15', 5706, 'America/Toronto', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6137733, 'CA', 'Sainte-Anne-de-Bellevue', 'Sainte-Anne-de-Bellevue', 45.4062, -73.9456, 'P', 'PPL', 'CA.10', NULL, 5197, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6137749, 'CA', 'Sainte-Anne-des-Monts', 'Sainte-Anne-des-Monts', 49.124, -66.4924, 'P', 'PPL', 'CA.10', 'CA.10.11', 5602, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137753, 'CA', 'Sainte-Anne-des-Plaines', 'Sainte-Anne-des-Plaines', 45.7647, -73.8116, 'P', 'PPL', 'CA.10', 'CA.10.15', 10680, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137780, 'CA', 'Sainte-Catherine', 'Sainte-Catherine', 45.4001, -73.5825, 'P', 'PPL', 'CA.10', 'CA.10.16', 16762, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(6137781, 'CA', 'Sainte-Catherine', 'Sainte-Catherine', 46.3184, -72.5663, 'P', 'PPL', 'CA.10', 'CA.10.04', 16211, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6137941, 'CA', 'Sainte-Julie', 'Sainte-Julie', 45.5834, -73.3325, 'P', 'PPL', 'CA.10', 'CA.10.16', 29019, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138032, 'CA', 'Sainte-Marthe-sur-le-Lac', 'Sainte-Marthe-sur-le-Lac', 45.5334, -73.9325, 'P', 'PPL', 'CA.10', 'CA.10.15', 11311, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138121, 'CA', 'Sainte-Thérèse', 'Sainte-Therese', 45.6392, -73.8276, 'P', 'PPL', 'CA.10', 'CA.10.15', 25224, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138175, 'CA', 'Saint-Eustache', 'Saint-Eustache', 45.565, -73.9055, 'P', 'PPL', 'CA.10', 'CA.10.15', 42062, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138201, 'CA', 'Saint-Félicien', 'Saint-Felicien', 48.6501, -72.4491, 'P', 'PPL', 'CA.10', 'CA.10.02', 8088, 'America/Toronto', 1, '2016-04-12 23:00:00', '2016-04-12 23:00:00'),
(6138210, 'CA', 'Saint-Félix-de-Valois', 'Saint-Felix-de-Valois', 46.1698, -73.4252, 'P', 'PPL', 'CA.10', 'CA.10.14', 6029, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(6138352, 'CA', 'Saint-Hippolyte', 'Saint-Hippolyte', 45.9334, -74.0159, 'P', 'PPL', 'CA.10', 'CA.10.15', 8083, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00');
INSERT INTO `ad_cities` (`id`, `country_code`, `name`, `asciiname`, `latitude`, `longitude`, `feature_class`, `feature_code`, `subadmin1_code`, `subadmin2_code`, `population`, `time_zone`, `active`, `created_at`, `updated_at`) VALUES
(6138374, 'CA', 'Saint-Hyacinthe', 'Saint-Hyacinthe', 45.6308, -72.957, 'P', 'PPL', 'CA.10', 'CA.10.16', 50326, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138495, 'CA', 'Saint-Jean-sur-Richelieu', 'Saint-Jean-sur-Richelieu', 45.3071, -73.2626, 'P', 'PPL', 'CA.10', 'CA.10.16', 71613, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138501, 'CA', 'Saint-Jérôme', 'Saint-Jerome', 45.7804, -74.0036, 'P', 'PPL', 'CA.10', 'CA.10.15', 54948, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138517, 'CA', 'Saint John', 'Saint John', 45.2727, -66.0677, 'P', 'PPL', 'CA.04', 'CA.04.1301', 87857, 'America/Moncton', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6138573, 'CA', 'Saint-Joseph-du-Lac', 'Saint-Joseph-du-Lac', 45.5334, -73.9992, 'P', 'PPL', 'CA.10', 'CA.10.15', 6195, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138610, 'CA', 'Saint-Laurent', 'Saint-Laurent', 45.5001, -73.6658, 'P', 'PPLX', 'CA.10', 'CA.10.06', 77391, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138617, 'CA', 'Saint-Lazare', 'Saint-Lazare', 45.4001, -74.1326, 'P', 'PPL', 'CA.10', 'CA.10.16', 17016, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138625, 'CA', 'Saint-Léonard', 'Saint-Leonard', 45.5877, -73.595, 'P', 'PPLX', 'CA.10', 'CA.10.06', 73423, 'America/Toronto', 1, '2013-07-17 23:00:00', '2013-07-17 23:00:00'),
(6138643, 'CA', 'Saint-Lin-Laurentides', 'Saint-Lin-Laurentides', 45.8501, -73.7659, 'P', 'PPL', 'CA.10', 'CA.10.14', 14159, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6138916, 'CA', 'Saint-Pie', 'Saint-Pie', 45.5028, -72.9089, 'P', 'PPLA3', 'CA.10', 'CA.10.16', 5438, 'America/Toronto', 1, '2016-06-30 23:00:00', '2016-06-30 23:00:00'),
(6138980, 'CA', 'Saint-Raymond', 'Saint-Raymond', 45.467, -73.6095, 'P', 'PPL', 'CA.10', NULL, 9273, 'America/Toronto', 1, '2013-07-14 23:00:00', '2013-07-14 23:00:00'),
(6139045, 'CA', 'Saint-Sauveur', 'Saint-Sauveur', 45.8869, -74.1794, 'P', 'PPL', 'CA.10', 'CA.10.15', 9191, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6139216, 'CA', 'Saint-Zotique', 'Saint-Zotique', 45.2501, -74.2492, 'P', 'PPL', 'CA.10', 'CA.10.16', 6773, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6139289, 'CA', 'Salaberry-de-Valleyfield', 'Salaberry-de-Valleyfield', 45.2501, -74.1325, 'P', 'PPL', 'CA.10', 'CA.10.16', 38662, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6139416, 'CA', 'Salmon Arm', 'Salmon Arm', 50.6998, -119.302, 'P', 'PPL', 'CA.02', NULL, 16205, 'America/Vancouver', 1, '2008-05-12 23:00:00', '2008-05-12 23:00:00'),
(6141190, 'CA', 'Sarnia', 'Sarnia', 42.9787, -82.4041, 'P', 'PPL', 'CA.08', 'CA.08.3538', 82998, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6141256, 'CA', 'Saskatoon', 'Saskatoon', 52.1324, -106.669, 'P', 'PPL', 'CA.11', NULL, 198958, 'America/Regina', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6141439, 'CA', 'Sault Ste. Marie', 'Sault Ste. Marie', 46.5168, -84.3333, 'P', 'PPLA2', 'CA.08', 'CA.08.3557', 74948, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6143367, 'CA', 'Sechelt', 'Sechelt', 49.4751, -123.759, 'P', 'PPL', 'CA.02', 'CA.02.5929', 5977, 'America/Vancouver', 1, '2013-09-22 23:00:00', '2013-09-22 23:00:00'),
(6144054, 'CA', 'Selkirk', 'Selkirk', 50.1436, -96.8845, 'P', 'PPL', 'CA.03', NULL, 9653, 'America/Winnipeg', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6144312, 'CA', 'Sept-Îles', 'Sept-Iles', 50.2001, -66.3821, 'P', 'PPL', 'CA.10', 'CA.10.09', 22582, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6145489, 'CA', 'Shawinigan', 'Shawinigan', 46.5667, -72.7491, 'P', 'PPLA3', 'CA.10', 'CA.10.04', 49161, 'America/Toronto', 1, '2016-11-12 23:00:00', '2016-11-12 23:00:00'),
(6146143, 'CA', 'Sherbrooke', 'Sherbrooke', 45.4001, -71.8991, 'P', 'PPL', 'CA.10', 'CA.10.05', 129447, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6146279, 'CA', 'Sherwood Park', 'Sherwood Park', 53.5168, -113.319, 'P', 'PPL', 'CA.01', NULL, 55063, 'America/Edmonton', 1, '2007-02-12 23:00:00', '2007-02-12 23:00:00'),
(6147962, 'CA', 'Simcoe', 'Simcoe', 42.8334, -80.2997, 'P', 'PPL', 'CA.08', NULL, 13922, 'America/Toronto', 1, '2017-12-12 23:00:00', '2017-12-12 23:00:00'),
(6149374, 'CA', 'Slave Lake', 'Slave Lake', 55.2834, -114.769, 'P', 'PPL', 'CA.01', NULL, 7661, 'America/Edmonton', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6149996, 'CA', 'Smithers', 'Smithers', 54.7804, -127.174, 'P', 'PPL', 'CA.02', NULL, 5438, 'America/Vancouver', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6150174, 'CA', 'Smiths Falls', 'Smiths Falls', 44.9045, -76.0233, 'P', 'PPL', 'CA.08', 'CA.08.3509', 10553, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6151264, 'CA', 'Sooke', 'Sooke', 48.3746, -123.728, 'P', 'PPL', 'CA.02', NULL, 6145, 'America/Vancouver', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6152244, 'CA', 'South Huron', 'South Huron', 43.3168, -81.5165, 'P', 'PPL', 'CA.08', NULL, 9982, 'America/Toronto', 1, '2013-05-04 23:00:00', '2013-05-04 23:00:00'),
(6154383, 'CA', 'Spruce Grove', 'Spruce Grove', 53.5334, -113.919, 'P', 'PPL', 'CA.01', NULL, 17767, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6155033, 'CA', 'St. Albert', 'St. Albert', 53.6334, -113.635, 'P', 'PPL', 'CA.01', NULL, 57719, 'America/Edmonton', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6155721, 'CA', 'St. Catharines', 'St. Catharines', 43.1713, -79.2427, 'P', 'PPL', 'CA.08', 'CA.08.3526', 131989, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6156102, 'CA', 'Steinbach', 'Steinbach', 49.5258, -96.6845, 'P', 'PPL', 'CA.03', NULL, 9607, 'America/Winnipeg', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6156244, 'CA', 'Stephenville', 'Stephenville', 48.55, -58.5818, 'P', 'PPL', 'CA.05', NULL, 6278, 'America/St_Johns', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6156307, 'CA', 'Stettler', 'Stettler', 52.3168, -112.719, 'P', 'PPL', 'CA.01', NULL, 5494, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6157536, 'CA', 'Stony Plain', 'Stony Plain', 53.5334, -114.002, 'P', 'PPL', 'CA.01', NULL, 8939, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6157977, 'CA', 'Stratford', 'Stratford', 43.3668, -80.9497, 'P', 'PPL', 'CA.08', NULL, 30233, 'America/Toronto', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(6158023, 'CA', 'Strathmore', 'Strathmore', 51.0501, -113.385, 'P', 'PPL', 'CA.01', NULL, 10009, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6158357, 'CA', 'St. Thomas', 'St. Thomas', 42.7736, -81.1804, 'P', 'PPL', 'CA.08', NULL, 36110, 'America/Toronto', 1, '2013-10-05 23:00:00', '2013-10-05 23:00:00'),
(6159232, 'CA', 'Summerland', 'Summerland', 49.5998, -119.669, 'P', 'PPL', 'CA.02', NULL, 6292, 'America/Vancouver', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6159244, 'CA', 'Summerside', 'Summerside', 46.3959, -63.7876, 'P', 'PPL', 'CA.09', 'CA.09.1103', 14808, 'America/Halifax', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6159905, 'CA', 'Surrey', 'Surrey', 49.1063, -122.825, 'P', 'PPL', 'CA.02', NULL, 394976, 'America/Vancouver', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6160603, 'CA', 'Swift Current', 'Swift Current', 50.2834, -107.801, 'P', 'PPL', 'CA.11', NULL, 14703, 'America/Swift_Current', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6160806, 'CA', 'Sylvan Lake', 'Sylvan Lake', 52.311, -114.084, 'P', 'PPL', 'CA.01', 'CA.01.4808012', 10518, 'America/Edmonton', 1, '2018-01-15 23:00:00', '2018-01-15 23:00:00'),
(6160919, 'CA', 'Taber', 'Taber', 49.787, -112.146, 'P', 'PPL', 'CA.01', NULL, 8163, 'America/Edmonton', 1, '2012-07-23 23:00:00', '2012-07-23 23:00:00'),
(6162659, 'CA', 'Temiskaming Shores', 'Temiskaming Shores', 47.4938, -79.7153, 'P', 'PPL', 'CA.08', NULL, 10442, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6162949, 'CA', 'Terrace', 'Terrace', 54.5163, -128.603, 'P', 'PPL', 'CA.02', NULL, 19443, 'America/Vancouver', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6163012, 'CA', 'Terrebonne', 'Terrebonne', 45.7, -73.6473, 'P', 'PPL', 'CA.10', 'CA.10.14', 94703, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6164499, 'CA', 'The Pas', 'The Pas', 53.8251, -101.254, 'P', 'PPL', 'CA.03', NULL, 6055, 'America/Winnipeg', 1, '2013-09-22 23:00:00', '2013-09-22 23:00:00'),
(6165406, 'CA', 'Thompson', 'Thompson', 55.7435, -97.8558, 'P', 'PPL', 'CA.03', NULL, 12467, 'America/Winnipeg', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6165719, 'CA', 'Thorold', 'Thorold', 43.1168, -79.1996, 'P', 'PPL', 'CA.08', NULL, 18224, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6166142, 'CA', 'Thunder Bay', 'Thunder Bay', 48.382, -89.2502, 'P', 'PPL', 'CA.08', 'CA.08.3558', 99334, 'America/Thunder_Bay', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6166739, 'CA', 'Timmins', 'Timmins', 48.4669, -81.3331, 'P', 'PPL', 'CA.08', NULL, 42997, 'America/Toronto', 1, '2017-11-11 23:00:00', '2017-11-11 23:00:00'),
(6167865, 'CA', 'Toronto', 'Toronto', 43.7001, -79.4163, 'P', 'PPLA', 'CA.08', NULL, 2600000, 'America/Toronto', 1, '2015-04-23 23:00:00', '2015-04-23 23:00:00'),
(6168326, 'CA', 'Trail', 'Trail', 49.0998, -117.702, 'P', 'PPL', 'CA.02', NULL, 9707, 'America/Vancouver', 1, '2018-01-02 23:00:00', '2018-01-02 23:00:00'),
(6169141, 'CA', 'Trois-Rivières', 'Trois-Rivieres', 46.3451, -72.5477, 'P', 'PPL', 'CA.10', 'CA.10.04', 119693, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6169587, 'CA', 'Truro', 'Truro', 45.3669, -63.2654, 'P', 'PPL', 'CA.07', NULL, 20650, 'America/Halifax', 1, '2006-01-21 23:00:00', '2006-01-21 23:00:00'),
(6172932, 'CA', 'Uxbridge', 'Uxbridge', 44.1001, -79.1163, 'P', 'PPL', 'CA.08', NULL, 11531, 'America/Toronto', 1, '2014-12-31 23:00:00', '2014-12-31 23:00:00'),
(6173012, 'CA', 'Val-des-Monts', 'Val-des-Monts', 45.6501, -75.666, 'P', 'PPL', 'CA.10', 'CA.10.07', 9539, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6173017, 'CA', 'Val-d\'Or', 'Val-d\'Or', 48.0974, -77.7974, 'P', 'PPL', 'CA.10', 'CA.10.08', 31123, 'America/Toronto', 1, '2015-09-05 23:00:00', '2015-09-05 23:00:00'),
(6173331, 'CA', 'Vancouver', 'Vancouver', 49.2497, -123.119, 'P', 'PPL', 'CA.02', NULL, 600000, 'America/Vancouver', 1, '2016-07-17 23:00:00', '2016-07-17 23:00:00'),
(6173508, 'CA', 'Varennes', 'Varennes', 45.6834, -73.4325, 'P', 'PPL', 'CA.10', 'CA.10.16', 20950, 'America/Toronto', 1, '2017-01-31 23:00:00', '2017-01-31 23:00:00'),
(6173570, 'CA', 'Vaudreuil-Dorion', 'Vaudreuil-Dorion', 45.4001, -74.0325, 'P', 'PPL', 'CA.10', 'CA.10.16', 25789, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6173577, 'CA', 'Vaughan', 'Vaughan', 43.8361, -79.4983, 'P', 'PPL', 'CA.08', NULL, 238866, 'America/Toronto', 1, '2011-12-06 23:00:00', '2011-12-06 23:00:00'),
(6173635, 'CA', 'Vegreville', 'Vegreville', 53.5001, -112.052, 'P', 'PPL', 'CA.01', NULL, 5678, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6173864, 'CA', 'Vernon', 'Vernon', 50.2673, -119.273, 'P', 'PPL', 'CA.02', 'CA.02.5937', 47274, 'America/Vancouver', 1, '2015-01-10 23:00:00', '2015-01-10 23:00:00'),
(6174041, 'CA', 'Victoria', 'Victoria', 48.4329, -123.369, 'P', 'PPLA', 'CA.02', NULL, 289625, 'America/Vancouver', 1, '2015-06-03 23:00:00', '2015-06-03 23:00:00'),
(6174151, 'CA', 'Victoriaville', 'Victoriaville', 46.0501, -71.9658, 'P', 'PPL', 'CA.10', 'CA.10.17', 34426, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6175059, 'CA', 'Wainwright', 'Wainwright', 52.8348, -110.853, 'P', 'PPL', 'CA.01', NULL, 5380, 'America/Edmonton', 1, '2016-12-10 23:00:00', '2016-12-10 23:00:00'),
(6176421, 'CA', 'Wasaga Beach', 'Wasaga Beach', 44.5168, -80.0164, 'P', 'PPL', 'CA.08', NULL, 7567, 'America/Toronto', 1, '2010-03-10 23:00:00', '2010-03-10 23:00:00'),
(6176823, 'CA', 'Waterloo', 'Waterloo', 43.4668, -80.5164, 'P', 'PPL', 'CA.08', NULL, 97475, 'America/Toronto', 1, '2010-01-28 23:00:00', '2010-01-28 23:00:00'),
(6177869, 'CA', 'Welland', 'Welland', 42.9834, -79.2496, 'P', 'PPL', 'CA.08', NULL, 50331, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6178582, 'CA', 'West End', 'West End', 49.2833, -123.133, 'P', 'PPL', 'CA.02', NULL, 44560, 'America/Vancouver', 1, '2013-09-08 23:00:00', '2013-09-08 23:00:00'),
(6179138, 'CA', 'Westlock', 'Westlock', 54.1502, -113.869, 'P', 'PPL', 'CA.01', NULL, 5067, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6179226, 'CA', 'Westmount', 'Westmount', 45.4834, -73.5992, 'P', 'PPL', 'CA.10', NULL, 20494, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6179602, 'CA', 'Wetaskiwin', 'Wetaskiwin', 52.9668, -113.369, 'P', 'PPL', 'CA.01', NULL, 11302, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6179652, 'CA', 'Weyburn', 'Weyburn', 49.6668, -103.851, 'P', 'PPL', 'CA.11', NULL, 9362, 'America/Regina', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6180144, 'CA', 'Whistler', 'Whistler', 50.1164, -122.969, 'P', 'PPL', 'CA.02', NULL, 10600, 'America/Vancouver', 1, '2015-05-22 23:00:00', '2015-05-22 23:00:00'),
(6180285, 'CA', 'Whitecourt', 'Whitecourt', 54.1502, -115.685, 'P', 'PPL', 'CA.01', NULL, 8763, 'America/Edmonton', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6180550, 'CA', 'Whitehorse', 'Whitehorse', 60.7161, -135.054, 'P', 'PPLA', 'CA.12', NULL, 23272, 'America/Whitehorse', 1, '2010-07-28 23:00:00', '2010-07-28 23:00:00'),
(6180961, 'CA', 'White Rock', 'White Rock', 49.0164, -122.803, 'P', 'PPL', 'CA.02', 'CA.02.5915', 66450, 'America/Vancouver', 1, '2013-08-27 23:00:00', '2013-08-27 23:00:00'),
(6182212, 'CA', 'Williams Lake', 'Williams Lake', 52.1415, -122.145, 'P', 'PPL', 'CA.02', 'CA.02.5941', 14168, 'America/Vancouver', 1, '2017-12-22 23:00:00', '2017-12-22 23:00:00'),
(6182959, 'CA', 'Windsor', 'Windsor', 45.5668, -71.9991, 'P', 'PPL', 'CA.10', 'CA.10.05', 5408, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6182962, 'CA', 'Windsor', 'Windsor', 42.3001, -83.0165, 'P', 'PPL', 'CA.08', NULL, 278013, 'America/Toronto', 1, '2012-05-03 23:00:00', '2012-05-03 23:00:00'),
(6183204, 'CA', 'Winkler', 'Winkler', 49.1817, -97.941, 'P', 'PPL', 'CA.03', NULL, 8270, 'America/Winnipeg', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6183235, 'CA', 'Winnipeg', 'Winnipeg', 49.8844, -97.147, 'P', 'PPLA', 'CA.03', NULL, 632063, 'America/Winnipeg', 1, '2013-09-22 23:00:00', '2013-09-22 23:00:00'),
(6184365, 'CA', 'Woodstock', 'Woodstock', 43.1334, -80.7497, 'P', 'PPLA2', 'CA.08', 'CA.08.3532', 33892, 'America/Toronto', 1, '2018-01-19 23:00:00', '2018-01-19 23:00:00'),
(6185217, 'CA', 'Yarmouth', 'Yarmouth', 43.8335, -66.1156, 'P', 'PPL', 'CA.07', NULL, 7500, 'America/Halifax', 1, '2008-04-10 23:00:00', '2008-04-10 23:00:00'),
(6185377, 'CA', 'Yellowknife', 'Yellowknife', 62.4541, -114.372, 'P', 'PPLA', 'CA.13', NULL, 15865, 'America/Yellowknife', 1, '2016-04-01 23:00:00', '2016-04-01 23:00:00'),
(6185607, 'CA', 'Yorkton', 'Yorkton', 51.2167, -102.468, 'P', 'PPL', 'CA.11', NULL, 15669, 'America/Regina', 1, '2013-10-05 23:00:00', '2013-10-05 23:00:00'),
(6295855, 'CA', 'Beauceville', 'Beauceville', 46.2178, -70.7787, 'P', 'PPL', 'CA.10', 'CA.10.12', 6226, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6324729, 'CA', 'Halifax', 'Halifax', 44.6453, -63.5724, 'P', 'PPLA', 'CA.07', NULL, 359111, 'America/Halifax', 1, '2014-07-17 23:00:00', '2014-07-17 23:00:00'),
(6324733, 'CA', 'St. John\'s', 'St. John\'s', 47.5649, -52.7093, 'P', 'PPLA', 'CA.05', NULL, 99182, 'America/St_Johns', 1, '2014-07-20 23:00:00', '2014-07-20 23:00:00'),
(6325494, 'CA', 'Québec', 'Quebec', 46.8123, -71.2145, 'P', 'PPLA', 'CA.10', NULL, 528595, 'America/Toronto', 1, '2014-11-05 23:00:00', '2014-11-05 23:00:00'),
(6325521, 'CA', 'Lévis', 'Levis', 46.8033, -71.1779, 'P', 'PPL', 'CA.10', 'CA.10.12', 126396, 'America/Blanc-Sablon', 1, '2015-09-03 23:00:00', '2015-09-03 23:00:00'),
(6325529, 'CA', 'Montmagny', 'Montmagny', 46.9804, -70.5549, 'P', 'PPL', 'CA.10', 'CA.10.12', 11724, 'America/Toronto', 1, '2017-04-02 23:00:00', '2017-04-02 23:00:00'),
(6354895, 'CA', 'Rimouski', 'Rimouski', 48.4488, -68.524, 'P', 'PPL', 'CA.10', 'CA.10.01', 42240, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6354897, 'CA', 'Rivière-du-Loup', 'Riviere-du-Loup', 47.827, -69.5424, 'P', 'PPL', 'CA.10', 'CA.10.01', 18586, 'America/Toronto', 1, '2013-08-23 23:00:00', '2013-08-23 23:00:00'),
(6354908, 'CA', 'Sydney', 'Sydney', 46.1351, -60.1831, 'P', 'PPL', 'CA.07', 'CA.07.CAPE BRETON CO', 105968, 'America/Glace_Bay', 1, '2016-04-16 23:00:00', '2016-04-16 23:00:00'),
(6534203, 'CA', 'L\'Ancienne-Lorette', 'L\'Ancienne-Lorette', 46.7939, -71.3519, 'P', 'PPL', 'CA.10', NULL, 16516, 'America/Toronto', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6545023, 'CA', 'Edmundston', 'Edmundston', 47.3737, -68.3251, 'P', 'PPL', 'CA.04', NULL, 16643, 'America/Moncton', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6620953, 'CA', 'Saint-Georges', 'Saint-Georges', 46.1135, -70.6653, 'P', 'PPL', 'CA.10', 'CA.10.12', 31173, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6639619, 'CA', 'Sainte Catherine de la Jacques Cartier', 'Sainte Catherine de la Jacques Cartier', 46.8524, -71.6206, 'P', 'PPL', 'CA.10', 'CA.10.03', 5021, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6690232, 'CA', 'Baie-Saint-Paul', 'Baie-Saint-Paul', 47.4411, -70.4986, 'P', 'PPL', 'CA.10', 'CA.10.03', 7288, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6696258, 'CA', 'Campbellton', 'Campbellton', 48.0075, -66.6727, 'P', 'PPL', 'CA.04', 'CA.04.11', 7384, 'America/Moncton', 1, '2010-09-21 23:00:00', '2010-09-21 23:00:00'),
(6696259, 'CA', 'Bathurst', 'Bathurst', 47.6181, -65.6511, 'P', 'PPL', 'CA.04', NULL, 12714, 'America/Moncton', 1, '2013-07-14 23:00:00', '2013-07-14 23:00:00'),
(6696260, 'CA', 'Matane', 'Matane', 48.8286, -67.522, 'P', 'PPL', 'CA.10', 'CA.10.01', 14812, 'America/Toronto', 1, '2016-04-11 23:00:00', '2016-04-11 23:00:00'),
(6942553, 'CA', 'Paris', 'Paris', 43.2, -80.3833, 'P', 'PPL', 'CA.08', NULL, 11177, 'America/Toronto', 1, '2009-06-24 23:00:00', '2009-06-24 23:00:00'),
(6943488, 'CA', 'Amqui', 'Amqui', 48.4638, -67.4313, 'P', 'PPL', 'CA.10', 'CA.10.01', 6261, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6943811, 'CA', 'Chandler', 'Chandler', 48.3493, -64.6793, 'P', 'PPL', 'CA.10', 'CA.10.11', 7914, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6943827, 'CA', 'Thetford-Mines', 'Thetford-Mines', 46.0937, -71.3054, 'P', 'PPL', 'CA.10', 'CA.10.12', 25704, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(6944113, 'CA', 'Mont-Joli', 'Mont-Joli', 48.5839, -68.1921, 'P', 'PPL', 'CA.10', 'CA.10.01', 6568, 'America/Toronto', 1, '2013-08-16 23:00:00', '2013-08-16 23:00:00'),
(6945986, 'CA', 'La Malbaie', 'La Malbaie', 47.654, -70.1527, 'P', 'PPL', 'CA.10', 'CA.10.03', 8959, 'America/Toronto', 1, '2013-08-16 23:00:00', '2013-08-16 23:00:00'),
(6945989, 'CA', 'Sainte-Marie', 'Sainte-Marie', 46.434, -71.0117, 'P', 'PPL', 'CA.10', 'CA.10.12', 11584, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6945991, 'CA', 'Plessisville', 'Plessisville', 46.2186, -71.762, 'P', 'PPL', 'CA.10', 'CA.10.04', 6677, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(6948711, 'CA', 'Scarborough', 'Scarborough', 43.7722, -79.2567, 'P', 'PPL', 'CA.08', NULL, 600000, 'America/Toronto', 1, '2015-01-30 23:00:00', '2015-01-30 23:00:00'),
(7280414, 'CA', 'Cole Harbour', 'Cole Harbour', 44.6724, -63.4751, 'P', 'PPLX', 'CA.07', NULL, 20000, 'America/Halifax', 1, '2010-03-04 23:00:00', '2010-03-04 23:00:00'),
(7281931, 'CA', 'Okanagan', 'Okanagan', 50.3639, -119.35, 'P', 'PPLQ', 'CA.02', NULL, 297601, 'America/Vancouver', 1, '2012-01-16 23:00:00', '2012-01-16 23:00:00'),
(7281936, 'CA', 'West Kelowna', 'West Kelowna', 49.8625, -119.583, 'P', 'PPL', 'CA.02', NULL, 28793, 'America/Vancouver', 1, '2011-02-18 23:00:00', '2011-02-18 23:00:00'),
(7303783, 'CA', 'Sydney Mines', 'Sydney Mines', 46.2367, -60.2177, 'P', 'PPL', 'CA.07', NULL, 7312, 'America/Glace_Bay', 1, '2010-07-17 23:00:00', '2010-07-17 23:00:00'),
(7303786, 'CA', 'Jonquière', 'Jonquiere', 48.4165, -71.2488, 'P', 'PPLX', 'CA.10', 'CA.10.02', 54842, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(7535681, 'CA', 'Saint-Augustin-de-Desmaures', 'Saint-Augustin-de-Desmaures', 46.7406, -71.4513, 'P', 'PPL', 'CA.10', 'CA.10.03', 17281, 'America/Toronto', 1, '2010-09-22 23:00:00', '2010-09-22 23:00:00'),
(7535690, 'CA', 'Donnacona', 'Donnacona', 46.6804, -71.7239, 'P', 'PPL', 'CA.10', 'CA.10.03', 5564, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(7602078, 'CA', 'Ladner', 'Ladner', 49.0894, -123.082, 'P', 'PPL', 'CA.02', NULL, 200000, 'America/Vancouver', 1, '2010-11-14 23:00:00', '2010-11-14 23:00:00'),
(7669012, 'CA', 'Walnut Grove', 'Walnut Grove', 49.1647, -122.64, 'P', 'PPLX', 'CA.02', NULL, 25683, 'America/Vancouver', 1, '2011-02-18 23:00:00', '2011-02-18 23:00:00'),
(7669018, 'CA', 'Aldergrove', 'Aldergrove', 49.058, -122.471, 'P', 'PPLX', 'CA.02', NULL, 12363, 'America/Vancouver', 1, '2011-02-18 23:00:00', '2011-02-18 23:00:00'),
(7870925, 'CA', 'East York', 'East York', 43.6905, -79.3279, 'P', 'PPL', 'CA.08', NULL, 115365, 'America/Toronto', 1, '2016-07-05 23:00:00', '2016-07-05 23:00:00'),
(8285452, 'CA', 'Ancaster', 'Ancaster', 43.2181, -79.9872, 'P', 'PPL', 'CA.08', NULL, 33232, 'America/Toronto', 1, '2012-05-06 23:00:00', '2012-05-06 23:00:00'),
(8354533, 'CA', 'Shannon', 'Shannon', 46.8803, -71.5146, 'P', 'PPL', 'CA.10', 'CA.10.03', 5086, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(8354586, 'CA', 'Saint-Henri', 'Saint-Henri', 46.6931, -71.0693, 'P', 'PPL', 'CA.10', 'CA.10.12', 5023, 'America/Toronto', 1, '2013-07-14 23:00:00', '2013-07-14 23:00:00'),
(8379100, 'CA', 'Pont-Rouge', 'Pont-Rouge', 46.7547, -71.6957, 'P', 'PPL', 'CA.10', 'CA.10.03', 8723, 'America/Toronto', 1, '2016-06-21 23:00:00', '2016-06-21 23:00:00'),
(8379101, 'CA', 'Princeville', 'Princeville', 46.1716, -71.8746, 'P', 'PPL', 'CA.10', 'CA.10.17', 5693, 'America/Toronto', 1, '2016-02-22 23:00:00', '2016-02-22 23:00:00'),
(8533869, 'CA', 'West Vancouver', 'West Vancouver', 49.3667, -123.167, 'P', 'PPLL', 'CA.02', NULL, 42694, 'America/Vancouver', 1, '2013-06-04 23:00:00', '2013-06-04 23:00:00'),
(8558534, 'CA', 'Willowdale', 'Willowdale', 43.7667, -79.3991, 'P', 'PPLL', 'CA.08', NULL, 79440, 'America/Toronto', 1, '2013-07-07 23:00:00', '2013-07-07 23:00:00'),
(10287505, 'CA', 'Lower Sackville', 'Lower Sackville', 44.776, -63.6786, 'P', 'PPL', 'CA.07', NULL, 21379, 'America/Halifax', 1, '2016-10-17 23:00:00', '2016-10-17 23:00:00'),
(10627796, 'CA', 'le Plateau', 'le Plateau', 45.4351, -75.7803, 'P', 'PPL', 'CA.10', 'CA.10.07', 15000, 'America/Toronto', 1, '2015-08-17 23:00:00', '2015-08-17 23:00:00'),
(11203927, 'CA', 'Wild Rose', 'Wild Rose', 53.4708, -113.381, 'P', 'PPLX', 'CA.01', NULL, 8031, 'America/Edmonton', 1, '2018-01-08 23:00:00', '2018-01-08 23:00:00'),
(11203928, 'CA', 'Silver Berry', 'Silver Berry', 53.4579, -113.382, 'P', 'PPLX', 'CA.01', NULL, 8089, 'America/Edmonton', 1, '2018-01-08 23:00:00', '2018-01-08 23:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `ad_countries`
--

CREATE TABLE `ad_countries` (
  `id` int UNSIGNED NOT NULL,
  `code` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `latitude` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso3` char(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `iso_numeric` int UNSIGNED DEFAULT NULL,
  `fips` char(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `asciiname` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `capital` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `area` int UNSIGNED DEFAULT NULL,
  `population` int UNSIGNED DEFAULT NULL,
  `continent_code` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tld` char(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code_format` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `postal_code_regex` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `languages` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `neighbours` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `equivalent_fips_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_countries`
--

INSERT INTO `ad_countries` (`id`, `code`, `latitude`, `longitude`, `iso3`, `iso_numeric`, `fips`, `name`, `asciiname`, `capital`, `area`, `population`, `continent_code`, `tld`, `currency_code`, `phone`, `postal_code_format`, `postal_code_regex`, `languages`, `neighbours`, `equivalent_fips_code`, `active`, `created_at`, `updated_at`) VALUES
(1, 'AD', NULL, NULL, 'AND', 20, 'AN', 'Andorra', 'Andorra', 'Andorra la Vella', 468, 84000, 'EU', '.ad', 'EUR', '376', 'AD###', '^(?:AD)*(d{3})$', 'ca', 'ES,FR', '', 0, NULL, NULL),
(2, 'AE', NULL, NULL, 'ARE', 784, 'AE', 'al-Imārāt', 'United Arab Emirates', 'Abu Dhabi', 82880, 4975593, 'AS', '.ae', 'AED', '971', '', '', 'ar-AE,fa,en,hi,ur', 'SA,OM', '', 0, NULL, NULL),
(3, 'AF', NULL, NULL, 'AFG', 4, 'AF', 'Afġānistān', 'Afghanistan', 'Kabul', 647500, 29121286, 'AS', '.af', 'AFN', '93', '', '', 'fa-AF,ps,uz-AF,tk', 'TM,CN,IR,TJ,PK,UZ', '', 0, NULL, NULL),
(4, 'AG', NULL, NULL, 'ATG', 28, 'AC', 'Antigua and Barbuda', 'Antigua and Barbuda', 'St. John\'s', 443, 86754, 'NA', '.ag', 'XCD', '+1-268', '', '', 'en-AG', '', '', 0, NULL, NULL),
(5, 'AI', NULL, NULL, 'AIA', 660, 'AV', 'Anguilla', 'Anguilla', 'The Valley', 102, 13254, 'NA', '.ai', 'XCD', '+1-264', '', '', 'en-AI', '', '', 0, NULL, NULL),
(6, 'AL', NULL, NULL, 'ALB', 8, 'AL', 'Shqipëria', 'Albania', 'Tirana', 28748, 2986952, 'EU', '.al', 'ALL', '355', '', '', 'sq,el', 'MK,GR,ME,RS,XK', '', 0, NULL, NULL),
(7, 'AM', NULL, NULL, 'ARM', 51, 'AM', 'Hayastan', 'Armenia', 'Yerevan', 29800, 2968000, 'AS', '.am', 'AMD', '374', '######', '^(d{6})$', 'hy', 'GE,IR,AZ,TR', '', 0, NULL, NULL),
(8, 'AN', NULL, NULL, 'ANT', 530, 'NT', 'Netherlands Antilles', 'Netherlands Antilles', 'Willemstad', 960, 136197, 'NA', '.an', 'ANG', '599', '', '', 'nl-AN,en,es', 'GP', '', 0, NULL, NULL),
(9, 'AO', NULL, NULL, 'AGO', 24, 'AO', 'Angola', 'Angola', 'Luanda', 1246700, 13068161, 'AF', '.ao', 'AOA', '244', '', '', 'pt-AO', 'CD,NA,ZM,CG', '', 0, NULL, NULL),
(10, 'AQ', NULL, NULL, 'ATA', 10, 'AY', 'Antarctica', 'Antarctica', '', 14000000, 0, 'AN', '.aq', '', '', '', '', '', '', '', 0, NULL, NULL),
(11, 'AR', NULL, NULL, 'ARG', 32, 'AR', 'Argentina', 'Argentina', 'Buenos Aires', 2766890, 41343201, 'SA', '.ar', 'ARS', '54', '@####@@@', '^([A-Z]d{4}[A-Z]{3})$', 'es-AR,en,it,de,fr,gn', 'CL,BO,UY,PY,BR', '', 0, NULL, NULL),
(12, 'AS', NULL, NULL, 'ASM', 16, 'AQ', 'American Samoa', 'American Samoa', 'Pago Pago', 199, 57881, 'OC', '.as', 'USD', '+1-684', '', '', 'en-AS,sm,to', '', '', 0, NULL, NULL),
(13, 'AT', NULL, NULL, 'AUT', 40, 'AU', 'Österreich', 'Austria', 'Vienna', 83858, 8205000, 'EU', '.at', 'EUR', '43', '####', '^(d{4})$', 'de-AT,hr,hu,sl', 'CH,DE,HU,SK,CZ,IT,SI,LI', '', 0, NULL, NULL),
(14, 'AU', NULL, NULL, 'AUS', 36, 'AS', 'Australia', 'Australia', 'Canberra', 7686850, 21515754, 'OC', '.au', 'AUD', '61', '####', '^(d{4})$', 'en-AU', '', '', 0, NULL, NULL),
(15, 'AW', NULL, NULL, 'ABW', 533, 'AA', 'Aruba', 'Aruba', 'Oranjestad', 193, 71566, 'NA', '.aw', 'AWG', '297', '', '', 'nl-AW,es,en', '', '', 0, NULL, NULL),
(16, 'AX', NULL, NULL, 'ALA', 248, '', 'Aland Islands', 'Aland Islands', 'Mariehamn', 1580, 26711, 'EU', '.ax', 'EUR', '+358-18', '#####', '^(?:FI)*(d{5})$', 'sv-AX', '', 'FI', 0, NULL, NULL),
(17, 'AZ', NULL, NULL, 'AZE', 31, 'AJ', 'Azərbaycan', 'Azerbaijan', 'Baku', 86600, 8303512, 'AS', '.az', 'AZN', '994', 'AZ ####', '^(?:AZ)*(d{4})$', 'az,ru,hy', 'GE,IR,AM,TR,RU', '', 0, NULL, NULL),
(18, 'BA', NULL, NULL, 'BIH', 70, 'BK', 'Bosna i Hercegovina', 'Bosnia and Herzegovina', 'Sarajevo', 51129, 4590000, 'EU', '.ba', 'BAM', '387', '#####', '^(d{5})$', 'bs,hr-BA,sr-BA', 'HR,ME,RS', '', 0, NULL, NULL),
(19, 'BB', NULL, NULL, 'BRB', 52, 'BB', 'Barbados', 'Barbados', 'Bridgetown', 431, 285653, 'NA', '.bb', 'BBD', '+1-246', 'BB#####', '^(?:BB)*(d{5})$', 'en-BB', '', '', 0, NULL, NULL),
(20, 'BD', NULL, NULL, 'BGD', 50, 'BG', 'Bāṅlādēś', 'Bangladesh', 'Dhaka', 144000, 156118464, 'AS', '.bd', 'BDT', '880', '####', '^(d{4})$', 'bn-BD,en', 'MM,IN', '', 0, NULL, NULL),
(21, 'BE', NULL, NULL, 'BEL', 56, 'BE', 'Belgique', 'Belgium', 'Brussels', 30510, 10403000, 'EU', '.be', 'EUR', '32', '####', '^(d{4})$', 'nl-BE,fr-BE,de-BE', 'DE,NL,LU,FR', '', 0, NULL, NULL),
(22, 'BF', NULL, NULL, 'BFA', 854, 'UV', 'Burkina Faso', 'Burkina Faso', 'Ouagadougou', 274200, 16241811, 'AF', '.bf', 'XOF', '226', '', '', 'fr-BF', 'NE,BJ,GH,CI,TG,ML', '', 0, NULL, NULL),
(23, 'BG', NULL, NULL, 'BGR', 100, 'BU', 'Bŭlgarija', 'Bulgaria', 'Sofia', 110910, 7148785, 'EU', '.bg', 'BGN', '359', '####', '^(d{4})$', 'bg,tr-BG,rom', 'MK,GR,RO,TR,RS', '', 0, NULL, NULL),
(24, 'BH', NULL, NULL, 'BHR', 48, 'BA', 'al-Baḥrayn', 'Bahrain', 'Manama', 665, 738004, 'AS', '.bh', 'BHD', '973', '####|###', '^(d{3}d?)$', 'ar-BH,en,fa,ur', '', '', 0, NULL, NULL),
(25, 'BI', NULL, NULL, 'BDI', 108, 'BY', 'Burundi', 'Burundi', 'Bujumbura', 27830, 9863117, 'AF', '.bi', 'BIF', '257', '', '', 'fr-BI,rn', 'TZ,CD,RW', '', 0, NULL, NULL),
(26, 'BJ', NULL, NULL, 'BEN', 204, 'BN', 'Bénin', 'Benin', 'Porto-Novo', 112620, 9056010, 'AF', '.bj', 'XOF', '+229', '', '', 'fr-BJ', 'NE,TG,BF,NG', '', 0, NULL, '2016-05-09 20:55:29'),
(27, 'BL', NULL, NULL, 'BLM', 652, 'TB', 'Saint Barthelemy', 'Saint Barthelemy', 'Gustavia', 21, 8450, 'NA', '.gp', 'EUR', '590', '### ###', '', 'fr', '', '', 0, NULL, NULL),
(28, 'BM', NULL, NULL, 'BMU', 60, 'BD', 'Bermuda', 'Bermuda', 'Hamilton', 53, 65365, 'NA', '.bm', 'BMD', '+1-441', '@@ ##', '^([A-Z]{2}d{2})$', 'en-BM,pt', '', '', 0, NULL, NULL),
(29, 'BN', NULL, NULL, 'BRN', 96, 'BX', 'Brunei Darussalam', 'Brunei', 'Bandar Seri Begawan', 5770, 395027, 'AS', '.bn', 'BND', '673', '@@####', '^([A-Z]{2}d{4})$', 'ms-BN,en-BN', 'MY', '', 0, NULL, NULL),
(30, 'BO', NULL, NULL, 'BOL', 68, 'BL', 'Bolivia', 'Bolivia', 'Sucre', 1098580, 9947418, 'SA', '.bo', 'BOB', '591', '', '', 'es-BO,qu,ay', 'PE,CL,PY,BR,AR', '', 0, NULL, NULL),
(31, 'BQ', NULL, NULL, 'BES', 535, '', 'Bonaire, Saint Eustatius and Saba ', 'Bonaire, Saint Eustatius and Saba ', '', 328, 18012, 'NA', '.bq', 'USD', '599', '', '', 'nl,pap,en', '', '', 0, NULL, NULL),
(32, 'BR', NULL, NULL, 'BRA', 76, 'BR', 'Brasil', 'Brazil', 'Brasilia', 8511965, 201103330, 'SA', '.br', 'BRL', '55', '#####-###', '^(d{8})$', 'pt-BR,es,en,fr', 'SR,PE,BO,UY,GY,PY,GF,VE,CO,AR', '', 0, NULL, NULL),
(33, 'BS', NULL, NULL, 'BHS', 44, 'BF', 'Bahamas', 'Bahamas', 'Nassau', 13940, 301790, 'NA', '.bs', 'BSD', '+1-242', '', '', 'en-BS', '', '', 0, NULL, NULL),
(34, 'BT', NULL, NULL, 'BTN', 64, 'BT', 'Druk-yul', 'Bhutan', 'Thimphu', 47000, 699847, 'AS', '.bt', 'BTN', '975', '', '', 'dz', 'CN,IN', '', 0, NULL, NULL),
(35, 'BV', NULL, NULL, 'BVT', 74, 'BV', 'Bouvet Island', 'Bouvet Island', '', 49, 0, 'AN', '.bv', 'NOK', '', '', '', '', '', '', 0, NULL, NULL),
(36, 'BW', NULL, NULL, 'BWA', 72, 'BC', 'Botswana', 'Botswana', 'Gaborone', 600370, 2029307, 'AF', '.bw', 'BWP', '267', '', '', 'en-BW,tn-BW', 'ZW,ZA,NA', '', 0, NULL, NULL),
(37, 'BY', NULL, NULL, 'BLR', 112, 'BO', 'Biełaruś', 'Belarus', 'Minsk', 207600, 9685000, 'EU', '.by', 'BYR', '375', '######', '^(d{6})$', 'be,ru', 'PL,LT,UA,RU,LV', '', 0, NULL, NULL),
(38, 'BZ', NULL, NULL, 'BLZ', 84, 'BH', 'Belize', 'Belize', 'Belmopan', 22966, 314522, 'NA', '.bz', 'BZD', '501', '', '', 'en-BZ,es', 'GT,MX', '', 0, NULL, NULL),
(39, 'CA', NULL, NULL, 'CAN', 124, 'CA', 'Canada', 'Canada', 'Ottawa', 9984670, 33679000, 'NA', '.ca', 'CAD', '1', '@#@ #@#', '^([ABCEGHJKLMNPRSTVXY]d[ABCEGHJKLMNPRSTVWXYZ]) ?(d[ABCEGHJKLMNPRSTVWXYZ]d)$ ', 'en-CA,fr-CA,iu', 'US', '', 1, NULL, '2020-10-27 04:46:26'),
(40, 'CC', NULL, NULL, 'CCK', 166, 'CK', 'Cocos Islands', 'Cocos Islands', 'West Island', 14, 628, 'AS', '.cc', 'AUD', '61', '', '', 'ms-CC,en', '', '', 0, NULL, NULL),
(41, 'CD', NULL, NULL, 'COD', 180, 'CG', 'RDC', 'Democratic Republic of the Congo', 'Kinshasa', 2345410, 70916439, 'AF', '.cd', 'CDF', '243', '', '', 'fr-CD,ln,kg', 'TZ,CF,SS,RW,ZM,BI,UG,CG,AO', '', 0, NULL, NULL),
(42, 'CF', NULL, NULL, 'CAF', 140, 'CT', 'Centrafrique', 'Central African Republic', 'Bangui', 622984, 4844927, 'AF', '.cf', 'XAF', '236', '', '', 'fr-CF,sg,ln,kg', 'TD,SD,CD,SS,CM,CG', '', 0, NULL, NULL),
(43, 'CG', NULL, NULL, 'COG', 178, 'CF', 'Congo', 'Republic of the Congo', 'Brazzaville', 342000, 3039126, 'AF', '.cg', 'XAF', '242', '', '', 'fr-CG,kg,ln-CG', 'CF,GA,CD,CM,AO', '', 0, NULL, NULL),
(44, 'CH', NULL, NULL, 'CHE', 756, 'SZ', 'Switzerland', 'Switzerland', 'Berne', 41290, 7581000, 'EU', '.ch', 'CHF', '41', '####', '^(d{4})$', 'de-CH,fr-CH,it-CH,rm', 'DE,IT,LI,FR,AT', '', 0, NULL, NULL),
(45, 'CI', NULL, NULL, 'CIV', 384, 'IV', 'Côte d\'Ivoire', 'Ivory Coast', 'Yamoussoukro', 322460, 21058798, 'AF', '.ci', 'XOF', '225', '', '', 'fr-CI', 'LR,GH,GN,BF,ML', '', 0, NULL, NULL),
(46, 'CK', NULL, NULL, 'COK', 184, 'CW', 'Cook Islands', 'Cook Islands', 'Avarua', 240, 21388, 'OC', '.ck', 'NZD', '682', '', '', 'en-CK,mi', '', '', 0, NULL, NULL),
(47, 'CL', NULL, NULL, 'CHL', 152, 'CI', 'Chile', 'Chile', 'Santiago', 756950, 16746491, 'SA', '.cl', 'CLP', '56', '#######', '^(d{7})$', 'es-CL', 'PE,BO,AR', '', 0, NULL, NULL),
(48, 'CM', NULL, NULL, 'CMR', 120, 'CM', 'Cameroun', 'Cameroon', 'Yaounde', 475440, 19294149, 'AF', '.cm', 'XAF', '237', '', '', 'fr-CM,en-CM', 'TD,CF,GA,GQ,CG,NG', '', 0, NULL, NULL),
(49, 'CN', NULL, NULL, 'CHN', 156, 'CH', 'Zhōngguó', 'China', 'Beijing', 9596960, 1330044000, 'AS', '.cn', 'CNY', '86', '######', '^(d{6})$', 'zh-CN,yue,wuu,dta,ug,za', 'LA,BT,TJ,KZ,MN,AF,NP,MM,KG,PK,KP,RU,VN,IN', '', 0, NULL, NULL),
(50, 'CO', NULL, NULL, 'COL', 170, 'CO', 'Colombia', 'Colombia', 'Bogota', 1138910, 47790000, 'SA', '.co', 'COP', '57', '', '', 'es-CO', 'EC,PE,PA,BR,VE', '', 0, NULL, NULL),
(51, 'CR', NULL, NULL, 'CRI', 188, 'CS', 'Costa Rica', 'Costa Rica', 'San Jose', 51100, 4516220, 'NA', '.cr', 'CRC', '506', '####', '^(d{4})$', 'es-CR,en', 'PA,NI', '', 0, NULL, NULL),
(52, 'CS', NULL, NULL, 'SCG', 891, 'YI', 'Serbia and Montenegro', 'Serbia and Montenegro', 'Belgrade', 102350, 10829175, 'EU', '.cs', 'RSD', '381', '#####', '^(d{5})$', 'cu,hu,sq,sr', 'AL,HU,MK,RO,HR,BA,BG', '', 0, NULL, NULL),
(53, 'CU', NULL, NULL, 'CUB', 192, 'CU', 'Cuba', 'Cuba', 'Havana', 110860, 11423000, 'NA', '.cu', 'CUP', '53', 'CP #####', '^(?:CP)*(d{5})$', 'es-CU', 'US', '', 0, NULL, NULL),
(54, 'CV', NULL, NULL, 'CPV', 132, 'CV', 'Cabo Verde', 'Cape Verde', 'Praia', 4033, 508659, 'AF', '.cv', 'CVE', '238', '####', '^(d{4})$', 'pt-CV', '', '', 0, NULL, NULL),
(55, 'CW', NULL, NULL, 'CUW', 531, 'UC', 'Curacao', 'Curacao', ' Willemstad', 444, 141766, 'NA', '.cw', 'ANG', '599', '', '', 'nl,pap', '', '', 0, NULL, NULL),
(56, 'CX', NULL, NULL, 'CXR', 162, 'KT', 'Christmas Island', 'Christmas Island', 'Flying Fish Cove', 135, 1500, 'AS', '.cx', 'AUD', '61', '####', '^(d{4})$', 'en,zh,ms-CC', '', '', 0, NULL, NULL),
(57, 'CY', NULL, NULL, 'CYP', 196, 'CY', 'Kýpros (Kıbrıs)', 'Cyprus', 'Nicosia', 9250, 1102677, 'EU', '.cy', 'EUR', '357', '####', '^(d{4})$', 'el-CY,tr-CY,en', '', '', 0, NULL, NULL),
(58, 'CZ', NULL, NULL, 'CZE', 203, 'EZ', 'Česko', 'Czech Republic', 'Prague', 78866, 10476000, 'EU', '.cz', 'CZK', '420', '### ##', '^(d{5})$', 'cs,sk', 'PL,DE,SK,AT', '', 0, NULL, NULL),
(59, 'DE', NULL, NULL, 'DEU', 276, 'GM', 'Deutschland', 'Germany', 'Berlin', 357021, 81802257, 'EU', '.de', 'EUR', '49', '#####', '^(d{5})$', 'de', 'CH,PL,NL,DK,BE,CZ,LU,FR,AT', '', 0, NULL, NULL),
(60, 'DJ', NULL, NULL, 'DJI', 262, 'DJ', 'Djibouti', 'Djibouti', 'Djibouti', 23000, 740528, 'AF', '.dj', 'DJF', '253', '', '', 'fr-DJ,ar,so-DJ,aa', 'ER,ET,SO', '', 0, NULL, NULL),
(61, 'DK', NULL, NULL, 'DNK', 208, 'DA', 'Danmark', 'Denmark', 'Copenhagen', 43094, 5484000, 'EU', '.dk', 'DKK', '45', '####', '^(d{4})$', 'da-DK,en,fo,de-DK', 'DE', '', 0, NULL, NULL),
(62, 'DM', NULL, NULL, 'DMA', 212, 'DO', 'Dominica', 'Dominica', 'Roseau', 754, 72813, 'NA', '.dm', 'XCD', '+1-767', '', '', 'en-DM', '', '', 0, NULL, NULL),
(63, 'DO', NULL, NULL, 'DOM', 214, 'DR', 'República Dominicana', 'Dominican Republic', 'Santo Domingo', 48730, 9823821, 'NA', '.do', 'DOP', '+809/829/849', '#####', '^(d{5})$', 'es-DO', 'HT', '', 0, NULL, NULL),
(64, 'DZ', NULL, NULL, 'DZA', 12, 'AG', 'Algérie', 'Algeria', 'Algiers', 2381740, 34586184, 'AF', '.dz', 'DZD', '213', '#####', '^(d{5})$', 'ar-DZ,fr', 'NE,EH,LY,MR,TN,MA,ML', '', 0, NULL, NULL),
(65, 'EC', NULL, NULL, 'ECU', 218, 'EC', 'Ecuador', 'Ecuador', 'Quito', 283560, 14790608, 'SA', '.ec', 'USD', '593', '@####@', '^([a-zA-Z]d{4}[a-zA-Z])$', 'es-EC', 'PE,CO', '', 0, NULL, NULL),
(66, 'EE', NULL, NULL, 'EST', 233, 'EN', 'Eesti', 'Estonia', 'Tallinn', 45226, 1291170, 'EU', '.ee', 'EUR', '372', '#####', '^(d{5})$', 'et,ru', 'RU,LV', '', 0, NULL, NULL),
(67, 'EG', NULL, NULL, 'EGY', 818, 'EG', 'Egypt', 'Egypt', 'Cairo', 1001450, 80471869, 'AF', '.eg', 'EGP', '20', '#####', '^(d{5})$', 'ar-EG,en,fr', 'LY,SD,IL,PS', '', 0, NULL, NULL),
(68, 'EH', NULL, NULL, 'ESH', 732, 'WI', 'aṣ-Ṣaḥrāwīyâ al-ʿArabīyâ', 'Western Sahara', 'El-Aaiun', 266000, 273008, 'AF', '.eh', 'MAD', '212', '', '', 'ar,mey', 'DZ,MR,MA', '', 0, NULL, NULL),
(69, 'ER', NULL, NULL, 'ERI', 232, 'ER', 'Ertrā', 'Eritrea', 'Asmara', 121320, 5792984, 'AF', '.er', 'ERN', '291', '', '', 'aa-ER,ar,tig,kun,ti-ER', 'ET,SD,DJ', '', 0, NULL, NULL),
(70, 'ES', NULL, NULL, 'ESP', 724, 'SP', 'España', 'Spain', 'Madrid', 504782, 46505963, 'EU', '.es', 'EUR', '34', '#####', '^(d{5})$', 'es-ES,ca,gl,eu,oc', 'AD,PT,GI,FR,MA', '', 0, NULL, NULL),
(71, 'ET', NULL, NULL, 'ETH', 231, 'ET', 'Ityoṗya', 'Ethiopia', 'Addis Ababa', 1127127, 88013491, 'AF', '.et', 'ETB', '251', '####', '^(d{4})$', 'am,en-ET,om-ET,ti-ET,so-ET,sid', 'ER,KE,SD,SS,SO,DJ', '', 0, NULL, NULL),
(72, 'FI', NULL, NULL, 'FIN', 246, 'FI', 'Suomi (Finland)', 'Finland', 'Helsinki', 337030, 5244000, 'EU', '.fi', 'EUR', '358', '#####', '^(?:FI)*(d{5})$', 'fi-FI,sv-FI,smn', 'NO,RU,SE', '', 0, NULL, NULL),
(73, 'FJ', NULL, NULL, 'FJI', 242, 'FJ', 'Viti', 'Fiji', 'Suva', 18270, 875983, 'OC', '.fj', 'FJD', '679', '', '', 'en-FJ,fj', '', '', 0, NULL, NULL),
(74, 'FK', NULL, NULL, 'FLK', 238, 'FK', 'Falkland Islands', 'Falkland Islands', 'Stanley', 12173, 2638, 'SA', '.fk', 'FKP', '500', '', '', 'en-FK', '', '', 0, NULL, NULL),
(75, 'FM', NULL, NULL, 'FSM', 583, 'FM', 'Micronesia', 'Micronesia', 'Palikir', 702, 107708, 'OC', '.fm', 'USD', '691', '#####', '^(d{5})$', 'en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg', '', '', 0, NULL, NULL),
(76, 'FO', NULL, NULL, 'FRO', 234, 'FO', 'Føroyar', 'Faroe Islands', 'Torshavn', 1399, 48228, 'EU', '.fo', 'DKK', '298', 'FO-###', '^(?:FO)*(d{3})$', 'fo,da-FO', '', '', 0, NULL, NULL),
(77, 'FR', NULL, NULL, 'FRA', 250, 'FR', 'France', 'France', 'Paris', 547030, 64768389, 'EU', '.fr', 'EUR', '33', '#####', '^(d{5})$', 'fr-FR,frp,br,co,ca,eu,oc', 'CH,DE,BE,LU,IT,AD,MC,ES', '', 0, NULL, NULL),
(78, 'GA', NULL, NULL, 'GAB', 266, 'GB', 'Gabon', 'Gabon', 'Libreville', 267667, 1545255, 'AF', '.ga', 'XAF', '241', '', '', 'fr-GA', 'CM,GQ,CG', '', 0, NULL, NULL),
(79, 'GD', NULL, NULL, 'GRD', 308, 'GJ', 'Grenada', 'Grenada', 'St. George\'s', 344, 107818, 'NA', '.gd', 'XCD', '+1-473', '', '', 'en-GD', '', '', 0, NULL, NULL),
(80, 'GE', NULL, NULL, 'GEO', 268, 'GG', 'Sak\'art\'velo', 'Georgia', 'Tbilisi', 69700, 4630000, 'AS', '.ge', 'GEL', '995', '####', '^(d{4})$', 'ka,ru,hy,az', 'AM,AZ,TR,RU', '', 0, NULL, NULL),
(81, 'GF', NULL, NULL, 'GUF', 254, 'FG', 'Guyane', 'French Guiana', 'Cayenne', 91000, 195506, 'SA', '.gf', 'EUR', '594', '#####', '^((97|98)3d{2})$', 'fr-GF', 'SR,BR', '', 0, NULL, NULL),
(82, 'GG', NULL, NULL, 'GGY', 831, 'GK', 'Guernsey', 'Guernsey', 'St Peter Port', 78, 65228, 'EU', '.gg', 'GBP', '+44-1481', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,fr', '', '', 0, NULL, NULL),
(83, 'GH', NULL, NULL, 'GHA', 288, 'GH', 'Ghana', 'Ghana', 'Accra', 239460, 24339838, 'AF', '.gh', 'GHS', '233', '', '', 'en-GH,ak,ee,tw', 'CI,TG,BF', '', 0, NULL, NULL),
(84, 'GI', NULL, NULL, 'GIB', 292, 'GI', 'Gibraltar', 'Gibraltar', 'Gibraltar', 7, 27884, 'EU', '.gi', 'GIP', '350', '', '', 'en-GI,es,it,pt', 'ES', '', 0, NULL, NULL),
(85, 'GL', NULL, NULL, 'GRL', 304, 'GL', 'Grønland', 'Greenland', 'Nuuk', 2166086, 56375, 'NA', '.gl', 'DKK', '299', '####', '^(d{4})$', 'kl,da-GL,en', '', '', 0, NULL, NULL),
(86, 'GM', NULL, NULL, 'GMB', 270, 'GA', 'Gambia', 'Gambia', 'Banjul', 11300, 1593256, 'AF', '.gm', 'GMD', '220', '', '', 'en-GM,mnk,wof,wo,ff', 'SN', '', 0, NULL, NULL),
(87, 'GN', NULL, NULL, 'GIN', 324, 'GV', 'Guinée', 'Guinea', 'Conakry', 245857, 10324025, 'AF', '.gn', 'GNF', '224', '', '', 'fr-GN', 'LR,SN,SL,CI,GW,ML', '', 0, NULL, NULL),
(88, 'GP', NULL, NULL, 'GLP', 312, 'GP', 'Guadeloupe', 'Guadeloupe', 'Basse-Terre', 1780, 443000, 'NA', '.gp', 'EUR', '590', '#####', '^((97|98)d{3})$', 'fr-GP', '', '', 0, NULL, NULL),
(89, 'GQ', NULL, NULL, 'GNQ', 226, 'EK', 'Guinée Equatoriale', 'Equatorial Guinea', 'Malabo', 28051, 1014999, 'AF', '.gq', 'XAF', '240', '', '', 'es-GQ,fr', 'GA,CM', '', 0, NULL, NULL),
(90, 'GR', NULL, NULL, 'GRC', 300, 'GR', 'Elláda', 'Greece', 'Athens', 131940, 11000000, 'EU', '.gr', 'EUR', '30', '### ##', '^(d{5})$', 'el-GR,en,fr', 'AL,MK,TR,BG', '', 0, NULL, NULL),
(91, 'GS', NULL, NULL, 'SGS', 239, 'SX', 'South Georgia and the South Sandwich Islands', 'South Georgia and the South Sandwich Islands', 'Grytviken', 3903, 30, 'AN', '.gs', 'GBP', '', '', '', 'en', '', '', 0, NULL, NULL),
(92, 'GT', NULL, NULL, 'GTM', 320, 'GT', 'Guatemala', 'Guatemala', 'Guatemala City', 108890, 13550440, 'NA', '.gt', 'GTQ', '502', '#####', '^(d{5})$', 'es-GT', 'MX,HN,BZ,SV', '', 0, NULL, NULL),
(93, 'GU', NULL, NULL, 'GUM', 316, 'GQ', 'Guam', 'Guam', 'Hagatna', 549, 159358, 'OC', '.gu', 'USD', '+1-671', '969##', '^(969d{2})$', 'en-GU,ch-GU', '', '', 0, NULL, NULL),
(94, 'GW', NULL, NULL, 'GNB', 624, 'PU', 'Guiné-Bissau', 'Guinea-Bissau', 'Bissau', 36120, 1565126, 'AF', '.gw', 'XOF', '245', '####', '^(d{4})$', 'pt-GW,pov', 'SN,GN', '', 0, NULL, NULL),
(95, 'GY', NULL, NULL, 'GUY', 328, 'GY', 'Guyana', 'Guyana', 'Georgetown', 214970, 748486, 'SA', '.gy', 'GYD', '592', '', '', 'en-GY', 'SR,BR,VE', '', 0, NULL, NULL),
(96, 'HK', NULL, NULL, 'HKG', 344, 'HK', 'Hèunggóng', 'Hong Kong', 'Hong Kong', 1092, 6898686, 'AS', '.hk', 'HKD', '852', '', '', 'zh-HK,yue,zh,en', '', '', 0, NULL, NULL),
(97, 'HM', NULL, NULL, 'HMD', 334, 'HM', 'Heard Island and McDonald Islands', 'Heard Island and McDonald Islands', '', 412, 0, 'AN', '.hm', 'AUD', ' ', '', '', '', '', '', 0, NULL, NULL),
(98, 'HN', NULL, NULL, 'HND', 340, 'HO', 'Honduras', 'Honduras', 'Tegucigalpa', 112090, 7989415, 'NA', '.hn', 'HNL', '504', '@@####', '^([A-Z]{2}d{4})$', 'es-HN', 'GT,NI,SV', '', 0, NULL, NULL),
(99, 'HR', NULL, NULL, 'HRV', 191, 'HR', 'Hrvatska', 'Croatia', 'Zagreb', 56542, 4491000, 'EU', '.hr', 'HRK', '385', '#####', '^(?:HR)*(d{5})$', 'hr-HR,sr', 'HU,SI,BA,ME,RS', '', 0, NULL, NULL),
(100, 'HT', NULL, NULL, 'HTI', 332, 'HA', 'Haïti', 'Haiti', 'Port-au-Prince', 27750, 9648924, 'NA', '.ht', 'HTG', '509', 'HT####', '^(?:HT)*(d{4})$', 'ht,fr-HT', 'DO', '', 0, NULL, NULL),
(101, 'HU', NULL, NULL, 'HUN', 348, 'HU', 'Magyarország', 'Hungary', 'Budapest', 93030, 9982000, 'EU', '.hu', 'HUF', '36', '####', '^(d{4})$', 'hu-HU', 'SK,SI,RO,UA,HR,AT,RS', '', 0, NULL, NULL),
(102, 'ID', NULL, NULL, 'IDN', 360, 'ID', 'Indonesia', 'Indonesia', 'Jakarta', 1919440, 242968342, 'AS', '.id', 'IDR', '62', '#####', '^(d{5})$', 'id,en,nl,jv', 'PG,TL,MY', '', 0, NULL, NULL),
(103, 'IE', NULL, NULL, 'IRL', 372, 'EI', 'Ireland', 'Ireland', 'Dublin', 70280, 4622917, 'EU', '.ie', 'EUR', '353', '', '', 'en-IE,ga-IE', 'GB', '', 0, NULL, NULL),
(104, 'IL', NULL, NULL, 'ISR', 376, 'IS', 'Yiśrā\'ēl', 'Israel', 'Jerusalem', 20770, 7353985, 'AS', '.il', 'ILS', '972', '#####', '^(d{5})$', 'he,ar-IL,en-IL,', 'SY,JO,LB,EG,PS', '', 0, NULL, NULL),
(105, 'IM', NULL, NULL, 'IMN', 833, 'IM', 'Isle of Man', 'Isle of Man', 'Douglas, Isle of Man', 572, 75049, 'EU', '.im', 'GBP', '+44-1624', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,gv', '', '', 0, NULL, NULL),
(106, 'IN', NULL, NULL, 'IND', 356, 'IN', 'Bharat', 'India', 'New Delhi', 3287590, 1173108018, 'AS', '.in', 'INR', '91', '######', '^(d{6})$', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,k', 'CN,NP,MM,BT,PK,BD', '', 0, NULL, NULL),
(107, 'IO', NULL, NULL, 'IOT', 86, 'IO', 'British Indian Ocean Territory', 'British Indian Ocean Territory', 'Diego Garcia', 60, 4000, 'AS', '.io', 'USD', '246', '', '', 'en-IO', '', '', 0, NULL, NULL),
(108, 'IQ', NULL, NULL, 'IRQ', 368, 'IZ', 'al-ʿIrāq', 'Iraq', 'Baghdad', 437072, 29671605, 'AS', '.iq', 'IQD', '964', '#####', '^(d{5})$', 'ar-IQ,ku,hy', 'SY,SA,IR,JO,TR,KW', '', 0, NULL, NULL),
(109, 'IR', NULL, NULL, 'IRN', 364, 'IR', 'Īrān', 'Iran', 'Tehran', 1648000, 76923300, 'AS', '.ir', 'IRR', '98', '##########', '^(d{10})$', 'fa-IR,ku', 'TM,AF,IQ,AM,PK,AZ,TR', '', 0, NULL, NULL),
(110, 'IS', NULL, NULL, 'ISL', 352, 'IC', 'Ísland', 'Iceland', 'Reykjavik', 103000, 308910, 'EU', '.is', 'ISK', '354', '###', '^(d{3})$', 'is,en,de,da,sv,no', '', '', 0, NULL, NULL),
(111, 'IT', NULL, NULL, 'ITA', 380, 'IT', 'Italia', 'Italy', 'Rome', 301230, 60340328, 'EU', '.it', 'EUR', '39', '#####', '^(d{5})$', 'it-IT,en,de-IT,fr-IT,sc,ca,co,sl', 'CH,VA,SI,SM,FR,AT', '', 0, NULL, NULL),
(112, 'JE', NULL, NULL, 'JEY', 832, 'JE', 'Jersey', 'Jersey', 'Saint Helier', 116, 90812, 'EU', '.je', 'GBP', '+44-1534', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en,pt', '', '', 0, NULL, NULL),
(113, 'JM', NULL, NULL, 'JAM', 388, 'JM', 'Jamaica', 'Jamaica', 'Kingston', 10991, 2847232, 'NA', '.jm', 'JMD', '+1-876', '', '', 'en-JM', '', '', 0, NULL, NULL),
(114, 'JO', NULL, NULL, 'JOR', 400, 'JO', 'al-Urdun', 'Jordan', 'Amman', 92300, 6407085, 'AS', '.jo', 'JOD', '962', '#####', '^(d{5})$', 'ar-JO,en', 'SY,SA,IQ,IL,PS', '', 0, NULL, NULL),
(115, 'JP', NULL, NULL, 'JPN', 392, 'JA', 'Nihon', 'Japan', 'Tokyo', 377835, 127288000, 'AS', '.jp', 'JPY', '81', '###-####', '^(d{7})$', 'ja', '', '', 0, NULL, NULL),
(116, 'KE', NULL, NULL, 'KEN', 404, 'KE', 'Kenya', 'Kenya', 'Nairobi', 582650, 40046566, 'AF', '.ke', 'KES', '254', '#####', '^(d{5})$', 'en-KE,sw-KE', 'ET,TZ,SS,SO,UG', '', 0, NULL, NULL),
(117, 'KG', NULL, NULL, 'KGZ', 417, 'KG', 'Kyrgyzstan', 'Kyrgyzstan', 'Bishkek', 198500, 5508626, 'AS', '.kg', 'KGS', '996', '######', '^(d{6})$', 'ky,uz,ru', 'CN,TJ,UZ,KZ', '', 0, NULL, NULL),
(118, 'KH', NULL, NULL, 'KHM', 116, 'CB', 'Kambucā', 'Cambodia', 'Phnom Penh', 181040, 14453680, 'AS', '.kh', 'KHR', '855', '#####', '^(d{5})$', 'km,fr,en', 'LA,TH,VN', '', 0, NULL, NULL),
(119, 'KI', NULL, NULL, 'KIR', 296, 'KR', 'Kiribati', 'Kiribati', 'Tarawa', 811, 92533, 'OC', '.ki', 'AUD', '686', '', '', 'en-KI,gil', '', '', 0, NULL, NULL),
(120, 'KM', NULL, NULL, 'COM', 174, 'CN', 'Comores', 'Comoros', 'Moroni', 2170, 773407, 'AF', '.km', 'KMF', '269', '', '', 'ar,fr-KM', '', '', 0, NULL, NULL),
(121, 'KN', NULL, NULL, 'KNA', 659, 'SC', 'Saint Kitts and Nevis', 'Saint Kitts and Nevis', 'Basseterre', 261, 51134, 'NA', '.kn', 'XCD', '+1-869', '', '', 'en-KN', '', '', 0, NULL, NULL),
(122, 'KP', NULL, NULL, 'PRK', 408, 'KN', 'Joseon', 'North Korea', 'Pyongyang', 120540, 22912177, 'AS', '.kp', 'KPW', '850', '###-###', '^(d{6})$', 'ko-KP', 'CN,KR,RU', '', 0, NULL, NULL),
(123, 'KR', NULL, NULL, 'KOR', 410, 'KS', 'Hanguk', 'South Korea', 'Seoul', 98480, 48422644, 'AS', '.kr', 'KRW', '82', 'SEOUL ###-###', '^(?:SEOUL)*(d{6})$', 'ko-KR,en', 'KP', '', 0, NULL, NULL),
(124, 'KW', NULL, NULL, 'KWT', 414, 'KU', 'al-Kuwayt', 'Kuwait', 'Kuwait City', 17820, 2789132, 'AS', '.kw', 'KWD', '965', '#####', '^(d{5})$', 'ar-KW,en', 'SA,IQ', '', 0, NULL, NULL),
(125, 'KY', NULL, NULL, 'CYM', 136, 'CJ', 'Cayman Islands', 'Cayman Islands', 'George Town', 262, 44270, 'NA', '.ky', 'KYD', '+1-345', '', '', 'en-KY', '', '', 0, NULL, NULL),
(126, 'KZ', NULL, NULL, 'KAZ', 398, 'KZ', 'Ķazaķstan', 'Kazakhstan', 'Astana', 2717300, 15340000, 'AS', '.kz', 'KZT', '7', '######', '^(d{6})$', 'kk,ru', 'TM,CN,KG,UZ,RU', '', 0, NULL, NULL),
(127, 'LA', NULL, NULL, 'LAO', 418, 'LA', 'Lāw', 'Laos', 'Vientiane', 236800, 6368162, 'AS', '.la', 'LAK', '856', '#####', '^(d{5})$', 'lo,fr,en', 'CN,MM,KH,TH,VN', '', 0, NULL, NULL),
(128, 'LB', NULL, NULL, 'LBN', 422, 'LE', 'Lubnān', 'Lebanon', 'Beirut', 10400, 4125247, 'AS', '.lb', 'LBP', '961', '#### ####|####', '^(d{4}(d{4})?)$', 'ar-LB,fr-LB,en,hy', 'SY,IL', '', 0, NULL, NULL),
(129, 'LC', NULL, NULL, 'LCA', 662, 'ST', 'Saint Lucia', 'Saint Lucia', 'Castries', 616, 160922, 'NA', '.lc', 'XCD', '+1-758', '', '', 'en-LC', '', '', 0, NULL, NULL),
(130, 'LI', NULL, NULL, 'LIE', 438, 'LS', 'Liechtenstein', 'Liechtenstein', 'Vaduz', 160, 35000, 'EU', '.li', 'CHF', '423', '####', '^(d{4})$', 'de-LI', 'CH,AT', '', 0, NULL, NULL),
(131, 'LK', NULL, NULL, 'LKA', 144, 'CE', 'Šrī Laṁkā', 'Sri Lanka', 'Colombo', 65610, 21513990, 'AS', '.lk', 'LKR', '94', '#####', '^(d{5})$', 'si,ta,en', '', '', 0, NULL, NULL),
(132, 'LR', NULL, NULL, 'LBR', 430, 'LI', 'Liberia', 'Liberia', 'Monrovia', 111370, 3685076, 'AF', '.lr', 'LRD', '231', '####', '^(d{4})$', 'en-LR', 'SL,CI,GN', '', 0, NULL, NULL),
(133, 'LS', NULL, NULL, 'LSO', 426, 'LT', 'Lesotho', 'Lesotho', 'Maseru', 30355, 1919552, 'AF', '.ls', 'LSL', '266', '###', '^(d{3})$', 'en-LS,st,zu,xh', 'ZA', '', 0, NULL, NULL),
(134, 'LT', NULL, NULL, 'LTU', 440, 'LH', 'Lietuva', 'Lithuania', 'Vilnius', 65200, 2944459, 'EU', '.lt', 'EUR', '370', 'LT-#####', '^(?:LT)*(d{5})$', 'lt,ru,pl', 'PL,BY,RU,LV', '', 0, NULL, NULL),
(135, 'LU', NULL, NULL, 'LUX', 442, 'LU', 'Lëtzebuerg', 'Luxembourg', 'Luxembourg', 2586, 497538, 'EU', '.lu', 'EUR', '352', 'L-####', '^(d{4})$', 'lb,de-LU,fr-LU', 'DE,BE,FR', '', 0, NULL, NULL),
(136, 'LV', NULL, NULL, 'LVA', 428, 'LG', 'Latvija', 'Latvia', 'Riga', 64589, 2217969, 'EU', '.lv', 'EUR', '371', 'LV-####', '^(?:LV)*(d{4})$', 'lv,ru,lt', 'LT,EE,BY,RU', '', 0, NULL, NULL),
(137, 'LY', NULL, NULL, 'LBY', 434, 'LY', 'Lībiyā', 'Libya', 'Tripolis', 1759540, 6461454, 'AF', '.ly', 'LYD', '218', '', '', 'ar-LY,it,en', 'TD,NE,DZ,SD,TN,EG', '', 0, NULL, NULL),
(138, 'MA', NULL, NULL, 'MAR', 504, 'MO', 'Maroc', 'Morocco', 'Rabat', 446550, 31627428, 'AF', '.ma', 'MAD', '212', '#####', '^(d{5})$', 'ar-MA,fr', 'DZ,EH,ES', '', 0, NULL, NULL),
(139, 'MC', NULL, NULL, 'MCO', 492, 'MN', 'Monaco', 'Monaco', 'Monaco', 2, 32965, 'EU', '.mc', 'EUR', '377', '#####', '^(d{5})$', 'fr-MC,en,it', 'FR', '', 0, NULL, NULL),
(140, 'MD', NULL, NULL, 'MDA', 498, 'MD', 'Moldova', 'Moldova', 'Chisinau', 33843, 4324000, 'EU', '.md', 'MDL', '373', 'MD-####', '^(?:MD)*(d{4})$', 'ro,ru,gag,tr', 'RO,UA', '', 0, NULL, NULL),
(141, 'ME', NULL, NULL, 'MNE', 499, 'MJ', 'Crna Gora', 'Montenegro', 'Podgorica', 14026, 666730, 'EU', '.me', 'EUR', '382', '#####', '^(d{5})$', 'sr,hu,bs,sq,hr,rom', 'AL,HR,BA,RS,XK', '', 0, NULL, NULL),
(142, 'MF', NULL, NULL, 'MAF', 663, 'RN', 'Saint Martin', 'Saint Martin', 'Marigot', 53, 35925, 'NA', '.gp', 'EUR', '590', '### ###', '', 'fr', 'SX', '', 0, NULL, NULL),
(143, 'MG', NULL, NULL, 'MDG', 450, 'MA', 'Madagascar', 'Madagascar', 'Antananarivo', 587040, 21281844, 'AF', '.mg', 'MGA', '261', '###', '^(d{3})$', 'fr-MG,mg', '', '', 0, NULL, NULL),
(144, 'MH', NULL, NULL, 'MHL', 584, 'RM', 'Marshall Islands', 'Marshall Islands', 'Majuro', 181, 65859, 'OC', '.mh', 'USD', '692', '', '', 'mh,en-MH', '', '', 0, NULL, NULL),
(145, 'MK', NULL, NULL, 'MKD', 807, 'MK', 'Makedonija', 'Macedonia', 'Skopje', 25333, 2062294, 'EU', '.mk', 'MKD', '389', '####', '^(d{4})$', 'mk,sq,tr,rmm,sr', 'AL,GR,BG,RS,XK', '', 0, NULL, NULL),
(146, 'ML', NULL, NULL, 'MLI', 466, 'ML', 'Mali', 'Mali', 'Bamako', 1240000, 13796354, 'AF', '.ml', 'XOF', '223', '', '', 'fr-ML,bm', 'SN,NE,DZ,CI,GN,MR,BF', '', 0, NULL, NULL),
(147, 'MM', NULL, NULL, 'MMR', 104, 'BM', 'Mẏanmā', 'Myanmar', 'Nay Pyi Taw', 678500, 53414374, 'AS', '.mm', 'MMK', '95', '#####', '^(d{5})$', 'my', 'CN,LA,TH,BD,IN', '', 0, NULL, NULL),
(148, 'MN', NULL, NULL, 'MNG', 496, 'MG', 'Mongol Uls', 'Mongolia', 'Ulan Bator', 1565000, 3086918, 'AS', '.mn', 'MNT', '976', '######', '^(d{6})$', 'mn,ru', 'CN,RU', '', 0, NULL, NULL),
(149, 'MO', NULL, NULL, 'MAC', 446, 'MC', 'Ngoumún', 'Macao', 'Macao', 254, 449198, 'AS', '.mo', 'MOP', '853', '', '', 'zh,zh-MO,pt', '', '', 0, NULL, NULL),
(150, 'MP', NULL, NULL, 'MNP', 580, 'CQ', 'Northern Mariana Islands', 'Northern Mariana Islands', 'Saipan', 477, 53883, 'OC', '.mp', 'USD', '+1-670', '', '', 'fil,tl,zh,ch-MP,en-MP', '', '', 0, NULL, NULL),
(151, 'MQ', NULL, NULL, 'MTQ', 474, 'MB', 'Martinique', 'Martinique', 'Fort-de-France', 1100, 432900, 'NA', '.mq', 'EUR', '596', '#####', '^(d{5})$', 'fr-MQ', '', '', 0, NULL, NULL),
(152, 'MR', NULL, NULL, 'MRT', 478, 'MR', 'Mauritanie', 'Mauritania', 'Nouakchott', 1030700, 3205060, 'AF', '.mr', 'MRO', '222', '', '', 'ar-MR,fuc,snk,fr,mey,wo', 'SN,DZ,EH,ML', '', 0, NULL, NULL),
(153, 'MS', NULL, NULL, 'MSR', 500, 'MH', 'Montserrat', 'Montserrat', 'Plymouth', 102, 9341, 'NA', '.ms', 'XCD', '+1-664', '', '', 'en-MS', '', '', 0, NULL, NULL),
(154, 'MT', NULL, NULL, 'MLT', 470, 'MT', 'Malta', 'Malta', 'Valletta', 316, 403000, 'EU', '.mt', 'EUR', '356', '@@@ ###|@@@ ##', '^([A-Z]{3}d{2}d?)$', 'mt,en-MT', '', '', 0, NULL, NULL),
(155, 'MU', NULL, NULL, 'MUS', 480, 'MP', 'Mauritius', 'Mauritius', 'Port Louis', 2040, 1294104, 'AF', '.mu', 'MUR', '230', '', '', 'en-MU,bho,fr', '', '', 0, NULL, NULL),
(156, 'MV', NULL, NULL, 'MDV', 462, 'MV', 'Dhivehi', 'Maldives', 'Male', 300, 395650, 'AS', '.mv', 'MVR', '960', '#####', '^(d{5})$', 'dv,en', '', '', 0, NULL, NULL),
(157, 'MW', NULL, NULL, 'MWI', 454, 'MI', 'Malawi', 'Malawi', 'Lilongwe', 118480, 15447500, 'AF', '.mw', 'MWK', '265', '', '', 'ny,yao,tum,swk', 'TZ,MZ,ZM', '', 0, NULL, NULL),
(158, 'MX', NULL, NULL, 'MEX', 484, 'MX', 'México', 'Mexico', 'Mexico City', 1972550, 112468855, 'NA', '.mx', 'MXN', '52', '#####', '^(d{5})$', 'es-MX', 'GT,US,BZ', '', 0, NULL, NULL),
(159, 'MY', NULL, NULL, 'MYS', 458, 'MY', 'Malaysia', 'Malaysia', 'Kuala Lumpur', 329750, 28274729, 'AS', '.my', 'MYR', '60', '#####', '^(d{5})$', 'ms-MY,en,zh,ta,te,ml,pa,th', 'BN,TH,ID', '', 0, NULL, NULL),
(160, 'MZ', NULL, NULL, 'MOZ', 508, 'MZ', 'Moçambique', 'Mozambique', 'Maputo', 801590, 22061451, 'AF', '.mz', 'MZN', '258', '####', '^(d{4})$', 'pt-MZ,vmw', 'ZW,TZ,SZ,ZA,ZM,MW', '', 0, NULL, NULL),
(161, 'NA', NULL, NULL, 'NAM', 516, 'WA', 'Namibia', 'Namibia', 'Windhoek', 825418, 2128471, 'AF', '.na', 'NAD', '264', '', '', 'en-NA,af,de,hz,naq', 'ZA,BW,ZM,AO', '', 0, NULL, NULL),
(162, 'NC', NULL, NULL, 'NCL', 540, 'NC', 'Nouvelle Calédonie', 'New Caledonia', 'Noumea', 19060, 216494, 'OC', '.nc', 'XPF', '687', '#####', '^(d{5})$', 'fr-NC', '', '', 0, NULL, NULL),
(163, 'NE', NULL, NULL, 'NER', 562, 'NG', 'Niger', 'Niger', 'Niamey', 1267000, 15878271, 'AF', '.ne', 'XOF', '227', '####', '^(d{4})$', 'fr-NE,ha,kr,dje', 'TD,BJ,DZ,LY,BF,NG,ML', '', 0, NULL, NULL),
(164, 'NF', NULL, NULL, 'NFK', 574, 'NF', 'Norfolk Island', 'Norfolk Island', 'Kingston', 35, 1828, 'OC', '.nf', 'AUD', '672', '####', '^(d{4})$', 'en-NF', '', '', 0, NULL, NULL),
(165, 'NG', NULL, NULL, 'NGA', 566, 'NI', 'Nigeria', 'Nigeria', 'Abuja', 923768, 154000000, 'AF', '.ng', 'NGN', '234', '######', '^(d{6})$', 'en-NG,ha,yo,ig,ff', 'TD,NE,BJ,CM', '', 0, NULL, NULL),
(166, 'NI', NULL, NULL, 'NIC', 558, 'NU', 'Nicaragua', 'Nicaragua', 'Managua', 129494, 5995928, 'NA', '.ni', 'NIO', '505', '###-###-#', '^(d{7})$', 'es-NI,en', 'CR,HN', '', 0, NULL, NULL),
(167, 'NL', NULL, NULL, 'NLD', 528, 'NL', 'Nederland', 'Netherlands', 'Amsterdam', 41526, 16645000, 'EU', '.nl', 'EUR', '31', '#### @@', '^(d{4}[A-Z]{2})$', 'nl-NL,fy-NL', 'DE,BE', '', 0, NULL, NULL),
(168, 'NO', NULL, NULL, 'NOR', 578, 'NO', 'Norge (Noreg)', 'Norway', 'Oslo', 324220, 5009150, 'EU', '.no', 'NOK', '47', '####', '^(d{4})$', 'no,nb,nn,se,fi', 'FI,RU,SE', '', 0, NULL, NULL),
(169, 'NP', NULL, NULL, 'NPL', 524, 'NP', 'Nēpāl', 'Nepal', 'Kathmandu', 140800, 28951852, 'AS', '.np', 'NPR', '977', '#####', '^(d{5})$', 'ne,en', 'CN,IN', '', 0, NULL, NULL),
(170, 'NR', NULL, NULL, 'NRU', 520, 'NR', 'Naoero', 'Nauru', 'Yaren', 21, 10065, 'OC', '.nr', 'AUD', '674', '', '', 'na,en-NR', '', '', 0, NULL, NULL),
(171, 'NU', NULL, NULL, 'NIU', 570, 'NE', 'Niue', 'Niue', 'Alofi', 260, 2166, 'OC', '.nu', 'NZD', '683', '', '', 'niu,en-NU', '', '', 0, NULL, NULL),
(172, 'NZ', NULL, NULL, 'NZL', 554, 'NZ', 'New Zealand', 'New Zealand', 'Wellington', 268680, 4252277, 'OC', '.nz', 'NZD', '64', '####', '^(d{4})$', 'en-NZ,mi', '', '', 0, NULL, NULL),
(173, 'OM', NULL, NULL, 'OMN', 512, 'MU', 'ʿUmān', 'Oman', 'Muscat', 212460, 2967717, 'AS', '.om', 'OMR', '968', '###', '^(d{3})$', 'ar-OM,en,bal,ur', 'SA,YE,AE', '', 0, NULL, NULL),
(174, 'PA', NULL, NULL, 'PAN', 591, 'PM', 'Panamá', 'Panama', 'Panama City', 78200, 3410676, 'NA', '.pa', 'PAB', '507', '', '', 'es-PA,en', 'CR,CO', '', 0, NULL, NULL),
(175, 'PE', NULL, NULL, 'PER', 604, 'PE', 'Perú', 'Peru', 'Lima', 1285220, 29907003, 'SA', '.pe', 'PEN', '51', '', '', 'es-PE,qu,ay', 'EC,CL,BO,BR,CO', '', 0, NULL, NULL),
(176, 'PF', NULL, NULL, 'PYF', 258, 'FP', 'Polinésie Française', 'French Polynesia', 'Papeete', 4167, 270485, 'OC', '.pf', 'XPF', '689', '#####', '^((97|98)7d{2})$', 'fr-PF,ty', '', '', 0, NULL, NULL),
(177, 'PG', NULL, NULL, 'PNG', 598, 'PP', 'Papua New Guinea', 'Papua New Guinea', 'Port Moresby', 462840, 6064515, 'OC', '.pg', 'PGK', '675', '###', '^(d{3})$', 'en-PG,ho,meu,tpi', 'ID', '', 0, NULL, NULL),
(178, 'PH', NULL, NULL, 'PHL', 608, 'RP', 'Pilipinas', 'Philippines', 'Manila', 300000, 99900177, 'AS', '.ph', 'PHP', '63', '####', '^(d{4})$', 'tl,en-PH,fil', '', '', 0, NULL, NULL),
(179, 'PK', NULL, NULL, 'PAK', 586, 'PK', 'Pākistān', 'Pakistan', 'Islamabad', 803940, 184404791, 'AS', '.pk', 'PKR', '92', '#####', '^(d{5})$', 'ur-PK,en-PK,pa,sd,ps,brh', 'CN,AF,IR,IN', '', 0, NULL, NULL),
(180, 'PL', NULL, NULL, 'POL', 616, 'PL', 'Polska', 'Poland', 'Warsaw', 312685, 38500000, 'EU', '.pl', 'PLN', '48', '##-###', '^(d{5})$', 'pl', 'DE,LT,SK,CZ,BY,UA,RU', '', 0, NULL, NULL),
(181, 'PM', NULL, NULL, 'SPM', 666, 'SB', 'Saint Pierre and Miquelon', 'Saint Pierre and Miquelon', 'Saint-Pierre', 242, 7012, 'NA', '.pm', 'EUR', '508', '#####', '^(97500)$', 'fr-PM', '', '', 0, NULL, NULL),
(182, 'PN', NULL, NULL, 'PCN', 612, 'PC', 'Pitcairn', 'Pitcairn', 'Adamstown', 47, 46, 'OC', '.pn', 'NZD', '870', '', '', 'en-PN', '', '', 0, NULL, NULL),
(183, 'PR', NULL, NULL, 'PRI', 630, 'RQ', 'Puerto Rico', 'Puerto Rico', 'San Juan', 9104, 3916632, 'NA', '.pr', 'USD', '+1-787/1-939', '#####-####', '^(d{9})$', 'en-PR,es-PR', '', '', 0, NULL, NULL),
(184, 'PS', NULL, NULL, 'PSE', 275, 'WE', 'Filasṭīn', 'Palestinian Territory', 'East Jerusalem', 5970, 3800000, 'AS', '.ps', 'ILS', '970', '', '', 'ar-PS', 'JO,IL,EG', '', 0, NULL, NULL),
(185, 'PT', NULL, NULL, 'PRT', 620, 'PO', 'Portugal', 'Portugal', 'Lisbon', 92391, 10676000, 'EU', '.pt', 'EUR', '351', '####-###', '^(d{7})$', 'pt-PT,mwl', 'ES', '', 0, NULL, NULL),
(186, 'PW', NULL, NULL, 'PLW', 585, 'PS', 'Palau', 'Palau', 'Melekeok', 458, 19907, 'OC', '.pw', 'USD', '680', '96940', '^(96940)$', 'pau,sov,en-PW,tox,ja,fil,zh', '', '', 0, NULL, NULL),
(187, 'PY', NULL, NULL, 'PRY', 600, 'PA', 'Paraguay', 'Paraguay', 'Asuncion', 406750, 6375830, 'SA', '.py', 'PYG', '595', '####', '^(d{4})$', 'es-PY,gn', 'BO,BR,AR', '', 0, NULL, NULL),
(188, 'QA', NULL, NULL, 'QAT', 634, 'QA', 'Qaṭar', 'Qatar', 'Doha', 11437, 840926, 'AS', '.qa', 'QAR', '974', '', '', 'ar-QA,es', 'SA', '', 0, NULL, NULL),
(189, 'RE', NULL, NULL, 'REU', 638, 'RE', 'Réunion', 'Reunion', 'Saint-Denis', 2517, 776948, 'AF', '.re', 'EUR', '262', '#####', '^((97|98)(4|7|8)d{2})$', 'fr-RE', '', '', 0, NULL, NULL),
(190, 'RO', NULL, NULL, 'ROU', 642, 'RO', 'România', 'Romania', 'Bucharest', 237500, 21959278, 'EU', '.ro', 'RON', '40', '######', '^(d{6})$', 'ro,hu,rom', 'MD,HU,UA,BG,RS', '', 0, NULL, NULL),
(191, 'RS', NULL, NULL, 'SRB', 688, 'RI', 'Srbija', 'Serbia', 'Belgrade', 88361, 7344847, 'EU', '.rs', 'RSD', '381', '######', '^(d{6})$', 'sr,hu,bs,rom', 'AL,HU,MK,RO,HR,BA,BG,ME,XK', '', 0, NULL, NULL),
(192, 'RU', NULL, NULL, 'RUS', 643, 'RS', 'Rossija', 'Russia', 'Moscow', 17100000, 140702000, 'EU', '.ru', 'RUB', '7', '######', '^(d{6})$', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv', 'GE,CN,BY,UA,KZ,LV,PL,EE,LT,FI,MN,NO,AZ,KP', '', 0, NULL, NULL),
(193, 'RW', NULL, NULL, 'RWA', 646, 'RW', 'Rwanda', 'Rwanda', 'Kigali', 26338, 11055976, 'AF', '.rw', 'RWF', '250', '', '', 'rw,en-RW,fr-RW,sw', 'TZ,CD,BI,UG', '', 0, NULL, NULL),
(194, 'SA', NULL, NULL, 'SAU', 682, 'SA', 'as-Saʿūdīyâ', 'Saudi Arabia', 'Riyadh', 1960582, 25731776, 'AS', '.sa', 'SAR', '966', '#####', '^(d{5})$', 'ar-SA', 'QA,OM,IQ,YE,JO,AE,KW', '', 0, NULL, NULL),
(195, 'SB', NULL, NULL, 'SLB', 90, 'BP', 'Solomon Islands', 'Solomon Islands', 'Honiara', 28450, 559198, 'OC', '.sb', 'SBD', '677', '', '', 'en-SB,tpi', '', '', 0, NULL, NULL),
(196, 'SC', NULL, NULL, 'SYC', 690, 'SE', 'Seychelles', 'Seychelles', 'Victoria', 455, 88340, 'AF', '.sc', 'SCR', '248', '', '', 'en-SC,fr-SC', '', '', 0, NULL, NULL),
(197, 'SD', NULL, NULL, 'SDN', 729, 'SU', 'Sudan', 'Sudan', 'Khartoum', 1861484, 35000000, 'AF', '.sd', 'SDG', '249', '#####', '^(d{5})$', 'ar-SD,en,fia', 'SS,TD,EG,ET,ER,LY,CF', '', 0, NULL, NULL),
(198, 'SE', NULL, NULL, 'SWE', 752, 'SW', 'Sverige', 'Sweden', 'Stockholm', 449964, 9555893, 'EU', '.se', 'SEK', '46', '### ##', '^(?:SE)*(d{5})$', 'sv-SE,se,sma,fi-SE', 'NO,FI', '', 0, NULL, NULL),
(199, 'SG', NULL, NULL, 'SGP', 702, 'SN', 'xīnjiāpō', 'Singapore', 'Singapur', 693, 4701069, 'AS', '.sg', 'SGD', '65', '######', '^(d{6})$', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', '', '', 0, NULL, NULL),
(200, 'SH', NULL, NULL, 'SHN', 654, 'SH', 'Saint Helena', 'Saint Helena', 'Jamestown', 410, 7460, 'AF', '.sh', 'SHP', '290', 'STHL 1ZZ', '^(STHL1ZZ)$', 'en-SH', '', '', 0, NULL, NULL),
(201, 'SI', NULL, NULL, 'SVN', 705, 'SI', 'Slovenija', 'Slovenia', 'Ljubljana', 20273, 2007000, 'EU', '.si', 'EUR', '386', '####', '^(?:SI)*(d{4})$', 'sl,sh', 'HU,IT,HR,AT', '', 0, NULL, NULL),
(202, 'SJ', NULL, NULL, 'SJM', 744, 'SV', 'Svalbard and Jan Mayen', 'Svalbard and Jan Mayen', 'Longyearbyen', 62049, 2550, 'EU', '.sj', 'NOK', '47', '', '', 'no,ru', '', '', 0, NULL, NULL),
(203, 'SK', NULL, NULL, 'SVK', 703, 'LO', 'Slovensko', 'Slovakia', 'Bratislava', 48845, 5455000, 'EU', '.sk', 'EUR', '421', '### ##', '^(d{5})$', 'sk,hu', 'PL,HU,CZ,UA,AT', '', 0, NULL, NULL),
(204, 'SL', NULL, NULL, 'SLE', 694, 'SL', 'Sierra Leone', 'Sierra Leone', 'Freetown', 71740, 5245695, 'AF', '.sl', 'SLL', '232', '', '', 'en-SL,men,tem', 'LR,GN', '', 0, NULL, NULL),
(205, 'SM', NULL, NULL, 'SMR', 674, 'SM', 'San Marino', 'San Marino', 'San Marino', 61, 31477, 'EU', '.sm', 'EUR', '378', '4789#', '^(4789d)$', 'it-SM', 'IT', '', 0, NULL, NULL),
(206, 'SN', NULL, NULL, 'SEN', 686, 'SG', 'Sénégal', 'Senegal', 'Dakar', 196190, 12323252, 'AF', '.sn', 'XOF', '221', '#####', '^(d{5})$', 'fr-SN,wo,fuc,mnk', 'GN,MR,GW,GM,ML', '', 0, NULL, NULL),
(207, 'SO', NULL, NULL, 'SOM', 706, 'SO', 'Soomaaliya', 'Somalia', 'Mogadishu', 637657, 10112453, 'AF', '.so', 'SOS', '252', '@@  #####', '^([A-Z]{2}d{5})$', 'so-SO,ar-SO,it,en-SO', 'ET,KE,DJ', '', 0, NULL, NULL),
(208, 'SR', NULL, NULL, 'SUR', 740, 'NS', 'Suriname', 'Suriname', 'Paramaribo', 163270, 492829, 'SA', '.sr', 'SRD', '597', '', '', 'nl-SR,en,srn,hns,jv', 'GY,BR,GF', '', 0, NULL, NULL),
(209, 'SS', NULL, NULL, 'SSD', 728, 'OD', 'South Sudan', 'South Sudan', 'Juba', 644329, 8260490, 'AF', '', 'SSP', '211', '', '', 'en', 'CD,CF,ET,KE,SD,UG,', '', 0, NULL, NULL),
(210, 'ST', NULL, NULL, 'STP', 678, 'TP', 'São Tomé e Príncipe', 'Sao Tome and Principe', 'Sao Tome', 1001, 175808, 'AF', '.st', 'STD', '239', '', '', 'pt-ST', '', '', 0, NULL, NULL),
(211, 'SV', NULL, NULL, 'SLV', 222, 'ES', 'El Salvador', 'El Salvador', 'San Salvador', 21040, 6052064, 'NA', '.sv', 'USD', '503', 'CP ####', '^(?:CP)*(d{4})$', 'es-SV', 'GT,HN', '', 0, NULL, NULL),
(212, 'SX', NULL, NULL, 'SXM', 534, 'NN', 'Sint Maarten', 'Sint Maarten', 'Philipsburg', 21, 37429, 'NA', '.sx', 'ANG', '599', '', '', 'nl,en', 'MF', '', 0, NULL, NULL),
(213, 'SY', NULL, NULL, 'SYR', 760, 'SY', 'Sūrīyâ', 'Syria', 'Damascus', 185180, 22198110, 'AS', '.sy', 'SYP', '963', '', '', 'ar-SY,ku,hy,arc,fr,en', 'IQ,JO,IL,TR,LB', '', 0, NULL, NULL),
(214, 'SZ', NULL, NULL, 'SWZ', 748, 'WZ', 'Swaziland', 'Swaziland', 'Mbabane', 17363, 1354051, 'AF', '.sz', 'SZL', '268', '@###', '^([A-Z]d{3})$', 'en-SZ,ss-SZ', 'ZA,MZ', '', 0, NULL, NULL),
(215, 'TC', NULL, NULL, 'TCA', 796, 'TK', 'Turks and Caicos Islands', 'Turks and Caicos Islands', 'Cockburn Town', 430, 20556, 'NA', '.tc', 'USD', '+1-649', 'TKCA 1ZZ', '^(TKCA 1ZZ)$', 'en-TC', '', '', 0, NULL, NULL),
(216, 'TD', NULL, NULL, 'TCD', 148, 'CD', 'Tchad', 'Chad', 'N\'Djamena', 1284000, 10543464, 'AF', '.td', 'XAF', '235', '', '', 'fr-TD,ar-TD,sre', 'NE,LY,CF,SD,CM,NG', '', 0, NULL, NULL),
(217, 'TF', NULL, NULL, 'ATF', 260, 'FS', 'French Southern Territories', 'French Southern Territories', 'Port-aux-Francais', 7829, 140, 'AN', '.tf', 'EUR', '', '', '', 'fr', '', '', 0, NULL, NULL),
(218, 'TG', NULL, NULL, 'TGO', 768, 'TO', 'Togo', 'Togo', 'Lome', 56785, 6587239, 'AF', '.tg', 'XOF', '228', '', '', 'fr-TG,ee,hna,kbp,dag,ha', 'BJ,GH,BF', '', 0, NULL, NULL),
(219, 'TH', NULL, NULL, 'THA', 764, 'TH', 'Prathēt tai', 'Thailand', 'Bangkok', 514000, 67089500, 'AS', '.th', 'THB', '66', '#####', '^(d{5})$', 'th,en', 'LA,MM,KH,MY', '', 0, NULL, NULL),
(220, 'TJ', NULL, NULL, 'TJK', 762, 'TI', 'Tojikiston', 'Tajikistan', 'Dushanbe', 143100, 7487489, 'AS', '.tj', 'TJS', '992', '######', '^(d{6})$', 'tg,ru', 'CN,AF,KG,UZ', '', 0, NULL, NULL),
(221, 'TK', NULL, NULL, 'TKL', 772, 'TL', 'Tokelau', 'Tokelau', '', 10, 1466, 'OC', '.tk', 'NZD', '690', '', '', 'tkl,en-TK', '', '', 0, NULL, NULL),
(222, 'TL', NULL, NULL, 'TLS', 626, 'TT', 'Timór Lorosa\'e', 'East Timor', 'Dili', 15007, 1154625, 'OC', '.tl', 'USD', '670', '', '', 'tet,pt-TL,id,en', 'ID', '', 0, NULL, NULL),
(223, 'TM', NULL, NULL, 'TKM', 795, 'TX', 'Turkmenistan', 'Turkmenistan', 'Ashgabat', 488100, 4940916, 'AS', '.tm', 'TMT', '993', '######', '^(d{6})$', 'tk,ru,uz', 'AF,IR,UZ,KZ', '', 0, NULL, NULL),
(224, 'TN', NULL, NULL, 'TUN', 788, 'TS', 'Tunisie', 'Tunisia', 'Tunis', 163610, 10589025, 'AF', '.tn', 'TND', '216', '####', '^(d{4})$', 'ar-TN,fr', 'DZ,LY', '', 0, NULL, NULL),
(225, 'TO', NULL, NULL, 'TON', 776, 'TN', 'Tonga', 'Tonga', 'Nuku\'alofa', 748, 122580, 'OC', '.to', 'TOP', '676', '', '', 'to,en-TO', '', '', 0, NULL, NULL),
(226, 'TR', NULL, NULL, 'TUR', 792, 'TU', 'Türkiye', 'Turkey', 'Ankara', 780580, 77804122, 'AS', '.tr', 'TRY', '90', '#####', '^(d{5})$', 'tr-TR,ku,diq,az,av', 'SY,GE,IQ,IR,GR,AM,AZ,BG', '', 0, NULL, NULL),
(227, 'TT', NULL, NULL, 'TTO', 780, 'TD', 'Trinidad and Tobago', 'Trinidad and Tobago', 'Port of Spain', 5128, 1228691, 'NA', '.tt', 'TTD', '+1-868', '', '', 'en-TT,hns,fr,es,zh', '', '', 0, NULL, NULL),
(228, 'TV', NULL, NULL, 'TUV', 798, 'TV', 'Tuvalu', 'Tuvalu', 'Funafuti', 26, 10472, 'OC', '.tv', 'AUD', '688', '', '', 'tvl,en,sm,gil', '', '', 0, NULL, NULL),
(229, 'TW', NULL, NULL, 'TWN', 158, 'TW', 'T\'ai2-wan1', 'Taiwan', 'Taipei', 35980, 22894384, 'AS', '.tw', 'TWD', '886', '#####', '^(d{5})$', 'zh-TW,zh,nan,hak', '', '', 0, NULL, NULL),
(230, 'TZ', NULL, NULL, 'TZA', 834, 'TZ', 'Tanzania', 'Tanzania', 'Dodoma', 945087, 41892895, 'AF', '.tz', 'TZS', '255', '', '', 'sw-TZ,en,ar', 'MZ,KE,CD,RW,ZM,BI,UG,MW', '', 0, NULL, NULL),
(231, 'UA', NULL, NULL, 'UKR', 804, 'UP', 'Ukrajina', 'Ukraine', 'Kiev', 603700, 45415596, 'EU', '.ua', 'UAH', '380', '#####', '^(d{5})$', 'uk,ru-UA,rom,pl,hu', 'PL,MD,HU,SK,BY,RO,RU', '', 0, NULL, NULL),
(232, 'UG', NULL, NULL, 'UGA', 800, 'UG', 'Uganda', 'Uganda', 'Kampala', 236040, 33398682, 'AF', '.ug', 'UGX', '256', '', '', 'en-UG,lg,sw,ar', 'TZ,KE,SS,CD,RW', '', 0, NULL, NULL),
(233, 'UK', NULL, NULL, 'GBR', 826, 'UK', 'United Kingdom', 'United Kingdom', 'London', 244820, 62348447, 'EU', '.uk', 'GBP', '44', '@# #@@|@## #@@|@@# #@@|@@## #@@|@#@ #@@|@@#@ #@@|G', '^(([A-Z]d{2}[A-Z]{2})|([A-Z]d{3}[A-Z]{2})|([A-Z]{2}d{2}[A-Z]{2})|([A-Z]{2}d{3}[A-Z]{2})|([A-Z]d[A-Z]d[A-Z]{2})|([A-Z]{2}d[A-Z]d[A-Z]{2})|(GIR0AA))$', 'en-GB,cy-GB,gd', 'IE', '', 0, NULL, NULL),
(234, 'UM', NULL, NULL, 'UMI', 581, '', 'United States Minor Outlying Islands', 'United States Minor Outlying Islands', '', 0, 0, 'OC', '.um', 'USD', '1', '', '', 'en-UM', '', '', 0, NULL, NULL),
(235, 'US', NULL, NULL, 'USA', 840, 'US', 'USA', 'United States', 'Washington', 9629091, 310232863, 'NA', '.us', 'USD', '1', '#####-####', '^d{5}(-d{4})?$', 'en-US,es-US,haw,fr', 'CA,MX,CU', '', 0, NULL, NULL),
(236, 'UY', NULL, NULL, 'URY', 858, 'UY', 'Uruguay', 'Uruguay', 'Montevideo', 176220, 3477000, 'SA', '.uy', 'UYU', '598', '#####', '^(d{5})$', 'es-UY', 'BR,AR', '', 0, NULL, NULL),
(237, 'UZ', NULL, NULL, 'UZB', 860, 'UZ', 'O\'zbekiston', 'Uzbekistan', 'Tashkent', 447400, 27865738, 'AS', '.uz', 'UZS', '998', '######', '^(d{6})$', 'uz,ru,tg', 'TM,AF,KG,TJ,KZ', '', 0, NULL, NULL),
(238, 'VA', NULL, NULL, 'VAT', 336, 'VT', 'Vaticanum', 'Vatican', 'Vatican City', 0, 921, 'EU', '.va', 'EUR', '379', '#####', '^(d{5})$', 'la,it,fr', 'IT', '', 0, NULL, NULL),
(239, 'VC', NULL, NULL, 'VCT', 670, 'VC', 'Saint Vincent and the Grenadines', 'Saint Vincent and the Grenadines', 'Kingstown', 389, 104217, 'NA', '.vc', 'XCD', '+1-784', '', '', 'en-VC,fr', '', '', 0, NULL, NULL),
(240, 'VE', NULL, NULL, 'VEN', 862, 'VE', 'Venezuela', 'Venezuela', 'Caracas', 912050, 27223228, 'SA', '.ve', 'VEF', '58', '####', '^(d{4})$', 'es-VE', 'GY,BR,CO', '', 0, NULL, NULL),
(241, 'VG', NULL, NULL, 'VGB', 92, 'VI', 'British Virgin Islands', 'British Virgin Islands', 'Road Town', 153, 21730, 'NA', '.vg', 'USD', '+1-284', '', '', 'en-VG', '', '', 0, NULL, NULL),
(242, 'VI', NULL, NULL, 'VIR', 850, 'VQ', 'U.S. Virgin Islands', 'U.S. Virgin Islands', 'Charlotte Amalie', 352, 108708, 'NA', '.vi', 'USD', '+1-340', '#####-####', '^d{5}(-d{4})?$', 'en-VI', '', '', 0, NULL, NULL),
(243, 'VN', NULL, NULL, 'VNM', 704, 'VM', 'Việt Nam', 'Vietnam', 'Hanoi', 329560, 89571130, 'AS', '.vn', 'VND', '84', '######', '^(d{6})$', 'vi,en,fr,zh,km', 'CN,LA,KH', '', 0, NULL, NULL),
(244, 'VU', NULL, NULL, 'VUT', 548, 'NH', 'Vanuatu', 'Vanuatu', 'Port Vila', 12200, 221552, 'OC', '.vu', 'VUV', '678', '', '', 'bi,en-VU,fr-VU', '', '', 0, NULL, NULL),
(245, 'WF', NULL, NULL, 'WLF', 876, 'WF', 'Wallis and Futuna', 'Wallis and Futuna', 'Mata Utu', 274, 16025, 'OC', '.wf', 'XPF', '681', '#####', '^(986d{2})$', 'wls,fud,fr-WF', '', '', 0, NULL, NULL),
(246, 'WS', NULL, NULL, 'WSM', 882, 'WS', 'Samoa', 'Samoa', 'Apia', 2944, 192001, 'OC', '.ws', 'WST', '685', '', '', 'sm,en-WS', '', '', 0, NULL, NULL),
(247, 'XK', NULL, NULL, 'XKX', 0, 'KV', 'Kosovo', 'Kosovo', 'Pristina', 10908, 1800000, 'EU', '', 'EUR', '', '', '', 'sq,sr', 'RS,AL,MK,ME', '', 0, NULL, NULL),
(248, 'YE', NULL, NULL, 'YEM', 887, 'YM', 'al-Yaman', 'Yemen', 'Sanaa', 527970, 23495361, 'AS', '.ye', 'YER', '967', '', '', 'ar-YE', 'SA,OM', '', 0, NULL, NULL),
(249, 'YT', NULL, NULL, 'MYT', 175, 'MF', 'Mayotte', 'Mayotte', 'Mamoudzou', 374, 159042, 'AF', '.yt', 'EUR', '262', '#####', '^(d{5})$', 'fr-YT', '', '', 0, NULL, NULL),
(250, 'ZA', NULL, NULL, 'ZAF', 710, 'SF', 'South Africa', 'South Africa', 'Pretoria', 1219912, 49000000, 'AF', '.za', 'ZAR', '27', '####', '^(d{4})$', 'zu,xh,af,nso,en-ZA,tn,st,ts,ss,ve,nr', 'ZW,SZ,MZ,BW,NA,LS', '', 0, NULL, NULL),
(251, 'ZM', NULL, NULL, 'ZMB', 894, 'ZA', 'Zambia', 'Zambia', 'Lusaka', 752614, 13460305, 'AF', '.zm', 'ZMW', '260', '#####', '^(d{5})$', 'en-ZM,bem,loz,lun,lue,ny,toi', 'ZW,TZ,MZ,CD,NA,MW,AO', '', 0, NULL, NULL),
(252, 'ZW', NULL, NULL, 'ZWE', 716, 'ZI', 'Zimbabwe', 'Zimbabwe', 'Harare', 390580, 11651858, 'AF', '.zw', 'ZWL', '263', '', '', 'en-ZW,sn,nr,nd', 'ZA,MZ,BW,ZM', '', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_currencies`
--

CREATE TABLE `ad_currencies` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `html_entity` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'From Github : An array of currency symbols as HTML entities',
  `font_arial` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `font_code2000` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unicode_decimal` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `unicode_hex` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `in_left` tinyint(1) DEFAULT '0',
  `decimal_places` int UNSIGNED DEFAULT '2' COMMENT 'Currency Decimal Places - ISO 4217',
  `decimal_separator` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '.',
  `thousand_separator` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT ',',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_currencies`
--

INSERT INTO `ad_currencies` (`id`, `code`, `name`, `html_entity`, `font_arial`, `font_code2000`, `unicode_decimal`, `unicode_hex`, `in_left`, `decimal_places`, `decimal_separator`, `thousand_separator`, `created_at`, `updated_at`) VALUES
(1, 'AED', 'United Arab Emirates Dirham', '&#1583;.&#1573;', 'د.إ', 'د.إ', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(2, 'AFN', 'Afghanistan Afghani', '&#65;&#102;', '؋', '؋', '1547', '60b', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(3, 'ALL', 'Albania Lek', '&#76;&#101;&#107;', 'Lek', 'Lek', '76, 1', '4c, 6', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(4, 'AMD', 'Armenia Dram', '', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(5, 'ANG', 'Netherlands Antilles Guilder', '&#402;', 'ƒ', 'ƒ', '402', '192', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(6, 'AOA', 'Angola Kwanza', '&#75;&#122;', 'Kz', 'Kz', NULL, NULL, 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(7, 'ARS', 'Argentina Peso', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(8, 'AUD', 'Australia Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(9, 'AWG', 'Aruba Guilder', '&#402;', 'ƒ', 'ƒ', '402', '192', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(10, 'AZN', 'Azerbaijan New Manat', '&#1084;&#1072;&#1085;', 'ман', 'ман', '1084,', '43c, ', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(11, 'BAM', 'Bosnia and Herzegovina Convertible Marka', '&#75;&#77;', 'KM', 'KM', '75, 7', '4b, 4', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(12, 'BBD', 'Barbados Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(13, 'BDT', 'Bangladesh Taka', '&#2547;', '৳', '৳', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(14, 'BGN', 'Bulgaria Lev', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(15, 'BHD', 'Bahrain Dinar', '.&#1583;.&#1576;', NULL, NULL, NULL, NULL, 0, 3, '.', ',', NULL, '2016-04-03 12:35:01'),
(16, 'BIF', 'Burundi Franc', '&#70;&#66;&#117;', 'FBu', 'FBu', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(17, 'BMD', 'Bermuda Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(18, 'BND', 'Brunei Darussalam Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(19, 'BOB', 'Bolivia Boliviano', '&#36;&#98;', '$b', '$b', '36, 9', '24, 6', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(20, 'BRL', 'Brazil Real', '&#82;&#36;', 'R$', 'R$', '82, 3', '52, 2', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(21, 'BSD', 'Bahamas Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(22, 'BTN', 'Bhutan Ngultrum', '&#78;&#117;&#46;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(23, 'BWP', 'Botswana Pula', '&#80;', 'P', 'P', '80', '50', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(24, 'BYR', 'Belarus Ruble', '&#112;&#46;', 'p.', 'p.', '112, ', '70, 2', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(25, 'BZD', 'Belize Dollar', '&#66;&#90;&#36;', 'BZ$', 'BZ$', '66, 9', '42, 5', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(26, 'CAD', 'Canada Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(27, 'CDF', 'Congo/Kinshasa Franc', '&#70;&#67;', 'Fr', 'Fr', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(28, 'CHF', 'Switzerland Franc', '', 'Fr', 'Fr', '67, 7', '43, 4', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(29, 'CLP', 'Chile Peso', '&#36;', '$', '$', '36', '24', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(30, 'CNY', 'China Yuan Renminbi', '&#165;', '¥', '¥', '165', 'a5', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(31, 'COP', 'Colombia Peso', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(32, 'CRC', 'Costa Rica Colon', '&#8353;', '₡', '₡', '8353', '20a1', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(33, 'CUC', 'Cuba Convertible Peso', NULL, NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(34, 'CUP', 'Cuba Peso', '&#8396;', '₱', '₱', '8369', '20b1', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(35, 'CVE', 'Cape Verde Escudo', '&#x24;', '$', '$', NULL, NULL, 1, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(36, 'CZK', 'Czech Republic Koruna', '&#75;&#269;', 'Kč', 'Kč', '75, 2', '4b, 1', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(37, 'DJF', 'Djibouti Franc', '&#70;&#100;&#106;', 'Fr', 'Fr', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(38, 'DKK', 'Denmark Krone', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(39, 'DOP', 'Dominican Republic Peso', '&#82;&#68;&#36;', 'RD$', 'RD$', '82, 6', '52, 4', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(40, 'DZD', 'Algeria Dinar', '&#1583;&#1580;', 'DA', 'DA', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(41, 'EEK', 'Estonia Kroon', NULL, 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, NULL),
(42, 'EGP', 'Egypt Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(43, 'ERN', 'Eritrea Nakfa', '&#x4E;&#x66;&#x6B;', 'Nfk', 'Nfk', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(44, 'ETB', 'Ethiopia Birr', '&#66;&#114;', 'Br', 'Br', NULL, NULL, 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(45, 'EUR', 'Euro Member Countries', '€', '€', '€', '8364', '20ac', 0, 2, ',', ' ', NULL, '2017-02-10 06:27:28'),
(46, 'FJD', 'Fiji Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(47, 'FKP', 'Falkland Islands (Malvinas) Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(48, 'GBP', 'United Kingdom Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(49, 'GEL', 'Georgia Lari', '&#4314;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(50, 'GGP', 'Guernsey Pound', NULL, '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(51, 'GHC', 'Ghana Cedi', '&#x47;&#x48;&#xA2;', 'GH¢', 'GH¢', '162', 'a2', 1, 2, '.', ',', NULL, NULL),
(52, 'GHS', 'Ghana Cedi', '&#x47;&#x48;&#xA2;', 'GH¢', 'GH¢', NULL, NULL, 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(53, 'GIP', 'Gibraltar Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(54, 'GMD', 'Gambia Dalasi', '&#68;', 'D', 'D', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(55, 'GNF', 'Guinea Franc', '&#70;&#71;', 'Fr', 'Fr', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(56, 'GTQ', 'Guatemala Quetzal', '&#81;', 'Q', 'Q', '81', '51', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(57, 'GYD', 'Guyana Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(58, 'HKD', 'Hong Kong Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(59, 'HNL', 'Honduras Lempira', '&#76;', 'L', 'L', '76', '4c', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(60, 'HRK', 'Croatia Kuna', '&#107;&#110;', 'kn', 'kn', '107, ', '6b, 6', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(61, 'HTG', 'Haiti Gourde', '&#71;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(62, 'HUF', 'Hungary Forint', '&#70;&#116;', 'Ft', 'Ft', '70, 1', '46, 7', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(63, 'IDR', 'Indonesia Rupiah', '&#82;&#112;', 'Rp', 'Rp', '82, 1', '52, 7', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(64, 'ILS', 'Israel Shekel', '&#8362;', '₪', '₪', '8362', '20aa', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(65, 'IMP', 'Isle of Man Pound', NULL, '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, NULL),
(66, 'INR', 'India Rupee', '&#8377;', '₨', '₨', '', '', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(67, 'IQD', 'Iraq Dinar', '&#1593;.&#1583;', 'د.ع;', 'د.ع;', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(68, 'IRR', 'Iran Rial', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(69, 'ISK', 'Iceland Krona', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(70, 'JEP', 'Jersey Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(71, 'JMD', 'Jamaica Dollar', '&#74;&#36;', 'J$', 'J$', '74, 3', '4a, 2', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(72, 'JOD', 'Jordan Dinar', '&#74;&#68;', NULL, NULL, NULL, NULL, 0, 3, '.', ',', NULL, '2016-04-03 12:35:01'),
(73, 'JPY', 'Japan Yen', '&#165;', '¥', '¥', '165', 'a5', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(74, 'KES', 'Kenya Shilling', '&#x4B;&#x53;&#x68;', 'KSh', 'KSh', NULL, NULL, 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(75, 'KGS', 'Kyrgyzstan Som', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(76, 'KHR', 'Cambodia Riel', '&#6107;', '៛', '៛', '6107', '17db', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(77, 'KMF', 'Comoros Franc', '&#67;&#70;', 'Fr', 'Fr', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(78, 'KPW', 'Korea (North) Won', '&#8361;', '₩', '₩', '8361', '20a9', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(79, 'KRW', 'Korea (South) Won', '&#8361;', '₩', '₩', '8361', '20a9', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(80, 'KWD', 'Kuwait Dinar', '&#1583;.&#1603;', 'د.ك', 'د.ك', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(81, 'KYD', 'Cayman Islands Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(82, 'KZT', 'Kazakhstan Tenge', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(83, 'LAK', 'Laos Kip', '&#8365;', '₭', '₭', '8365', '20ad', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(84, 'LBP', 'Lebanon Pound', '&#163;', '£', '£', '163', 'a3', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(85, 'LKR', 'Sri Lanka Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(86, 'LRD', 'Liberia Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(87, 'LSL', 'Lesotho Loti', '&#76;', 'M', 'M', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(88, 'LTL', 'Lithuania Litas', '&#76;&#116;', 'Lt', 'Lt', '76, 1', '4c, 7', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(89, 'LVL', 'Latvia Lat', '&#76;&#115;', 'Ls', 'Ls', '76, 1', '4c, 7', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(90, 'LYD', 'Libya Dinar', '&#1604;.&#1583;', 'DL', 'DL', NULL, NULL, 0, 3, '.', ',', NULL, '2016-04-03 12:35:01'),
(91, 'MAD', 'Morocco Dirham', '&#1583;.&#1605;.', 'Dhs', 'Dhs', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(92, 'MDL', 'Moldova Leu', '&#76;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(93, 'MGA', 'Madagascar Ariary', '&#65;&#114;', 'Ar', 'Ar', NULL, NULL, 0, 5, '.', ',', NULL, '2016-04-03 12:35:01'),
(94, 'MKD', 'Macedonia Denar', '&#1076;&#1077;&#1085;', 'ден', 'ден', '1076,', '434, ', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(95, 'MMK', 'Myanmar (Burma) Kyat', '&#75;', NULL, NULL, NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(96, 'MNT', 'Mongolia Tughrik', '&#8366;', '₮', '₮', '8366', '20ae', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(97, 'MOP', 'Macau Pataca', '&#77;&#79;&#80;&#36;', NULL, NULL, NULL, NULL, 0, 1, '.', ',', NULL, '2016-04-03 12:35:01'),
(98, 'MRO', 'Mauritania Ouguiya', '&#85;&#77;', 'UM', 'UM', NULL, NULL, 0, 5, '.', ',', NULL, '2016-04-03 12:35:01'),
(99, 'MUR', 'Mauritius Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(100, 'MVR', 'Maldives (Maldive Islands) Rufiyaa', '.&#1923;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(101, 'MWK', 'Malawi Kwacha', '&#77;&#75;', 'MK', 'MK', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(102, 'MXN', 'Mexico Peso', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(103, 'MYR', 'Malaysia Ringgit', '&#82;&#77;', 'RM', 'RM', '82, 7', '52, 4', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(104, 'MZN', 'Mozambique Metical', '&#77;&#84;', 'MT', 'MT', '77, 8', '4d, 5', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(105, 'NAD', 'Namibia Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(106, 'NGN', 'Nigeria Naira', '&#8358;', '₦', '₦', '8358', '20a6', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(107, 'NIO', 'Nicaragua Cordoba', '&#67;&#36;', 'C$', 'C$', '67, 3', '43, 2', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(108, 'NOK', 'Norway Krone', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(109, 'NPR', 'Nepal Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(110, 'NZD', 'New Zealand Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(111, 'OMR', 'Oman Rial', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 3, '.', ',', NULL, '2016-04-03 12:35:01'),
(112, 'PAB', 'Panama Balboa', '&#66;&#47;&#46;', 'B/.', 'B/.', '66, 4', '42, 2', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(113, 'PEN', 'Peru Nuevo Sol', '&#83;&#47;&#46;', 'S/.', 'S/.', '83, 4', '53, 2', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(114, 'PGK', 'Papua New Guinea Kina', '&#75;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(115, 'PHP', 'Philippines Peso', '&#8369;', '₱', '₱', '8369', '20b1', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(116, 'PKR', 'Pakistan Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(117, 'PLN', 'Poland Zloty', '&#122;&#322;', 'zł', 'zł', '122, ', '7a, 1', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(118, 'PYG', 'Paraguay Guarani', '&#71;&#115;', 'Gs', 'Gs', '71, 1', '47, 7', 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(119, 'QAR', 'Qatar Riyal', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(120, 'RON', 'Romania New Leu', '&#108;&#101;&#105;', 'lei', 'lei', '108, ', '6c, 6', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(121, 'RSD', 'Serbia Dinar', '&#1044;&#1080;&#1085;&#46;', 'Дин.', 'Дин.', '1044,', '414, ', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(122, 'RUB', 'Russia Ruble', '&#1088;&#1091;&#1073;', 'руб', 'руб', '1088,', '440, ', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(123, 'RWF', 'Rwanda Franc', '&#1585;.&#1587;', 'FRw', 'FRw', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(124, 'SAR', 'Saudi Arabia Riyal', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(125, 'SBD', 'Solomon Islands Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(126, 'SCR', 'Seychelles Rupee', '&#8360;', '₨', '₨', '8360', '20a8', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(127, 'SDG', 'Sudan Pound', '&#163;', 'DS', 'DS', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(128, 'SEK', 'Sweden Krona', '&#107;&#114;', 'kr', 'kr', '107, ', '6b, 7', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(129, 'SGD', 'Singapore Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(130, 'SHP', 'Saint Helena Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(131, 'SLL', 'Sierra Leone Leone', '&#76;&#101;', 'Le', 'Le', NULL, NULL, 1, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(132, 'SOS', 'Somalia Shilling', '&#83;', 'S', 'S', '83', '53', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(133, 'SPL', 'Seborga Luigino', NULL, NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(134, 'SRD', 'Suriname Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(135, 'SSP', 'South Sudanese Pound', '&#xA3;', '£', '£', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(136, 'STD', 'São Tomé and Príncipe Dobra', '&#68;&#98;', 'Db', 'Db', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(137, 'SVC', 'El Salvador Colon', '&#36;', '$', '$', '36', '24', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(138, 'SYP', 'Syria Pound', '&#163;', '£', '£', '163', 'a3', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(139, 'SZL', 'Swaziland Lilangeni', '&#76;', 'E', 'E', NULL, NULL, 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(140, 'THB', 'Thailand Baht', '&#3647;', '฿', '฿', '3647', 'e3f', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(141, 'TJS', 'Tajikistan Somoni', '&#84;&#74;&#83;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(142, 'TMT', 'Turkmenistan Manat', '&#109;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(143, 'TND', 'Tunisia Dinar', '&#1583;.&#1578;', 'DT', 'DT', NULL, NULL, 1, 3, '.', ',', NULL, '2016-04-03 12:35:01'),
(144, 'TOP', 'Tonga Pa\'anga', '&#84;&#36;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(145, 'TRL', 'Turkey Lira', NULL, '₤', '₤', '8356', '20a4', 1, 2, '.', ',', NULL, NULL),
(146, 'TRY', 'Turkey Lira', '&#x20BA;', '₺', '₺', '', '', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(147, 'TTD', 'Trinidad and Tobago Dollar', '&#36;', 'TT$', 'TT$', '84, 8', '54, 5', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(148, 'TVD', 'Tuvalu Dollar', NULL, '$', '$', '36', '24', 1, 2, '.', ',', NULL, NULL),
(149, 'TWD', 'Taiwan New Dollar', '&#78;&#84;&#36;', 'NT$', 'NT$', '78, 8', '4e, 5', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(150, 'TZS', 'Tanzania Shilling', '&#x54;&#x53;&#x68;', 'TSh', 'TSh', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(151, 'UAH', 'Ukraine Hryvnia', '&#8372;', '₴', '₴', '8372', '20b4', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(152, 'UGX', 'Uganda Shilling', '&#85;&#83;&#104;', 'USh', 'USh', NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(153, 'USD', 'United States Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(154, 'UYU', 'Uruguay Peso', '&#36;&#85;', '$U', '$U', '36, 8', '24, 5', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(155, 'UZS', 'Uzbekistan Som', '&#1083;&#1074;', 'лв', 'лв', '1083,', '43b, ', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(156, 'VEF', 'Venezuela Bolivar', '&#66;&#115;', 'Bs', 'Bs', '66, 1', '42, 7', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(157, 'VND', 'Viet Nam Dong', '&#8363;', '₫', '₫', '8363', '20ab', 1, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(158, 'VUV', 'Vanuatu Vatu', '&#86;&#84;', NULL, NULL, NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(159, 'WST', 'Samoa Tala', '&#87;&#83;&#36;', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(160, 'XAF', 'Communauté Financière Africaine (BEAC) CFA Franc B', '&#70;&#67;&#70;&#65;', 'F', 'F', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(161, 'XCD', 'East Caribbean Dollar', '&#36;', '$', '$', '36', '24', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(162, 'XDR', 'International Monetary Fund (IMF) Special Drawing ', '', NULL, NULL, NULL, NULL, 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(163, 'XOF', 'Communauté Financière Africaine (BCEAO) Franc', '&#70;&#67;&#70;&#65;', 'F', 'F', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(164, 'XPF', 'Comptoirs Français du Pacifique (CFP) Franc', '&#70;', 'F', 'F', NULL, NULL, 0, 0, '.', ',', NULL, '2016-04-03 12:35:01'),
(165, 'YER', 'Yemen Rial', '&#65020;', '﷼', '﷼', '65020', 'fdfc', 0, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(166, 'ZAR', 'South Africa Rand', '&#82;', 'R', 'R', '82', '52', 1, 2, '.', ',', NULL, '2016-04-03 12:35:01'),
(167, 'ZMW', 'Zambia Kwacha', NULL, 'ZK', 'ZK', NULL, NULL, 0, 2, '.', ',', NULL, NULL),
(168, 'ZWD', 'Zimbabwe Dollar', NULL, 'Z$', 'Z$', '90, 3', '5a, 2', 1, 2, '.', ',', NULL, NULL),
(169, 'ZWL', 'Zimbabwe Dollar', NULL, 'Z$', 'Z$', '90, 3', '5a, 2', 1, 2, '.', ',', NULL, NULL),
(170, 'XBT', 'Bitcoin', '฿', '฿', '฿', NULL, NULL, 1, 2, '.', ',', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_custom_data`
--

CREATE TABLE `ad_custom_data` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `field_id` int DEFAULT NULL,
  `field_type` varchar(20) DEFAULT NULL,
  `field_data` text
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ad_custom_fields`
--

CREATE TABLE `ad_custom_fields` (
  `custom_id` int UNSIGNED NOT NULL,
  `custom_order` int DEFAULT NULL,
  `translation_lang` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `translation_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `custom_anycat` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_catid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_subcatid` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_type` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_options` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `custom_required` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `custom_name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `custom_default` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_min` int UNSIGNED NOT NULL DEFAULT '0',
  `custom_max` int UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_custom_options`
--

CREATE TABLE `ad_custom_options` (
  `option_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ad_emailq`
--

CREATE TABLE `ad_emailq` (
  `q_id` int UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `toname` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_faq_entries`
--

CREATE TABLE `ad_faq_entries` (
  `faq_id` mediumint UNSIGNED NOT NULL,
  `translation_lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `translation_of` int UNSIGNED DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `faq_pid` smallint NOT NULL DEFAULT '0',
  `faq_weight` mediumint NOT NULL DEFAULT '0',
  `faq_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `faq_content` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_faq_entries`
--

INSERT INTO `ad_faq_entries` (`faq_id`, `translation_lang`, `translation_of`, `parent_id`, `faq_pid`, `faq_weight`, `faq_title`, `faq_content`, `active`) VALUES
(2, NULL, NULL, NULL, 2, 0, 'What is Quickad Classified?', 'Quickad Classified Ads Php Script is Premium Classified Php Script with fully responsive Material design. Built to be beautiful, fast and powerful. One click setup User can easily setup this theme and easy to use and customized.\n\n<h3>Features</h3>\n<ul>\n<li>Custom Fields</li>\n<li>Facebook Login</li>\n<li>Google+ Login</li>\n<li>2 Home layout</li>\n<li>Multi Theme Layout</li>\n<li>Material Design</li>\n<li>Fully Responsive</li>\n<li>Unlimited Colors</li>\n<li>Premium Submission</li>\n<li>Custom Widgets</li>\n<li>Paid Listing</li>\n<li>Featured &amp; Urgent Listing</li>\n<li>Grid View</li>\n<li>Listing View</li>\n<li>PayPal Integrated</li>\n<li>SEO optimized</li>\n<li>Google maps integrated</li>\n<li>Unlimited Colors Google Map</li>\n<li>Geo location support</li>\n<li>Bootstrap 3x</li>\n<li>Cross Browser support</li>\n<li>Email Notifications</li>\n<li>Well commented code.</li>\n<li>and much more.</li>\n</ul>', 1),
(9, NULL, NULL, NULL, 0, 0, 'How Long It Take To Register?', 'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ant ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim.', 1),
(10, NULL, NULL, NULL, 0, 0, 'How Can I Download Full Event Schedule?', 'Consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ant ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ad_favads`
--

CREATE TABLE `ad_favads` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ad_firebase_device_token`
--

CREATE TABLE `ad_firebase_device_token` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `device_id` varchar(55) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `token` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ad_languages`
--

CREATE TABLE `ad_languages` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `direction` varchar(3) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_languages`
--

INSERT INTO `ad_languages` (`id`, `code`, `direction`, `name`, `file_name`, `active`, `default`) VALUES
(1, 'en', 'ltr', 'English', 'english', 1, 1),
(2, 'fr', 'ltr', 'French', 'french', 1, 0),
(3, 'sv', 'ltr', 'Swedish', 'swedish', 1, 0),
(4, 'it', 'ltr', 'Italian', 'italian', 1, 0),
(5, 'gr', 'ltr', 'German', 'german', 1, 0),
(6, 'es', 'ltr', 'Spanish', 'spanish', 1, 0),
(7, 'pl', 'ltr', 'Polish', 'polish', 1, 0),
(8, 'ja', 'ltr', 'Japanese', 'japanese', 1, 0),
(9, 'zh', 'ltr', 'Chinese', 'chinese', 1, 0),
(10, 'ar', 'rtl', 'Arabic', 'arabic', 1, 0),
(11, 'he', 'rtl', 'Hebrew', 'hebrew', 1, 0),
(12, 'ru', 'ltr', 'Russian', 'russian', 1, 0),
(13, 'bn', 'ltr', 'Bangali', 'bangali', 1, 0),
(14, 'hi', 'ltr', 'Hindi', 'hindi', 1, 0),
(15, 'bg', 'ltr', 'Bulgarian', 'bulgarian', 1, 0),
(16, 'ro', 'ltr', 'Romanian', 'romanian', 1, 0),
(17, 'th', 'ltr', 'Thai', 'thai', 1, 0),
(18, 'tr', 'ltr', 'Turkish', 'turkish', 1, 0),
(19, 'ur', 'rtl', 'Urdu', 'urdu', 1, 0),
(20, 'vi', 'ltr', 'Vietnamese', 'vietnamese', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ad_login_attempts`
--

CREATE TABLE `ad_login_attempts` (
  `user_id` int DEFAULT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_login_attempts`
--

INSERT INTO `ad_login_attempts` (`user_id`, `time`) VALUES
(1, '1604204656'),
(3, '1604204674');

-- --------------------------------------------------------

--
-- Table structure for table `ad_logs`
--

CREATE TABLE `ad_logs` (
  `log_id` int UNSIGNED NOT NULL,
  `log_date` int UNSIGNED NOT NULL DEFAULT '0',
  `log_summary` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_details` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_logs`
--

INSERT INTO `ad_logs` (`log_id`, `log_date`, `log_summary`, `log_details`) VALUES
(1, 1603778656, 'Cron Run', 'Ads closed: 0<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(2, 1603779305, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(3, 1603781359, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(4, 1603906940, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(5, 1603907442, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(6, 1603908085, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(7, 1603911531, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(8, 1603912266, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(9, 1603912621, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(10, 1603913302, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(11, 1603913728, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(12, 1603914490, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(13, 1604169130, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(14, 1604170647, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 1 seconds'),
(15, 1604171732, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(16, 1604174040, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(17, 1604174415, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(18, 1604175410, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(19, 1604176448, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(20, 1604177194, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(21, 1604177591, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(22, 1604178996, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 1 seconds'),
(23, 1604181006, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(24, 1604181308, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(25, 1604181933, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(26, 1604188161, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(27, 1604188527, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(28, 1604189182, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(29, 1604190226, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(30, 1604191202, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(31, 1604193299, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(32, 1604193979, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(33, 1604194354, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(34, 1604194884, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(35, 1604195188, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(36, 1604195527, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(37, 1604195870, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(38, 1604196352, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(39, 1604197245, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 1 seconds'),
(40, 1604197756, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(41, 1604197756, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(42, 1604197756, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(43, 1604198407, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(44, 1604200465, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(45, 1604200838, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(46, 1604201317, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 1 seconds'),
(47, 1604201739, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(48, 1604202461, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(49, 1604203170, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(50, 1604203675, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(51, 1604204089, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(52, 1604204413, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds'),
(53, 1604205224, 'Cron Run', 'Ads closed: 1<br>New ad: 0<br>Expire membership: 0<br>Emails added to the queue: 0<br>Emails sent: 0<br><br>Cron Took: 0 seconds');

-- --------------------------------------------------------

--
-- Table structure for table `ad_messages`
--

CREATE TABLE `ad_messages` (
  `message_id` int UNSIGNED NOT NULL,
  `from_id` varchar(40) DEFAULT NULL,
  `to_id` varchar(50) DEFAULT NULL,
  `from_uname` varchar(225) DEFAULT NULL,
  `to_uname` varchar(255) DEFAULT NULL,
  `message_content` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `message_date` datetime DEFAULT NULL,
  `recd` tinyint(1) NOT NULL DEFAULT '0',
  `seen` enum('0','1') NOT NULL DEFAULT '0',
  `message_type` varchar(255) DEFAULT NULL,
  `post_id` int DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ad_notification`
--

CREATE TABLE `ad_notification` (
  `user_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `cat_id` mediumint UNSIGNED NOT NULL DEFAULT '0',
  `user_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_options`
--

CREATE TABLE `ad_options` (
  `option_id` bigint UNSIGNED NOT NULL,
  `option_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_options`
--

INSERT INTO `ad_options` (`option_id`, `option_name`, `option_value`) VALUES
(1, 'site_logo', 'thenext-theme_logo.png'),
(2, 'site_title', 'Quickad Classified'),
(3, 'meta_keywords', ''),
(4, 'meta_description', ''),
(5, 'admin_email', 'admin@gmail.com'),
(6, 'tpl_name', 'thenext-theme'),
(7, 'country_type', 'multi'),
(8, 'timezone', 'Asia/Kolkata'),
(9, 'lang', 'english'),
(10, 'currency_sign', '&#36;'),
(11, 'currency_code', 'USD'),
(12, 'currency_pos', '1'),
(13, 'featured_fee', '10'),
(14, 'urgent_fee', '10'),
(15, 'highlight_fee', '10'),
(16, 'home_page', 'home-image'),
(17, 'home_map_latitude', '28.6139391'),
(18, 'home_map_longitude', '77.20902120000005'),
(19, 'home_map_zoom', '4'),
(20, 'map_color', '#8080ff'),
(21, 'theme_color', '#0080ff'),
(22, 'home_banner', 'bg.jpg'),
(23, 'contact_address', '142, Basant Viahr '),
(24, 'contact_phone', '1-972-8103-393'),
(25, 'contact_email', 'contact@gmail.com'),
(26, 'contact_latitude', '40.7344458'),
(27, 'contact_longitude', '-73.86704922'),
(28, 'footer_text', 'Aenean sodales mattis augue. Morbi euismod, felis at volutpat volutpat, quam lectus porttitor massa, tur ex a neque pulvinar pulvinar.'),
(29, 'copyright_text', '2017 Bylancer, All right reserved'),
(30, 'facebook_link', 'https://www.facebook.com/danger.hope'),
(31, 'twitter_link', 'https://www.twitter.com/thebylancer'),
(32, 'googleplus_link', 'https://plus.google.com/+bylancer'),
(33, 'youtube_link', 'https://www.youtube.com/user/ABylancer'),
(34, 'facebook_app_id', ''),
(35, 'facebook_app_secret', ''),
(36, 'google_app_id', ''),
(37, 'google_app_secret', ''),
(38, 'recaptcha_mode', '0'),
(39, 'recaptcha_public_key', ''),
(40, 'recaptcha_private_key', ''),
(41, 'gmap_api_key', 'AIzaSyBX-Qe725k8_fgmWMLHiEoLrNL6tf84aTw'),
(42, 'email_type', 'mail'),
(43, 'smtp_host', ''),
(44, 'smtp_port', ''),
(45, 'smtp_username', ''),
(46, 'smtp_password', ''),
(47, 'userlangsel', '1'),
(48, 'userthemesel', '0'),
(49, 'color_switcher', '0'),
(50, 'admin_tpl_name', 'style-dark'),
(51, 'admin_tpl_color', 'green'),
(52, 'admin_menu_style', 'horizontal'),
(53, 'transfer_filter', '1'),
(54, 'mod_rewrite', '1'),
(55, 'temp_php', '1'),
(56, 'quickad_debug', '0'),
(57, 'xml_latest', '1'),
(58, 'xml_featured', '1'),
(59, 'site_admin_logo', 'adminlogo.png'),
(60, 'site_favicon', 'favicon.png'),
(61, 'post_address_mode', '0'),
(62, 'post_tags_mode', '1'),
(63, 'post_auto_approve', '0'),
(64, 'post_watermark', '1'),
(65, 'max_image_upload', '3'),
(66, 'post_premium_listing', '1'),
(67, 'post_desc_editor', '1'),
(68, 'email_template', '1'),
(69, 'email_engine', 'phpmailer'),
(70, 'smtp_secure', '0'),
(71, 'smtp_auth', 'true'),
(72, 'aws_host', ''),
(73, 'aws_access_key', ''),
(74, 'aws_secret_key', ''),
(75, 'mandrill_user', ''),
(76, 'mandrill_key', ''),
(77, 'sendgrid_user', ''),
(78, 'sendgrid_pass', ''),
(79, 'email_sub_signup_confirm', '{SITE_TITLE} - {LANG_EMAILCONFIRM}'),
(80, 'email_sub_forgot_pass', '{SITE_TITLE} - {LANG_FORGOTPASS}'),
(81, 'email_sub_contact', '{LANG_CONTACT_SUBJECT_START} - {CONTACT_SUBJECT}'),
(82, 'email_sub_feedback', '{FEEDBACK_SUBJECT}'),
(83, 'email_sub_report', '{LANG_REPORTVIO}  - {SITE_TITLE}'),
(84, 'email_sub_ad_approve', 'Congratulations! {SELLER_NAME} Your ad has been approved'),
(85, 'email_sub_re_ad_approve', 'Congratulations! {SELLER_NAME} Your ad resubmission has been approved'),
(86, 'email_sub_contact_seller', '{SITE_TITLE} - {NAME} {LANG_WANT-TO-CONTACT}'),
(87, 'email_message_signup_confirm', 'Greetings from {SITE_TITLE} Team!\n\nThanks for registering with {SITE_TITLE}. We are thrilled to have you as a registered member and hope that you find our service beneficial.\n\nBefore we get you started please activate your account by clicking on the link below\n{CONFIRMATION_LINK}\n\n\nAfter your Account activation you will have  Post Ad, Chat with sellers and more. Once you have your Profile filled in you are ready to go.\n\nHave further questions? You can find answers in our FAQ Section at {LINK_CONTACT}\nSincerely,\n\n{SITE_TITLE} Team!\n{SITE_URL}'),
(88, 'email_message_forgot_pass', '{LANG_TORESET}\n\n{FORGET_PASSWORD_LINK}\n\nHave further questions? You can find answers in our FAQ Section at {LINK_CONTACT}\nSincerely,\n\n{SITE_TITLE} Team!\n{SITE_URL}'),
(89, 'email_message_contact', '{NAME} {LANG_WANT-TO-CONTACT} {SITE_TITLE}:\n\n{LANG_NAME}          : {NAME}\n{LANG_EMAIL}         : {EMAIL}\n\n{LANG_MESSAGE}:\n\n{MESSAGE}\n\n------------------------------------------\n\nThis message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}'),
(90, 'email_message_feedback', '{NAME} {LANG_SEND-FEEDBACK} {SITE_TITLE}:\n\n{LANG_NAME}          : {NAME}\n{LANG_EMAIL}         : {EMAIL}\n{LANG_PHONE}         : {PHONE}\n\n{LANG_MESSAGE}:\n\n{MESSAGE}\n\n------------------------------------------\n\nThis message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}'),
(91, 'email_message_report', '{LANG_FOLLOWING-SENT-AUTO}  {SITE_TITLE}:\n\n{LANG_NAME}: {NAME}\n{LANG_USERNAME}: {USERNAME}\n{LANG_EMAIL}: {EMAIL}\n\n{LANG_VIOLATION}: {VIOLATION}\n{LANG_VIOLAT0R}: {USERNAME2}\n{LANG_VIOLATION} URL: {URL}\n\n{DETAILS}'),
(92, 'email_message_ad_approve', 'Congratulations! Your ad to {ADTITLE} on {SITE_TITLE} has been approved. You can view your item here:\n\n{ADLINK}\n\nThanks for your submission!\n\nRegards,\n{SITE_TITLE} Team\n\nQuestions? See our Knowledgebase and Support Center at {LINK_CONTACT}\n\n------------------------------------------\n\nThis message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}'),
(93, 'email_message_re_ad_approve', 'Congratulations! Your ad Re-Submission to {ADTITLE} on {SITE_TITLE} has been approved. You can view your item here:\n\n{ADLINK}\n\nThanks for your submission!\n\nRegards,\n{SITE_TITLE} Team\n\nQuestions? See our Knowledgebase and Support Center at {SITE_URL}contact.php\n\n------------------------------------------\n\nThis message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}'),
(94, 'email_message_contact_seller', '{SENDER_NAME} {LANG_WANT-TO-CONTACT}.\n\n{LANG_YOUR-AD}  : {ADTITLE}\n\n{LANG_NAME}     : {SENDER_NAME}\n{LANG_EMAIL}    : {SENDER_EMAIL}\n{LANG_PHONE}    : {SENDER_PHONE}\n{LANG_MESSAGE}  : {MESSAGE}\n\n------------------------------------------\n\nThis message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}'),
(95, 'email_message_post_notification', 'This message has been sent automatically by the {SITE_TITLE} system.\nIf you need to contact us, go to {LINK_CONTACT}\n-----------------------------------------\nThe following project was recently added to {SITE_TITLE} and fits under your expertise:\n\n{ADTITLE}\n{ADLINK}'),
(96, 'email_sub_post_notification', '{SITE_TITLE} - {LANG_ADNOTICE}'),
(97, 'email_sub_signup_details', '{SITE_TITLE} - {LANG_THANKSIGNUP}'),
(98, 'email_message_signup_details', 'Dear Valued Thanks for creating an account {SITE_TITLE} ,\n\nYour username: {USERNAME}\nYour password: {PASSWORD}\n\n\nHave further questions? You can start chat with live support team.\nSincerely,\n\n{SITE_TITLE} Team!\n{SITE_URL}'),
(99, 'contact_validation', '0'),
(100, 'delete_expired', '0'),
(101, 'validation_time', '0'),
(102, 'cron_exec_time', '300'),
(103, 'cron_time', '1604205224'),
(104, 'external_code', ''),
(105, 'blog_enable', '1'),
(106, 'blog_banner', '1'),
(107, 'show_blog_home', '1'),
(108, 'blog_comment_enable', '1'),
(109, 'blog_comment_approval', '2'),
(110, 'blog_comment_user', '1'),
(111, 'testimonials_enable', '1'),
(112, 'show_testimonials_blog', '1'),
(113, 'show_testimonials_home', '1'),
(114, 'non_active_msg', '1'),
(115, 'non_active_allow', '0'),
(116, 'cookie_link', ''),
(117, 'cookie_consent', '1'),
(118, 'socket_host', 'localhost'),
(119, 'socket_port', '9300'),
(120, 'listing_view', 'list'),
(121, 'map_type', 'openstreet'),
(122, 'specific_country', 'ca'),
(123, 'site_url', 'http://localhost/classified/'),
(124, 'location_track_icon', '1'),
(125, 'auto_detect_location', 'no'),
(126, 'live_location_api', 'ip_api'),
(127, 'quickad_secret_file', '9ykpodnso0'),
(128, 'purchase_key', '8fe77e58-d33a-4f57-a2f3-6812668f048a');

-- --------------------------------------------------------

--
-- Table structure for table `ad_pages`
--

CREATE TABLE `ad_pages` (
  `id` int UNSIGNED NOT NULL,
  `translation_lang` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `translation_of` int UNSIGNED DEFAULT NULL,
  `parent_id` int UNSIGNED DEFAULT NULL,
  `type` enum('0','1') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_payments`
--

CREATE TABLE `ad_payments` (
  `payment_id` mediumint UNSIGNED NOT NULL,
  `payment_install` enum('0','1') NOT NULL DEFAULT '0',
  `payment_title` varchar(255) DEFAULT NULL,
  `payment_folder` varchar(30) DEFAULT NULL,
  `payment_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ad_payments`
--

INSERT INTO `ad_payments` (`payment_id`, `payment_install`, `payment_title`, `payment_folder`, `payment_desc`) VALUES
(1, '1', 'Paypal', 'paypal', 'You will be redirected to paypal to complete payment.'),
(2, '1', 'Credit & Debit Card', 'stripe', 'Make an instant deposit using online payment service Stripe. Pay with your debit or credit card.'),
(3, '1', 'Bank Deposit (Offline Payment)', 'wire_transfer', NULL),
(4, '1', '2Checkout', '2checkout', NULL),
(5, '1', 'Paystack', 'paystack', 'You will be redirected to Paystack to complete payment.');

-- --------------------------------------------------------

--
-- Table structure for table `ad_product`
--

CREATE TABLE `ad_product` (
  `id` int NOT NULL,
  `status` enum('pending','active','rejected','expire') NOT NULL DEFAULT 'pending',
  `user_id` int DEFAULT NULL,
  `featured` enum('0','1') NOT NULL DEFAULT '0',
  `urgent` enum('0','1') NOT NULL DEFAULT '0',
  `highlight` enum('0','1') NOT NULL DEFAULT '0',
  `product_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `category` int DEFAULT NULL,
  `sub_category` int DEFAULT NULL,
  `price` int NOT NULL DEFAULT '0',
  `negotiable` enum('0','1') NOT NULL DEFAULT '0',
  `phone` varchar(50) DEFAULT NULL,
  `hide_phone` enum('0','1') DEFAULT NULL,
  `location` text,
  `city` char(50) DEFAULT NULL,
  `state` char(50) DEFAULT NULL,
  `country` char(50) DEFAULT NULL,
  `latlong` varchar(255) DEFAULT NULL,
  `screen_shot` text,
  `tag` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `view` int NOT NULL DEFAULT '1',
  `custom_fields` longtext,
  `custom_types` longtext,
  `custom_values` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `expire_date` int NOT NULL DEFAULT '0',
  `featured_exp_date` int DEFAULT NULL,
  `urgent_exp_date` int DEFAULT NULL,
  `highlight_exp_date` int DEFAULT NULL,
  `contact_phone` enum('0','1') NOT NULL DEFAULT '0',
  `contact_email` enum('0','1') NOT NULL DEFAULT '0',
  `contact_chat` enum('0','1') NOT NULL DEFAULT '0',
  `admin_seen` enum('0','1') NOT NULL DEFAULT '0',
  `emailed` enum('0','1') NOT NULL DEFAULT '0',
  `hide` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ad_product`
--

INSERT INTO `ad_product` (`id`, `status`, `user_id`, `featured`, `urgent`, `highlight`, `product_name`, `slug`, `description`, `category`, `sub_category`, `price`, `negotiable`, `phone`, `hide_phone`, `location`, `city`, `state`, `country`, `latlong`, `screen_shot`, `tag`, `view`, `custom_fields`, `custom_types`, `custom_values`, `created_at`, `updated_at`, `expire_date`, `featured_exp_date`, `urgent_exp_date`, `highlight_exp_date`, `contact_phone`, `contact_email`, `contact_chat`, `admin_seen`, `emailed`, `hide`) VALUES
(1, 'expire', 2, '1', '1', '1', 'Quickad Classified Ads Php Script CMS', 'quickad-classified-ads-php-script-cms-1', '<h2><span style=\\\"color: rgb(51, 51, 51); font-size: 16px;\\\">Quickad AdsÃ‚Â <a href=\\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\\">Php Classified Script</a></span><span style=\\\"color: rgb(51, 51, 51); font-size: 16px;\\\">Â is Premium Classified Php Script with fully responsive Material & Classic design. Built to be beautiful, fast and powerful. One-click setup User can easily set up this theme and easy to use and customized.</span></h2><p><span style=\\\"color: rgb(84, 84, 84); font-size: 16px;\\\">With the help of ourÂ <a href=\\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\\" target=\\\"_blank\\\">best classified script</a>Â &Â <a href=\\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\\" target=\\\"_blank\\\">jobs script</a>, you will be also showcasingÂ <a href=\\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\\" target=\\\"_blank\\\">geo classified ads cms</a>Â orÂ <a href=\\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\\" target=\\\"_blank\\\">PHP classified ads scripts</a>Â easily. This premium classified script will help you use a classifiedÃ‚Â <a href=\\\"https://codentheme.com/category/php-scripts-php-code/\\\" target=\\\"_blank\\\">PHP script</a>to deliver the necessary output in a short span of time. You can create an online classified jobs portal withÃ‚Â <a href=\\\"https://www.bylancer.com/\\\" target=\\\"_blank\\\">Quickad jobs classified scripts</a>. End user canÃ‚Â <a href=\\\"https://classified.bylancer.com/\\\" target=\\\"_blank\\\">post free classifieds</a>Â or make an ad to premium with various premium features.</span></p><p><span style=\\\"font-size: 13px; color: rgb(135, 135, 135);\\\">PriceÂ <span style=\\\"color: rgb(35, 207, 95);\\\">$69.00Â </span></span><span style=\\\"font-size: 13px; color: rgb(135, 135, 135);\\\">Total Sales (650+)</span></p><p><a target=\\\"_blank\\\" href=\\\"https://bylancer.com/products/demo/classified/\\\">LIVE DEMO</a>Â <a href=\\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\\">BUY NOW</a>Â <a href=\\\"https://bylancer.com/products/demo/classified/documentation/index.html\\\">DOCUMENTATION</a></p><p>------------------------------------------------------------------------------------</p><p><b>Our Portfolio</b></p><ol><li><a href=\\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\\" target=\\\"_blank\\\">Quickad Classified PHP Script Ads CMS</a></li><li><a href=\\\"https://codecanyon.net/item/quickad-classified-native-android-app/23956447\\\" target=\\\"_blank\\\">Quickad - Classified Native Android App</a></li><li><a href=\\\"https://codentheme.com/item/bookmepro-wordpress-appointment-booking-scheduling-plugin/\\\" target=\\\"_blank\\\">Bookme Pro - WordPress Appointment Booking and Scheduling Software</a></li><li><a href=\\\"https://codecanyon.net/item/bookme-wordpress-booking-plugin/20926116\\\" target=\\\"_blank\\\">Bookme - WordPress Appointment Booking Scheduling Plugin</a></li><li><a href=\\\"https://codecanyon.net/item/wchat-fully-responsive-phpajax-chat/18047319\\\" target=\\\"_blank\\\">Wchat - Fully Responsive PHP AJAX Chat Script</a></li><li><a href=\\\"https://codentheme.com/item/wchat-free-chat-html-template/\\\" target=\\\"_blank\\\">Wchat - Free Chat HTML Template</a></li><li><a href=\\\"https://codecanyon.net/item/facebook-style-php-ajax-chat-zechat/16491266\\\" target=\\\"_blank\\\">Zechat - Facebook Style Php Ajax Chat</a></li><li><a href=\\\"https://themeforest.net/item/eagle-material-design-admin-template/20829964\\\" target=\\\"_blank\\\">Eagle - Material+ Bootstrap Admin Template</a></li><li><a href=\\\"https://codentheme.com/item/noddy-bootstrap-4-admin-template/\\\" target=\\\"_blank\\\">Noddy Bootstrap 4 Admin Template</a></li><li><a href=\\\"https://codentheme.com/item/newsmania-wordpress-news-magazine-theme/?ref=bylancer\\\" target=\\\"_blank\\\">The Magazine - Responsive News WordPress Theme</a></li><li><a href=\\\"https://codentheme.com/item/fashiony-wordpress-blog-magazine-theme/\\\" target=\\\"_blank\\\">Fashiony - WordPress Blog & Magazine Theme</a></li><li><a href=\\\"https://codentheme.com/item/electron-wordpress-blog-magazine-theme/\\\" target=\\\"_blank\\\">Electron - Minimal Personal Blog WordPress Theme</a></li><li><a href=\\\"https://codentheme.com/item/creative-modern-blog-html-template-electron/\\\" target=\\\"_blank\\\">Electron - Free Blog Bootstrap Html Website Template</a></li><li><a href=\\\"https://codentheme.com/item/mega-gdpr-compliance-toolkit-for-wordpress/\\\" target=\\\"_blank\\\">Mega GDPR Compliance toolkit for WordPress</a></li><li><a href=\\\"https://codentheme.com/item/spider-ajax-php-50-form-with-jquery-validation/\\\" target=\\\"_blank\\\">Spider - PHP Ajax 50+ Form With Jquery Validation</a></li><li><a href=\\\"https://codentheme.com/item/appui-free-responsive-html-vuejs-angularjs-admin-dashboard/\\\" target=\\\"_blank\\\">AppUI - Free Bootstrap HTML, Vuejs & angularjs Admin Dashboard Template</a></li><li><a href=\\\"https://codentheme.com/best-wordpress-appointment-booking-and-scheduling-plugin-2019/\\\" target=\\\"_blank\\\">Best WordPress Appointment Booking Plugin</a></li><li><a href=\\\"https://codentheme.com/free-wordpress-themes/\\\" target=\\\"_blank\\\">Free Wordpress themes</a></li></ol>', 7, 33, 69, '0', '9799901707', '0', 'delhi', '1269515', 'IN.24', 'IN', '28.617603494866284,77.20727920532227', '1566644186_prequickad.jpg', 'Best php scripts, open classifieds, best classified script, classified ads cms quickad, classified demo, quickad classified ads php script, PHP Classified Scripts, Classified Ads Scripts, job portal scripts, best classified w', 17, '', '', '', '2019-08-24 16:29:46', '2019-08-24 13:53:05', 1569236386, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
(6, 'active', 3, '0', '0', '0', 'rock climb', 'rock-climb', '<p>sdadasd s d asd asd sa das d | asd sad as | asd as d | sadsadas <br></p>', 17, 114, 14, '0', '1236547899', '0', '', '6167865', 'CA.08', 'CA', '28.6139391,77.20902120000005', '1604205079_chili.jpg,1604205082_poutine-general-tao-1160x650-bs009061-pub-68649.jpg', 'rock', 2, NULL, NULL, NULL, '2020-11-01 10:01:48', '2020-11-01 10:01:48', 1606797108, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0'),
(5, 'active', 3, '0', '0', '0', 'bungee free jump', 'bungee-free-jump', '<p>jump off a high cliff | no rope attached | you will be in air for your rest of your life<br></p>', 17, 111, 145, '1', '1478523695', '0', '', '6146143', 'CA.10', 'CA', '28.6139391,77.20902120000005', '1604204980_peach.jpg,1604204980_samsung-galaxy-note-20-ultra-s-pen-peeking-1200x675.jpg', 'free bungee, hello', 2, NULL, NULL, NULL, '2020-11-01 10:00:27', '2020-11-01 10:00:27', 1606797027, NULL, NULL, NULL, '0', '0', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `ad_product_resubmit`
--

CREATE TABLE `ad_product_resubmit` (
  `id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `featured` enum('0','1') NOT NULL DEFAULT '0',
  `urgent` enum('0','1') NOT NULL DEFAULT '0',
  `highlight` enum('0','1') NOT NULL DEFAULT '0',
  `product_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  `category` int DEFAULT NULL,
  `sub_category` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `negotiable` enum('0','1') NOT NULL DEFAULT '0',
  `phone` varchar(50) DEFAULT NULL,
  `hide_phone` enum('0','1') DEFAULT NULL,
  `location` text,
  `city` char(50) DEFAULT NULL,
  `state` char(50) DEFAULT NULL,
  `country` char(50) DEFAULT NULL,
  `latlong` varchar(255) DEFAULT NULL,
  `screen_shot` text,
  `tag` varchar(225) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `status` enum('pending','active','rejected','softreject') NOT NULL DEFAULT 'pending',
  `view` int NOT NULL DEFAULT '1',
  `custom_fields` longtext,
  `custom_types` longtext,
  `custom_values` longtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `featured_exp_date` int DEFAULT NULL,
  `urgent_exp_date` int DEFAULT NULL,
  `highlight_exp_date` int DEFAULT NULL,
  `contact_phone` enum('0','1') NOT NULL DEFAULT '0',
  `contact_email` enum('0','1') NOT NULL DEFAULT '0',
  `contact_chat` enum('0','1') NOT NULL DEFAULT '0',
  `comments` text,
  `admin_seen` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ad_push_notification`
--

CREATE TABLE `ad_push_notification` (
  `id` int NOT NULL,
  `sender_id` int DEFAULT NULL,
  `sender_name` varchar(255) DEFAULT NULL,
  `owner_id` int DEFAULT NULL,
  `owner_name` varchar(255) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `product_title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ad_reviews`
--

CREATE TABLE `ad_reviews` (
  `reviewID` int NOT NULL,
  `productID` varchar(255) DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `comments` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci,
  `date` date DEFAULT NULL,
  `publish` int NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ad_subadmin1`
--

CREATE TABLE `ad_subadmin1` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `asciiname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_subadmin1`
--

INSERT INTO `ad_subadmin1` (`id`, `code`, `country_code`, `name`, `asciiname`, `active`) VALUES
(467, 'CA.01', 'CA', 'Alberta', 'Alberta', 1),
(468, 'CA.02', 'CA', 'British Columbia', 'British Columbia', 1),
(469, 'CA.03', 'CA', 'Manitoba', 'Manitoba', 1),
(470, 'CA.04', 'CA', 'New Brunswick', 'New Brunswick', 1),
(471, 'CA.13', 'CA', 'Northwest Territories', 'Northwest Territories', 1),
(472, 'CA.07', 'CA', 'Nova Scotia', 'Nova Scotia', 1),
(473, 'CA.14', 'CA', 'Nunavut', 'Nunavut', 1),
(474, 'CA.08', 'CA', 'Ontario', 'Ontario', 1),
(475, 'CA.09', 'CA', 'Prince Edward Island', 'Prince Edward Island', 1),
(476, 'CA.10', 'CA', 'Quebec', 'Quebec', 1),
(477, 'CA.11', 'CA', 'Saskatchewan', 'Saskatchewan', 1),
(478, 'CA.12', 'CA', 'Yukon', 'Yukon', 1),
(479, 'CA.05', 'CA', 'Newfoundland and Labrador', 'Newfoundland and Labrador', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ad_subadmin2`
--

CREATE TABLE `ad_subadmin2` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `subadmin1_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `asciiname` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint UNSIGNED DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_subadmin2`
--

INSERT INTO `ad_subadmin2` (`id`, `code`, `country_code`, `subadmin1_code`, `name`, `asciiname`, `active`) VALUES
(8479, 'CA.10.08', 'CA', 'CA.10', 'Abitibi-Témiscamingue', 'Abitibi-Temiscamingue', 1),
(8480, 'CA.04.1306', 'CA', 'CA.04', 'Albert County', 'Albert County', 1),
(8481, 'CA.03.5883398', 'CA', 'CA.03', 'Alexander', 'Alexander', 1),
(8482, 'CA.08.3557', 'CA', 'CA.08', 'Algoma', 'Algoma', 1),
(8483, 'CA.03.5884145', 'CA', 'CA.03', 'Alonsa', 'Alonsa', 1),
(8484, 'CA.07.1205', 'CA', 'CA.07', 'Annapolis County', 'Annapolis County', 1),
(8485, 'CA.07.1214', 'CA', 'CA.07', 'Antigonish County', 'Antigonish County', 1),
(8486, 'CA.03.5886869', 'CA', 'CA.03', 'Argyle', 'Argyle', 1),
(8487, 'CA.03.5887047', 'CA', 'CA.03', 'Armstrong', 'Armstrong', 1),
(8488, 'CA.01.4810016', 'CA', 'CA.01', 'Beaver County', 'Beaver County', 1),
(8489, 'CA.01.4819049', 'CA', 'CA.01', 'Birch Hills County', 'Birch Hills County', 1),
(8490, 'CA.08.3529', 'CA', 'CA.08', 'Brant', 'Brant', 1),
(8491, 'CA.01.4811032', 'CA', 'CA.01', 'Brazeau County', 'Brazeau County', 1),
(8492, 'CA.03.5909350', 'CA', 'CA.03', 'Brokenhead', 'Brokenhead', 1),
(8493, 'CA.08.3541', 'CA', 'CA.08', 'Bruce County', 'Bruce County', 1),
(8494, 'CA.07.5915565', 'CA', 'CA.07', 'Cape Breton County', 'Cape Breton County', 1),
(8495, 'CA.02.5917', 'CA', 'CA.02', 'Capital Regional District', 'Capital Regional District', 1),
(8496, 'CA.01.4803001', 'CA', 'CA.01', 'Cardston County', 'Cardston County', 1),
(8497, 'CA.02.5941', 'CA', 'CA.02', 'Cariboo Regional District', 'Cariboo Regional District', 1),
(8498, 'CA.04.1311', 'CA', 'CA.04', 'Carleton County', 'Carleton County', 1),
(8499, 'CA.03.5917773', 'CA', 'CA.03', 'Cartier', 'Cartier', 1),
(8500, 'CA.02.5945', 'CA', 'CA.02', 'Central Coast Regional District', 'Central Coast Regional District', 1),
(8501, 'CA.04.1302', 'CA', 'CA.04', 'Charlotte County', 'Charlotte County', 1),
(8502, 'CA.08.3536', 'CA', 'CA.08', 'Chatham-Kent', 'Chatham-Kent', 1),
(8503, 'CA.01.4809002', 'CA', 'CA.01', 'Clearwater County', 'Clearwater County', 1),
(8504, 'CA.08.3556', 'CA', 'CA.08', 'Cochrane District', 'Cochrane District', 1),
(8505, 'CA.07.1210', 'CA', 'CA.07', 'Colchester', 'Colchester', 1),
(8506, 'CA.03.5925083', 'CA', 'CA.03', 'Coldwell', 'Coldwell', 1),
(8507, 'CA.02.5939', 'CA', 'CA.02', 'Columbia-Shuswap Regional District', 'Columbia-Shuswap Regional District', 1),
(8508, 'CA.03.5928075', 'CA', 'CA.03', 'Cornwallis', 'Cornwallis', 1),
(8509, 'CA.10.09', 'CA', 'CA.10', 'Côte-Nord', 'Cote-Nord', 1),
(8510, 'CA.01.4813044', 'CA', 'CA.01', 'County of Athabasca No. 12', 'County of Athabasca No. 12', 1),
(8511, 'CA.01.4813018', 'CA', 'CA.01', 'County of Barrhead No. 11', 'County of Barrhead No. 11', 1),
(8512, 'CA.01.4810001', 'CA', 'CA.01', 'County of Camrose No. 22', 'County of Camrose No. 22', 1),
(8513, 'CA.01.4801008', 'CA', 'CA.01', 'County of Forty Mile No. 8', 'County of Forty Mile No. 8', 1),
(8514, 'CA.01.4819006', 'CA', 'CA.01', 'County of Grande Prairie No. 1', 'County of Grande Prairie No. 1', 1),
(8515, 'CA.01.4802011', 'CA', 'CA.01', 'County of Lethbridge No. 26', 'County of Lethbridge No. 26', 1),
(8516, 'CA.01.4810026', 'CA', 'CA.01', 'County of Minburn No. 27', 'County of Minburn No. 27', 1),
(8517, 'CA.01.4802031', 'CA', 'CA.01', 'County of Newell No. 4', 'County of Newell No. 4', 1),
(8518, 'CA.01.4807011', 'CA', 'CA.01', 'County of Paintearth No. 18', 'County of Paintearth No. 18', 1),
(8519, 'CA.01.4807019', 'CA', 'CA.01', 'County of Stettler No. 6', 'County of Stettler No. 6', 1),
(8520, 'CA.01.4812014', 'CA', 'CA.01', 'County of St. Paul No. 19', 'County of St. Paul No. 19', 1),
(8521, 'CA.01.4813036', 'CA', 'CA.01', 'County of Thorhild No. 7', 'County of Thorhild No. 7', 1),
(8522, 'CA.01.4810048', 'CA', 'CA.01', 'County of Two Hills No. 21', 'County of Two Hills No. 21', 1),
(8523, 'CA.01.4810036', 'CA', 'CA.01', 'County of Vermilion River No. 24', 'County of Vermilion River No. 24', 1),
(8524, 'CA.01.4802001', 'CA', 'CA.01', 'County of Warner No. 5', 'County of Warner No. 5', 1),
(8525, 'CA.01.4811001', 'CA', 'CA.01', 'County of Wetaskiwin No. 10', 'County of Wetaskiwin No. 10', 1),
(8526, 'CA.02.5919', 'CA', 'CA.02', 'Cowichan Valley Regional District', 'Cowichan Valley Regional District', 1),
(8527, 'CA.07.1211', 'CA', 'CA.07', 'Cumberland County', 'Cumberland County', 1),
(8528, 'CA.01.4801003', 'CA', 'CA.01', 'Cypress County', 'Cypress County', 1),
(8529, 'CA.03.5935342', 'CA', 'CA.03', 'Dauphin', 'Dauphin', 1),
(8530, 'CA.03.5938127', 'CA', 'CA.03', 'De Salaberry', 'De Salaberry', 1),
(8531, 'CA.07.5939237', 'CA', 'CA.07', 'Digby County', 'Digby County', 1),
(8532, 'CA.08.3522', 'CA', 'CA.08', 'Dufferin County', 'Dufferin County', 1),
(8533, 'CA.03.5943543', 'CA', 'CA.03', 'Dufferin', 'Dufferin', 1),
(8534, 'CA.08.3518', 'CA', 'CA.08', 'Durham', 'Durham', 1),
(8535, 'CA.03.5946153', 'CA', 'CA.03', 'East St. Paul', 'East St. Paul', 1),
(8536, 'CA.08.3534', 'CA', 'CA.08', 'Elgin County', 'Elgin County', 1),
(8537, 'CA.03.5948173', 'CA', 'CA.03', 'Elton', 'Elton', 1),
(8538, 'CA.08.3537', 'CA', 'CA.08', 'Essex County', 'Essex County', 1),
(8539, 'CA.10.05', 'CA', 'CA.10', 'Estrie', 'Estrie', 1),
(8540, 'CA.03.5953379', 'CA', 'CA.03', 'Fisher', 'Fisher', 1),
(8541, 'CA.01.4807031', 'CA', 'CA.01', 'Flagstaff County', 'Flagstaff County', 1),
(8542, 'CA.02.5909', 'CA', 'CA.02', 'Fraser Valley Regional District', 'Fraser Valley Regional District', 1),
(8543, 'CA.08.3510', 'CA', 'CA.08', 'Frontenac County', 'Frontenac County', 1),
(8544, 'CA.03.5961416', 'CA', 'CA.03', 'Gimli', 'Gimli', 1),
(8545, 'CA.03.5964094', 'CA', 'CA.03', 'Grahamdale', 'Grahamdale', 1),
(8546, 'CA.02.5915', 'CA', 'CA.02', 'Greater Vancouver Regional District', 'Greater Vancouver Regional District', 1),
(8547, 'CA.08.3542', 'CA', 'CA.08', 'Grey County', 'Grey County', 1),
(8548, 'CA.03.5966926', 'CA', 'CA.03', 'Grey', 'Grey', 1),
(8549, 'CA.07.5968620', 'CA', 'CA.07', 'Guysborough County', 'Guysborough County', 1),
(8550, 'CA.08.3528', 'CA', 'CA.08', 'Haldimand County', 'Haldimand County', 1),
(8551, 'CA.08.3546', 'CA', 'CA.08', 'Haliburton County', 'Haliburton County', 1),
(8552, 'CA.07.5969424', 'CA', 'CA.07', 'Halifax County', 'Halifax County', 1),
(8553, 'CA.08.3524', 'CA', 'CA.08', 'Halton', 'Halton', 1),
(8554, 'CA.08.3525', 'CA', 'CA.08', 'Hamilton', 'Hamilton', 1),
(8555, 'CA.03.5970302', 'CA', 'CA.03', 'Hanover', 'Hanover', 1),
(8556, 'CA.08.3512', 'CA', 'CA.08', 'Hastings County', 'Hastings County', 1),
(8557, 'CA.03.5972962', 'CA', 'CA.03', 'Headingley', 'Headingley', 1),
(8558, 'CA.08.3540', 'CA', 'CA.08', 'Huron County', 'Huron County', 1),
(8559, 'CA.01.4815037', 'CA', 'CA.01', 'Improvement District No. 12', 'Improvement District No. 12', 1),
(8560, 'CA.01.4810068', 'CA', 'CA.01', 'Improvement District No. 13', 'Improvement District No. 13', 1),
(8561, 'CA.01.4816051', 'CA', 'CA.01', 'Improvement District No. 24', 'Improvement District No. 24', 1),
(8562, 'CA.01.4814028', 'CA', 'CA.01', 'Improvement District No. 25', 'Improvement District No. 25', 1),
(8563, 'CA.01.4803003', 'CA', 'CA.01', 'Improvement District No. 4', 'Improvement District No. 4', 1),
(8564, 'CA.01.4815032', 'CA', 'CA.01', 'Improvement District No. 9', 'Improvement District No. 9', 1),
(8565, 'CA.07.1215', 'CA', 'CA.07', 'Inverness County', 'Inverness County', 1),
(8566, 'CA.01.4815033', 'CA', 'CA.01', 'Jasper', 'Jasper', 1),
(8567, 'CA.01.4815013', 'CA', 'CA.01', 'Kananaskis Improvement District', 'Kananaskis Improvement District', 1),
(8568, 'CA.08.3516', 'CA', 'CA.08', 'Kawartha Lakes', 'Kawartha Lakes', 1),
(8569, 'CA.03.5990627', 'CA', 'CA.03', 'Kelsey', 'Kelsey', 1),
(8570, 'CA.08.3560', 'CA', 'CA.08', 'Kenora District', 'Kenora District', 1),
(8571, 'CA.04.1308', 'CA', 'CA.04', 'Kent County', 'Kent County', 1),
(8572, 'CA.09.1101', 'CA', 'CA.09', 'Kings County', 'Kings County', 1),
(8573, 'CA.07.1207', 'CA', 'CA.07', 'Kings County', 'Kings County', 1),
(8574, 'CA.04.1305', 'CA', 'CA.04', 'Kings County', 'Kings County', 1),
(8575, 'CA.01.4805041', 'CA', 'CA.01', 'Kneehill County', 'Kneehill County', 1),
(8576, 'CA.03.6014442', 'CA', 'CA.03', 'Lac du Bonnet', 'Lac du Bonnet', 1),
(8577, 'CA.01.4808022', 'CA', 'CA.01', 'Lacombe County', 'Lacombe County', 1),
(8578, 'CA.01.4813001', 'CA', 'CA.01', 'Lac Ste. Anne County', 'Lac Ste. Anne County', 1),
(8579, 'CA.08.3538', 'CA', 'CA.08', 'Lambton County', 'Lambton County', 1),
(8580, 'CA.01.4810058', 'CA', 'CA.01', 'Lamont County', 'Lamont County', 1),
(8581, 'CA.08.3509', 'CA', 'CA.08', 'Lanark County', 'Lanark County', 1),
(8582, 'CA.10.14', 'CA', 'CA.10', 'Lanaudière', 'Lanaudiere', 1),
(8583, 'CA.10.15', 'CA', 'CA.10', 'Laurentides', 'Laurentides', 1),
(8584, 'CA.10.13', 'CA', 'CA.10', 'Laval', 'Laval', 1),
(8585, 'CA.01.4811012', 'CA', 'CA.01', 'Leduc County', 'Leduc County', 1),
(8586, 'CA.08.3511', 'CA', 'CA.08', 'Lennox and Addington County', 'Lennox and Addington County', 1),
(8587, 'CA.07.6062070', 'CA', 'CA.07', 'Lunenburg County', 'Lunenburg County', 1),
(8588, 'CA.03.6062676', 'CA', 'CA.03', 'Macdonald', 'Macdonald', 1),
(8589, 'CA.08.3551', 'CA', 'CA.08', 'Manitoulin District', 'Manitoulin District', 1),
(8590, 'CA.10.04', 'CA', 'CA.10', 'Mauricie', 'Mauricie', 1),
(8591, 'CA.08.3539', 'CA', 'CA.08', 'Middlesex County', 'Middlesex County', 1),
(8592, 'CA.10.6074643', 'CA', 'CA.10', 'Minganie', 'Minganie', 1),
(8593, 'CA.03.6076808', 'CA', 'CA.03', 'Montcalm', 'Montcalm', 1),
(8594, 'CA.10.16', 'CA', 'CA.10', 'Montérégie', 'Monteregie', 1),
(8595, 'CA.10.06', 'CA', 'CA.10', 'Montréal', 'Montreal', 1),
(8596, 'CA.03.6078726', 'CA', 'CA.03', 'Morris', 'Morris', 1),
(8597, 'CA.03.6079284', 'CA', 'CA.03', 'Mossey River', 'Mossey River', 1),
(8598, 'CA.01.4806028', 'CA', 'CA.01', 'Mountain View County', 'Mountain View County', 1),
(8599, 'CA.01.4804001', 'CA', 'CA.01', 'Municipal District of Acadia No. 34', 'Municipal District of Acadia No. 34', 1),
(8600, 'CA.01.4815015', 'CA', 'CA.01', 'Municipal District of Bighorn No. 8', 'Municipal District of Bighorn No. 8', 1),
(8601, 'CA.01.4817027', 'CA', 'CA.01', 'Municipal District of Big Lakes No. 125', 'Municipal District of Big Lakes No. 125', 1),
(8602, 'CA.01.4812004', 'CA', 'CA.01', 'Municipal District of Bonnyville No. 87', 'Municipal District of Bonnyville No. 87', 1),
(8603, 'CA.01.4817062', 'CA', 'CA.01', 'Municipal District of Clear Hills No. 21', 'Municipal District of Clear Hills No. 21', 1),
(8604, 'CA.01.4819066', 'CA', 'CA.01', 'Municipal District of Fairview No. 136', 'Municipal District of Fairview No. 136', 1),
(8605, 'CA.01.4806001', 'CA', 'CA.01', 'Municipal District of Foothills No. 31', 'Municipal District of Foothills No. 31', 1),
(8606, 'CA.01.4818015', 'CA', 'CA.01', 'Municipal District of Greenview No. 16', 'Municipal District of Greenview No. 16', 1),
(8607, 'CA.01.4817033', 'CA', 'CA.01', 'Municipal District of Lesser Slave River No. 124', 'Municipal District of Lesser Slave River No. 124', 1),
(8608, 'CA.01.4817076', 'CA', 'CA.01', 'Municipal District of Northern Lights No. 22', 'Municipal District of Northern Lights No. 22', 1),
(8609, 'CA.01.4817031', 'CA', 'CA.01', 'Municipal District of Opportunity No. 17', 'Municipal District of Opportunity No. 17', 1),
(8610, 'CA.01.4819071', 'CA', 'CA.01', 'Municipal District of Peace No. 135', 'Municipal District of Peace No. 135', 1),
(8611, 'CA.01.4803011', 'CA', 'CA.01', 'Municipal District of Pincher Creek No. 9', 'Municipal District of Pincher Creek No. 9', 1),
(8612, 'CA.01.4807001', 'CA', 'CA.01', 'Municipal District of Provost No. 52', 'Municipal District of Provost No. 52', 1),
(8613, 'CA.01.4815045', 'CA', 'CA.01', 'Municipal District of Ranchland No. 66', 'Municipal District of Ranchland No. 66', 1),
(8614, 'CA.01.4806014', 'CA', 'CA.01', 'Municipal District of Rocky View No. 44', 'Municipal District of Rocky View No. 44', 1),
(8615, 'CA.01.4819041', 'CA', 'CA.01', 'Municipal District of Smoky River No. 130', 'Municipal District of Smoky River No. 130', 1),
(8616, 'CA.01.4819054', 'CA', 'CA.01', 'Municipal District of Spirit River No. 133', 'Municipal District of Spirit River No. 133', 1),
(8617, 'CA.01.4802021', 'CA', 'CA.01', 'Municipal District of Taber', 'Municipal District of Taber', 1),
(8618, 'CA.01.4807049', 'CA', 'CA.01', 'Municipal District of Wainwright No. 61', 'Municipal District of Wainwright No. 61', 1),
(8619, 'CA.01.4813028', 'CA', 'CA.01', 'Municipal District of Westlock No. 92', 'Municipal District of Westlock No. 92', 1),
(8620, 'CA.01.4803018', 'CA', 'CA.01', 'Municipal District of Willow Creek No. 26', 'Municipal District of Willow Creek No. 26', 1),
(8621, 'CA.08.3544', 'CA', 'CA.08', 'District Municipality of Muskoka', 'District Municipality of Muskoka', 1),
(8622, 'CA.08.3526', 'CA', 'CA.08', 'Regional Municipality of Niagara', 'Regional Municipality of Niagara', 1),
(8623, 'CA.08.3548', 'CA', 'CA.08', 'Nipissing District', 'Nipissing District', 1),
(8624, 'CA.01.4817026', 'CA', 'CA.01', 'Northern Sunrise County', 'Northern Sunrise County', 1),
(8625, 'CA.04.1309', 'CA', 'CA.04', 'Northumberland County', 'Northumberland County', 1),
(8626, 'CA.08.3514', 'CA', 'CA.08', 'Northumberland County', 'Northumberland County', 1),
(8627, 'CA.10.07', 'CA', 'CA.10', 'Outaouais', 'Outaouais', 1),
(8628, 'CA.08.3532', 'CA', 'CA.08', 'Oxford County', 'Oxford County', 1),
(8629, 'CA.01.4811034', 'CA', 'CA.01', 'Parkland County', 'Parkland County', 1),
(8630, 'CA.08.3549', 'CA', 'CA.08', 'Parry Sound District', 'Parry Sound District', 1),
(8631, 'CA.02.5955', 'CA', 'CA.02', 'Peace River Regional District', 'Peace River Regional District', 1),
(8632, 'CA.08.3521', 'CA', 'CA.08', 'Peel', 'Peel', 1),
(8633, 'CA.08.3531', 'CA', 'CA.08', 'Perth County', 'Perth County', 1),
(8634, 'CA.08.3515', 'CA', 'CA.08', 'Peterborough County', 'Peterborough County', 1),
(8635, 'CA.07.1212', 'CA', 'CA.07', 'Pictou County', 'Pictou County', 1),
(8636, 'CA.03.6105291', 'CA', 'CA.03', 'Piney', 'Piney', 1),
(8637, 'CA.03.6105529', 'CA', 'CA.03', 'Pipestone', 'Pipestone', 1),
(8638, 'CA.01.4808038', 'CA', 'CA.01', 'Ponoka County', 'Ponoka County', 1),
(8639, 'CA.03.6111530', 'CA', 'CA.03', 'Portage la Prairie', 'Portage la Prairie', 1),
(8640, 'CA.02.5927', 'CA', 'CA.02', 'Powell River Regional District', 'Powell River Regional District', 1),
(8641, 'CA.09.1103', 'CA', 'CA.09', 'Prince County', 'Prince County', 1),
(8642, 'CA.08.3513', 'CA', 'CA.08', 'Prince Edward County', 'Prince Edward County', 1),
(8643, 'CA.09.1102', 'CA', 'CA.09', 'Queens County', 'Queens County', 1),
(8644, 'CA.07.6115099', 'CA', 'CA.07', 'Queens County', 'Queens County', 1),
(8645, 'CA.04.1304', 'CA', 'CA.04', 'Queens County', 'Queens County', 1),
(8646, 'CA.08.3559', 'CA', 'CA.08', 'Rainy River District', 'Rainy River District', 1),
(8647, 'CA.01.4808001', 'CA', 'CA.01', 'Red Deer County', 'Red Deer County', 1),
(8648, 'CA.02.5923', 'CA', 'CA.02', 'Regional District of Alberni-Clayoquot', 'Regional District of Alberni-Clayoquot', 1),
(8649, 'CA.02.5951', 'CA', 'CA.02', 'Regional District of Bulkley-Nechako', 'Regional District of Bulkley-Nechako', 1),
(8650, 'CA.02.5903', 'CA', 'CA.02', 'Regional District of Central Kootenay', 'Regional District of Central Kootenay', 1),
(8651, 'CA.02.5935', 'CA', 'CA.02', 'Regional District of Central Okanagan', 'Regional District of Central Okanagan', 1),
(8652, 'CA.02.5901', 'CA', 'CA.02', 'Regional District of East Kootenay', 'Regional District of East Kootenay', 1),
(8653, 'CA.02.5953', 'CA', 'CA.02', 'Regional District of Fraser-Fort George', 'Regional District of Fraser-Fort George', 1),
(8654, 'CA.02.5949', 'CA', 'CA.02', 'Regional District of Kitimat-Stikine', 'Regional District of Kitimat-Stikine', 1),
(8655, 'CA.02.5905', 'CA', 'CA.02', 'Regional District of Kootenay-Boundary', 'Regional District of Kootenay-Boundary', 1),
(8656, 'CA.02.5943', 'CA', 'CA.02', 'Regional District of Mount Waddington', 'Regional District of Mount Waddington', 1),
(8657, 'CA.02.5921', 'CA', 'CA.02', 'Regional District of Nanaimo', 'Regional District of Nanaimo', 1),
(8658, 'CA.02.5937', 'CA', 'CA.02', 'Regional District of North Okanagan', 'Regional District of North Okanagan', 1),
(8659, 'CA.02.5907', 'CA', 'CA.02', 'Regional District of Okanagan-Similkameen', 'Regional District of Okanagan-Similkameen', 1),
(8660, 'CA.08.3547', 'CA', 'CA.08', 'Renfrew County', 'Renfrew County', 1),
(8661, 'CA.03.6121677', 'CA', 'CA.03', 'Reynolds', 'Reynolds', 1),
(8662, 'CA.07.1216', 'CA', 'CA.07', 'Richmond County', 'Richmond County', 1),
(8663, 'CA.03.6122576', 'CA', 'CA.03', 'Ritchot', 'Ritchot', 1),
(8664, 'CA.03.6126541', 'CA', 'CA.03', 'Rockwood', 'Rockwood', 1),
(8665, 'CA.03.6127181', 'CA', 'CA.03', 'Roland', 'Roland', 1),
(8666, 'CA.03.6127585', 'CA', 'CA.03', 'Rosedale', 'Rosedale', 1),
(8667, 'CA.01.4819059', 'CA', 'CA.01', 'Saddle Hills County', 'Saddle Hills County', 1),
(8668, 'CA.10.02', 'CA', 'CA.10', 'Saguenay/Lac-Saint-Jean', 'Saguenay/Lac-Saint-Jean', 1),
(8669, 'CA.04.1301', 'CA', 'CA.04', 'Saint John County', 'Saint John County', 1),
(8670, 'CA.07.6145888', 'CA', 'CA.07', 'Shelburne County', 'Shelburne County', 1),
(8671, 'CA.03.6147482', 'CA', 'CA.03', 'Sifton', 'Sifton', 1),
(8672, 'CA.08.3543', 'CA', 'CA.08', 'Simcoe County', 'Simcoe County', 1),
(8673, 'CA.02.5947', 'CA', 'CA.02', 'Skeena-Queen Charlotte Regional District', 'Skeena-Queen Charlotte Regional District', 1),
(8674, 'CA.01.4812022', 'CA', 'CA.01', 'Smoky Lake County', 'Smoky Lake County', 1),
(8675, 'CA.01.4804004', 'CA', 'CA.01', 'Special Area No. 2', 'Special Area No. 2', 1),
(8676, 'CA.01.4804012', 'CA', 'CA.01', 'Special Area No. 3', 'Special Area No. 3', 1),
(8677, 'CA.01.4804020', 'CA', 'CA.01', 'Special Area No. 4', 'Special Area No. 4', 1),
(8678, 'CA.01.4817095', 'CA', 'CA.01', 'Mackenzie County', 'Mackenzie County', 1),
(8679, 'CA.03.6154185', 'CA', 'CA.03', 'Springfield', 'Springfield', 1),
(8680, 'CA.02.5931', 'CA', 'CA.02', 'Squamish-Lillooet Regional District', 'Squamish-Lillooet Regional District', 1),
(8681, 'CA.03.6155131', 'CA', 'CA.03', 'St. Andrews', 'St. Andrews', 1),
(8682, 'CA.03.6155186', 'CA', 'CA.03', 'Stanley', 'Stanley', 1),
(8683, 'CA.01.4805031', 'CA', 'CA.01', 'Starland County', 'Starland County', 1),
(8684, 'CA.03.6155764', 'CA', 'CA.03', 'St. Clements', 'St. Clements', 1),
(8685, 'CA.03.6155865', 'CA', 'CA.03', 'Ste. Anne', 'Ste. Anne', 1),
(8686, 'CA.03.6156971', 'CA', 'CA.03', 'St. Laurent', 'St. Laurent', 1),
(8687, 'CA.01.4811052', 'CA', 'CA.01', 'Strathcona County', 'Strathcona County', 1),
(8688, 'CA.03.6158376', 'CA', 'CA.03', 'Stuartburn', 'Stuartburn', 1),
(8689, 'CA.01.4811059', 'CA', 'CA.01', 'Sturgeon County', 'Sturgeon County', 1),
(8690, 'CA.08.3552', 'CA', 'CA.08', 'Sudbury', 'Sudbury', 1),
(8691, 'CA.08.3553', 'CA', 'CA.08', 'Sudbury', 'Sudbury', 1),
(8692, 'CA.04.1303', 'CA', 'CA.04', 'Sunbury County', 'Sunbury County', 1),
(8693, 'CA.02.5929', 'CA', 'CA.02', 'Sunshine Coast Regional District', 'Sunshine Coast Regional District', 1),
(8694, 'CA.03.6165405', 'CA', 'CA.03', 'Thompson', 'Thompson', 1),
(8695, 'CA.02.5933', 'CA', 'CA.02', 'Thompson-Nicola Regional District', 'Thompson-Nicola Regional District', 1),
(8696, 'CA.08.3558', 'CA', 'CA.08', 'Thunder Bay District', 'Thunder Bay District', 1),
(8697, 'CA.08.3554', 'CA', 'CA.08', 'Timiskaming District', 'Timiskaming District', 1),
(8698, 'CA.08.3507', 'CA', 'CA.08', 'United Counties of Leeds and Grenville', 'United Counties of Leeds and Grenville', 1),
(8699, 'CA.08.3502', 'CA', 'CA.08', 'Comtés unis de Prescott et Russell', 'Comtes unis de Prescott et Russell', 1),
(8700, 'CA.08.3501', 'CA', 'CA.08', 'United Counties of Stormont, Dundas and Glengarry', 'United Counties of Stormont, Dundas and Glengarry', 1),
(8701, 'CA.07.1218', 'CA', 'CA.07', 'Victoria County', 'Victoria County', 1),
(8702, 'CA.03.6174040', 'CA', 'CA.03', 'Victoria', 'Victoria', 1),
(8703, 'CA.01.4805001', 'CA', 'CA.01', 'Vulcan County', 'Vulcan County', 1),
(8704, 'CA.08.3530', 'CA', 'CA.08', 'Regional Municipality of Waterloo', 'Regional Municipality of Waterloo', 1),
(8705, 'CA.08.3523', 'CA', 'CA.08', 'Wellington County', 'Wellington County', 1),
(8706, 'CA.04.1307', 'CA', 'CA.04', 'Westmorland County', 'Westmorland County', 1),
(8707, 'CA.03.6179507', 'CA', 'CA.03', 'West St. Paul', 'West St. Paul', 1),
(8708, 'CA.01.4805012', 'CA', 'CA.01', 'Wheatland County', 'Wheatland County', 1),
(8709, 'CA.03.6180469', 'CA', 'CA.03', 'Whitehead', 'Whitehead', 1),
(8710, 'CA.03.6180732', 'CA', 'CA.03', 'Whitemouth', 'Whitemouth', 1),
(8711, 'CA.01.4816037', 'CA', 'CA.01', 'Wood Buffalo', 'Wood Buffalo', 1),
(8712, 'CA.03.6184198', 'CA', 'CA.03', 'Woodlands', 'Woodlands', 1),
(8713, 'CA.01.4813029', 'CA', 'CA.01', 'Woodlands County', 'Woodlands County', 1),
(8714, 'CA.07.6185218', 'CA', 'CA.07', 'Yarmouth County', 'Yarmouth County', 1),
(8715, 'CA.01.4814003', 'CA', 'CA.01', 'Yellowhead County', 'Yellowhead County', 1),
(8716, 'CA.04.1310', 'CA', 'CA.04', 'York County', 'York County', 1),
(8717, 'CA.08.3519', 'CA', 'CA.08', 'York', 'York', 1),
(8718, 'CA.10.01', 'CA', 'CA.10', 'Bas-Saint-Laurent', 'Bas-Saint-Laurent', 1),
(8719, 'CA.10.03', 'CA', 'CA.10', 'Capitale-Nationale', 'Capitale-Nationale', 1),
(8720, 'CA.10.10', 'CA', 'CA.10', 'Nord-du-Québec', 'Nord-du-Quebec', 1),
(8721, 'CA.10.11', 'CA', 'CA.10', 'Gaspésie-Îles-de-la-Madeleine', 'Gaspesie-Iles-de-la-Madeleine', 1),
(8722, 'CA.10.12', 'CA', 'CA.10', 'Chaudière-Appalaches', 'Chaudiere-Appalaches', 1),
(8723, 'CA.04.1314', 'CA', 'CA.04', 'Restigouche', 'Restigouche', 1),
(8724, 'CA.08.3520', 'CA', 'CA.08', 'Toronto county', 'Toronto county', 1),
(8725, 'CA.10.17', 'CA', 'CA.10', 'Centre-du-Québec', 'Centre-du-Quebec', 1),
(8726, 'CA.08.3506', 'CA', 'CA.08', 'Ottawa', 'Ottawa', 1),
(8727, 'CA.02.5926', 'CA', 'CA.02', 'Comox Valley Regional District', 'Comox Valley Regional District', 1),
(8728, 'CA.02.5959', 'CA', 'CA.02', 'Northern Rockies Regional Municipality', 'Northern Rockies Regional Municipality', 1),
(8729, 'CA.02.5957', 'CA', 'CA.02', 'Stikine Region', 'Stikine Region', 1),
(8730, 'CA.02.5924', 'CA', 'CA.02', 'Strathcona Regional District', 'Strathcona Regional District', 1),
(8731, 'CA.04.1315', 'CA', 'CA.04', 'Gloucester County', 'Gloucester County', 1),
(8732, 'CA.04.1313', 'CA', 'CA.04', 'Madawaska County', 'Madawaska County', 1),
(8733, 'CA.04.1312', 'CA', 'CA.04', 'Victoria County', 'Victoria County', 1),
(8734, 'CA.03.11153049', 'CA', 'CA.03', 'Rural Municipality of Yellowhead', 'Rural Municipality of Yellowhead', 1),
(8735, 'CA.01.4812037', 'CA', 'CA.01', 'Lac la Biche County', 'Lac la Biche County', 1),
(8736, 'CA.01.4815007', 'CA', 'CA.01', 'Crowsnest Pass', 'Crowsnest Pass', 1),
(8737, 'CA.01.4806016', 'CA', 'CA.01', 'Calgary', 'Calgary', 1),
(8738, 'CA.01.4811061', 'CA', 'CA.01', 'Edmonton', 'Edmonton', 1),
(8739, 'CA.01.4801006', 'CA', 'CA.01', 'Medicine Hat', 'Medicine Hat', 1),
(8740, 'CA.01.4802012', 'CA', 'CA.01', 'Lethbridge', 'Lethbridge', 1),
(8741, 'CA.01.4811007', 'CA', 'CA.01', 'Norris Beach', 'Norris Beach', 1),
(8742, 'CA.01.4811062', 'CA', 'CA.01', 'St. Albert', 'St. Albert', 1),
(8743, 'CA.01.4803021', 'CA', 'CA.01', 'Granum', 'Granum', 1),
(8744, 'CA.01.4813031', 'CA', 'CA.01', 'Westlock', 'Westlock', 1),
(8745, 'CA.01.4814024', 'CA', 'CA.01', 'Edson', 'Edson', 1),
(8746, 'CA.01.4813046', 'CA', 'CA.01', 'Boyle', 'Boyle', 1),
(8747, 'CA.01.4806021', 'CA', 'CA.01', 'Airdrie', 'Airdrie', 1),
(8748, 'CA.01.4802019', 'CA', 'CA.01', 'Coaldale', 'Coaldale', 1),
(8749, 'CA.01.4813014', 'CA', 'CA.01', 'Onoway', 'Onoway', 1),
(8750, 'CA.01.4806022', 'CA', 'CA.01', 'Irricana', 'Irricana', 1),
(8751, 'CA.01.4806026', 'CA', 'CA.01', 'Crossfield', 'Crossfield', 1),
(8752, 'CA.01.4812016', 'CA', 'CA.01', 'Elk Point', 'Elk Point', 1),
(8753, 'CA.01.4810039', 'CA', 'CA.01', 'Lloydminster (Part)', 'Lloydminster (Part)', 1),
(8754, 'CA.01.4807004', 'CA', 'CA.01', 'Czar', 'Czar', 1),
(8755, 'CA.01.4810011', 'CA', 'CA.01', 'Camrose', 'Camrose', 1),
(8756, 'CA.01.4808031', 'CA', 'CA.01', 'Lacombe', 'Lacombe', 1),
(8757, 'CA.01.4811016', 'CA', 'CA.01', 'Leduc', 'Leduc', 1),
(8758, 'CA.01.4811049', 'CA', 'CA.01', 'Spruce Grove', 'Spruce Grove', 1),
(8759, 'CA.01.4802034', 'CA', 'CA.01', 'Brooks', 'Brooks', 1),
(8760, 'CA.01.4806034', 'CA', 'CA.01', 'Olds', 'Olds', 1),
(8761, 'CA.01.4812018', 'CA', 'CA.01', 'St. Paul', 'St. Paul', 1),
(8762, 'CA.01.4810022', 'CA', 'CA.01', 'Viking', 'Viking', 1),
(8763, 'CA.01.4811056', 'CA', 'CA.01', 'Fort Saskatchewan', 'Fort Saskatchewan', 1),
(8764, 'CA.01.4819012', 'CA', 'CA.01', 'Grande Prairie', 'Grande Prairie', 1),
(8765, 'CA.01.4802029', 'CA', 'CA.01', 'Vauxhall', 'Vauxhall', 1),
(8766, 'CA.01.4808011', 'CA', 'CA.01', 'Red Deer', 'Red Deer', 1),
(8767, 'CA.01.4811011', 'CA', 'CA.01', 'Millet', 'Millet', 1),
(8768, 'CA.01.4806017', 'CA', 'CA.01', 'Chestermere', 'Chestermere', 1),
(8769, 'CA.01.4811002', 'CA', 'CA.01', 'Wetaskiwin', 'Wetaskiwin', 1),
(8770, 'CA.01.4811013', 'CA', 'CA.01', 'Beaumont', 'Beaumont', 1),
(8771, 'CA.01.4805049', 'CA', 'CA.01', 'Trochu', 'Trochu', 1),
(8772, 'CA.01.4803016', 'CA', 'CA.01', 'Cowley', 'Cowley', 1),
(8773, 'CA.01.4812002', 'CA', 'CA.01', 'Cold Lake', 'Cold Lake', 1),
(8774, 'CA.01.4813002', 'CA', 'CA.01', 'Mayerthorpe', 'Mayerthorpe', 1),
(8775, 'CA.01.4817024', 'CA', 'CA.01', 'Swan Hills', 'Swan Hills', 1),
(8776, 'CA.01.4805048', 'CA', 'CA.01', 'Three Hills', 'Three Hills', 1),
(8777, 'CA.01.4810028', 'CA', 'CA.01', 'Vegreville', 'Vegreville', 1),
(8778, 'CA.01.4807012', 'CA', 'CA.01', 'Coronation', 'Coronation', 1),
(8779, 'CA.01.4811065', 'CA', 'CA.01', 'Redwater', 'Redwater', 1),
(8780, 'CA.01.4811066', 'CA', 'CA.01', 'Bon Accord', 'Bon Accord', 1),
(8781, 'CA.01.4810052', 'CA', 'CA.01', 'Two Hills', 'Two Hills', 1),
(8782, 'CA.01.4819046', 'CA', 'CA.01', 'Falher', 'Falher', 1),
(8783, 'CA.01.4802018', 'CA', 'CA.01', 'Picture Butte', 'Picture Butte', 1),
(8784, 'CA.01.4815023', 'CA', 'CA.01', 'Canmore', 'Canmore', 1),
(8785, 'CA.01.4811048', 'CA', 'CA.01', 'Stony Plain', 'Stony Plain', 1),
(8786, 'CA.01.4803026', 'CA', 'CA.01', 'Nanton', 'Nanton', 1),
(8787, 'CA.01.4808012', 'CA', 'CA.01', 'Sylvan Lake', 'Sylvan Lake', 1),
(8788, 'CA.01.4808024', 'CA', 'CA.01', 'Eckville', 'Eckville', 1),
(8789, 'CA.01.4808026', 'CA', 'CA.01', 'Bentley', 'Bentley', 1),
(8790, 'CA.01.4808029', 'CA', 'CA.01', 'Blackfalds', 'Blackfalds', 1),
(8791, 'CA.01.4814019', 'CA', 'CA.01', 'Hinton', 'Hinton', 1),
(8792, 'CA.01.4803024', 'CA', 'CA.01', 'Stavely', 'Stavely', 1),
(8793, 'CA.01.4806032', 'CA', 'CA.01', 'Didsbury', 'Didsbury', 1),
(8794, 'CA.01.4813015', 'CA', 'CA.01', 'South View', 'South View', 1),
(8795, 'CA.01.4803019', 'CA', 'CA.01', 'Fort Macleod', 'Fort Macleod', 1),
(8796, 'CA.01.4803022', 'CA', 'CA.01', 'Claresholm', 'Claresholm', 1),
(8797, 'CA.01.4806029', 'CA', 'CA.01', 'Carstairs', 'Carstairs', 1),
(8798, 'CA.01.4811064', 'CA', 'CA.01', 'Gibbons', 'Gibbons', 1),
(8799, 'CA.01.4807026', 'CA', 'CA.01', 'Stettler', 'Stettler', 1),
(8800, 'CA.01.4804014', 'CA', 'CA.01', 'Oyen', 'Oyen', 1),
(8801, 'CA.01.4801014', 'CA', 'CA.01', 'Bow Island', 'Bow Island', 1),
(8802, 'CA.01.4805018', 'CA', 'CA.01', 'Strathmore', 'Strathmore', 1),
(8803, 'CA.01.4813019', 'CA', 'CA.01', 'Barrhead', 'Barrhead', 1),
(8804, 'CA.01.4813033', 'CA', 'CA.01', 'Larkspur', 'Larkspur', 1),
(8805, 'CA.01.4801018', 'CA', 'CA.01', 'Redcliff', 'Redcliff', 1),
(8806, 'CA.01.4802013', 'CA', 'CA.01', 'Coalhurst', 'Coalhurst', 1),
(8807, 'CA.01.4810019', 'CA', 'CA.01', 'Ryley', 'Ryley', 1),
(8808, 'CA.01.4810018', 'CA', 'CA.01', 'Tofield', 'Tofield', 1),
(8809, 'CA.01.4819009', 'CA', 'CA.01', 'Beaverlodge', 'Beaverlodge', 1),
(8810, 'CA.01.4806019', 'CA', 'CA.01', 'Cochrane', 'Cochrane', 1),
(8811, 'CA.01.4805034', 'CA', 'CA.01', 'Delia', 'Delia', 1),
(8812, 'CA.01.4805006', 'CA', 'CA.01', 'Vulcan', 'Vulcan', 1),
(8813, 'CA.01.4807002', 'CA', 'CA.01', 'Provost', 'Provost', 1),
(8814, 'CA.01.4805036', 'CA', 'CA.01', 'Munson', 'Munson', 1),
(8815, 'CA.01.4810066', 'CA', 'CA.01', 'Bruderheim', 'Bruderheim', 1),
(8816, 'CA.01.4802036', 'CA', 'CA.01', 'Duchess', 'Duchess', 1),
(8817, 'CA.01.4810056', 'CA', 'CA.01', 'Willingdon', 'Willingdon', 1),
(8818, 'CA.01.4807014', 'CA', 'CA.01', 'Castor', 'Castor', 1),
(8819, 'CA.01.4819011', 'CA', 'CA.01', 'Wembley', 'Wembley', 1),
(8820, 'CA.01.4805026', 'CA', 'CA.01', 'Drumheller', 'Drumheller', 1),
(8821, 'CA.01.4812029', 'CA', 'CA.01', 'Smoky Lake', 'Smoky Lake', 1),
(8822, 'CA.01.4810002', 'CA', 'CA.01', 'Bashaw', 'Bashaw', 1),
(8823, 'CA.01.4805038', 'CA', 'CA.01', 'Morrin', 'Morrin', 1),
(8824, 'CA.01.4811018', 'CA', 'CA.01', 'Devon', 'Devon', 1),
(8825, 'CA.01.4811019', 'CA', 'CA.01', 'Calmar', 'Calmar', 1),
(8826, 'CA.01.4802004', 'CA', 'CA.01', 'Milk River', 'Milk River', 1),
(8827, 'CA.01.4811031', 'CA', 'CA.01', 'Drayton Valley', 'Drayton Valley', 1),
(8828, 'CA.01.4810042', 'CA', 'CA.01', 'Vermilion', 'Vermilion', 1),
(8829, 'CA.01.4807016', 'CA', 'CA.01', 'Halkirk', 'Halkirk', 1),
(8830, 'CA.01.4808044', 'CA', 'CA.01', 'Rimbey', 'Rimbey', 1),
(8831, 'CA.01.4813030', 'CA', 'CA.01', 'Whitecourt', 'Whitecourt', 1),
(8832, 'CA.01.4802008', 'CA', 'CA.01', 'Raymond', 'Raymond', 1),
(8833, 'CA.01.4818018', 'CA', 'CA.01', 'Valleyview', 'Valleyview', 1),
(8834, 'CA.01.4810061', 'CA', 'CA.01', 'Mundare', 'Mundare', 1),
(8835, 'CA.01.4810064', 'CA', 'CA.01', 'Lamont', 'Lamont', 1),
(8836, 'CA.01.4808042', 'CA', 'CA.01', 'Parkland Beach', 'Parkland Beach', 1),
(8837, 'CA.01.4802022', 'CA', 'CA.01', 'Taber', 'Taber', 1),
(8838, 'CA.01.4808039', 'CA', 'CA.01', 'Ponoka', 'Ponoka', 1),
(8839, 'CA.01.4807021', 'CA', 'CA.01', 'Big Valley', 'Big Valley', 1),
(8840, 'CA.01.4811068', 'CA', 'CA.01', 'Morinville', 'Morinville', 1),
(8841, 'CA.01.4811069', 'CA', 'CA.01', 'Legal', 'Legal', 1),
(8842, 'CA.01.4817021', 'CA', 'CA.01', 'High Prairie', 'High Prairie', 1),
(8843, 'CA.01.4806031', 'CA', 'CA.01', 'Cremona', 'Cremona', 1),
(8844, 'CA.01.4815035', 'CA', 'CA.01', 'Banff', 'Banff', 1),
(8845, 'CA.01.4818002', 'CA', 'CA.01', 'Fox Creek', 'Fox Creek', 1),
(8846, 'CA.01.4818005', 'CA', 'CA.01', 'Grande Cache', 'Grande Cache', 1),
(8847, 'CA.01.4813048', 'CA', 'CA.01', 'Athabasca', 'Athabasca', 1),
(8848, 'CA.01.4817029', 'CA', 'CA.01', 'Slave Lake', 'Slave Lake', 1),
(8849, 'CA.01.4817078', 'CA', 'CA.01', 'Manning', 'Manning', 1),
(8850, 'CA.01.4817093', 'CA', 'CA.01', 'High Level', 'High Level', 1),
(8851, 'CA.01.4817097', 'CA', 'CA.01', 'Rainbow Lake', 'Rainbow Lake', 1),
(8852, 'CA.01.4819014', 'CA', 'CA.01', 'Sexsmith', 'Sexsmith', 1),
(8853, 'CA.01.4819068', 'CA', 'CA.01', 'Fairview', 'Fairview', 1),
(8854, 'CA.01.4819074', 'CA', 'CA.01', 'Grimshaw', 'Grimshaw', 1),
(8855, 'CA.01.4808006', 'CA', 'CA.01', 'Bowden', 'Bowden', 1),
(8856, 'CA.01.4804011', 'CA', 'CA.01', 'Hanna', 'Hanna', 1),
(8857, 'CA.01.4811024', 'CA', 'CA.01', 'Warburg', 'Warburg', 1),
(8858, 'CA.01.4806036', 'CA', 'CA.01', 'Sundre', 'Sundre', 1),
(8859, 'CA.01.4819038', 'CA', 'CA.01', 'Peace River', 'Peace River', 1),
(8860, 'CA.01.4819042', 'CA', 'CA.01', 'McLennan', 'McLennan', 1),
(8861, 'CA.01.4819058', 'CA', 'CA.01', 'Spirit River', 'Spirit River', 1),
(8862, 'CA.01.4805011', 'CA', 'CA.01', 'Arrowwood', 'Arrowwood', 1),
(8863, 'CA.01.4808008', 'CA', 'CA.01', 'Innisfail', 'Innisfail', 1),
(8864, 'CA.01.4808009', 'CA', 'CA.01', 'Penhold', 'Penhold', 1),
(8865, 'CA.01.4806006', 'CA', 'CA.01', 'High River', 'High River', 1),
(8866, 'CA.01.4812009', 'CA', 'CA.01', 'Bonnyville', 'Bonnyville', 1),
(8867, 'CA.01.4803004', 'CA', 'CA.01', 'Cardston', 'Cardston', 1),
(8868, 'CA.01.4803014', 'CA', 'CA.01', 'Pincher Creek', 'Pincher Creek', 1),
(8869, 'CA.01.4802039', 'CA', 'CA.01', 'Bassano', 'Bassano', 1),
(8870, 'CA.01.4803002', 'CA', 'CA.01', 'Magrath', 'Magrath', 1),
(8871, 'CA.01.4806009', 'CA', 'CA.01', 'Turner Valley', 'Turner Valley', 1),
(8872, 'CA.01.4806011', 'CA', 'CA.01', 'Black Diamond', 'Black Diamond', 1),
(8873, 'CA.01.4808028', 'CA', 'CA.01', 'Gull Lake', 'Gull Lake', 1),
(8874, 'CA.01.4813011', 'CA', 'CA.01', 'Sunset Point', 'Sunset Point', 1),
(8875, 'CA.01.4806012', 'CA', 'CA.01', 'Okotoks', 'Okotoks', 1),
(8876, 'CA.01.4807044', 'CA', 'CA.01', 'Sedgewick', 'Sedgewick', 1),
(8877, 'CA.01.4813003', 'CA', 'CA.01', 'Nakamun Park', 'Nakamun Park', 1),
(8878, 'CA.01.4813010', 'CA', 'CA.01', 'Silver Sands', 'Silver Sands', 1),
(8879, 'CA.01.4812011', 'CA', 'CA.01', 'Bonnyville Beach', 'Bonnyville Beach', 1),
(8880, 'CA.01.4813057', 'CA', 'CA.01', 'West Baptiste', 'West Baptiste', 1),
(8881, 'CA.01.4809015', 'CA', 'CA.01', 'Rocky Mountain House', 'Rocky Mountain House', 1),
(8882, 'CA.01.4807039', 'CA', 'CA.01', 'Daysland', 'Daysland', 1),
(8883, 'CA.01.4807042', 'CA', 'CA.01', 'Killam', 'Killam', 1),
(8884, 'CA.01.4811003', 'CA', 'CA.01', 'Argentia Beach', 'Argentia Beach', 1),
(8885, 'CA.01.4807048', 'CA', 'CA.01', 'Hardisty', 'Hardisty', 1),
(8886, 'CA.01.4807054', 'CA', 'CA.01', 'Wainwright', 'Wainwright', 1),
(8887, 'CA.01.4813008', 'CA', 'CA.01', 'Ross Haven', 'Ross Haven', 1),
(8888, 'CA.01.4813061', 'CA', 'CA.01', 'Whispering Hills', 'Whispering Hills', 1),
(8889, 'CA.01.4813009', 'CA', 'CA.01', 'Castle Island', 'Castle Island', 1),
(8890, 'CA.01.4808027', 'CA', 'CA.01', 'Sunbreaker Cove', 'Sunbreaker Cove', 1),
(8891, 'CA.01.4807028', 'CA', 'CA.01', 'Rochon Sands', 'Rochon Sands', 1),
(8892, 'CA.01.4811008', 'CA', 'CA.01', 'Ma-Me-O Beach', 'Ma-Me-O Beach', 1),
(8893, 'CA.01.4811009', 'CA', 'CA.01', 'Silver Beach', 'Silver Beach', 1),
(8894, 'CA.01.4813013', 'CA', 'CA.01', 'Birch Cove', 'Birch Cove', 1),
(8895, 'CA.01.4812020', 'CA', 'CA.01', 'Horseshoe Bay', 'Horseshoe Bay', 1),
(8896, 'CA.01.4811038', 'CA', 'CA.01', 'Seba Beach', 'Seba Beach', 1),
(8897, 'CA.01.4811039', 'CA', 'CA.01', 'Betula Beach', 'Betula Beach', 1),
(8898, 'CA.01.4802038', 'CA', 'CA.01', 'Rosemary', 'Rosemary', 1),
(8899, 'CA.01.4811041', 'CA', 'CA.01', 'Point Alison', 'Point Alison', 1),
(8900, 'CA.01.4807027', 'CA', 'CA.01', 'White Sands', 'White Sands', 1),
(8901, 'CA.01.4815027', 'CA', 'CA.01', 'Ghost Lake', 'Ghost Lake', 1),
(8902, 'CA.01.4808013', 'CA', 'CA.01', 'Norglenwold', 'Norglenwold', 1),
(8903, 'CA.01.4808023', 'CA', 'CA.01', 'Birchcliff', 'Birchcliff', 1),
(8904, 'CA.01.4808025', 'CA', 'CA.01', 'Half Moon Bay', 'Half Moon Bay', 1),
(8905, 'CA.01.4813055', 'CA', 'CA.01', 'South Baptiste', 'South Baptiste', 1),
(8906, 'CA.01.4813007', 'CA', 'CA.01', 'Yellowstone', 'Yellowstone', 1),
(8907, 'CA.01.4813005', 'CA', 'CA.01', 'Val Quentin', 'Val Quentin', 1),
(8908, 'CA.01.4813006', 'CA', 'CA.01', 'West Cove', 'West Cove', 1),
(8909, 'CA.01.4811042', 'CA', 'CA.01', 'Lakeview', 'Lakeview', 1),
(8910, 'CA.01.4802014', 'CA', 'CA.01', 'Nobleford', 'Nobleford', 1),
(8911, 'CA.01.4811044', 'CA', 'CA.01', 'Kapasiwin', 'Kapasiwin', 1),
(8912, 'CA.01.4813016', 'CA', 'CA.01', 'Sandy Beach', 'Sandy Beach', 1),
(8913, 'CA.01.4811023', 'CA', 'CA.01', 'Golden Days', 'Golden Days', 1),
(8914, 'CA.01.4805002', 'CA', 'CA.01', 'Carmangay', 'Carmangay', 1),
(8915, 'CA.01.4813017', 'CA', 'CA.01', 'Sunrise Beach', 'Sunrise Beach', 1),
(8916, 'CA.01.4811020', 'CA', 'CA.01', 'Sundance Beach', 'Sundance Beach', 1),
(8917, 'CA.01.4813045', 'CA', 'CA.01', 'Mewatha Beach', 'Mewatha Beach', 1),
(8918, 'CA.01.4811005', 'CA', 'CA.01', 'Poplar Bay', 'Poplar Bay', 1),
(8919, 'CA.01.4811006', 'CA', 'CA.01', 'Crystal Springs', 'Crystal Springs', 1),
(8920, 'CA.01.4811022', 'CA', 'CA.01', 'Itaska Beach', 'Itaska Beach', 1),
(8921, 'CA.01.4815030', 'CA', 'CA.01', 'Waiparous', 'Waiparous', 1),
(8922, 'CA.01.4802002', 'CA', 'CA.01', 'Coutts', 'Coutts', 1),
(8923, 'CA.01.4813047', 'CA', 'CA.01', 'Sunset Beach', 'Sunset Beach', 1),
(8924, 'CA.01.4813049', 'CA', 'CA.01', 'Island Lake', 'Island Lake', 1),
(8925, 'CA.01.4813051', 'CA', 'CA.01', 'Island Lake South', 'Island Lake South', 1),
(8926, 'CA.01.4813053', 'CA', 'CA.01', 'Bondiss', 'Bondiss', 1),
(8927, 'CA.01.4807029', 'CA', 'CA.01', 'Donalda', 'Donalda', 1),
(8928, 'CA.01.4808005', 'CA', 'CA.01', 'Jarvis Bay', 'Jarvis Bay', 1),
(8929, 'CA.01.4812013', 'CA', 'CA.01', 'Pelican Narrows', 'Pelican Narrows', 1),
(8930, 'CA.01.4811004', 'CA', 'CA.01', 'Grandview', 'Grandview', 1),
(8931, 'CA.01.4809005', 'CA', 'CA.01', 'Burnstick Lake', 'Burnstick Lake', 1),
(8932, 'CA.01.4805022', 'CA', 'CA.01', 'Rockyford', 'Rockyford', 1),
(8933, 'CA.01.4805042', 'CA', 'CA.01', 'Carbon', 'Carbon', 1),
(8934, 'CA.01.4805044', 'CA', 'CA.01', 'Acme', 'Acme', 1),
(8935, 'CA.01.4805046', 'CA', 'CA.01', 'Linden', 'Linden', 1),
(8936, 'CA.01.4807006', 'CA', 'CA.01', 'Hughenden', 'Hughenden', 1),
(8937, 'CA.01.4812024', 'CA', 'CA.01', 'Vilna', 'Vilna', 1),
(8938, 'CA.01.4812026', 'CA', 'CA.01', 'Waskatenau', 'Waskatenau', 1),
(8939, 'CA.01.4810051', 'CA', 'CA.01', 'Myrnam', 'Myrnam', 1),
(8940, 'CA.01.4810009', 'CA', 'CA.01', 'Bawlf', 'Bawlf', 1),
(8941, 'CA.01.4802016', 'CA', 'CA.01', 'Barons', 'Barons', 1),
(8942, 'CA.01.4807046', 'CA', 'CA.01', 'Lougheed', 'Lougheed', 1),
(8943, 'CA.01.4805019', 'CA', 'CA.01', 'Hussar', 'Hussar', 1),
(8944, 'CA.01.4813012', 'CA', 'CA.01', 'Alberta Beach', 'Alberta Beach', 1),
(8945, 'CA.01.4806024', 'CA', 'CA.01', 'Beiseker', 'Beiseker', 1),
(8946, 'CA.01.4810031', 'CA', 'CA.01', 'Innisfree', 'Innisfree', 1),
(8947, 'CA.01.4812012', 'CA', 'CA.01', 'Glendon', 'Glendon', 1),
(8948, 'CA.01.4811045', 'CA', 'CA.01', 'Wabamun', 'Wabamun', 1),
(8949, 'CA.01.4807008', 'CA', 'CA.01', 'Amisk', 'Amisk', 1),
(8950, 'CA.01.4807032', 'CA', 'CA.01', 'Alliance', 'Alliance', 1),
(8951, 'CA.01.4801009', 'CA', 'CA.01', 'Foremost', 'Foremost', 1),
(8952, 'CA.01.4810034', 'CA', 'CA.01', 'Mannville', 'Mannville', 1),
(8953, 'CA.01.4810038', 'CA', 'CA.01', 'Paradise Valley', 'Paradise Valley', 1),
(8954, 'CA.01.4802009', 'CA', 'CA.01', 'Stirling', 'Stirling', 1),
(8955, 'CA.01.4804016', 'CA', 'CA.01', 'Cereal', 'Cereal', 1),
(8956, 'CA.01.4804019', 'CA', 'CA.01', 'Youngstown', 'Youngstown', 1),
(8957, 'CA.01.4804021', 'CA', 'CA.01', 'Veteran', 'Veteran', 1),
(8958, 'CA.01.4804022', 'CA', 'CA.01', 'Consort', 'Consort', 1),
(8959, 'CA.01.4805004', 'CA', 'CA.01', 'Champion', 'Champion', 1),
(8960, 'CA.01.4805021', 'CA', 'CA.01', 'Standard', 'Standard', 1),
(8961, 'CA.01.4805008', 'CA', 'CA.01', 'Lomond', 'Lomond', 1),
(8962, 'CA.01.4805009', 'CA', 'CA.01', 'Milo', 'Milo', 1),
(8963, 'CA.01.4807022', 'CA', 'CA.01', 'Gadsby', 'Gadsby', 1),
(8964, 'CA.01.4807024', 'CA', 'CA.01', 'Botha', 'Botha', 1),
(8965, 'CA.01.4810003', 'CA', 'CA.01', 'Rosalind', 'Rosalind', 1),
(8966, 'CA.01.4810004', 'CA', 'CA.01', 'Ferintosh', 'Ferintosh', 1),
(8967, 'CA.01.4810006', 'CA', 'CA.01', 'Edberg', 'Edberg', 1),
(8968, 'CA.01.4810012', 'CA', 'CA.01', 'Bittern Lake', 'Bittern Lake', 1),
(8969, 'CA.01.4810014', 'CA', 'CA.01', 'Hay Lakes', 'Hay Lakes', 1),
(8970, 'CA.01.4811026', 'CA', 'CA.01', 'Breton', 'Breton', 1),
(8971, 'CA.01.4802006', 'CA', 'CA.01', 'Warner', 'Warner', 1),
(8972, 'CA.01.4811021', 'CA', 'CA.01', 'Thorsby', 'Thorsby', 1),
(8973, 'CA.01.4808032', 'CA', 'CA.01', 'Clive', 'Clive', 1),
(8974, 'CA.01.4802023', 'CA', 'CA.01', 'Barnwell', 'Barnwell', 1),
(8975, 'CA.01.4808034', 'CA', 'CA.01', 'Alix', 'Alix', 1),
(8976, 'CA.01.4810046', 'CA', 'CA.01', 'Dewberry', 'Dewberry', 1),
(8977, 'CA.01.4810021', 'CA', 'CA.01', 'Holden', 'Holden', 1),
(8978, 'CA.01.4810041', 'CA', 'CA.01', 'Kitscoty', 'Kitscoty', 1),
(8979, 'CA.01.4810044', 'CA', 'CA.01', 'Marwayne', 'Marwayne', 1),
(8980, 'CA.01.4811046', 'CA', 'CA.01', 'Spring Lake', 'Spring Lake', 1),
(8981, 'CA.01.4810059', 'CA', 'CA.01', 'Andrew', 'Andrew', 1),
(8982, 'CA.01.4810062', 'CA', 'CA.01', 'Chipman', 'Chipman', 1),
(8983, 'CA.01.4813032', 'CA', 'CA.01', 'Clyde', 'Clyde', 1),
(8984, 'CA.01.4819048', 'CA', 'CA.01', 'Girouxville', 'Girouxville', 1),
(8985, 'CA.01.4819072', 'CA', 'CA.01', 'Berwyn', 'Berwyn', 1),
(8986, 'CA.01.4819008', 'CA', 'CA.01', 'Hythe', 'Hythe', 1),
(8987, 'CA.01.4819044', 'CA', 'CA.01', 'Donnelly', 'Donnelly', 1),
(8988, 'CA.01.4819056', 'CA', 'CA.01', 'Rycroft', 'Rycroft', 1),
(8989, 'CA.01.4808002', 'CA', 'CA.01', 'Elnora', 'Elnora', 1),
(8990, 'CA.01.4808004', 'CA', 'CA.01', 'Delburne', 'Delburne', 1),
(8991, 'CA.01.4804006', 'CA', 'CA.01', 'Empress', 'Empress', 1),
(8992, 'CA.01.4817039', 'CA', 'CA.01', 'Nampa', 'Nampa', 1),
(8993, 'CA.01.4817064', 'CA', 'CA.01', 'Hines Creek', 'Hines Creek', 1),
(8994, 'CA.01.4806008', 'CA', 'CA.01', 'Longview', 'Longview', 1),
(8995, 'CA.01.4803006', 'CA', 'CA.01', 'Glenwood', 'Glenwood', 1),
(8996, 'CA.01.4803008', 'CA', 'CA.01', 'Hill Spring', 'Hill Spring', 1),
(8997, 'CA.01.4809010', 'CA', 'CA.01', 'Caroline', 'Caroline', 1),
(8998, 'CA.01.4807036', 'CA', 'CA.01', 'Forestburg', 'Forestburg', 1),
(8999, 'CA.01.4807038', 'CA', 'CA.01', 'Heisler', 'Heisler', 1),
(9000, 'CA.01.4807051', 'CA', 'CA.01', 'Chauvin', 'Chauvin', 1),
(9001, 'CA.01.4807052', 'CA', 'CA.01', 'Edgerton', 'Edgerton', 1),
(9002, 'CA.01.4807056', 'CA', 'CA.01', 'Irma', 'Irma', 1),
(9003, 'CA.01.4812038', 'CA', 'CA.01', 'Improvement District No. 349', 'Improvement District No. 349', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ad_subscriptions`
--

CREATE TABLE `ad_subscriptions` (
  `sub_id` int UNSIGNED NOT NULL,
  `sub_title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sub_term` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'MONTHLY',
  `sub_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `sub_image` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `group_id` smallint DEFAULT NULL,
  `pay_mode` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `recommended` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `discount_badge` varchar(25) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_testimonials`
--

CREATE TABLE `ad_testimonials` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `designation` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_testimonials`
--

INSERT INTO `ad_testimonials` (`id`, `name`, `designation`, `content`, `image`) VALUES
(1, 'Tony Stark', 'Social Marketing', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla paria tur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', NULL),
(2, 'Steve Roger', 'Content Writer', 'Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e', NULL),
(3, 'Natasha', 'Designer', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commo do consequat. Elitsed do eiusmod tempor incididunt ut labore et dolore magna aliqua', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_time_zones`
--

CREATE TABLE `ad_time_zones` (
  `id` int UNSIGNED NOT NULL,
  `country_code` varchar(2) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `time_zone_id` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `gmt` float DEFAULT NULL,
  `dst` float DEFAULT NULL,
  `raw` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_time_zones`
--

INSERT INTO `ad_time_zones` (`id`, `country_code`, `time_zone_id`, `gmt`, `dst`, `raw`) VALUES
(1, 'AD', 'Europe/Andorra', 1, 2, 1),
(2, 'AE', 'Asia/Dubai', 4, 4, 4),
(3, 'AF', 'Asia/Kabul', 4.5, 4.5, 4.5),
(4, 'AG', 'America/Antigua', -4, -4, -4),
(5, 'AI', 'America/Anguilla', -4, -4, -4),
(6, 'AL', 'Europe/Tirane', 1, 2, 1),
(7, 'AM', 'Asia/Yerevan', 4, 4, 4),
(8, 'AO', 'Africa/Luanda', 1, 1, 1),
(9, 'AQ', 'Antarctica/Casey', 8, 8, 8),
(10, 'AR', 'America/Argentina/Buenos_Aires', -3, -3, -3),
(11, 'AS', 'Pacific/Pago_Pago', -11, -11, -11),
(12, 'AT', 'Europe/Vienna', 1, 2, 1),
(13, 'AU', 'Antarctica/Macquarie', 11, 11, 11),
(14, 'AW', 'America/Aruba', -4, -4, -4),
(15, 'AX', 'Europe/Mariehamn', 2, 3, 2),
(16, 'AZ', 'Asia/Baku', 4, 5, 4),
(17, 'BA', 'Europe/Sarajevo', 1, 2, 1),
(18, 'BB', 'America/Barbados', -4, -4, -4),
(19, 'BD', 'Asia/Dhaka', 6, 6, 6),
(20, 'BE', 'Europe/Brussels', 1, 2, 1),
(21, 'BF', 'Africa/Ouagadougou', 0, 0, 0),
(22, 'BG', 'Europe/Sofia', 2, 3, 2),
(23, 'BH', 'Asia/Bahrain', 3, 3, 3),
(24, 'BI', 'Africa/Bujumbura', 2, 2, 2),
(25, 'BJ', 'Africa/Porto-Novo', 1, 1, 1),
(26, 'BL', 'America/St_Barthelemy', -4, -4, -4),
(27, 'BM', 'Atlantic/Bermuda', -4, -3, -4),
(28, 'BN', 'Asia/Brunei', 8, 8, 8),
(29, 'BO', 'America/La_Paz', -4, -4, -4),
(30, 'BQ', 'America/Kralendijk', -4, -4, -4),
(31, 'BR', 'America/Araguaina', -3, -3, -3),
(32, 'BS', 'America/Nassau', -5, -4, -5),
(33, 'BT', 'Asia/Thimphu', 6, 6, 6),
(34, 'BW', 'Africa/Gaborone', 2, 2, 2),
(35, 'BY', 'Europe/Minsk', 3, 3, 3),
(36, 'BZ', 'America/Belize', -6, -6, -6),
(37, 'CA', 'America/Atikokan', -5, -5, -5),
(38, 'CC', 'Indian/Cocos', 6.5, 6.5, 6.5),
(39, 'CD', 'Africa/Kinshasa', 1, 1, 1),
(40, 'CF', 'Africa/Bangui', 1, 1, 1),
(41, 'CG', 'Africa/Brazzaville', 1, 1, 1),
(42, 'CH', 'Europe/Zurich', 1, 2, 1),
(43, 'CI', 'Africa/Abidjan', 0, 0, 0),
(44, 'CK', 'Pacific/Rarotonga', -10, -10, -10),
(45, 'CL', 'America/Santiago', -3, -3, -3),
(46, 'CM', 'Africa/Douala', 1, 1, 1),
(47, 'CN', 'Asia/Shanghai', 8, 8, 8),
(48, 'CO', 'America/Bogota', -5, -5, -5),
(49, 'CR', 'America/Costa_Rica', -6, -6, -6),
(50, 'CU', 'America/Havana', -5, -4, -5),
(51, 'CV', 'Atlantic/Cape_Verde', -1, -1, -1),
(52, 'CW', 'America/Curacao', -4, -4, -4),
(53, 'CX', 'Indian/Christmas', 7, 7, 7),
(54, 'CY', 'Asia/Nicosia', 2, 3, 2),
(55, 'CZ', 'Europe/Prague', 1, 2, 1),
(56, 'DE', 'Europe/Berlin', 1, 2, 1),
(57, 'DJ', 'Africa/Djibouti', 3, 3, 3),
(58, 'DK', 'Europe/Copenhagen', 1, 2, 1),
(59, 'DM', 'America/Dominica', -4, -4, -4),
(60, 'DO', 'America/Santo_Domingo', -4, -4, -4),
(61, 'DZ', 'Africa/Algiers', 1, 1, 1),
(62, 'EC', 'America/Guayaquil', -5, -5, -5),
(63, 'EE', 'Europe/Tallinn', 2, 3, 2),
(64, 'EG', 'Africa/Cairo', 2, 2, 2),
(65, 'EH', 'Africa/El_Aaiun', 0, 0, 0),
(66, 'ER', 'Africa/Asmara', 3, 3, 3),
(67, 'ES', 'Africa/Ceuta', 1, 2, 1),
(68, 'ET', 'Africa/Addis_Ababa', 3, 3, 3),
(69, 'FI', 'Europe/Helsinki', 2, 3, 2),
(70, 'FJ', 'Pacific/Fiji', 13, 12, 12),
(71, 'FK', 'Atlantic/Stanley', -3, -3, -3),
(72, 'FM', 'Pacific/Chuuk', 10, 10, 10),
(73, 'FO', 'Atlantic/Faroe', 0, 1, 0),
(74, 'FR', 'Europe/Paris', 1, 2, 1),
(75, 'GA', 'Africa/Libreville', 1, 1, 1),
(76, 'GD', 'America/Grenada', -4, -4, -4),
(77, 'GE', 'Asia/Tbilisi', 4, 4, 4),
(78, 'GF', 'America/Cayenne', -3, -3, -3),
(79, 'GG', 'Europe/Guernsey', 0, 1, 0),
(80, 'GH', 'Africa/Accra', 0, 0, 0),
(81, 'GI', 'Europe/Gibraltar', 1, 2, 1),
(82, 'GL', 'America/Danmarkshavn', 0, 0, 0),
(83, 'GM', 'Africa/Banjul', 0, 0, 0),
(84, 'GN', 'Africa/Conakry', 0, 0, 0),
(85, 'GP', 'America/Guadeloupe', -4, -4, -4),
(86, 'GQ', 'Africa/Malabo', 1, 1, 1),
(87, 'GR', 'Europe/Athens', 2, 3, 2),
(88, 'GS', 'Atlantic/South_Georgia', -2, -2, -2),
(89, 'GT', 'America/Guatemala', -6, -6, -6),
(90, 'GU', 'Pacific/Guam', 10, 10, 10),
(91, 'GW', 'Africa/Bissau', 0, 0, 0),
(92, 'GY', 'America/Guyana', -4, -4, -4),
(93, 'HK', 'Asia/Hong_Kong', 8, 8, 8),
(94, 'HN', 'America/Tegucigalpa', -6, -6, -6),
(95, 'HR', 'Europe/Zagreb', 1, 2, 1),
(96, 'HT', 'America/Port-au-Prince', -5, -4, -5),
(97, 'HU', 'Europe/Budapest', 1, 2, 1),
(98, 'ID', 'Asia/Jakarta', 7, 7, 7),
(99, 'IE', 'Europe/Dublin', 0, 1, 0),
(100, 'IL', 'Asia/Jerusalem', 2, 3, 2),
(101, 'IM', 'Europe/Isle_of_Man', 0, 1, 0),
(102, 'IN', 'Asia/Kolkata', 5.5, 5.5, 5.5),
(103, 'IO', 'Indian/Chagos', 6, 6, 6),
(104, 'IQ', 'Asia/Baghdad', 3, 3, 3),
(105, 'IR', 'Asia/Tehran', 3.5, 4.5, 3.5),
(106, 'IS', 'Atlantic/Reykjavik', 0, 0, 0),
(107, 'IT', 'Europe/Rome', 1, 2, 1),
(108, 'JE', 'Europe/Jersey', 0, 1, 0),
(109, 'JM', 'America/Jamaica', -5, -5, -5),
(110, 'JO', 'Asia/Amman', 2, 3, 2),
(111, 'JP', 'Asia/Tokyo', 9, 9, 9),
(112, 'KE', 'Africa/Nairobi', 3, 3, 3),
(113, 'KG', 'Asia/Bishkek', 6, 6, 6),
(114, 'KH', 'Asia/Phnom_Penh', 7, 7, 7),
(115, 'KI', 'Pacific/Enderbury', 13, 13, 13),
(116, 'KM', 'Indian/Comoro', 3, 3, 3),
(117, 'KN', 'America/St_Kitts', -4, -4, -4),
(118, 'KP', 'Asia/Pyongyang', 9, 9, 9),
(119, 'KR', 'Asia/Seoul', 9, 9, 9),
(120, 'KW', 'Asia/Kuwait', 3, 3, 3),
(121, 'KY', 'America/Cayman', -5, -5, -5),
(122, 'KZ', 'Asia/Almaty', 6, 6, 6),
(123, 'LA', 'Asia/Vientiane', 7, 7, 7),
(124, 'LB', 'Asia/Beirut', 2, 3, 2),
(125, 'LC', 'America/St_Lucia', -4, -4, -4),
(126, 'LI', 'Europe/Vaduz', 1, 2, 1),
(127, 'LK', 'Asia/Colombo', 5.5, 5.5, 5.5),
(128, 'LR', 'Africa/Monrovia', 0, 0, 0),
(129, 'LS', 'Africa/Maseru', 2, 2, 2),
(130, 'LT', 'Europe/Vilnius', 2, 3, 2),
(131, 'LU', 'Europe/Luxembourg', 1, 2, 1),
(132, 'LV', 'Europe/Riga', 2, 3, 2),
(133, 'LY', 'Africa/Tripoli', 2, 2, 2),
(134, 'MA', 'Africa/Casablanca', 0, 0, 0),
(135, 'MC', 'Europe/Monaco', 1, 2, 1),
(136, 'MD', 'Europe/Chisinau', 2, 3, 2),
(137, 'ME', 'Europe/Podgorica', 1, 2, 1),
(138, 'MF', 'America/Marigot', -4, -4, -4),
(139, 'MG', 'Indian/Antananarivo', 3, 3, 3),
(140, 'MH', 'Pacific/Kwajalein', 12, 12, 12),
(141, 'MK', 'Europe/Skopje', 1, 2, 1),
(142, 'ML', 'Africa/Bamako', 0, 0, 0),
(143, 'MM', 'Asia/Rangoon', 6.5, 6.5, 6.5),
(144, 'MN', 'Asia/Choibalsan', 8, 8, 8),
(145, 'MO', 'Asia/Macau', 8, 8, 8),
(146, 'MP', 'Pacific/Saipan', 10, 10, 10),
(147, 'MQ', 'America/Martinique', -4, -4, -4),
(148, 'MR', 'Africa/Nouakchott', 0, 0, 0),
(149, 'MS', 'America/Montserrat', -4, -4, -4),
(150, 'MT', 'Europe/Malta', 1, 2, 1),
(151, 'MU', 'Indian/Mauritius', 4, 4, 4),
(152, 'MV', 'Indian/Maldives', 5, 5, 5),
(153, 'MW', 'Africa/Blantyre', 2, 2, 2),
(154, 'MX', 'America/Bahia_Banderas', -6, -5, -6),
(155, 'MY', 'Asia/Kuala_Lumpur', 8, 8, 8),
(156, 'MZ', 'Africa/Maputo', 2, 2, 2),
(157, 'NA', 'Africa/Windhoek', 2, 1, 1),
(158, 'NC', 'Pacific/Noumea', 11, 11, 11),
(159, 'NE', 'Africa/Niamey', 1, 1, 1),
(160, 'NF', 'Pacific/Norfolk', 11.5, 11.5, 11.5),
(161, 'NG', 'Africa/Lagos', 1, 1, 1),
(162, 'NI', 'America/Managua', -6, -6, -6),
(163, 'NL', 'Europe/Amsterdam', 1, 2, 1),
(164, 'NO', 'Europe/Oslo', 1, 2, 1),
(165, 'NP', 'Asia/Kathmandu', 5.75, 5.75, 5.75),
(166, 'NR', 'Pacific/Nauru', 12, 12, 12),
(167, 'NU', 'Pacific/Niue', -11, -11, -11),
(168, 'NZ', 'Pacific/Auckland', 13, 12, 12),
(169, 'OM', 'Asia/Muscat', 4, 4, 4),
(170, 'PA', 'America/Panama', -5, -5, -5),
(171, 'PE', 'America/Lima', -5, -5, -5),
(172, 'PF', 'Pacific/Gambier', -9, -9, -9),
(173, 'PG', 'Pacific/Bougainville', 11, 11, 11),
(174, 'PH', 'Asia/Manila', 8, 8, 8),
(175, 'PK', 'Asia/Karachi', 5, 5, 5),
(176, 'PL', 'Europe/Warsaw', 1, 2, 1),
(177, 'PM', 'America/Miquelon', -3, -2, -3),
(178, 'PN', 'Pacific/Pitcairn', -8, -8, -8),
(179, 'PR', 'America/Puerto_Rico', -4, -4, -4),
(180, 'PS', 'Asia/Gaza', 2, 3, 2),
(181, 'PT', 'Atlantic/Azores', -1, 0, -1),
(182, 'PW', 'Pacific/Palau', 9, 9, 9),
(183, 'PY', 'America/Asuncion', -3, -4, -4),
(184, 'QA', 'Asia/Qatar', 3, 3, 3),
(185, 'RE', 'Indian/Reunion', 4, 4, 4),
(186, 'RO', 'Europe/Bucharest', 2, 3, 2),
(187, 'RS', 'Europe/Belgrade', 1, 2, 1),
(188, 'RU', 'Asia/Anadyr', 12, 12, 12),
(189, 'RW', 'Africa/Kigali', 2, 2, 2),
(190, 'SA', 'Asia/Riyadh', 3, 3, 3),
(191, 'SB', 'Pacific/Guadalcanal', 11, 11, 11),
(192, 'SC', 'Indian/Mahe', 4, 4, 4),
(193, 'SD', 'Africa/Khartoum', 3, 3, 3),
(194, 'SE', 'Europe/Stockholm', 1, 2, 1),
(195, 'SG', 'Asia/Singapore', 8, 8, 8),
(196, 'SH', 'Atlantic/St_Helena', 0, 0, 0),
(197, 'SI', 'Europe/Ljubljana', 1, 2, 1),
(198, 'SJ', 'Arctic/Longyearbyen', 1, 2, 1),
(199, 'SK', 'Europe/Bratislava', 1, 2, 1),
(200, 'SL', 'Africa/Freetown', 0, 0, 0),
(201, 'SM', 'Europe/San_Marino', 1, 2, 1),
(202, 'SN', 'Africa/Dakar', 0, 0, 0),
(203, 'SO', 'Africa/Mogadishu', 3, 3, 3),
(204, 'SR', 'America/Paramaribo', -3, -3, -3),
(205, 'SS', 'Africa/Juba', 3, 3, 3),
(206, 'ST', 'Africa/Sao_Tome', 0, 0, 0),
(207, 'SV', 'America/El_Salvador', -6, -6, -6),
(208, 'SX', 'America/Lower_Princes', -4, -4, -4),
(209, 'SY', 'Asia/Damascus', 2, 3, 2),
(210, 'SZ', 'Africa/Mbabane', 2, 2, 2),
(211, 'TC', 'America/Grand_Turk', -5, -4, -5),
(212, 'TD', 'Africa/Ndjamena', 1, 1, 1),
(213, 'TF', 'Indian/Kerguelen', 5, 5, 5),
(214, 'TG', 'Africa/Lome', 0, 0, 0),
(215, 'TH', 'Asia/Bangkok', 7, 7, 7),
(216, 'TJ', 'Asia/Dushanbe', 5, 5, 5),
(217, 'TK', 'Pacific/Fakaofo', 13, 13, 13),
(218, 'TL', 'Asia/Dili', 9, 9, 9),
(219, 'TM', 'Asia/Ashgabat', 5, 5, 5),
(220, 'TN', 'Africa/Tunis', 1, 1, 1),
(221, 'TO', 'Pacific/Tongatapu', 13, 13, 13),
(222, 'TR', 'Europe/Istanbul', 2, 3, 2),
(223, 'TT', 'America/Port_of_Spain', -4, -4, -4),
(224, 'TV', 'Pacific/Funafuti', 12, 12, 12),
(225, 'TW', 'Asia/Taipei', 8, 8, 8),
(226, 'TZ', 'Africa/Dar_es_Salaam', 3, 3, 3),
(227, 'UA', 'Europe/Kiev', 2, 3, 2),
(228, 'UG', 'Africa/Kampala', 3, 3, 3),
(229, 'UK', 'Europe/London', 0, 1, 0),
(230, 'UM', 'Pacific/Johnston', -10, -10, -10),
(231, 'US', 'America/Adak', -10, -9, -10),
(232, 'UY', 'America/Montevideo', -2, -3, -3),
(233, 'UZ', 'Asia/Samarkand', 5, 5, 5),
(234, 'VA', 'Europe/Vatican', 1, 2, 1),
(235, 'VC', 'America/St_Vincent', -4, -4, -4),
(236, 'VE', 'America/Caracas', -4.5, -4.5, -4.5),
(237, 'VG', 'America/Tortola', -4, -4, -4),
(238, 'VI', 'America/St_Thomas', -4, -4, -4),
(239, 'VN', 'Asia/Ho_Chi_Minh', 7, 7, 7),
(240, 'VU', 'Pacific/Efate', 11, 11, 11),
(241, 'WF', 'Pacific/Wallis', 12, 12, 12),
(242, 'WS', 'Pacific/Apia', 14, 13, 13),
(243, 'YE', 'Asia/Aden', 3, 3, 3),
(244, 'YT', 'Indian/Mayotte', 3, 3, 3),
(245, 'ZA', 'Africa/Johannesburg', 2, 2, 2),
(246, 'ZM', 'Africa/Lusaka', 2, 2, 2),
(247, 'ZW', 'Africa/Harare', 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ad_transaction`
--

CREATE TABLE `ad_transaction` (
  `id` int NOT NULL,
  `product_name` varchar(225) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `seller_id` int DEFAULT NULL,
  `amount` double(9,2) DEFAULT NULL,
  `featured` enum('0','1') DEFAULT '0',
  `urgent` enum('0','1') DEFAULT '0',
  `highlight` enum('0','1') DEFAULT '0',
  `transaction_time` int DEFAULT NULL,
  `status` enum('pending','success','failed','cancel') DEFAULT NULL,
  `transaction_gatway` varchar(255) DEFAULT NULL,
  `transaction_ip` varchar(15) DEFAULT NULL,
  `transaction_description` varchar(255) DEFAULT NULL,
  `transaction_method` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ad_upgrades`
--

CREATE TABLE `ad_upgrades` (
  `upgrade_id` int UNSIGNED NOT NULL,
  `sub_id` int UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int UNSIGNED NOT NULL DEFAULT '0',
  `upgrade_lasttime` int UNSIGNED NOT NULL DEFAULT '0',
  `upgrade_expires` int UNSIGNED NOT NULL DEFAULT '0',
  `unique_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `invoice_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_subscription_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `paypal_profile_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_customer_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `stripe_subscription_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `authorizenet_subscription_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_day` int DEFAULT NULL,
  `length` int DEFAULT NULL,
  `interval` int DEFAULT NULL,
  `trial_days` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_trial_ends` date DEFAULT NULL,
  `date_canceled` datetime DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ad_user`
--

CREATE TABLE `ad_user` (
  `id` int NOT NULL,
  `group_id` int NOT NULL DEFAULT '1',
  `username` varchar(255) DEFAULT NULL,
  `user_type` enum('user','seller') DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `forgot` varchar(255) DEFAULT NULL,
  `confirm` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT NULL,
  `view` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `description` text,
  `website` varchar(255) DEFAULT NULL,
  `sex` enum('Male','Female','Other') DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(225) DEFAULT NULL,
  `image` varchar(225) NOT NULL DEFAULT 'default_user.png',
  `lastactive` datetime DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `googleplus` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `oauth_provider` enum('','facebook','google','twitter') DEFAULT NULL,
  `oauth_uid` varchar(100) DEFAULT NULL,
  `oauth_link` varchar(255) DEFAULT NULL,
  `online` enum('0','1') NOT NULL DEFAULT '0',
  `notify` enum('0','1') DEFAULT '0',
  `notify_cat` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ad_user`
--

INSERT INTO `ad_user` (`id`, `group_id`, `username`, `user_type`, `password_hash`, `forgot`, `confirm`, `email`, `status`, `view`, `created_at`, `updated_at`, `name`, `tagline`, `description`, `website`, `sex`, `phone`, `postcode`, `address`, `country`, `city`, `image`, `lastactive`, `facebook`, `twitter`, `googleplus`, `instagram`, `linkedin`, `youtube`, `oauth_provider`, `oauth_uid`, `oauth_link`, `online`, `notify`, `notify_cat`) VALUES
(1, 1, 'demo', NULL, '$2y$13$DYHD6YHUTauxhZF69L0yxeLXRgBNZItW1B8CseIZWp6tRJRzdzBsi', NULL, '97852275', 'demouser@gmail.com', '1', 0, '2019-08-24 15:22:59', '2019-08-24 15:22:59', 'Demo User', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'India', 'Jodhpur', 'default_user.png', '2019-08-24 15:23:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL),
(2, 1, 'bylancer', NULL, '$2y$13$qx79YeTF1/KpWaaJMQR0HukpZqUW9nPA/zfAzbkyVuA7BK6pMMvLW', NULL, '62163144', 'helpdesk.bylancer@gmail.com', '1', 2, '2019-08-24 15:24:44', '2019-08-24 15:30:12', 'Bylancer Technologies', '', '<p><b>Who we are?</b> We are top leading web development and designing company founded in 2013. The company develops and improves professional websites for customers across a wide range of industries and the main service area we are selling our top branded digital products like php scripts, premium worpdress themes &amp; plugins and free items also. We are seller at&nbsp;<a href=\\\"https://codentheme.com/bylancer/profile/\\\" target=\\\"_blank\\\">Codentheme</a>,&nbsp;<a href=\\\"https://codecanyon.net/user/bylancer\\\" target=\\\"_blank\\\">Codecanyon</a>&nbsp;and&nbsp;<a href=\\\"https://themeforest.net/user/bylancer\\\" target=\\\"_blank\\\">Themeforest</a>. People loved our prooducts also the items we developed in such way that anyone can easily customize according to their needs. Which is why we have been listed as&nbsp;<a href=\\\"http://www.bestjquery.com/2017/08/php-classified-ads-scripts/\\\" target=\\\"_blank\\\">best classified script</a>&nbsp;and also as best&nbsp;<a href=\\\"https://codentheme.com/free-wordpress-themes/\\\" target=\\\"_blank\\\">free WordPress themes</a>&nbsp;from different blogs at no 1 position.</p><p>Our Portfolio</p><ol><li><a href=\\\"https://codecanyon.net/item/quickad-classified-ads-php-script/19960675\\\" target=\\\"_blank\\\">Quickad Classified PHP Script Ads CMS</a></li><li><a href=\\\"https://codecanyon.net/item/quickad-classified-native-android-app/23956447\\\" target=\\\"_blank\\\">Quickad - Classified Native Android App</a></li><li><a href=\\\"https://codentheme.com/item/bookmepro-wordpress-appointment-booking-scheduling-plugin/\\\" target=\\\"_blank\\\">Bookme Pro - WordPress Appointment Booking Scheduling Software</a></li><li><a href=\\\"https://codecanyon.net/item/bookme-wordpress-booking-plugin/20926116\\\" target=\\\"_blank\\\">Bookme - WordPress Appointment Booking Scheduling Plugin</a></li><li><a href=\\\"https://codecanyon.net/item/wchat-fully-responsive-phpajax-chat/18047319\\\" target=\\\"_blank\\\">Wchat - Fully Responsive PHP AJAX Chat Script</a></li><li><a href=\\\"https://codentheme.com/item/wchat-free-chat-html-template/\\\" target=\\\"_blank\\\">Wchat - Free Chat HTML Template</a></li><li><a href=\\\"https://codecanyon.net/item/facebook-style-php-ajax-chat-zechat/16491266\\\" target=\\\"_blank\\\">Zechat - Facebook Style Php Ajax Chat</a></li><li><a href=\\\"https://themeforest.net/item/eagle-material-design-admin-template/20829964\\\" target=\\\"_blank\\\">Eagle - Material+ Bootstrap Admin Template</a></li><li><a href=\\\"https://codentheme.com/item/noddy-bootstrap-4-admin-template/\\\" target=\\\"_blank\\\">Noddy Bootstrap 4 Admin Template</a></li><li><a href=\\\"https://codentheme.com/item/newsmania-wordpress-news-magazine-theme/?ref=bylancer\\\" target=\\\"_blank\\\">The Magazine - Responsive News WordPress Theme</a></li><li><a href=\\\"https://codentheme.com/item/fashiony-wordpress-blog-magazine-theme/\\\" target=\\\"_blank\\\">Fashiony - WordPress Blog &amp; Magazine Theme</a></li><li><a href=\\\"https://codentheme.com/item/electron-wordpress-blog-magazine-theme/\\\" target=\\\"_blank\\\">Electron - Minimal Personal Blog WordPress Theme</a></li><li><a href=\\\"https://codentheme.com/item/creative-modern-blog-html-template-electron/\\\" target=\\\"_blank\\\">Electron - Free Blog Bootstrap Html Website Template</a></li><li><a href=\\\"https://codentheme.com/item/mega-gdpr-compliance-toolkit-for-wordpress/\\\" target=\\\"_blank\\\">Mega GDPR Compliance toolkit for WordPress</a></li><li><a href=\\\"https://codentheme.com/item/spider-ajax-php-50-form-with-jquery-validation/\\\" target=\\\"_blank\\\">Spider - PHP Ajax 50+ Form With Jquery Validation</a></li><li><a href=\\\"https://codentheme.com/item/appui-free-responsive-html-vuejs-angularjs-admin-dashboard/\\\" target=\\\"_blank\\\">AppUI Free Bootstrap HTML &amp; angularjs Admin Dashboard Template</a></li><li><a href=\\\"https://codentheme.com/best-wordpress-appointment-booking-and-scheduling-plugin-2019/\\\" target=\\\"_blank\\\">Best WordPress Appointment Booking Plugin</a></li><li><a href=\\\"https://codentheme.com/free-wordpress-themes/\\\" target=\\\"_blank\\\">Free Wordpress themes</a></li></ol>', 'https://www.bylancer.com/', NULL, '+91-9799901707', '', '', '', '', 'bylancer_2126095983.jpg', '2019-08-24 15:30:15', 'https://www.facebook.com/bylancer.in', 'https://twitter.com/thebylancer', 'https://www.bylancer.com/', 'https://www.bylancer.com/', 'https://www.bylancer.com/', 'https://www.youtube.com/user/ABylancer', NULL, NULL, NULL, '0', '0', ''),
(3, 1, 'prabhs226c', NULL, '$2y$13$3DNhwGKIGFVnbp96wOAsUO2Ec16zDZ12.kAVrzif/CM7B6Yu.ejki', NULL, '69232124', 'prabhs226c@gmail.com', '1', NULL, '2020-10-27 11:06:22', '2020-10-27 11:07:59', 'prabhjot', NULL, '', NULL, 'Male', NULL, NULL, NULL, 'Canada', 'Jodhpur', 'default_user.png', '2020-11-01 00:31:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_usergroups`
--

CREATE TABLE `ad_usergroups` (
  `group_id` int UNSIGNED NOT NULL,
  `group_removable` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `group_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `ad_limit` int DEFAULT NULL,
  `ad_duration` smallint DEFAULT NULL,
  `urgent_project_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `featured_project_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `highlight_project_fee` double(8,2) NOT NULL DEFAULT '0.00',
  `featured_duration` smallint DEFAULT NULL,
  `urgent_duration` smallint DEFAULT NULL,
  `highlight_duration` smallint DEFAULT NULL,
  `top_search_result` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_on_home` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_in_home_search` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ad_usergroups`
--

INSERT INTO `ad_usergroups` (`group_id`, `group_removable`, `group_name`, `ad_limit`, `ad_duration`, `urgent_project_fee`, `featured_project_fee`, `highlight_project_fee`, `featured_duration`, `urgent_duration`, `highlight_duration`, `top_search_result`, `show_on_home`, `show_in_home_search`) VALUES
(1, 0, 'Registerd users (Free)', 3, 30, 4.32, 1.25, 3.32, 10, 20, 30, 'no', 'no', 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ad_admins`
--
ALTER TABLE `ad_admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_adsense`
--
ALTER TABLE `ad_adsense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_balance`
--
ALTER TABLE `ad_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_blog`
--
ALTER TABLE `ad_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_blog_categories`
--
ALTER TABLE `ad_blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_blog_cat_relation`
--
ALTER TABLE `ad_blog_cat_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_blog_comment`
--
ALTER TABLE `ad_blog_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_catagory_main`
--
ALTER TABLE `ad_catagory_main`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `ad_catagory_sub`
--
ALTER TABLE `ad_catagory_sub`
  ADD PRIMARY KEY (`sub_cat_id`),
  ADD UNIQUE KEY `id` (`sub_cat_id`);

--
-- Indexes for table `ad_category_translation`
--
ALTER TABLE `ad_category_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_cities`
--
ALTER TABLE `ad_cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `ad_countries`
--
ALTER TABLE `ad_countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `ad_currencies`
--
ALTER TABLE `ad_currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `ad_custom_data`
--
ALTER TABLE `ad_custom_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_custom_fields`
--
ALTER TABLE `ad_custom_fields`
  ADD PRIMARY KEY (`custom_id`),
  ADD KEY `custom_order` (`custom_order`);

--
-- Indexes for table `ad_custom_options`
--
ALTER TABLE `ad_custom_options`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `ad_emailq`
--
ALTER TABLE `ad_emailq`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `ad_faq_entries`
--
ALTER TABLE `ad_faq_entries`
  ADD PRIMARY KEY (`faq_id`),
  ADD KEY `translation_lang` (`translation_lang`,`translation_of`,`parent_id`);

--
-- Indexes for table `ad_favads`
--
ALTER TABLE `ad_favads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_firebase_device_token`
--
ALTER TABLE `ad_firebase_device_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_languages`
--
ALTER TABLE `ad_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_logs`
--
ALTER TABLE `ad_logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `ad_messages`
--
ALTER TABLE `ad_messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `ad_notification`
--
ALTER TABLE `ad_notification`
  ADD KEY `cat_id` (`cat_id`);

--
-- Indexes for table `ad_options`
--
ALTER TABLE `ad_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `ad_pages`
--
ALTER TABLE `ad_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translation_lang` (`translation_lang`),
  ADD KEY `translation_of` (`translation_of`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `ad_payments`
--
ALTER TABLE `ad_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `ad_product`
--
ALTER TABLE `ad_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ad_product_resubmit`
--
ALTER TABLE `ad_product_resubmit`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_id` (`product_id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ad_push_notification`
--
ALTER TABLE `ad_push_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_reviews`
--
ALTER TABLE `ad_reviews`
  ADD PRIMARY KEY (`reviewID`);

--
-- Indexes for table `ad_subadmin1`
--
ALTER TABLE `ad_subadmin1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `ad_subadmin2`
--
ALTER TABLE `ad_subadmin2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `country_code` (`country_code`),
  ADD KEY `subadmin1_code` (`subadmin1_code`),
  ADD KEY `name` (`name`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `ad_subscriptions`
--
ALTER TABLE `ad_subscriptions`
  ADD PRIMARY KEY (`sub_id`);

--
-- Indexes for table `ad_testimonials`
--
ALTER TABLE `ad_testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_time_zones`
--
ALTER TABLE `ad_time_zones`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `time_zone_id` (`time_zone_id`),
  ADD KEY `country_code` (`country_code`);

--
-- Indexes for table `ad_transaction`
--
ALTER TABLE `ad_transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `ad_upgrades`
--
ALTER TABLE `ad_upgrades`
  ADD PRIMARY KEY (`upgrade_id`);

--
-- Indexes for table `ad_user`
--
ALTER TABLE `ad_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ad_usergroups`
--
ALTER TABLE `ad_usergroups`
  ADD PRIMARY KEY (`group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ad_admins`
--
ALTER TABLE `ad_admins`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ad_adsense`
--
ALTER TABLE `ad_adsense`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ad_balance`
--
ALTER TABLE `ad_balance`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ad_blog`
--
ALTER TABLE `ad_blog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ad_blog_categories`
--
ALTER TABLE `ad_blog_categories`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ad_blog_cat_relation`
--
ALTER TABLE `ad_blog_cat_relation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ad_blog_comment`
--
ALTER TABLE `ad_blog_comment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_catagory_main`
--
ALTER TABLE `ad_catagory_main`
  MODIFY `cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ad_catagory_sub`
--
ALTER TABLE `ad_catagory_sub`
  MODIFY `sub_cat_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `ad_category_translation`
--
ALTER TABLE `ad_category_translation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_cities`
--
ALTER TABLE `ad_cities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11203929;

--
-- AUTO_INCREMENT for table `ad_countries`
--
ALTER TABLE `ad_countries`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `ad_currencies`
--
ALTER TABLE `ad_currencies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `ad_custom_data`
--
ALTER TABLE `ad_custom_data`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_custom_fields`
--
ALTER TABLE `ad_custom_fields`
  MODIFY `custom_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_custom_options`
--
ALTER TABLE `ad_custom_options`
  MODIFY `option_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_emailq`
--
ALTER TABLE `ad_emailq`
  MODIFY `q_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_faq_entries`
--
ALTER TABLE `ad_faq_entries`
  MODIFY `faq_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ad_favads`
--
ALTER TABLE `ad_favads`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_firebase_device_token`
--
ALTER TABLE `ad_firebase_device_token`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_languages`
--
ALTER TABLE `ad_languages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ad_logs`
--
ALTER TABLE `ad_logs`
  MODIFY `log_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `ad_messages`
--
ALTER TABLE `ad_messages`
  MODIFY `message_id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_options`
--
ALTER TABLE `ad_options`
  MODIFY `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `ad_pages`
--
ALTER TABLE `ad_pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_payments`
--
ALTER TABLE `ad_payments`
  MODIFY `payment_id` mediumint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ad_product`
--
ALTER TABLE `ad_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ad_product_resubmit`
--
ALTER TABLE `ad_product_resubmit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_push_notification`
--
ALTER TABLE `ad_push_notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_reviews`
--
ALTER TABLE `ad_reviews`
  MODIFY `reviewID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_subadmin1`
--
ALTER TABLE `ad_subadmin1`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;

--
-- AUTO_INCREMENT for table `ad_subadmin2`
--
ALTER TABLE `ad_subadmin2`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9004;

--
-- AUTO_INCREMENT for table `ad_subscriptions`
--
ALTER TABLE `ad_subscriptions`
  MODIFY `sub_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ad_testimonials`
--
ALTER TABLE `ad_testimonials`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ad_time_zones`
--
ALTER TABLE `ad_time_zones`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `ad_transaction`
--
ALTER TABLE `ad_transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ad_upgrades`
--
ALTER TABLE `ad_upgrades`
  MODIFY `upgrade_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ad_user`
--
ALTER TABLE `ad_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ad_usergroups`
--
ALTER TABLE `ad_usergroups`
  MODIFY `group_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
