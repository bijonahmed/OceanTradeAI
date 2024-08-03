-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2024 at 07:21 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ocean_trade_ai`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_user_payment_address`
--

CREATE TABLE `add_user_payment_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add_user_payment_address`
--

INSERT INTO `add_user_payment_address` (`id`, `user_id`, `name`, `wallet_address`, `created_at`, `updated_at`) VALUES
(1, 8, 'USDT-TRC20-TRX', 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '2024-07-14 08:20:01', '2024-07-14 08:20:01'),
(2, 9, 'USDT-TRC20-TRX', 'XXXXXXX878888iyuiyiuyiu', '2024-07-30 15:39:22', '2024-07-30 15:39:22');

-- --------------------------------------------------------

--
-- Table structure for table `boost_boot_setting`
--

CREATE TABLE `boost_boot_setting` (
  `id` int(11) NOT NULL,
  `mining_categogy_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `total_seconds` int(11) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `level_cost` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boost_boot_setting`
--

INSERT INTO `boost_boot_setting` (`id`, `mining_categogy_id`, `name`, `total_seconds`, `hours`, `level_cost`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Level-1', 3600, 1, 0, 1, '2024-07-17 12:39:05', '2024-07-19 14:01:15'),
(2, 1, 'Level-2', 43200, 12, 1, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(3, 1, 'Level-3', 86400, 24, 2, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(4, 1, 'Level-4', 403200, 2880, 10, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(5, 2, 'Level-1', 7200, 2, 0, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(6, 2, 'Level-2', 43200, 12, 2, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(7, 2, 'Level-3', 86400, 24, 5, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(8, 2, 'Level-4', 403200, 2880, 15, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(9, 3, 'Level-1', 14400, 4, 0, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(10, 3, 'Level-2', 43200, 12, 8, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(11, 3, 'Level-3', 86400, 24, 15, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(12, 3, 'Level-4', 403200, 2880, 20, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(13, 4, 'Level-1', 21600, 6, 0, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(14, 4, 'Level-2', 43200, 12, 12, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(15, 4, 'Level-3', 86400, 24, 25, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05'),
(16, 4, 'Level-4', 403200, 2880, 30, 1, '2024-07-17 12:39:05', '2024-07-17 12:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `boost_mining_setting`
--

CREATE TABLE `boost_mining_setting` (
  `id` int(11) NOT NULL,
  `mining_categogy_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level_cost` int(11) DEFAULT NULL,
  `mining_per_seconds` int(11) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `boost_mining_setting`
--

INSERT INTO `boost_mining_setting` (`id`, `mining_categogy_id`, `name`, `level_cost`, `mining_per_seconds`, `sort`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 'Level-1', 0, 1, 1, '2024-07-16 13:33:31', '2024-07-19 13:25:01', 1),
(2, 1, 'Level-2', 2, 2, 2, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(3, 1, 'Level-3', 3, 3, 3, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(4, 1, 'Level-4', 4, 4, 4, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(5, 1, 'Level-5', 5, 5, 5, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(6, 1, 'Level-6', 6, 6, 6, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(7, 1, 'Level-7', 7, 7, 7, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(8, 1, 'Level-8', 8, 8, 8, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(9, 1, 'Level-9', 9, 9, 9, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(10, 1, 'Max', 10, 10, 10, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(11, 2, 'Level-1', 0, 2, 1, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(12, 2, 'Level-2', 2, 4, 2, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(13, 2, 'Level-3', 3, 6, 3, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(14, 2, 'Level-4', 4, 8, 4, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(15, 2, 'Level-5', 5, 10, 5, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(16, 2, 'Level-6', 6, 12, 6, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(17, 2, 'Level-7', 7, 14, 7, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(18, 2, 'Level-8', 8, 16, 8, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(19, 2, 'Level-9', 9, 18, 9, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(20, 2, 'Level-10', 10, 20, 10, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(21, 3, 'Level-1', 0, 4, 1, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(22, 3, 'Level-2', 2, 8, 2, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(23, 3, 'Level-3', 3, 12, 3, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(24, 3, 'Level-4', 4, 16, 4, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(25, 3, 'Level-5', 5, 20, 5, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(26, 3, 'Level-6', 6, 24, 6, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(27, 3, 'Level-7', 7, 28, 7, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(28, 3, 'Level-8', 8, 32, 8, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(29, 3, 'Level-9', 9, 36, 9, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(30, 3, 'Level-10', 10, 40, 10, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(31, 4, 'Level-1', 0, 6, 1, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(32, 4, 'Level-2', 2, 12, 2, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(33, 4, 'Level-3', 3, 18, 3, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(34, 4, 'Level-4', 4, 24, 4, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(35, 4, 'Level-5', 5, 30, 5, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(36, 4, 'Level-6', 6, 36, 6, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(37, 4, 'Level-7', 7, 42, 7, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(38, 4, 'Level-8', 8, 48, 8, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 1),
(39, 4, 'Level-9', 9, 54, 9, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 0),
(40, 4, 'Level-10', 10, 60, 10, '2024-07-16 13:33:31', '2024-07-16 13:33:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buy_token`
--

CREATE TABLE `buy_token` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `usdt_amount` double(10,2) DEFAULT NULL,
  `current_price` varchar(255) DEFAULT NULL COMMENT 'cp',
  `get_token` double(10,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buy_token`
--

INSERT INTO `buy_token` (`id`, `user_id`, `usdt_amount`, `current_price`, `get_token`, `created_at`, `updated_at`) VALUES
(1, 9, 10.00, '0.0111113333', 899.98, '2024-07-30 21:29:49', '2024-07-30 21:29:49'),
(2, 9, 50.00, '0.001188888889', 42056.07, '2024-07-30 21:34:37', '2024-07-30 21:34:37'),
(3, 9, 21.00, '0.0011244444', 18675.89, '2024-07-31 11:46:22', '2024-07-31 11:46:22'),
(4, 9, 50.00, '0.0011291111', 44282.62, '2024-07-31 11:46:53', '2024-07-31 11:46:53');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `percentage_amt` varchar(100) DEFAULT NULL COMMENT '%',
  `store_price` int(11) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `parent_id` int(11) DEFAULT 0,
  `sort_order` int(11) DEFAULT 0,
  `file` varchar(255) DEFAULT NULL,
  `bg_images` varchar(255) DEFAULT NULL,
  `store_images` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `mobile_view_class` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `updated_at` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `community`
--

CREATE TABLE `community` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `community`
--

INSERT INTO `community` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Community (English)', 'community-english', 1, '2024-05-28 14:05:53', '2024-05-28 14:05:53'),
(2, 'Community (Chinese)', 'community-chinese', 1, '2024-05-28 14:07:25', '2024-05-28 12:10:52'),
(3, 'Community (Arabic)', 'community-arabic', 1, '2024-05-28 14:07:25', '2024-05-28 12:10:52'),
(4, 'Community (Malasian)', 'community-malasian', 1, '2024-05-28 14:07:25', '2024-05-28 12:10:52'),
(5, 'Community (Hindi/Urdu)', 'community-hindi-urdu', 1, '2024-05-28 14:07:25', '2024-05-28 12:10:52');

-- --------------------------------------------------------

--
-- Table structure for table `countdown`
--

CREATE TABLE `countdown` (
  `id` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `currenttime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countdown`
--

INSERT INTO `countdown` (`id`, `start_time`, `end_time`, `currenttime`) VALUES
(1, '2024-05-01 22:25:43', '2024-05-01 22:30:43', '2024-05-26 13:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `shortname` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `shortname`, `name`, `phonecode`, `status`) VALUES
(1, 'AF', 'Afghanistan', 93, 1),
(2, 'AL', 'Albania', 355, 1),
(3, 'DZ', 'Algeria', 213, 1),
(4, 'AS', 'American Samoa', 1684, 1),
(5, 'AD', 'Andorra', 376, 1),
(6, 'AO', 'Angola', 244, 1),
(7, 'AI', 'Anguilla', 1264, 1),
(8, 'AQ', 'Antarctica', 0, 1),
(9, 'AG', 'Antigua And Barbuda', 1268, 1),
(10, 'AR', 'Argentina', 54, 1),
(11, 'AM', 'Armenia', 374, 1),
(12, 'AW', 'Aruba', 297, 1),
(13, 'AU', 'Australia', 61, 1),
(14, 'AT', 'Austria', 43, 1),
(15, 'AZ', 'Azerbaijan', 994, 1),
(16, 'BS', 'Bahamas The', 1242, 1),
(17, 'BH', 'Bahrain', 973, 1),
(18, 'BD', 'Bangladesh', 880, 1),
(19, 'BB', 'Barbados', 1246, 1),
(20, 'BY', 'Belarus', 375, 1),
(21, 'BE', 'Belgium', 32, 1),
(22, 'BZ', 'Belize', 501, 1),
(23, 'BJ', 'Benin', 229, 1),
(24, 'BM', 'Bermuda', 1441, 1),
(25, 'BT', 'Bhutan', 975, 1),
(26, 'BO', 'Bolivia', 591, 1),
(27, 'BA', 'Bosnia and Herzegovina', 387, 1),
(28, 'BW', 'Botswana', 267, 1),
(29, 'BV', 'Bouvet Island', 0, 1),
(30, 'BR', 'Brazil', 55, 1),
(31, 'IO', 'British Indian Ocean Territory', 246, 1),
(32, 'BN', 'Brunei', 673, 1),
(33, 'BG', 'Bulgaria', 359, 1),
(34, 'BF', 'Burkina Faso', 226, 1),
(35, 'BI', 'Burundi', 257, 1),
(36, 'KH', 'Cambodia', 855, 1),
(37, 'CM', 'Cameroon', 237, 1),
(38, 'CA', 'Canada', 1, 1),
(39, 'CV', 'Cape Verde', 238, 1),
(40, 'KY', 'Cayman Islands', 1345, 1),
(41, 'CF', 'Central African Republic', 236, 1),
(42, 'TD', 'Chad', 235, 1),
(43, 'CL', 'Chile', 56, 1),
(44, 'CN', 'China', 86, 1),
(45, 'CX', 'Christmas Island', 61, 1),
(46, 'CC', 'Cocos (Keeling) Islands', 672, 1),
(47, 'CO', 'Colombia', 57, 1),
(48, 'KM', 'Comoros', 269, 1),
(49, 'CG', 'Republic Of The Congo', 242, 1),
(50, 'CD', 'Democratic Republic Of The Congo', 242, 1),
(51, 'CK', 'Cook Islands', 682, 1),
(52, 'CR', 'Costa Rica', 506, 1),
(53, 'CI', 'Cote D\'Ivoire (Ivory Coast)', 225, 1),
(54, 'HR', 'Croatia (Hrvatska)', 385, 1),
(55, 'CU', 'Cuba', 53, 1),
(56, 'CY', 'Cyprus', 357, 1),
(57, 'CZ', 'Czech Republic', 420, 1),
(58, 'DK', 'Denmark', 45, 1),
(59, 'DJ', 'Djibouti', 253, 1),
(60, 'DM', 'Dominica', 1767, 1),
(61, 'DO', 'Dominican Republic', 1809, 1),
(62, 'TP', 'East Timor', 670, 1),
(63, 'EC', 'Ecuador', 593, 1),
(64, 'EG', 'Egypt', 20, 1),
(65, 'SV', 'El Salvador', 503, 1),
(66, 'GQ', 'Equatorial Guinea', 240, 1),
(67, 'ER', 'Eritrea', 291, 1),
(68, 'EE', 'Estonia', 372, 1),
(69, 'ET', 'Ethiopia', 251, 1),
(70, 'XA', 'External Territories of Australia', 61, 1),
(71, 'FK', 'Falkland Islands', 500, 1),
(72, 'FO', 'Faroe Islands', 298, 1),
(73, 'FJ', 'Fiji Islands', 679, 1),
(74, 'FI', 'Finland', 358, 1),
(75, 'FR', 'France', 33, 1),
(76, 'GF', 'French Guiana', 594, 1),
(77, 'PF', 'French Polynesia', 689, 1),
(78, 'TF', 'French Southern Territories', 0, 1),
(79, 'GA', 'Gabon', 241, 1),
(80, 'GM', 'Gambia The', 220, 1),
(81, 'GE', 'Georgia', 995, 1),
(82, 'DE', 'Germany', 49, 1),
(83, 'GH', 'Ghana', 233, 1),
(84, 'GI', 'Gibraltar', 350, 1),
(85, 'GR', 'Greece', 30, 1),
(86, 'GL', 'Greenland', 299, 1),
(87, 'GD', 'Grenada', 1473, 1),
(88, 'GP', 'Guadeloupe', 590, 1),
(89, 'GU', 'Guam', 1671, 1),
(90, 'GT', 'Guatemala', 502, 1),
(91, 'XU', 'Guernsey and Alderney', 44, 1),
(92, 'GN', 'Guinea', 224, 1),
(93, 'GW', 'Guinea-Bissau', 245, 1),
(94, 'GY', 'Guyana', 592, 1),
(95, 'HT', 'Haiti', 509, 1),
(96, 'HM', 'Heard and McDonald Islands', 0, 1),
(97, 'HN', 'Honduras', 504, 1),
(98, 'HK', 'Hong Kong S.A.R.', 852, 1),
(99, 'HU', 'Hungary', 36, 1),
(100, 'IS', 'Iceland', 354, 1),
(101, 'IN', 'India', 91, 1),
(102, 'ID', 'Indonesia', 62, 1),
(103, 'IR', 'Iran', 98, 1),
(104, 'IQ', 'Iraq', 964, 1),
(105, 'IE', 'Ireland', 353, 1),
(106, 'IL', 'Israel', 972, 1),
(107, 'IT', 'Italy', 39, 1),
(108, 'JM', 'Jamaica', 1876, 1),
(109, 'JP', 'Japan', 81, 1),
(110, 'XJ', 'Jersey', 44, 1),
(111, 'JO', 'Jordan', 962, 1),
(112, 'KZ', 'Kazakhstan', 7, 1),
(113, 'KE', 'Kenya', 254, 1),
(114, 'KI', 'Kiribati', 686, 1),
(115, 'KP', 'Korea North', 850, 1),
(116, 'KR', 'Korea South', 82, 1),
(117, 'KW', 'Kuwait', 965, 1),
(118, 'KG', 'Kyrgyzstan', 996, 1),
(119, 'LA', 'Laos', 856, 1),
(120, 'LV', 'Latvia', 371, 1),
(121, 'LB', 'Lebanon', 961, 1),
(122, 'LS', 'Lesotho', 266, 1),
(123, 'LR', 'Liberia', 231, 1),
(124, 'LY', 'Libya', 218, 1),
(125, 'LI', 'Liechtenstein', 423, 1),
(126, 'LT', 'Lithuania', 370, 1),
(127, 'LU', 'Luxembourg', 352, 1),
(128, 'MO', 'Macau S.A.R.', 853, 1),
(129, 'MK', 'Macedonia', 389, 1),
(130, 'MG', 'Madagascar', 261, 1),
(131, 'MW', 'Malawi', 265, 1),
(132, 'MY', 'Malaysia', 60, 1),
(133, 'MV', 'Maldives', 960, 1),
(134, 'ML', 'Mali', 223, 1),
(135, 'MT', 'Malta', 356, 1),
(136, 'XM', 'Man (Isle of)', 44, 1),
(137, 'MH', 'Marshall Islands', 692, 1),
(138, 'MQ', 'Martinique', 596, 1),
(139, 'MR', 'Mauritania', 222, 1),
(140, 'MU', 'Mauritius', 230, 1),
(141, 'YT', 'Mayotte', 269, 1),
(142, 'MX', 'Mexico', 52, 1),
(143, 'FM', 'Micronesia', 691, 1),
(144, 'MD', 'Moldova', 373, 1),
(145, 'MC', 'Monaco', 377, 1),
(146, 'MN', 'Mongolia', 976, 1),
(147, 'MS', 'Montserrat', 1664, 1),
(148, 'MA', 'Morocco', 212, 1),
(149, 'MZ', 'Mozambique', 258, 1),
(150, 'MM', 'Myanmar', 95, 1),
(151, 'NA', 'Namibia', 264, 1),
(152, 'NR', 'Nauru', 674, 1),
(153, 'NP', 'Nepal', 977, 1),
(154, 'AN', 'Netherlands Antilles', 599, 1),
(155, 'NL', 'Netherlands The', 31, 1),
(156, 'NC', 'New Caledonia', 687, 1),
(157, 'NZ', 'New Zealand', 64, 1),
(158, 'NI', 'Nicaragua', 505, 1),
(159, 'NE', 'Niger', 227, 1),
(160, 'NG', 'Nigeria', 234, 1),
(161, 'NU', 'Niue', 683, 1),
(162, 'NF', 'Norfolk Island', 672, 1),
(163, 'MP', 'Northern Mariana Islands', 1670, 1),
(164, 'NO', 'Norway', 47, 1),
(165, 'OM', 'Oman', 968, 1),
(166, 'PK', 'Pakistan', 92, 1),
(167, 'PW', 'Palau', 680, 1),
(168, 'PS', 'Palestinian Territory Occupied', 970, 1),
(169, 'PA', 'Panama', 507, 1),
(170, 'PG', 'Papua new Guinea', 675, 1),
(171, 'PY', 'Paraguay', 595, 1),
(172, 'PE', 'Peru', 51, 1),
(173, 'PH', 'Philippines', 63, 1),
(174, 'PN', 'Pitcairn Island', 0, 1),
(175, 'PL', 'Poland', 48, 1),
(176, 'PT', 'Portugal', 351, 1),
(177, 'PR', 'Puerto Rico', 1787, 1),
(178, 'QA', 'Qatar', 974, 1),
(179, 'RE', 'Reunion', 262, 1),
(180, 'RO', 'Romania', 40, 1),
(181, 'RU', 'Russia', 70, 1),
(182, 'RW', 'Rwanda', 250, 1),
(183, 'SH', 'Saint Helena', 290, 1),
(184, 'KN', 'Saint Kitts And Nevis', 1869, 1),
(185, 'LC', 'Saint Lucia', 1758, 1),
(186, 'PM', 'Saint Pierre and Miquelon', 508, 1),
(187, 'VC', 'Saint Vincent And The Grenadines', 1784, 1),
(188, 'WS', 'Samoa', 684, 1),
(189, 'SM', 'San Marino', 378, 1),
(190, 'ST', 'Sao Tome and Principe', 239, 1),
(191, 'SA', 'Saudi Arabia', 966, 1),
(192, 'SN', 'Senegal', 221, 1),
(193, 'RS', 'Serbia', 381, 1),
(194, 'SC', 'Seychelles', 248, 1),
(195, 'SL', 'Sierra Leone', 232, 1),
(196, 'SG', 'Singapore', 65, 1),
(197, 'SK', 'Slovakia', 421, 1),
(198, 'SI', 'Slovenia', 386, 1),
(199, 'XG', 'Smaller Territories of the UK', 44, 1),
(200, 'SB', 'Solomon Islands', 677, 1),
(201, 'SO', 'Somalia', 252, 1),
(202, 'ZA', 'South Africa', 27, 1),
(203, 'GS', 'South Georgia', 0, 1),
(204, 'SS', 'South Sudan', 211, 1),
(205, 'ES', 'Spain', 34, 1),
(206, 'LK', 'Sri Lanka', 94, 1),
(207, 'SD', 'Sudan', 249, 1),
(208, 'SR', 'Suriname', 597, 1),
(209, 'SJ', 'Svalbard And Jan Mayen Islands', 47, 1),
(210, 'SZ', 'Swaziland', 268, 1),
(211, 'SE', 'Sweden', 46, 1),
(212, 'CH', 'Switzerland', 41, 1),
(213, 'SY', 'Syria', 963, 1),
(214, 'TW', 'Taiwan', 886, 1),
(215, 'TJ', 'Tajikistan', 992, 1),
(216, 'TZ', 'Tanzania', 255, 1),
(217, 'TH', 'Thailand', 66, 1),
(218, 'TG', 'Togo', 228, 1),
(219, 'TK', 'Tokelau', 690, 1),
(220, 'TO', 'Tonga', 676, 1),
(221, 'TT', 'Trinidad And Tobago', 1868, 1),
(222, 'TN', 'Tunisia', 216, 1),
(223, 'TR', 'Turkey', 90, 1),
(224, 'TM', 'Turkmenistan', 7370, 1),
(225, 'TC', 'Turks And Caicos Islands', 1649, 1),
(226, 'TV', 'Tuvalu', 688, 1),
(227, 'UG', 'Uganda', 256, 1),
(228, 'UA', 'Ukraine', 380, 1),
(229, 'AE', 'United Arab Emirates', 971, 1),
(230, 'GB', 'United Kingdom', 44, 1),
(231, 'US', 'United States', 1, 1),
(232, 'UM', 'United States Minor Outlying Islands', 1, 1),
(233, 'UY', 'Uruguay', 598, 1),
(234, 'UZ', 'Uzbekistan', 998, 1),
(235, 'VU', 'Vanuatu', 678, 1),
(236, 'VA', 'Vatican City State (Holy See)', 39, 1),
(237, 'VE', 'Venezuela', 58, 1),
(238, 'VN', 'Vietnam', 84, 1),
(239, 'VG', 'Virgin Islands (British)', 1284, 1),
(240, 'VI', 'Virgin Islands (US)', 1340, 1),
(241, 'WF', 'Wallis And Futuna Islands', 681, 1),
(242, 'EH', 'Western Sahara', 212, 1),
(243, 'YE', 'Yemen', 967, 1),
(244, 'YU', 'Yugoslavia', 38, 1),
(245, 'ZM', 'Zambia', 260, 1),
(246, 'ZW', 'Zimbabwe', 263, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_type`
--

CREATE TABLE `currency_type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_type`
--

INSERT INTO `currency_type` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'USDT-TRC20-TRX', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(2, 'USDT-ERC20', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(3, 'USDT-OMNI', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(4, 'BTC', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(5, 'LTC', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(6, 'ETH', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(7, 'TRX', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11'),
(8, 'ADA', 1, '2024-03-21 19:13:11', '2024-03-21 19:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `addres` varchar(255) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`, `addres`, `email`, `phone`, `entry_by`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Bijon Ahmed', 'Dhaka', 'mdbijon@gmail.com', '5989899', NULL, 1, '2024-02-12 07:15:21', '2024-02-12 07:15:21'),
(4, 'Sumon Ahmed', 'Dhaka', 'sumon@gmail.com', '5748788', NULL, 1, '2024-02-12 07:20:35', '2024-02-12 07:20:35'),
(5, 'Robiul Islam', NULL, 'robiul@gmail.com', '2365989899', NULL, 1, '2024-02-12 07:31:40', '2024-02-12 07:31:40'),
(6, 'Mohammad Ibraheem', NULL, 'ibraheem@gmail.com', '5987999', NULL, 1, '2024-02-12 07:46:55', '2024-02-12 07:46:55');

-- --------------------------------------------------------

--
-- Table structure for table `customer_history`
--

CREATE TABLE `customer_history` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deposit`
--

CREATE TABLE `deposit` (
  `id` int(11) NOT NULL,
  `depositID` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deposit_amount` double(10,2) DEFAULT NULL,
  `receivable_amount` double(10,2) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `to_crypto_wallet_address` varchar(255) DEFAULT NULL,
  `frm_wallet_address` varchar(255) DEFAULT NULL,
  `trxId` varchar(255) DEFAULT NULL,
  `depscription` text DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0=Review,2=Reject,1=Approved',
  `approved_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposit`
--

INSERT INTO `deposit` (`id`, `depositID`, `user_id`, `deposit_amount`, `receivable_amount`, `payment_method`, `to_crypto_wallet_address`, `frm_wallet_address`, `trxId`, `depscription`, `wallet_address`, `status`, `approved_by`, `created_at`, `updated_at`) VALUES
(1, 'DEPOSIT.70c767c26cb3143bad5e660504fd6a76', 8, 24.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo1', 'DEPOSIT.70c767c26cb3143bad5e660504fd6a76', NULL, 0, NULL, '2024-07-14 04:52:20', '2024-07-14 04:52:20'),
(2, 'DEPOSIT.97e62d270e5e358a21b15119a6147b2f', 8, 151.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.97e62d270e5e358a21b15119a6147b2f', NULL, 0, NULL, '2024-07-14 04:52:44', '2024-07-14 04:52:44'),
(3, 'DEPOSIT.c4fa7aecedac73641320d24d5bf3bf38', 8, 801.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.c4fa7aecedac73641320d24d5bf3bf38', NULL, 0, NULL, '2024-07-14 04:52:55', '2024-07-14 04:52:55'),
(4, 'DEPOSIT.de58bfe3d33dada41a9398c30e21eeed', 8, 901.00, 33.00, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.de58bfe3d33dada41a9398c30e21eeed', NULL, 2, 1, '2024-07-14 04:53:09', '2024-07-14 11:58:35'),
(5, 'DEPOSIT.0b3f44d9054402de39441e165a4bdfe0', 8, 23.00, 20.00, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'ALSDJFLSAWOIESLDKFL', 'DEPOSIT.0b3f44d9054402de39441e165a4bdfe0', NULL, 1, 1, '2024-07-14 04:53:34', '2024-07-14 10:13:54'),
(6, 'DEPOSIT.182e6c2d3d78eef40e5dac7da77a748f', 8, 21.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TRX(TRC20)', 'DEPOSIT.182e6c2d3d78eef40e5dac7da77a748f', NULL, 0, NULL, '2024-07-14 11:58:58', '2024-07-14 11:58:58'),
(7, 'DEPOSIT.bc5fcb0018cecacba559dc512740091b', 8, 501.00, 501.00, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.bc5fcb0018cecacba559dc512740091b', NULL, 1, NULL, '2024-07-15 18:02:33', '2024-07-15 18:02:33'),
(8, 'DEPOSIT.0cc6928e741d75e7a92396317522069e', 9, 10001.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.0cc6928e741d75e7a92396317522069e', NULL, 1, NULL, '2024-07-16 04:18:09', '2024-07-16 04:18:09'),
(9, 'DEPOSIT.0c9cefe1e8ae67b9e0420e6a2f276876', 17, 501.00, NULL, 'TRX(TRC20)', 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 'DEPOSIT.0c9cefe1e8ae67b9e0420e6a2f276876', NULL, 1, NULL, '2024-07-16 23:44:37', '2024-07-16 23:44:37'),
(13, 'DEPOSIT.741a0099c9ac04c7bfc822caf7c7459f', 9, 1000.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.741a0099c9ac04c7bfc822caf7c7459f', NULL, 0, NULL, '2024-07-31 16:19:02', '2024-07-31 16:19:02'),
(14, 'DEPOSIT.24ec8468b67314c2013d215b77034476', 9, 200.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'DEPOSIT.24ec8468b67314c2013d215b77034476', NULL, 0, NULL, '2024-08-02 17:57:31', '2024-08-02 17:57:31');

-- --------------------------------------------------------

--
-- Table structure for table `expense_history`
--

CREATE TABLE `expense_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `operation_type` varchar(255) DEFAULT NULL,
  `amount_type` varchar(255) DEFAULT NULL,
  `operation_amount` double(10,2) DEFAULT NULL,
  `charge_description` varchar(255) DEFAULT NULL,
  `operation_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_history`
--

INSERT INTO `expense_history` (`id`, `user_id`, `business_type`, `operation_type`, `amount_type`, `operation_amount`, `charge_description`, `operation_date`, `created_at`, `updated_at`) VALUES
(1, 20, NULL, 'Debited', NULL, 2.00, 'ddd [ID: 1] ', '2024-06-22', '2024-06-22 06:59:05', '2024-06-22 06:59:05'),
(2, 20, NULL, 'Debited', NULL, 5.00, 'sss [ID: 2] ', '2024-06-22', '2024-06-22 07:07:37', '2024-06-22 07:07:37'),
(3, 20, NULL, 'Credited', NULL, 2.00, 'dd [ID: 3] ', '2024-06-22', '2024-06-22 07:15:18', '2024-06-22 07:15:18'),
(4, 20, NULL, 'Credited', NULL, 2.00, 'ffff [ID: 4] ', '2024-06-22', '2024-06-22 07:18:42', '2024-06-22 07:18:42'),
(5, 20, NULL, 'Credited', NULL, 2.00, 'fffffffffffffff [ID: 5] ', '2024-06-22', '2024-06-22 07:19:08', '2024-06-22 07:19:08'),
(6, 20, NULL, 'Debited', NULL, 5.00, 'Test [ID: 1] ', '2024-06-22', '2024-06-22 07:24:36', '2024-06-22 07:24:36'),
(7, 3, NULL, 'Debited', NULL, 5.00, 'ssss [ID: 2] ', '2024-06-22', '2024-06-22 07:25:46', '2024-06-22 07:25:46'),
(8, 3, NULL, 'Credited', NULL, 1.00, 'fff [ID: 3] ', '2024-06-22', '2024-06-22 07:27:10', '2024-06-22 07:27:10'),
(9, 9, NULL, 'Debited', NULL, 5000.00, 'sfsf [ID: 4] ', '2024-08-02', '2024-08-02 01:12:03', '2024-08-02 01:12:03'),
(10, 9, NULL, 'Debited', NULL, 10000.00, 'sss [ID: 1] ', '2024-08-02', '2024-08-02 01:17:17', '2024-08-02 01:17:17'),
(11, 9, NULL, 'Debited', NULL, 50000.00, 'Detailed remarksDetailed remarksDetailed remarks [ID: 2] ', '2024-08-02', '2024-08-02 01:20:18', '2024-08-02 01:20:18'),
(12, 9, NULL, 'Debited', NULL, 6000.00, 'dd [ID: 3] ', '2024-08-02', '2024-08-02 01:20:31', '2024-08-02 01:20:31'),
(13, 9, NULL, 'Credited', NULL, 6000.00, 'ddd [ID: 4] ', '2024-08-02', '2024-08-02 01:20:47', '2024-08-02 01:20:47'),
(14, 12, NULL, 'Debited', NULL, 1055.00, 'sfsf [ID: 5] ', '2024-08-02', '2024-08-02 01:50:22', '2024-08-02 01:50:22'),
(15, 12, NULL, 'Debited', NULL, 520.00, 's [ID: 6] ', '2024-08-02', '2024-08-02 01:50:39', '2024-08-02 01:50:39'),
(16, 9, NULL, 'Credited', NULL, 500.00, 'For Reward Purpose [ID: 7] ', '2024-08-02', '2024-08-02 01:51:42', '2024-08-02 01:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_wallet_address`
--

CREATE TABLE `global_wallet_address` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `lock_unlock` int(11) NOT NULL COMMENT '1=lock,0=unlock',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `global_wallet_address`
--

INSERT INTO `global_wallet_address` (`id`, `name`, `status`, `lock_unlock`, `created_at`, `updated_at`) VALUES
(1, 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 1, 1, '2024-07-12 18:37:40', '2024-07-15 22:18:01'),
(2, 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 1, 1, '2024-07-12 18:37:49', '2024-07-16 17:44:30'),
(3, 'TPuP8UP5CRBG5RxGy4fSQ1xf69ft5iwDWP', 1, 0, '2024-07-12 18:37:49', '2024-07-13 03:40:19'),
(4, 'TKhvhGhUjkn1GzTZrpM9hwoMZhXaPt9iVt', 1, 0, '2024-07-12 18:37:49', '2024-07-13 03:46:32'),
(5, 'TPNPcdTMUnq9HS1ejeZzGf7BJukq3NscQV', 1, 0, '2024-07-12 18:37:49', '2024-07-13 03:49:20'),
(6, 'TBhZ5ZyMbZjGpqYm8cxip9M2Nm3SjFeAgR', 1, 0, '2024-07-12 18:37:49', '2024-07-13 03:51:50'),
(7, 'TSZHRpspB9vZyUnX2JvHVjDo8MhpiNLjz9', 1, 0, '2024-07-12 18:37:49', '2024-07-13 05:38:18'),
(8, 'TZBt8EZmyFdxnRy7nCDUuNE1LFisSTqkLh', 1, 0, '2024-07-12 18:37:49', '2024-07-13 06:16:18'),
(9, 'TNkpRg6Zy6pZAM4hbCQe8jt3XVqM6HRRU5', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(10, 'TVp7PV8q3wSVKoj32DhpoMgH6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(11, 'TVp7PV8q3wSVKoj232DhpoMgH6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(12, 'TVp7PV8q3wSVKoj232DhpoMg2H6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(13, 'TVp7PV8q3wSVKoj23223DhpoMg2H6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(14, 'TVp7PV8q3wSVKoj232223DhpoMg2H6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(15, 'TVp7PV8q3wSVKoj232223DhpoM3g2H6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(16, 'TVp7PV8q3wSVKoj233DhpoM3g2H6Dd6SxN3jC', 1, 0, '2024-07-12 18:37:49', '2024-07-12 18:37:49'),
(17, 'dfsdfsfsfsadasdadasdsadasdasd', 1, 0, '2024-07-13 12:38:57', '2024-07-13 12:38:57'),
(18, '111111111###slfjldfjlsfjklskfl45', 1, 0, '2024-07-13 12:40:30', '2024-07-13 12:50:05');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `reserved_at` timestamp NULL DEFAULT NULL,
  `available_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cnicFrontFile` varchar(255) DEFAULT NULL,
  `cnicBackFile` varchar(255) DEFAULT NULL,
  `passportFile` varchar(255) DEFAULT NULL,
  `drivingFrontFile` varchar(255) DEFAULT NULL,
  `drivingBackFile` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 0 COMMENT '0=admin not approval\r\n1=admin approval',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kyc`
--

INSERT INTO `kyc` (`id`, `name`, `user_id`, `cnicFrontFile`, `cnicBackFile`, `passportFile`, `drivingFrontFile`, `drivingBackFile`, `status`, `created_at`, `updated_at`) VALUES
(1, 'cnic', 3, '/backend/files/z6ztsf2tMCcrtfMN3d03.jpg', '/backend/files/rrUDwGlky1d7gkDBhCkv.jpg', NULL, NULL, NULL, 0, '2024-06-13 01:02:00', '2024-06-13 01:02:00'),
(2, 'passport', 3, NULL, NULL, '/backend/files/1NPKwpf0fRIk24gzRbO0.jpg', NULL, NULL, 0, '2024-06-13 01:11:15', '2024-06-13 01:11:15'),
(3, 'driving', 3, NULL, NULL, NULL, '/backend/files/VAJzs8huSc6yZI3DzxjR.jpg', '/backend/files/tq14M26TBuS3WpjXBQXc.jpg', 0, '2024-06-13 01:19:03', '2024-06-13 01:19:03'),
(4, 'cnic', 2, '/backend/files/WjxsRtkU7DL8ujFiCa4Y.png', '/backend/files/6gRvKcQMjuQncByxPg2O.png', NULL, NULL, NULL, 0, '2024-06-13 01:28:02', '2024-06-13 01:28:02');

-- --------------------------------------------------------

--
-- Table structure for table `loan_pay_history`
--

CREATE TABLE `loan_pay_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `referrance_name` varchar(255) DEFAULT NULL COMMENT 'table ',
  `last_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=Loan,2=Pay',
  `amount` double(10,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_pay_history`
--

INSERT INTO `loan_pay_history` (`id`, `user_id`, `referrance_name`, `last_id`, `type`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 'loan_request', 3, 1, -900.00, 0, '2024-08-02 18:38:15', '2024-08-02 18:38:15'),
(3, 9, 'loan_request', 1, 1, -1200.00, 0, '2024-08-02 18:38:39', '2024-08-02 18:38:39'),
(13, 9, 'loan_request', 2, 1, -800.00, 0, '2024-08-02 18:38:39', '2024-08-02 18:38:39'),
(14, 9, 'loan_return_request', 2, 2, 100.00, 1, '2024-08-02 19:39:09', '2024-08-02 19:39:09'),
(15, 9, 'loan_return_request', 1, 2, 200.00, 1, '2024-08-02 19:39:40', '2024-08-02 19:39:40'),
(16, 9, 'loan_request', 4, 1, -1200.00, 0, '2024-08-02 19:47:29', '2024-08-02 19:47:29'),
(17, 9, 'loan_return_request', 3, 2, 3800.00, 0, '2024-08-03 05:02:21', '2024-08-03 05:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `loan_request`
--

CREATE TABLE `loan_request` (
  `id` int(11) NOT NULL,
  `loan_id` int(11) DEFAULT NULL,
  `loan_value` float(10,2) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT ' 	0=Review,2=Reject,1=Approved 	',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_request`
--

INSERT INTO `loan_request` (`id`, `loan_id`, `loan_value`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1200.00, 9, 1, '2024-08-02 18:37:49', '2024-08-02 18:38:39'),
(2, 2, 800.00, 9, 1, '2024-08-02 18:37:52', '2024-08-02 18:38:19'),
(3, 3, 900.00, 9, 1, '2024-08-02 18:37:54', '2024-08-02 18:38:15'),
(4, 4, 1200.00, 9, 1, '2024-08-02 19:47:00', '2024-08-02 19:47:29');

-- --------------------------------------------------------

--
-- Table structure for table `loan_return_request`
--

CREATE TABLE `loan_return_request` (
  `id` int(11) NOT NULL,
  `loanID` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `deposit_amount` double(10,2) DEFAULT NULL,
  `receivable_amount` double(10,2) DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `to_crypto_wallet_address` varchar(255) DEFAULT NULL,
  `frm_wallet_address` varchar(255) DEFAULT NULL,
  `trxId` varchar(255) DEFAULT NULL,
  `depscription` text DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0=Review,2=Reject,1=Approved',
  `approved_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_return_request`
--

INSERT INTO `loan_return_request` (`id`, `loanID`, `user_id`, `deposit_amount`, `receivable_amount`, `payment_method`, `to_crypto_wallet_address`, `frm_wallet_address`, `trxId`, `depscription`, `wallet_address`, `status`, `approved_by`, `created_at`, `updated_at`) VALUES
(1, 'LOAN.d768f8ec110b0207ba7a209f7975fbb1', 9, 200.00, 200.00, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'LOAN.d768f8ec110b0207ba7a209f7975fbb1', NULL, 1, 1, '2024-08-03 00:39:29', '2024-08-03 01:39:40'),
(2, 'LOAN.e327b1649d06bf74fceb4fe73f83bdba', 9, 100.00, 100.00, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'LOAN.e327b1649d06bf74fceb4fe73f83bdba', NULL, 1, 1, '2024-08-03 00:39:51', '2024-08-03 01:22:45'),
(3, 'LOAN.c203e4a1bdef9372cb9864bfc9b511cc', 9, 3800.00, 3800.00, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'LOAN.c203e4a1bdef9372cb9864bfc9b511cc', NULL, 1, 1, '2024-08-03 10:50:57', '2024-08-03 11:02:21');

-- --------------------------------------------------------

--
-- Table structure for table `loan_settings`
--

CREATE TABLE `loan_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `loan_settings`
--

INSERT INTO `loan_settings` (`id`, `name`, `thumnail_img`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Request', '/backend/files/ZIwd8fQVPpekqByETY8T.png', 5000, 1, '2024-08-01 16:44:27', '2024-08-01 18:55:18'),
(2, 'Request', '/backend/files/kZjPn8NZRnqJZCqc5ouO.png', 900, 1, '2024-08-01 16:45:32', '2024-08-01 18:55:14'),
(3, 'Request', '/backend/files/r9Mv0aZvFEzNOXrMcFit.png', 800, 1, '2024-08-01 16:45:32', '2024-08-01 18:55:08'),
(4, 'Request', '/backend/files/JcZbVp74ykwMNbYQxrOw.png', 1200, 1, '2024-08-01 16:45:32', '2024-08-01 18:55:02');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `method` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`method`, `url`, `ip_address`, `user_agent`, `user_id`, `created_at`, `updated_at`) VALUES
('POST', 'http://127.0.0.1:8000/api/auth/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-02 19:49:52', '2024-08-02 19:49:52'),
('GET', 'http://127.0.0.1:8000/api/user/checkLevelHistorys?email=jannat%40gmail.com', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:03:46', '2024-08-02 20:03:46'),
('GET', 'http://127.0.0.1:8000/api/user/allUsers?page=1&pageSize=10&searchQuery=&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:03:50', '2024-08-02 20:03:50'),
('GET', 'http://127.0.0.1:8000/api/trading/alltradingCategoryList?page=1&pageSize=10&searchQuery=&selectedFilter=0%2C1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:04:04', '2024-08-02 20:04:04'),
('GET', 'http://127.0.0.1:8000/api/trading/alltradingsubCategoryList?page=1&pageSize=10&searchQuery=&selectedFilter=0%2C1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:04:06', '2024-08-02 20:04:06'),
('GET', 'http://127.0.0.1:8000/api/trading/tradingdurationList?page=1&pageSize=10&searchQuery=&selectedFilter=0%2C1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:04:07', '2024-08-02 20:04:07'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:04:43', '2024-08-02 20:04:43'),
('GET', 'http://127.0.0.1:8000/api/trading/getTradingList?filterFrmDate=2024-08-03&filterToDate=2024-08-03&page=1&pageSize=10&searchEmail=&searchOrderId=&selectedFilter=5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:04:47', '2024-08-02 20:04:47'),
('GET', 'http://127.0.0.1:8000/api/trading/getTradingList?filterFrmDate=2024-07-31&filterToDate=2024-08-03&page=1&pageSize=10&searchEmail=&searchOrderId=&selectedFilter=5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:04:51', '2024-08-02 20:04:51'),
('GET', 'http://127.0.0.1:8000/api/auth/showProfileData', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:05:00', '2024-08-02 20:05:00'),
('POST', 'http://127.0.0.1:8000/api/auth/updateprofile', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:05:03', '2024-08-02 20:05:03'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:05:18', '2024-08-02 20:05:18'),
('GET', 'http://127.0.0.1:8000/api/auth/showProfileData', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-02 20:05:18', '2024-08-02 20:05:18'),
('POST', 'http://127.0.0.1:8000/api/auth/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, '2024-08-03 03:58:32', '2024-08-03 03:58:32'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:35', '2024-08-03 03:58:35'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:35', '2024-08-03 03:58:35'),
('GET', 'http://127.0.0.1:8000/api/trading/cerculatingSupply', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:35', '2024-08-03 03:58:35'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:35', '2024-08-03 03:58:35'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:35', '2024-08-03 03:58:35'),
('GET', 'http://127.0.0.1:8000/api/trading/getSetting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:35', '2024-08-03 03:58:35'),
('GET', 'http://127.0.0.1:8000/api/category/getMiningMainCategorys', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:36', '2024-08-03 03:58:36'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=1&miningCategoryId=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:37', '2024-08-03 03:58:37'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:37', '2024-08-03 03:58:37'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:37', '2024-08-03 03:58:37'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:37', '2024-08-03 03:58:37'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:37', '2024-08-03 03:58:37'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:38', '2024-08-03 03:58:38'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:38', '2024-08-03 03:58:38'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:39', '2024-08-03 03:58:39'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:39', '2024-08-03 03:58:39'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:39', '2024-08-03 03:58:39'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:39', '2024-08-03 03:58:39'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:39', '2024-08-03 03:58:39'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:39', '2024-08-03 03:58:39'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:40', '2024-08-03 03:58:40'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:40', '2024-08-03 03:58:40'),
('GET', 'http://127.0.0.1:8000/api/loan/allloanCenterlists', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:40', '2024-08-03 03:58:40'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=2&miningCategoryId=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:40', '2024-08-03 03:58:40'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=3&miningCategoryId=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:41', '2024-08-03 03:58:41'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=4&miningCategoryId=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:41', '2024-08-03 03:58:41'),
('GET', 'http://127.0.0.1:8000/api/loan/sendrequest?id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:58:44', '2024-08-03 03:58:44'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:59:00', '2024-08-03 03:59:00'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:59:00', '2024-08-03 03:59:00'),
('GET', 'http://127.0.0.1:8000/api/loan/allloanCenterlists', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:59:00', '2024-08-03 03:59:00'),
('POST', 'http://127.0.0.1:8000/api/auth/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 03:59:03', '2024-08-03 03:59:03'),
('POST', 'http://127.0.0.1:8000/api/auth/password/email', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, '2024-08-03 03:59:17', '2024-08-03 03:59:17'),
('POST', 'http://127.0.0.1:8000/api/auth/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, '2024-08-03 04:00:27', '2024-08-03 04:00:27'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:29', '2024-08-03 04:00:29'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:29', '2024-08-03 04:00:29'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=1&miningCategoryId=1&number=348', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:30', '2024-08-03 04:00:30'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:30', '2024-08-03 04:00:30'),
('GET', 'http://127.0.0.1:8000/api/trading/cerculatingSupply', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:30', '2024-08-03 04:00:30'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:30', '2024-08-03 04:00:30'),
('GET', 'http://127.0.0.1:8000/api/trading/getSetting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:30', '2024-08-03 04:00:30'),
('GET', 'http://127.0.0.1:8000/api/category/getMiningMainCategorys', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:31', '2024-08-03 04:00:31'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=2&miningCategoryId=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:31', '2024-08-03 04:00:31'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:32', '2024-08-03 04:00:32'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:32', '2024-08-03 04:00:32'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:32', '2024-08-03 04:00:32'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:33', '2024-08-03 04:00:33'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:33', '2024-08-03 04:00:33'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:33', '2024-08-03 04:00:33'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:33', '2024-08-03 04:00:33'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:34', '2024-08-03 04:00:34'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:34', '2024-08-03 04:00:34'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:34', '2024-08-03 04:00:34'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:34', '2024-08-03 04:00:34'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:34', '2024-08-03 04:00:34'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=3&miningCategoryId=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:35', '2024-08-03 04:00:35'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=4&miningCategoryId=4&number=1289', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:00:35', '2024-08-03 04:00:35'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:07', '2024-08-03 04:01:07'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:08', '2024-08-03 04:01:08'),
('GET', 'http://127.0.0.1:8000/api/trading/cerculatingSupply', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:08', '2024-08-03 04:01:08'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:08', '2024-08-03 04:01:08'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:08', '2024-08-03 04:01:08'),
('GET', 'http://127.0.0.1:8000/api/trading/getSetting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:08', '2024-08-03 04:01:08'),
('GET', 'http://127.0.0.1:8000/api/category/getMiningMainCategorys', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:08', '2024-08-03 04:01:08'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=1&miningCategoryId=1&number=460', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:09', '2024-08-03 04:01:09'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:09', '2024-08-03 04:01:09'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:10', '2024-08-03 04:01:10'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:10', '2024-08-03 04:01:10'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:10', '2024-08-03 04:01:10'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:10', '2024-08-03 04:01:10'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:10', '2024-08-03 04:01:10'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:11', '2024-08-03 04:01:11'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:11', '2024-08-03 04:01:11'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:11', '2024-08-03 04:01:11'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:12', '2024-08-03 04:01:12'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:12', '2024-08-03 04:01:12'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:12', '2024-08-03 04:01:12'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=2&miningCategoryId=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:12', '2024-08-03 04:01:12'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=3&miningCategoryId=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:12', '2024-08-03 04:01:12'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=4&miningCategoryId=4&number=1316', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:01:13', '2024-08-03 04:01:13'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:45', '2024-08-03 04:02:45'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:45', '2024-08-03 04:02:45'),
('GET', 'http://127.0.0.1:8000/api/trading/alltracatLists', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:45', '2024-08-03 04:02:45'),
('GET', 'http://127.0.0.1:8000/api/trading/allTradingHistoryData', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:45', '2024-08-03 04:02:45'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:54', '2024-08-03 04:02:54'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:54', '2024-08-03 04:02:54'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:55', '2024-08-03 04:02:55'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:55', '2024-08-03 04:02:55'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:55', '2024-08-03 04:02:55'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:55', '2024-08-03 04:02:55'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:55', '2024-08-03 04:02:55'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:56', '2024-08-03 04:02:56'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:56', '2024-08-03 04:02:56'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:56', '2024-08-03 04:02:56'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:56', '2024-08-03 04:02:56'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:02:58', '2024-08-03 04:02:58'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:03:00', '2024-08-03 04:03:00'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:03:01', '2024-08-03 04:03:01'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:03:22', '2024-08-03 04:03:22'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:03:22', '2024-08-03 04:03:22'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:03:22', '2024-08-03 04:03:22'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:03:22', '2024-08-03 04:03:22'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:03:22', '2024-08-03 04:03:22'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:03:23', '2024-08-03 04:03:23'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:03:23', '2024-08-03 04:03:23'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:03:23', '2024-08-03 04:03:23'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:20:59', '2024-08-03 04:20:59'),
('GET', 'http://127.0.0.1:8000/api/setting/settingrow', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:20:59', '2024-08-03 04:20:59'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:20:59', '2024-08-03 04:20:59'),
('POST', 'http://127.0.0.1:8000/api/loan/loanSendRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:18', '2024-08-03 04:21:18'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:24', '2024-08-03 04:21:24'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:24', '2024-08-03 04:21:24'),
('GET', 'http://127.0.0.1:8000/api/user/getInviteCode', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:24', '2024-08-03 04:21:24'),
('GET', 'http://127.0.0.1:8000/api/user/getLevelDetails', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:25', '2024-08-03 04:21:25'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:35', '2024-08-03 04:21:35'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:35', '2024-08-03 04:21:35'),
('GET', 'http://127.0.0.1:8000/api/user/checkPayment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:35', '2024-08-03 04:21:35'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:39', '2024-08-03 04:21:39'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:39', '2024-08-03 04:21:39'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:39', '2024-08-03 04:21:39'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:39', '2024-08-03 04:21:39'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:39', '2024-08-03 04:21:39'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:39', '2024-08-03 04:21:39'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:40', '2024-08-03 04:21:40'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:40', '2024-08-03 04:21:40'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:40', '2024-08-03 04:21:40'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:40', '2024-08-03 04:21:40'),
('GET', 'http://127.0.0.1:8000/api/user/checkPayment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:41', '2024-08-03 04:21:41'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:43', '2024-08-03 04:21:43'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:44', '2024-08-03 04:21:44'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:44', '2024-08-03 04:21:44'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:44', '2024-08-03 04:21:44'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:44', '2024-08-03 04:21:44'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:44', '2024-08-03 04:21:44'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:44', '2024-08-03 04:21:44'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:45', '2024-08-03 04:21:45'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:45', '2024-08-03 04:21:45'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:45', '2024-08-03 04:21:45'),
('GET', 'http://127.0.0.1:8000/api/user/checkPayment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:45', '2024-08-03 04:21:45'),
('POST', 'http://127.0.0.1:8000/api/user/addUserPaymentWallet', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:21:48', '2024-08-03 04:21:48'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:09', '2024-08-03 04:23:09'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:09', '2024-08-03 04:23:09'),
('GET', 'http://127.0.0.1:8000/api/user/checkPayment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:09', '2024-08-03 04:23:09'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:54', '2024-08-03 04:23:54'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:55', '2024-08-03 04:23:55'),
('GET', 'http://127.0.0.1:8000/api/user/checkPayment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:55', '2024-08-03 04:23:55'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:57', '2024-08-03 04:23:57'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:57', '2024-08-03 04:23:57'),
('GET', 'http://127.0.0.1:8000/api/reward/allrewardCenterlists', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:57', '2024-08-03 04:23:57'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:59', '2024-08-03 04:23:59'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:59', '2024-08-03 04:23:59'),
('GET', 'http://127.0.0.1:8000/api/user/checkPayment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:23:59', '2024-08-03 04:23:59'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:03', '2024-08-03 04:24:03'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:03', '2024-08-03 04:24:03'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:04', '2024-08-03 04:24:04'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:04', '2024-08-03 04:24:04'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:04', '2024-08-03 04:24:04'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:04', '2024-08-03 04:24:04'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:04', '2024-08-03 04:24:04'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:05', '2024-08-03 04:24:05'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:05', '2024-08-03 04:24:05'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:05', '2024-08-03 04:24:05'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:24:05', '2024-08-03 04:24:05'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:02', '2024-08-03 04:25:02'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:03', '2024-08-03 04:25:03'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:03', '2024-08-03 04:25:03'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:03', '2024-08-03 04:25:03'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:03', '2024-08-03 04:25:03'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:03', '2024-08-03 04:25:03'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:03', '2024-08-03 04:25:03'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:04', '2024-08-03 04:25:04'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:04', '2024-08-03 04:25:04'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:04', '2024-08-03 04:25:04'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=2024-08-01&toDate=2024-08-26&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:12', '2024-08-03 04:25:12'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:21', '2024-08-03 04:25:21'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:21', '2024-08-03 04:25:21'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:22', '2024-08-03 04:25:22'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:25:33', '2024-08-03 04:25:33'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:33:07', '2024-08-03 04:33:07'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:05', '2024-08-03 04:34:05'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:07', '2024-08-03 04:34:07'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:07', '2024-08-03 04:34:07'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:07', '2024-08-03 04:34:07'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:07', '2024-08-03 04:34:07'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:07', '2024-08-03 04:34:07'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:07', '2024-08-03 04:34:07'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:08', '2024-08-03 04:34:08'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:08', '2024-08-03 04:34:08'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:09', '2024-08-03 04:34:09'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:57', '2024-08-03 04:34:57'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:57', '2024-08-03 04:34:57'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:57', '2024-08-03 04:34:57'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:57', '2024-08-03 04:34:57'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:57', '2024-08-03 04:34:57'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:57', '2024-08-03 04:34:57'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:57', '2024-08-03 04:34:57'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:34:58', '2024-08-03 04:34:58'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:35:45', '2024-08-03 04:35:45'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:35:45', '2024-08-03 04:35:45'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:35:45', '2024-08-03 04:35:45'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:35:45', '2024-08-03 04:35:45'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:35:46', '2024-08-03 04:35:46'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:35:46', '2024-08-03 04:35:46'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:35:46', '2024-08-03 04:35:46'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:35:46', '2024-08-03 04:35:46'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:36:05', '2024-08-03 04:36:05'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:36:05', '2024-08-03 04:36:05'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:36:05', '2024-08-03 04:36:05'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:37:38', '2024-08-03 04:37:38'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:37:38', '2024-08-03 04:37:38'),
('GET', 'http://127.0.0.1:8000/api/loan/loanCheckYesNo', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:37:38', '2024-08-03 04:37:38'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:37:39', '2024-08-03 04:37:39'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:37:47', '2024-08-03 04:37:47'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:37:47', '2024-08-03 04:37:47'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:37:47', '2024-08-03 04:37:47'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:37:47', '2024-08-03 04:37:47'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:13', '2024-08-03 04:39:13'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:13', '2024-08-03 04:39:13'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:13', '2024-08-03 04:39:13'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:13', '2024-08-03 04:39:13');
INSERT INTO `logs` (`method`, `url`, `ip_address`, `user_agent`, `user_id`, `created_at`, `updated_at`) VALUES
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:17', '2024-08-03 04:39:17'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:18', '2024-08-03 04:39:18'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:18', '2024-08-03 04:39:18'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:18', '2024-08-03 04:39:18'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:46', '2024-08-03 04:39:46'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:46', '2024-08-03 04:39:46'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:46', '2024-08-03 04:39:46'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:46', '2024-08-03 04:39:46'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:53', '2024-08-03 04:39:53'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:53', '2024-08-03 04:39:53'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:53', '2024-08-03 04:39:53'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:53', '2024-08-03 04:39:53'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:57', '2024-08-03 04:39:57'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:57', '2024-08-03 04:39:57'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:57', '2024-08-03 04:39:57'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:39:57', '2024-08-03 04:39:57'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:08', '2024-08-03 04:40:08'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:08', '2024-08-03 04:40:08'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:09', '2024-08-03 04:40:09'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:09', '2024-08-03 04:40:09'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:27', '2024-08-03 04:40:27'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:27', '2024-08-03 04:40:27'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:27', '2024-08-03 04:40:27'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:27', '2024-08-03 04:40:27'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:39', '2024-08-03 04:40:39'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:39', '2024-08-03 04:40:39'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:39', '2024-08-03 04:40:39'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:39', '2024-08-03 04:40:39'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:42', '2024-08-03 04:40:42'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:42', '2024-08-03 04:40:42'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:42', '2024-08-03 04:40:42'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:40:43', '2024-08-03 04:40:43'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:41:00', '2024-08-03 04:41:00'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:41:00', '2024-08-03 04:41:00'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:41:01', '2024-08-03 04:41:01'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:41:01', '2024-08-03 04:41:01'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:14', '2024-08-03 04:44:14'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:15', '2024-08-03 04:44:15'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:15', '2024-08-03 04:44:15'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:15', '2024-08-03 04:44:15'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:15', '2024-08-03 04:44:15'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:15', '2024-08-03 04:44:15'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:15', '2024-08-03 04:44:15'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:16', '2024-08-03 04:44:16'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:16', '2024-08-03 04:44:16'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:16', '2024-08-03 04:44:16'),
('GET', 'http://127.0.0.1:8000/api/setting/settingrow', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:17', '2024-08-03 04:44:17'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:27', '2024-08-03 04:44:27'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:28', '2024-08-03 04:44:28'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:28', '2024-08-03 04:44:28'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:28', '2024-08-03 04:44:28'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:28', '2024-08-03 04:44:28'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:28', '2024-08-03 04:44:28'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:28', '2024-08-03 04:44:28'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:29', '2024-08-03 04:44:29'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:29', '2024-08-03 04:44:29'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:29', '2024-08-03 04:44:29'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:30', '2024-08-03 04:44:30'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:30', '2024-08-03 04:44:30'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:32', '2024-08-03 04:44:32'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:32', '2024-08-03 04:44:32'),
('GET', 'http://127.0.0.1:8000/api/setting/settingrow', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:32', '2024-08-03 04:44:32'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:34', '2024-08-03 04:44:34'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:34', '2024-08-03 04:44:34'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:34', '2024-08-03 04:44:34'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:44:34', '2024-08-03 04:44:34'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:46:58', '2024-08-03 04:46:58'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:09', '2024-08-03 04:48:09'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:10', '2024-08-03 04:48:10'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:10', '2024-08-03 04:48:10'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:10', '2024-08-03 04:48:10'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:40', '2024-08-03 04:48:40'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:40', '2024-08-03 04:48:40'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:41', '2024-08-03 04:48:41'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:41', '2024-08-03 04:48:41'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:44', '2024-08-03 04:48:44'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:44', '2024-08-03 04:48:44'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:44', '2024-08-03 04:48:44'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:48:45', '2024-08-03 04:48:45'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:49:06', '2024-08-03 04:49:06'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:49:07', '2024-08-03 04:49:07'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:49:07', '2024-08-03 04:49:07'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:49:07', '2024-08-03 04:49:07'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:45', '2024-08-03 04:50:45'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:45', '2024-08-03 04:50:45'),
('GET', 'http://127.0.0.1:8000/api/setting/settingrow', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:46', '2024-08-03 04:50:46'),
('POST', 'http://127.0.0.1:8000/api/loan/loanSendRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:57', '2024-08-03 04:50:57'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:59', '2024-08-03 04:50:59'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:59', '2024-08-03 04:50:59'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:59', '2024-08-03 04:50:59'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:59', '2024-08-03 04:50:59'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:59', '2024-08-03 04:50:59'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:59', '2024-08-03 04:50:59'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:50:59', '2024-08-03 04:50:59'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 04:51:00', '2024-08-03 04:51:00'),
('POST', 'http://127.0.0.1:8000/api/auth/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', NULL, '2024-08-03 05:02:09', '2024-08-03 05:02:09'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', NULL, '2024-08-03 05:02:10', '2024-08-03 05:02:10'),
('GET', 'http://127.0.0.1:8000/api/product/dashboardCounting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-03 05:02:10', '2024-08-03 05:02:10'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-03 05:02:10', '2024-08-03 05:02:10'),
('GET', 'http://127.0.0.1:8000/api/loan/getPayLoanReturnList?filterFrmDate=2024-08-03&filterToDate=2024-08-03&page=1&pageSize=10&searchEmail=&searchOrderId=&selectedFilter=5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-03 05:02:12', '2024-08-03 05:02:12'),
('GET', 'http://127.0.0.1:8000/api/loan/payLoanrow/3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-03 05:02:17', '2024-08-03 05:02:17'),
('POST', 'http://127.0.0.1:8000/api/loan/updatePayLoanReturnRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-03 05:02:21', '2024-08-03 05:02:21'),
('GET', 'http://127.0.0.1:8000/api/loan/getPayLoanReturnList?filterFrmDate=2024-08-03&filterToDate=2024-08-03&page=1&pageSize=10&searchEmail=&searchOrderId=&selectedFilter=5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:129.0) Gecko/20100101 Firefox/129.0', 1, '2024-08-03 05:02:21', '2024-08-03 05:02:21'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:25', '2024-08-03 05:02:25'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:26', '2024-08-03 05:02:26'),
('GET', 'http://127.0.0.1:8000/api/trading/alltracatLists', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:26', '2024-08-03 05:02:26'),
('GET', 'http://127.0.0.1:8000/api/trading/allTradingHistoryData', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:26', '2024-08-03 05:02:26'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:31', '2024-08-03 05:02:31'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:31', '2024-08-03 05:02:31'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:31', '2024-08-03 05:02:31'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:31', '2024-08-03 05:02:31'),
('GET', 'http://127.0.0.1:8000/api/loan/getAdminSendingLoan', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:31', '2024-08-03 05:02:31'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:31', '2024-08-03 05:02:31'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:32', '2024-08-03 05:02:32'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:32', '2024-08-03 05:02:32'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:36', '2024-08-03 05:02:36'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:37', '2024-08-03 05:02:37'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:37', '2024-08-03 05:02:37'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:37', '2024-08-03 05:02:37'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:38', '2024-08-03 05:02:38'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:59', '2024-08-03 05:02:59'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:59', '2024-08-03 05:02:59'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:02:59', '2024-08-03 05:02:59'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:03:00', '2024-08-03 05:03:00'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:10:27', '2024-08-03 05:10:27'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:10:47', '2024-08-03 05:10:47'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:10:49', '2024-08-03 05:10:49'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:10:53', '2024-08-03 05:10:53'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:10:53', '2024-08-03 05:10:53'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:10:58', '2024-08-03 05:10:58'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:10:58', '2024-08-03 05:10:58'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:11:02', '2024-08-03 05:11:02'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:11:03', '2024-08-03 05:11:03'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:11:03', '2024-08-03 05:11:03'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:11:03', '2024-08-03 05:11:03'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:11:09', '2024-08-03 05:11:09'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:11:16', '2024-08-03 05:11:16'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:11:16', '2024-08-03 05:11:16'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:11:16', '2024-08-03 05:11:16'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:11:17', '2024-08-03 05:11:17'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:11:29', '2024-08-03 05:11:29'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:12:56', '2024-08-03 05:12:56'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:14:18', '2024-08-03 05:14:18'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:14:58', '2024-08-03 05:14:58'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:15:08', '2024-08-03 05:15:08'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:12', '2024-08-03 05:17:12'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:13', '2024-08-03 05:17:13'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:13', '2024-08-03 05:17:13'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:13', '2024-08-03 05:17:13'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:38', '2024-08-03 05:17:38'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:38', '2024-08-03 05:17:38'),
('GET', 'http://127.0.0.1:8000/api/setting/settingrow', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:38', '2024-08-03 05:17:38'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:39', '2024-08-03 05:17:39'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:40', '2024-08-03 05:17:40'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:40', '2024-08-03 05:17:40'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:17:40', '2024-08-03 05:17:40'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:19:30', '2024-08-03 05:19:30'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:19:30', '2024-08-03 05:19:30'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:19:31', '2024-08-03 05:19:31'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:19:31', '2024-08-03 05:19:31'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:19:47', '2024-08-03 05:19:47'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:19:47', '2024-08-03 05:19:47'),
('GET', 'http://127.0.0.1:8000/api/loan/userWiseLoanCheck', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:19:47', '2024-08-03 05:19:47'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:19:47', '2024-08-03 05:19:47'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:34', '2024-08-03 05:21:34'),
('GET', 'http://127.0.0.1:8000/api/trading/getToken', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:35', '2024-08-03 05:21:35'),
('GET', 'http://127.0.0.1:8000/api/trading/cerculatingSupply', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:35', '2024-08-03 05:21:35'),
('GET', 'http://127.0.0.1:8000/api/trading/getCurrentPrice', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:35', '2024-08-03 05:21:35'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:35', '2024-08-03 05:21:35'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=1&miningCategoryId=1&number=716', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:35', '2024-08-03 05:21:35'),
('GET', 'http://127.0.0.1:8000/api/trading/getSetting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:35', '2024-08-03 05:21:35'),
('GET', 'http://127.0.0.1:8000/api/category/getMiningMainCategorys', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:36', '2024-08-03 05:21:36'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=2&miningCategoryId=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:36', '2024-08-03 05:21:36'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:37', '2024-08-03 05:21:37'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:38', '2024-08-03 05:21:38'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:38', '2024-08-03 05:21:38'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:38', '2024-08-03 05:21:38'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:38', '2024-08-03 05:21:38'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:38', '2024-08-03 05:21:38'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:38', '2024-08-03 05:21:38'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:39', '2024-08-03 05:21:39'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:39', '2024-08-03 05:21:39'),
('GET', 'http://127.0.0.1:8000/api/mining/timerUpdate?id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:39', '2024-08-03 05:21:39'),
('GET', 'http://127.0.0.1:8000/api/mining/miningProcessState?mining_category_id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:40', '2024-08-03 05:21:40'),
('GET', 'http://127.0.0.1:8000/api/mining/getOcnBalanceCatWise?id=4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:40', '2024-08-03 05:21:40'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=3&miningCategoryId=3', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:40', '2024-08-03 05:21:40'),
('GET', 'http://127.0.0.1:8000/api/mining/increastMiningCountdownBalance?id=4&miningCategoryId=4&number=1377', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 9, '2024-08-03 05:21:40', '2024-08-03 05:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `manual_adjustment`
--

CREATE TABLE `manual_adjustment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `adjustment_type` int(11) DEFAULT NULL COMMENT '1=loan\r\n2=reward',
  `adjustment_amount` int(11) DEFAULT NULL,
  `detailed_remarks` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manual_adjustment`
--

INSERT INTO `manual_adjustment` (`id`, `user_id`, `adjustment_type`, `adjustment_amount`, `detailed_remarks`, `entry_by`, `created_at`, `updated_at`) VALUES
(2, 9, 1, 50000, 'For Loan Purpose ', 1, '2024-08-01 19:20:18', '2024-08-01 19:20:18'),
(3, 9, 1, 6000, 'For Loan Purpose ', 1, '2024-08-01 19:20:31', '2024-08-01 19:20:31'),
(4, 9, 2, 6000, 'For Reward Purpose ', 1, '2024-08-01 19:20:47', '2024-08-01 19:20:47'),
(5, 9, 1, 1055, 'For Loan Purpose ', 1, '2024-08-01 19:50:22', '2024-08-01 19:50:22'),
(6, 9, 1, 520, 'For Loan Purpose ', 1, '2024-08-01 19:50:39', '2024-08-01 19:50:39'),
(7, 9, 2, 500, 'For Reward Purpose', 1, '2024-08-01 19:51:42', '2024-08-01 19:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `community_slug` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `username`, `community_slug`, `message`, `created_at`, `updated_at`) VALUES
(1, 3, 'b@gmail.com', 'community-english', 'Hi', '2024-06-12 10:15:21', '2024-06-12 10:15:21'),
(2, 3, 'b@gmail.com', 'community-english', 'Boss', '2024-06-12 10:15:24', '2024-06-12 10:15:24'),
(3, 3, 'b@gmail.com', 'community-english', 'how are you', '2024-06-12 10:15:29', '2024-06-12 10:15:29'),
(4, 2, 'r@gmail.com', 'community-english', 'yes sir good', '2024-06-12 10:16:09', '2024-06-12 10:16:09'),
(5, 2, 'r@gmail.com', 'community-english', 'what about now', '2024-06-12 10:16:14', '2024-06-12 10:16:14'),
(6, 3, 'b@gmail.com', 'community-chinese', 'HI', '2024-06-12 10:16:39', '2024-06-12 10:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 2),
(3, '2019_08_19_000000_create_failed_jobs_table', 3),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mininghistory`
--

CREATE TABLE `mininghistory` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mining_date` date DEFAULT NULL,
  `mining_amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mininghistory`
--

INSERT INTO `mininghistory` (`id`, `user_id`, `mining_date`, `mining_amount`, `created_at`, `updated_at`) VALUES
(1, 3, '2024-06-23', '0.00000870', '2024-06-23 16:35:28', '2024-06-23 16:35:28'),
(2, 3, '2024-06-23', '0.00000900', '2024-06-23 16:35:29', '2024-06-23 16:35:29'),
(3, 3, '2024-06-23', '0.00000930', '2024-06-23 16:35:30', '2024-06-23 16:35:30'),
(4, 3, '2024-06-23', '0.00000960', '2024-06-23 16:35:31', '2024-06-23 16:35:31'),
(5, 3, '2024-06-23', '0.00000990', '2024-06-23 16:35:32', '2024-06-23 16:35:32'),
(6, 3, '2024-06-23', '0.00001020', '2024-06-23 16:35:33', '2024-06-23 16:35:33'),
(7, 3, '2024-06-23', '0.00001050', '2024-06-23 16:35:34', '2024-06-23 16:35:34'),
(8, 3, '2024-06-23', '0.00001080', '2024-06-23 16:35:35', '2024-06-23 16:35:35'),
(9, 3, '2024-06-23', '0.00001110', '2024-06-23 16:35:36', '2024-06-23 16:35:36'),
(10, 3, '2024-06-23', '0.00001170', '2024-06-23 16:35:38', '2024-06-23 16:35:38'),
(11, 3, '2024-06-23', '0.00001200', '2024-06-23 16:35:39', '2024-06-23 16:35:39'),
(12, 3, '2024-06-23', '0.00001230', '2024-06-23 16:35:40', '2024-06-23 16:35:40'),
(13, 3, '2024-06-23', '0.00001260', '2024-06-23 16:35:41', '2024-06-23 16:35:41'),
(14, 3, '2024-06-23', '0.00001290', '2024-06-23 16:35:42', '2024-06-23 16:35:42'),
(15, 3, '2024-06-23', '0.00001320', '2024-06-23 16:35:43', '2024-06-23 16:35:43'),
(16, 3, '2024-06-23', '0.00001350', '2024-06-23 16:35:44', '2024-06-23 16:35:44'),
(17, 3, '2024-06-23', '0.00001380', '2024-06-23 16:35:45', '2024-06-23 16:35:45'),
(18, 3, '2024-06-23', '0.00001410', '2024-06-23 16:35:46', '2024-06-23 16:35:46'),
(19, 3, '2024-06-23', '0.00001440', '2024-06-23 16:35:47', '2024-06-23 16:35:47'),
(20, 3, '2024-06-20', '0.00001470', '2024-06-23 16:35:48', '2024-06-23 16:35:48'),
(21, 3, '2024-06-23', '0.00001500', '2024-06-23 16:35:49', '2024-06-23 16:35:49'),
(22, 3, '2024-06-23', '0.00001530', '2024-06-23 16:35:50', '2024-06-23 16:35:50'),
(23, 3, '2024-06-23', '0.00001560', '2024-06-23 16:35:51', '2024-06-23 16:35:51'),
(24, 3, '2024-06-20', '0.00001590', '2024-06-23 16:35:52', '2024-06-23 16:35:52'),
(25, 3, '2024-06-21', '0.00001620', '2024-06-23 16:35:54', '2024-06-23 16:35:54'),
(26, 3, '2024-06-21', '0.00001680', '2024-06-23 16:35:55', '2024-06-23 16:35:55'),
(27, 3, '2024-06-21', '0.00001710', '2024-06-23 16:35:56', '2024-06-23 16:35:56'),
(28, 3, '2024-06-23', '0.00001740', '2024-06-23 16:35:57', '2024-06-23 16:35:57'),
(29, 3, '2024-06-22', '0.00001770', '2024-06-23 16:35:58', '2024-06-23 16:35:58'),
(30, 3, '2024-06-22', '0.00001800', '2024-06-23 16:35:59', '2024-06-23 16:35:59'),
(31, 3, '2024-06-22', '0.00001830', '2024-06-23 16:36:00', '2024-06-23 16:36:00'),
(32, 8, '2024-07-16', '0.00164150', '2024-07-15 21:54:50', '2024-07-15 21:54:50'),
(33, 8, '2024-07-16', '0.00165550', '2024-07-15 21:55:18', '2024-07-15 21:55:18'),
(34, 8, '2024-07-16', '0.00165600', '2024-07-15 21:55:19', '2024-07-15 21:55:19'),
(35, 8, '2024-07-16', '0.00165650', '2024-07-15 21:55:20', '2024-07-15 21:55:20'),
(36, 8, '2024-07-16', '0.00165700', '2024-07-15 21:55:21', '2024-07-15 21:55:21'),
(37, 8, '2024-07-16', '0.00165750', '2024-07-15 21:55:22', '2024-07-15 21:55:22'),
(38, 8, '2024-07-16', '0.00165800', '2024-07-15 21:55:23', '2024-07-15 21:55:23'),
(39, 8, '2024-07-16', '0.00165850', '2024-07-15 21:55:24', '2024-07-15 21:55:24'),
(40, 8, '2024-07-16', '0.00165900', '2024-07-15 21:55:25', '2024-07-15 21:55:25'),
(41, 8, '2024-07-16', '0.00165950', '2024-07-15 21:55:26', '2024-07-15 21:55:26'),
(42, 8, '2024-07-16', '0.00166000', '2024-07-15 21:55:27', '2024-07-15 21:55:27'),
(43, 8, '2024-07-16', '0.00166100', '2024-07-15 21:55:29', '2024-07-15 21:55:29'),
(44, 8, '2024-07-16', '0.00166150', '2024-07-15 21:55:30', '2024-07-15 21:55:30'),
(45, 8, '2024-07-16', '0.00166200', '2024-07-15 21:55:31', '2024-07-15 21:55:31'),
(46, 8, '2024-07-16', '0.00166250', '2024-07-15 21:55:32', '2024-07-15 21:55:32'),
(47, 8, '2024-07-16', '0.00166300', '2024-07-15 21:55:33', '2024-07-15 21:55:33'),
(48, 8, '2024-07-16', '0.00166350', '2024-07-15 21:55:34', '2024-07-15 21:55:34'),
(49, 8, '2024-07-16', '0.00166400', '2024-07-15 21:55:35', '2024-07-15 21:55:35'),
(50, 8, '2024-07-16', '0.00166450', '2024-07-15 21:55:36', '2024-07-15 21:55:36'),
(51, 8, '2024-07-16', '0.00166500', '2024-07-15 21:55:37', '2024-07-15 21:55:37'),
(52, 8, '2024-07-16', '0.00166550', '2024-07-15 21:55:38', '2024-07-15 21:55:38'),
(53, 8, '2024-07-16', '0.00166600', '2024-07-15 21:55:39', '2024-07-15 21:55:39'),
(54, 8, '2024-07-16', '0.00166650', '2024-07-15 21:55:40', '2024-07-15 21:55:40'),
(55, 8, '2024-07-16', '0.00166700', '2024-07-15 21:55:41', '2024-07-15 21:55:41'),
(56, 8, '2024-07-16', '0.00166750', '2024-07-15 21:55:42', '2024-07-15 21:55:42'),
(57, 8, '2024-07-16', '0.00166800', '2024-07-15 21:55:43', '2024-07-15 21:55:43'),
(58, 8, '2024-07-16', '0.00166850', '2024-07-15 21:55:44', '2024-07-15 21:55:44'),
(59, 8, '2024-07-16', '0.00166950', '2024-07-15 21:55:46', '2024-07-15 21:55:46'),
(60, 8, '2024-07-16', '0.00167000', '2024-07-15 21:55:47', '2024-07-15 21:55:47'),
(61, 8, '2024-07-16', '0.00167050', '2024-07-15 21:55:48', '2024-07-15 21:55:48'),
(62, 8, '2024-07-16', '0.00167100', '2024-07-15 21:55:49', '2024-07-15 21:55:49'),
(63, 8, '2024-07-16', '0.00167150', '2024-07-15 21:55:50', '2024-07-15 21:55:50'),
(64, 8, '2024-07-16', '0.00167200', '2024-07-15 21:55:51', '2024-07-15 21:55:51'),
(65, 8, '2024-07-16', '0.00167250', '2024-07-15 21:55:52', '2024-07-15 21:55:52'),
(66, 8, '2024-07-16', '0.00167300', '2024-07-15 21:55:53', '2024-07-15 21:55:53'),
(67, 8, '2024-07-16', '0.00167350', '2024-07-15 21:55:54', '2024-07-15 21:55:54'),
(68, 8, '2024-07-16', '0.00167400', '2024-07-15 21:55:55', '2024-07-15 21:55:55'),
(69, 8, '2024-07-16', '0.00167450', '2024-07-15 21:55:56', '2024-07-15 21:55:56'),
(70, 8, '2024-07-16', '0.00167500', '2024-07-15 21:55:57', '2024-07-15 21:55:57'),
(71, 8, '2024-07-16', '0.00167550', '2024-07-15 21:55:58', '2024-07-15 21:55:58'),
(72, 8, '2024-07-16', '0.00167600', '2024-07-15 21:55:59', '2024-07-15 21:55:59'),
(73, 8, '2024-07-16', '0.00174550', '2024-07-15 21:58:18', '2024-07-15 21:58:18'),
(74, 8, '2024-07-16', '0.00174650', '2024-07-15 21:58:20', '2024-07-15 21:58:20'),
(75, 8, '2024-07-16', '0.00174700', '2024-07-15 21:58:21', '2024-07-15 21:58:21'),
(76, 8, '2024-07-16', '0.00174750', '2024-07-15 21:58:22', '2024-07-15 21:58:22'),
(77, 8, '2024-07-16', '0.00174800', '2024-07-15 21:58:23', '2024-07-15 21:58:23'),
(78, 8, '2024-07-16', '0.00174850', '2024-07-15 21:58:24', '2024-07-15 21:58:24'),
(79, 8, '2024-07-16', '0.00174900', '2024-07-15 21:58:25', '2024-07-15 21:58:25'),
(80, 8, '2024-07-16', '0.00174950', '2024-07-15 21:58:26', '2024-07-15 21:58:26'),
(81, 8, '2024-07-16', '0.00175000', '2024-07-15 21:58:27', '2024-07-15 21:58:27'),
(82, 8, '2024-07-16', '0.00175050', '2024-07-15 21:58:28', '2024-07-15 21:58:28'),
(83, 8, '2024-07-16', '0.00175100', '2024-07-15 21:58:29', '2024-07-15 21:58:29'),
(84, 8, '2024-07-16', '0.00175150', '2024-07-15 21:58:30', '2024-07-15 21:58:30'),
(85, 8, '2024-07-16', '0.00175200', '2024-07-15 21:58:31', '2024-07-15 21:58:31'),
(86, 8, '2024-07-16', '0.00175250', '2024-07-15 21:58:32', '2024-07-15 21:58:32'),
(87, 8, '2024-07-16', '0.00175300', '2024-07-15 21:58:33', '2024-07-15 21:58:33'),
(88, 8, '2024-07-16', '0.00175400', '2024-07-15 21:58:35', '2024-07-15 21:58:35'),
(89, 8, '2024-07-16', '0.00175450', '2024-07-15 21:58:36', '2024-07-15 21:58:36'),
(90, 8, '2024-07-16', '0.00175500', '2024-07-15 21:58:37', '2024-07-15 21:58:37'),
(91, 8, '2024-07-16', '0.00175550', '2024-07-15 21:58:38', '2024-07-15 21:58:38'),
(92, 8, '2024-07-16', '0.00175600', '2024-07-15 21:58:39', '2024-07-15 21:58:39'),
(93, 8, '2024-07-16', '0.00175650', '2024-07-15 21:58:40', '2024-07-15 21:58:40'),
(94, 8, '2024-07-16', '0.00175700', '2024-07-15 21:58:41', '2024-07-15 21:58:41'),
(95, 8, '2024-07-16', '0.00175750', '2024-07-15 21:58:42', '2024-07-15 21:58:42'),
(96, 8, '2024-07-16', '0.00175800', '2024-07-15 21:58:43', '2024-07-15 21:58:43'),
(97, 8, '2024-07-16', '0.00175850', '2024-07-15 21:58:44', '2024-07-15 21:58:44'),
(98, 8, '2024-07-16', '0.00175900', '2024-07-15 21:58:45', '2024-07-15 21:58:45'),
(99, 8, '2024-07-16', '0.00175950', '2024-07-15 21:58:46', '2024-07-15 21:58:46'),
(100, 8, '2024-07-16', '0.00176000', '2024-07-15 21:58:47', '2024-07-15 21:58:47'),
(101, 8, '2024-07-16', '0.00176050', '2024-07-15 21:58:48', '2024-07-15 21:58:48'),
(102, 8, '2024-07-16', '0.00176100', '2024-07-15 21:58:49', '2024-07-15 21:58:49'),
(103, 8, '2024-07-16', '0.00176150', '2024-07-15 21:58:50', '2024-07-15 21:58:50'),
(104, 8, '2024-07-16', '0.00176200', '2024-07-15 21:58:52', '2024-07-15 21:58:52'),
(105, 8, '2024-07-16', '0.00176300', '2024-07-15 21:58:53', '2024-07-15 21:58:53'),
(106, 8, '2024-07-16', '0.00176350', '2024-07-15 21:58:54', '2024-07-15 21:58:54'),
(107, 8, '2024-07-16', '0.00176400', '2024-07-15 21:58:55', '2024-07-15 21:58:55'),
(108, 8, '2024-07-16', '0.00176450', '2024-07-15 21:58:56', '2024-07-15 21:58:56'),
(109, 8, '2024-07-16', '0.00176500', '2024-07-15 21:58:57', '2024-07-15 21:58:57'),
(110, 8, '2024-07-16', '0.00176550', '2024-07-15 21:58:58', '2024-07-15 21:58:58'),
(111, 8, '2024-07-16', '0.00176600', '2024-07-15 21:58:59', '2024-07-15 21:58:59'),
(112, 8, '2024-07-16', '0.00176650', '2024-07-15 21:59:00', '2024-07-15 21:59:00'),
(113, 8, '2024-07-16', '0.00179550', '2024-07-15 21:59:58', '2024-07-15 21:59:58'),
(114, 8, '2024-07-16', '0.00179600', '2024-07-15 21:59:59', '2024-07-15 21:59:59'),
(115, 8, '2024-07-16', '0.00179650', '2024-07-15 22:00:00', '2024-07-15 22:00:00'),
(116, 8, '2024-07-16', '0.00180600', '2024-07-15 22:00:19', '2024-07-15 22:00:19'),
(117, 8, '2024-07-16', '0.00180650', '2024-07-15 22:00:20', '2024-07-15 22:00:20'),
(118, 8, '2024-07-16', '0.00180700', '2024-07-15 22:00:21', '2024-07-15 22:00:21'),
(119, 8, '2024-07-16', '0.00180750', '2024-07-15 22:00:22', '2024-07-15 22:00:22'),
(120, 8, '2024-07-16', '0.00180800', '2024-07-15 22:00:23', '2024-07-15 22:00:23'),
(121, 8, '2024-07-16', '0.00180850', '2024-07-15 22:00:24', '2024-07-15 22:00:24'),
(122, 8, '2024-07-16', '0.00180900', '2024-07-15 22:00:25', '2024-07-15 22:00:25'),
(123, 8, '2024-07-16', '0.00180950', '2024-07-15 22:00:26', '2024-07-15 22:00:26'),
(124, 8, '2024-07-16', '0.00181000', '2024-07-15 22:00:27', '2024-07-15 22:00:27'),
(125, 8, '2024-07-16', '0.00181100', '2024-07-15 22:00:29', '2024-07-15 22:00:29'),
(126, 8, '2024-07-16', '0.00181150', '2024-07-15 22:00:30', '2024-07-15 22:00:30'),
(127, 8, '2024-07-16', '0.00181200', '2024-07-15 22:00:31', '2024-07-15 22:00:31'),
(128, 8, '2024-07-16', '0.00181250', '2024-07-15 22:00:32', '2024-07-15 22:00:32'),
(129, 8, '2024-07-16', '0.00181300', '2024-07-15 22:00:33', '2024-07-15 22:00:33'),
(130, 8, '2024-07-16', '0.00181350', '2024-07-15 22:00:34', '2024-07-15 22:00:34'),
(131, 8, '2024-07-16', '0.00181400', '2024-07-15 22:00:35', '2024-07-15 22:00:35'),
(132, 8, '2024-07-16', '0.00181450', '2024-07-15 22:00:36', '2024-07-15 22:00:36'),
(133, 8, '2024-07-16', '0.00181500', '2024-07-15 22:00:37', '2024-07-15 22:00:37'),
(134, 8, '2024-07-16', '0.00181550', '2024-07-15 22:00:38', '2024-07-15 22:00:38'),
(135, 8, '2024-07-16', '0.00181600', '2024-07-15 22:00:39', '2024-07-15 22:00:39'),
(136, 8, '2024-07-16', '0.00181650', '2024-07-15 22:00:40', '2024-07-15 22:00:40'),
(137, 8, '2024-07-16', '0.00181700', '2024-07-15 22:00:41', '2024-07-15 22:00:41'),
(138, 8, '2024-07-16', '0.00181750', '2024-07-15 22:00:42', '2024-07-15 22:00:42'),
(139, 8, '2024-07-16', '0.00181800', '2024-07-15 22:00:43', '2024-07-15 22:00:43'),
(140, 8, '2024-07-16', '0.00181850', '2024-07-15 22:00:44', '2024-07-15 22:00:44'),
(141, 8, '2024-07-16', '0.00181900', '2024-07-15 22:00:46', '2024-07-15 22:00:46'),
(142, 8, '2024-07-16', '0.00182000', '2024-07-15 22:00:47', '2024-07-15 22:00:47'),
(143, 8, '2024-07-16', '0.00182050', '2024-07-15 22:00:48', '2024-07-15 22:00:48'),
(144, 8, '2024-07-16', '0.00182100', '2024-07-15 22:00:49', '2024-07-15 22:00:49'),
(145, 8, '2024-07-16', '0.00182150', '2024-07-15 22:00:50', '2024-07-15 22:00:50'),
(146, 8, '2024-07-16', '0.00182200', '2024-07-15 22:00:51', '2024-07-15 22:00:51'),
(147, 8, '2024-07-16', '0.00182250', '2024-07-15 22:00:52', '2024-07-15 22:00:52'),
(148, 8, '2024-07-16', '0.00182300', '2024-07-15 22:00:53', '2024-07-15 22:00:53'),
(149, 8, '2024-07-16', '0.00182350', '2024-07-15 22:00:54', '2024-07-15 22:00:54'),
(150, 8, '2024-07-16', '0.00182400', '2024-07-15 22:00:55', '2024-07-15 22:00:55'),
(151, 8, '2024-07-16', '0.00182450', '2024-07-15 22:00:56', '2024-07-15 22:00:56'),
(152, 8, '2024-07-16', '0.00182500', '2024-07-15 22:00:57', '2024-07-15 22:00:57'),
(153, 8, '2024-07-16', '0.00182550', '2024-07-15 22:00:58', '2024-07-15 22:00:58'),
(154, 8, '2024-07-16', '0.00182600', '2024-07-15 22:00:59', '2024-07-15 22:00:59'),
(155, 8, '2024-07-16', '0.00194750', '2024-07-15 22:05:02', '2024-07-15 22:05:02'),
(156, 8, '2024-07-16', '0.00194800', '2024-07-15 22:05:03', '2024-07-15 22:05:03'),
(157, 8, '2024-07-16', '0.00194850', '2024-07-15 22:05:04', '2024-07-15 22:05:04'),
(158, 8, '2024-07-16', '0.00194900', '2024-07-15 22:05:05', '2024-07-15 22:05:05'),
(159, 8, '2024-07-16', '0.00194950', '2024-07-15 22:05:06', '2024-07-15 22:05:06'),
(160, 8, '2024-07-16', '0.00195000', '2024-07-15 22:05:07', '2024-07-15 22:05:07'),
(161, 8, '2024-07-16', '0.00195050', '2024-07-15 22:05:09', '2024-07-15 22:05:09'),
(162, 8, '2024-07-16', '0.00195150', '2024-07-15 22:05:10', '2024-07-15 22:05:10'),
(163, 8, '2024-07-16', '0.00195200', '2024-07-15 22:05:11', '2024-07-15 22:05:11'),
(164, 8, '2024-07-16', '0.00195250', '2024-07-15 22:05:12', '2024-07-15 22:05:12'),
(165, 8, '2024-07-16', '0.00195300', '2024-07-15 22:05:13', '2024-07-15 22:05:13'),
(166, 8, '2024-07-16', '0.00195350', '2024-07-15 22:05:14', '2024-07-15 22:05:14'),
(167, 8, '2024-07-16', '0.00195400', '2024-07-15 22:05:15', '2024-07-15 22:05:15'),
(168, 8, '2024-07-16', '0.00195450', '2024-07-15 22:05:16', '2024-07-15 22:05:16'),
(169, 8, '2024-07-16', '0.00195500', '2024-07-15 22:05:17', '2024-07-15 22:05:17'),
(170, 8, '2024-07-16', '0.00195550', '2024-07-15 22:05:18', '2024-07-15 22:05:18'),
(171, 8, '2024-07-16', '0.00195600', '2024-07-15 22:05:19', '2024-07-15 22:05:19'),
(172, 8, '2024-07-16', '0.00195650', '2024-07-15 22:05:20', '2024-07-15 22:05:20'),
(173, 8, '2024-07-16', '0.00195700', '2024-07-15 22:05:21', '2024-07-15 22:05:21'),
(174, 8, '2024-07-16', '0.00195750', '2024-07-15 22:05:22', '2024-07-15 22:05:22'),
(175, 8, '2024-07-16', '0.00195800', '2024-07-15 22:05:23', '2024-07-15 22:05:23'),
(176, 8, '2024-07-16', '0.00195900', '2024-07-15 22:05:25', '2024-07-15 22:05:25'),
(177, 8, '2024-07-16', '0.00195900', '2024-07-15 22:05:25', '2024-07-15 22:05:25'),
(178, 8, '2024-07-16', '0.00196000', '2024-07-15 22:05:27', '2024-07-15 22:05:27'),
(179, 8, '2024-07-16', '0.00196050', '2024-07-15 22:05:28', '2024-07-15 22:05:28'),
(180, 8, '2024-07-16', '0.00196100', '2024-07-15 22:05:29', '2024-07-15 22:05:29'),
(181, 8, '2024-07-16', '0.00196150', '2024-07-15 22:05:30', '2024-07-15 22:05:30'),
(182, 8, '2024-07-16', '0.00196200', '2024-07-15 22:05:31', '2024-07-15 22:05:31'),
(183, 8, '2024-07-16', '0.00196250', '2024-07-15 22:05:32', '2024-07-15 22:05:32'),
(184, 8, '2024-07-16', '0.00196300', '2024-07-15 22:05:33', '2024-07-15 22:05:33'),
(185, 8, '2024-07-16', '0.00196350', '2024-07-15 22:05:34', '2024-07-15 22:05:34'),
(186, 8, '2024-07-16', '0.00196400', '2024-07-15 22:05:35', '2024-07-15 22:05:35'),
(187, 8, '2024-07-16', '0.00196450', '2024-07-15 22:05:36', '2024-07-15 22:05:36'),
(188, 8, '2024-07-16', '0.00196500', '2024-07-15 22:05:37', '2024-07-15 22:05:37'),
(189, 8, '2024-07-16', '0.00196550', '2024-07-15 22:05:38', '2024-07-15 22:05:38'),
(190, 8, '2024-07-16', '0.00196600', '2024-07-15 22:05:39', '2024-07-15 22:05:39'),
(191, 8, '2024-07-16', '0.00196650', '2024-07-15 22:05:40', '2024-07-15 22:05:40'),
(192, 8, '2024-07-16', '0.00196700', '2024-07-15 22:05:41', '2024-07-15 22:05:41'),
(193, 8, '2024-07-16', '0.00196800', '2024-07-15 22:05:43', '2024-07-15 22:05:43'),
(194, 8, '2024-07-16', '0.00196850', '2024-07-15 22:05:44', '2024-07-15 22:05:44'),
(195, 8, '2024-07-16', '0.00196900', '2024-07-15 22:05:45', '2024-07-15 22:05:45'),
(196, 8, '2024-07-16', '0.00196950', '2024-07-15 22:05:46', '2024-07-15 22:05:46'),
(197, 8, '2024-07-16', '0.00197000', '2024-07-15 22:05:47', '2024-07-15 22:05:47'),
(198, 8, '2024-07-16', '0.00197050', '2024-07-15 22:05:48', '2024-07-15 22:05:48'),
(199, 8, '2024-07-16', '0.00197100', '2024-07-15 22:05:49', '2024-07-15 22:05:49'),
(200, 8, '2024-07-16', '0.00197150', '2024-07-15 22:05:50', '2024-07-15 22:05:50'),
(201, 8, '2024-07-16', '0.00197200', '2024-07-15 22:05:51', '2024-07-15 22:05:51'),
(202, 8, '2024-07-16', '0.00197250', '2024-07-15 22:05:52', '2024-07-15 22:05:52'),
(203, 8, '2024-07-16', '0.00197300', '2024-07-15 22:05:53', '2024-07-15 22:05:53'),
(204, 8, '2024-07-16', '0.00197350', '2024-07-15 22:05:54', '2024-07-15 22:05:54'),
(205, 8, '2024-07-16', '0.00197450', '2024-07-15 22:05:56', '2024-07-15 22:05:56'),
(206, 8, '2024-07-16', '0.00197500', '2024-07-15 22:05:57', '2024-07-15 22:05:57'),
(207, 8, '2024-07-16', '0.00197550', '2024-07-15 22:05:58', '2024-07-15 22:05:58'),
(208, 8, '2024-07-16', '0.00197600', '2024-07-15 22:05:59', '2024-07-15 22:05:59'),
(209, 8, '2024-07-16', '0.00197650', '2024-07-15 22:06:00', '2024-07-15 22:06:00'),
(210, 9, '2024-07-16', '0.00000000', '2024-07-15 22:18:58', '2024-07-15 22:18:58'),
(211, 9, '2024-07-16', '0.00000000', '2024-07-15 22:18:59', '2024-07-15 22:18:59'),
(212, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:17', '2024-07-15 22:19:17'),
(213, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:18', '2024-07-15 22:19:18'),
(214, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:19', '2024-07-15 22:19:19'),
(215, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:20', '2024-07-15 22:19:20'),
(216, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:21', '2024-07-15 22:19:21'),
(217, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:22', '2024-07-15 22:19:22'),
(218, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:23', '2024-07-15 22:19:23'),
(219, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:24', '2024-07-15 22:19:24'),
(220, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:25', '2024-07-15 22:19:25'),
(221, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:26', '2024-07-15 22:19:26'),
(222, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:27', '2024-07-15 22:19:27'),
(223, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:28', '2024-07-15 22:19:28'),
(224, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:29', '2024-07-15 22:19:29'),
(225, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:30', '2024-07-15 22:19:30'),
(226, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:31', '2024-07-15 22:19:31'),
(227, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:32', '2024-07-15 22:19:32'),
(228, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:33', '2024-07-15 22:19:33'),
(229, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:34', '2024-07-15 22:19:34'),
(230, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:35', '2024-07-15 22:19:35'),
(231, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:37', '2024-07-15 22:19:37'),
(232, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:38', '2024-07-15 22:19:38'),
(233, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:39', '2024-07-15 22:19:39'),
(234, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:40', '2024-07-15 22:19:40'),
(235, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:41', '2024-07-15 22:19:41'),
(236, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:42', '2024-07-15 22:19:42'),
(237, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:43', '2024-07-15 22:19:43'),
(238, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:44', '2024-07-15 22:19:44'),
(239, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:45', '2024-07-15 22:19:45'),
(240, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:46', '2024-07-15 22:19:46'),
(241, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:47', '2024-07-15 22:19:47'),
(242, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:48', '2024-07-15 22:19:48'),
(243, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:49', '2024-07-15 22:19:49'),
(244, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:50', '2024-07-15 22:19:50'),
(245, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:51', '2024-07-15 22:19:51'),
(246, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:53', '2024-07-15 22:19:53'),
(247, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:53', '2024-07-15 22:19:53'),
(248, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:54', '2024-07-15 22:19:54'),
(249, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:56', '2024-07-15 22:19:56'),
(250, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:57', '2024-07-15 22:19:57'),
(251, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:58', '2024-07-15 22:19:58'),
(252, 9, '2024-07-16', '0.00000000', '2024-07-15 22:19:59', '2024-07-15 22:19:59'),
(253, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:00', '2024-07-15 22:20:00'),
(254, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:04', '2024-07-15 22:20:04'),
(255, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:06', '2024-07-15 22:20:06'),
(256, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:07', '2024-07-15 22:20:07'),
(257, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:08', '2024-07-15 22:20:08'),
(258, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:09', '2024-07-15 22:20:09'),
(259, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:10', '2024-07-15 22:20:10'),
(260, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:11', '2024-07-15 22:20:11'),
(261, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:12', '2024-07-15 22:20:12'),
(262, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:13', '2024-07-15 22:20:13'),
(263, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:14', '2024-07-15 22:20:14'),
(264, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:15', '2024-07-15 22:20:15'),
(265, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:16', '2024-07-15 22:20:16'),
(266, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:17', '2024-07-15 22:20:17'),
(267, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:18', '2024-07-15 22:20:18'),
(268, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:19', '2024-07-15 22:20:19'),
(269, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:20', '2024-07-15 22:20:20'),
(270, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:21', '2024-07-15 22:20:21'),
(271, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:22', '2024-07-15 22:20:22'),
(272, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:24', '2024-07-15 22:20:24'),
(273, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:25', '2024-07-15 22:20:25'),
(274, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:26', '2024-07-15 22:20:26'),
(275, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:27', '2024-07-15 22:20:27'),
(276, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:28', '2024-07-15 22:20:28'),
(277, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:29', '2024-07-15 22:20:29'),
(278, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:30', '2024-07-15 22:20:30'),
(279, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:31', '2024-07-15 22:20:31'),
(280, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:32', '2024-07-15 22:20:32'),
(281, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:33', '2024-07-15 22:20:33'),
(282, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:34', '2024-07-15 22:20:34'),
(283, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:35', '2024-07-15 22:20:35'),
(284, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:36', '2024-07-15 22:20:36'),
(285, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:37', '2024-07-15 22:20:37'),
(286, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:38', '2024-07-15 22:20:38'),
(287, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:39', '2024-07-15 22:20:39'),
(288, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:41', '2024-07-15 22:20:41'),
(289, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:42', '2024-07-15 22:20:42'),
(290, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:43', '2024-07-15 22:20:43'),
(291, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:44', '2024-07-15 22:20:44'),
(292, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:45', '2024-07-15 22:20:45'),
(293, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:46', '2024-07-15 22:20:46'),
(294, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:47', '2024-07-15 22:20:47'),
(295, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:48', '2024-07-15 22:20:48'),
(296, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:49', '2024-07-15 22:20:49'),
(297, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:50', '2024-07-15 22:20:50'),
(298, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:51', '2024-07-15 22:20:51'),
(299, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:52', '2024-07-15 22:20:52'),
(300, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:53', '2024-07-15 22:20:53'),
(301, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:54', '2024-07-15 22:20:54'),
(302, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:55', '2024-07-15 22:20:55'),
(303, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:56', '2024-07-15 22:20:56'),
(304, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:57', '2024-07-15 22:20:57'),
(305, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:58', '2024-07-15 22:20:58'),
(306, 9, '2024-07-16', '0.00000000', '2024-07-15 22:20:59', '2024-07-15 22:20:59');

-- --------------------------------------------------------

--
-- Table structure for table `mining_categogy`
--

CREATE TABLE `mining_categogy` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `duration_in_hour` int(11) DEFAULT NULL,
  `minute` int(11) DEFAULT NULL,
  `second` int(11) DEFAULT NULL,
  `minining_amount_per_secnd` varchar(255) DEFAULT NULL,
  `daily_mining_amount` varchar(255) DEFAULT NULL,
  `mining_value_mention_at_hour` varchar(255) DEFAULT NULL,
  `offer_description` text DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mining_categogy`
--

INSERT INTO `mining_categogy` (`id`, `name`, `slug`, `duration_in_hour`, `minute`, `second`, `minining_amount_per_secnd`, `daily_mining_amount`, `mining_value_mention_at_hour`, `offer_description`, `status`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 'Dolphin Digger', 'dolphin-digger', 1, 60, 3600, '0.00000000', 'null', '0.00000000', 'Save $0.00 max mining $13 max mining 1 hour Live Support', 1, 1, '2024-05-25 12:33:49', '2024-07-19 11:43:45'),
(2, 'Shark Driller', 'shark-driller', 2, 120, 7200, '0.00000000', 'null', '0.00000000', 'Save $0.00 max mining $13 max mining 1 hour Live Support', 1, 1, '2024-05-25 12:34:10', '2024-07-19 11:39:22'),
(3, 'Orca Drillmaster', 'orca-drillmaster', 4, 240, 14400, '0.0000005', 'null', 'null', 'Save $0.00 max mining $13 max mining 1 hour Live Support', 1, 1, '2024-05-25 12:34:29', '2024-07-19 11:39:15'),
(4, 'Whale Excavator', 'whale-excavator', 6, 360, 21600, '0.00000000', '0', '0.00000000', 'Save $0.00 max mining $13 max mining 1 hour Live Support', 1, 1, '2024-05-25 12:34:57', '2024-07-19 11:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `mining_categogy_duration`
--

CREATE TABLE `mining_categogy_duration` (
  `id` int(11) NOT NULL,
  `mining_category_id` int(11) DEFAULT NULL,
  `packages_name` varchar(255) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `prices` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mining_categogy_duration`
--

INSERT INTO `mining_categogy_duration` (`id`, `mining_category_id`, `packages_name`, `duration`, `prices`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dolphin Digger (30 Days)', '30', 10, 1, '2024-07-14 08:44:55', '2024-07-14 08:45:57'),
(2, 1, 'Dolphin Digger (60 Days)', '60', 18, 1, '2024-07-14 08:46:21', '2024-07-14 08:46:21'),
(3, 1, 'Dolphin Digger (90 Days)', '90', 25, 1, '2024-07-14 08:46:44', '2024-07-14 08:46:44'),
(4, 1, 'Dolphin Digger (120 Days)', '120', 32, 1, '2024-07-14 08:47:09', '2024-07-14 08:47:09'),
(5, 2, 'Shark Driller (30 Days)', '30', 10, 1, '2024-07-14 08:48:31', '2024-07-14 08:48:31'),
(6, 2, 'Shark Driller (60 Days)', '60', 18, 1, '2024-07-14 08:49:01', '2024-07-14 08:49:01'),
(7, 2, 'Shark Driller (90 Days)', '90', 25, 1, '2024-07-14 08:49:21', '2024-07-14 08:49:21'),
(8, 2, 'Shark Driller (120 Days)', '120', 32, 1, '2024-07-14 08:49:43', '2024-07-14 08:49:43'),
(9, 3, 'Orca Drillmaster (30 Days)', '30', 10, 1, '2024-07-14 08:50:56', '2024-07-14 08:50:56'),
(10, 3, 'Orca Drillmaster (60 Days)', '60', 18, 1, '2024-07-14 08:51:10', '2024-07-14 08:51:10'),
(11, 3, 'Orca Drillmaster (90 Days)', '90', 25, 1, '2024-07-14 08:51:25', '2024-07-14 08:51:25'),
(12, 3, 'Orca Drillmaster (120 Days)', '120', 32, 1, '2024-07-14 08:51:45', '2024-07-14 08:51:45'),
(13, 4, 'Whale Excavator (30 Days)', '30', 10, 1, '2024-07-14 08:52:35', '2024-07-14 08:52:35'),
(14, 4, 'Whale Excavator (60 Days)', '60', 18, 1, '2024-07-14 08:52:51', '2024-07-14 08:52:51'),
(15, 4, 'Whale Excavator (90 Days)', '90', 25, 1, '2024-07-14 08:53:13', '2024-07-14 08:53:13'),
(16, 4, 'Whale Excavator (120 Days)', '120', 32, 1, '2024-07-14 08:53:25', '2024-07-14 08:53:25');

-- --------------------------------------------------------

--
-- Table structure for table `mining_process_history`
--

CREATE TABLE `mining_process_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `mining_category_id` int(11) DEFAULT NULL,
  `boost_boot_setting_id` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=active, 0=inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mining_process_history`
--

INSERT INTO `mining_process_history` (`id`, `user_id`, `start_time`, `end_time`, `duration`, `mining_category_id`, `boost_boot_setting_id`, `ip`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, '2024-07-18 14:21:57', '2024-07-19 02:21:57', 12, 1, 2, '127.0.0.1', 0, '2024-07-18 14:21:57', '2024-07-18 14:22:29'),
(2, 9, '2024-07-18 14:22:16', '2024-07-19 14:22:16', 24, 1, 3, '127.0.0.1', 1, '2024-07-18 14:22:16', '2024-07-18 14:22:16'),
(3, 9, '2024-07-18 14:22:29', '2024-11-15 14:22:29', 2880, 1, 4, '127.0.0.1', 1, '2024-07-18 14:22:29', '2024-07-18 14:22:29'),
(4, 9, '2024-07-18 14:26:42', '2024-07-18 16:26:42', 2, 2, 5, '127.0.0.1', 0, '2024-07-18 14:26:42', '2024-07-30 10:37:51'),
(5, 9, '2024-07-18 14:26:45', '2024-07-19 02:26:45', 12, 2, 6, '127.0.0.1', 1, '2024-07-18 14:26:45', '2024-07-18 14:26:45'),
(6, 9, '2024-07-18 14:27:41', '2024-07-18 18:27:41', 4, 3, 9, '127.0.0.1', 0, '2024-07-18 14:27:41', '2024-07-31 17:29:01'),
(7, 9, '2024-07-18 14:28:27', '2024-07-18 20:28:27', 6, 4, 13, '127.0.0.1', 0, '2024-07-18 14:28:27', '2024-07-18 14:28:32'),
(8, 9, '2024-07-18 14:28:29', '2024-07-19 02:28:29', 12, 4, 14, '127.0.0.1', 1, '2024-07-18 14:28:29', '2024-07-18 14:28:29'),
(9, 9, '2024-07-18 14:28:30', '2024-07-19 14:28:30', 24, 4, 15, '127.0.0.1', 1, '2024-07-18 14:28:30', '2024-07-18 14:28:30'),
(10, 9, '2024-07-18 14:28:32', '2024-11-15 14:28:32', 2880, 4, 16, '127.0.0.1', 1, '2024-07-18 14:28:32', '2024-07-18 14:28:32'),
(11, 8, '2024-07-18 18:11:31', '2024-07-18 19:11:31', 1, 1, 0, '127.0.0.1', 1, '2024-07-18 18:11:31', '2024-07-18 18:11:31'),
(12, 8, '2024-07-18 18:13:44', '2024-07-18 20:13:44', 2, 2, 0, '127.0.0.1', 1, '2024-07-18 18:13:44', '2024-07-18 18:13:44'),
(13, 8, '2024-07-18 18:17:56', '2024-07-18 22:17:56', 4, 3, 0, '127.0.0.1', 1, '2024-07-18 18:17:56', '2024-07-18 18:17:56'),
(14, 8, '2024-07-18 18:19:26', '2024-07-19 00:19:26', 6, 4, 0, '127.0.0.1', 1, '2024-07-18 18:19:26', '2024-07-18 18:19:26'),
(15, 9, '2024-07-21 04:39:37', '2024-07-21 18:39:37', 12, 2, 6, '127.0.0.1', 1, '2024-07-21 04:39:37', '2024-07-21 04:39:37'),
(16, 9, '2024-07-21 04:39:51', '2024-07-21 12:39:51', 4, 3, 9, '127.0.0.1', 1, '2024-07-21 04:39:51', '2024-07-21 04:39:51'),
(17, 9, '2024-07-30 10:37:51', '2024-07-31 00:37:51', 12, 2, 6, '127.0.0.1', 1, '2024-07-30 10:37:51', '2024-07-30 10:37:51'),
(18, 9, '2024-07-31 17:29:01', '2024-08-01 01:29:01', 4, 3, 9, '127.0.0.1', 1, '2024-07-31 17:29:01', '2024-07-31 17:29:01');

-- --------------------------------------------------------

--
-- Table structure for table `mining_service_buy_history`
--

CREATE TABLE `mining_service_buy_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `purchase_by` int(11) DEFAULT NULL,
  `mining_category_id` int(11) DEFAULT NULL,
  `mining_category_duration_id` int(11) DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `service_price` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mining_service_buy_history`
--

INSERT INTO `mining_service_buy_history` (`id`, `user_id`, `purchase_by`, `mining_category_id`, `mining_category_duration_id`, `duration`, `service_price`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, NULL, 1, 1, '30', 10, '2024-07-16', '2024-08-16', NULL, '2024-07-15 20:53:58', '2024-07-15 20:53:58'),
(2, 8, NULL, 4, 13, '30', 10, '2024-07-16', '2024-08-16', NULL, '2024-07-15 20:54:07', '2024-07-15 20:54:07'),
(3, 8, NULL, 3, 12, '120', 32, '2024-07-16', '2024-11-16', NULL, '2024-07-15 21:00:01', '2024-07-15 21:00:01'),
(4, 9, NULL, 1, 1, '30', 10, '2024-07-16', '2024-08-16', NULL, '2024-07-15 22:18:34', '2024-07-15 22:18:34'),
(5, 8, NULL, 2, 5, '30', 10, '2024-07-16', '2024-08-16', NULL, '2024-07-16 11:52:28', '2024-07-16 11:52:28'),
(10, 17, 8, 3, 9, '30', 10, '2024-07-16', '2024-08-16', NULL, '2024-07-16 12:00:49', '2024-07-16 12:00:49'),
(11, 17, NULL, 4, 13, '30', 10, '2024-07-17', '2024-08-17', NULL, '2024-07-17 17:04:34', '2024-07-17 17:04:34'),
(12, 9, NULL, 3, 9, '30', 10, '2024-07-18', '2024-08-18', NULL, '2024-07-17 20:02:02', '2024-07-17 20:02:02'),
(13, 9, NULL, 4, 16, '120', 32, '2024-07-18', '2024-11-18', NULL, '2024-07-17 20:53:47', '2024-07-17 20:53:47'),
(14, 9, NULL, 2, 5, '30', 10, '2024-07-18', '2024-08-18', NULL, '2024-07-17 23:19:29', '2024-07-17 23:19:29');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `name` mediumtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `name`, `created_at`, `updated_at`) VALUES
(3, 'Cancelled Orde', '2024-06-27 15:17:28', '2024-06-27 15:17:28'),
(4, 'Great Speed Notify ', '2024-06-27 15:17:28', '2024-06-27 15:17:28'),
(5, 'Test Notification', '2024-06-27 16:10:04', '2024-06-27 16:10:04'),
(6, 'Web development', '2024-06-27 16:10:13', '2024-06-27 16:10:13'),
(7, 'Data Science', '2024-06-27 16:10:21', '2024-06-27 16:10:21');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `orderId` varchar(255) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `transfer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `selling_price` double(10,2) DEFAULT NULL,
  `profit` double(10,2) DEFAULT NULL,
  `buying_price` double(10,2) DEFAULT NULL COMMENT 'cost price',
  `user_balance` double(10,2) DEFAULT NULL,
  `user_mul_balance` double(10,2) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `product_qty` int(11) DEFAULT 1,
  `order_status` int(11) NOT NULL DEFAULT 1 COMMENT '1=To be paid\r\n                                                        2=To be confiremed\r\n                                                        3=Goods To be received\r\n                                                        4=Platform procced\r\n                                                        5=To be shipped\r\n                                                        6=Complete\r\n                                                        7=Canceled\r\n                                                        8=Returning\r\n                                                        9=Return complete\r\n                                                        10=Abnormal order',
  `status` int(11) DEFAULT 1,
  `order_type` varchar(255) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) DEFAULT NULL,
  `order_inactive_time` varchar(255) DEFAULT NULL,
  `pay_confirm_time` timestamp NULL DEFAULT NULL COMMENT 'After click on payment button',
  `goods_to_be_received_time` timestamp NULL DEFAULT NULL COMMENT '+30',
  `platform_proceed_Time` timestamp NULL DEFAULT NULL COMMENT '+60',
  `to_be_shipped_time` timestamp NULL DEFAULT NULL COMMENT '+90',
  `complete_time` timestamp NULL DEFAULT NULL COMMENT '+120',
  `cancel_time` timestamp NULL DEFAULT NULL,
  `return_time` timestamp NULL DEFAULT NULL,
  `return_complete_time` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT current_timestamp(),
  `abnormal_order_time` timestamp NULL DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `schedule_time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`, `description`, `schedule_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 'To be paid', 'To be paid', NULL, 1, '2023-12-04 11:15:23', '2023-12-04 05:55:06'),
(2, 'To be confiremed', 'To be confiremed', NULL, 1, '2023-12-04 11:15:23', '2023-12-04 05:55:48'),
(3, 'Goods To be received', 'Goods To be received', '30', 1, '2023-12-04 11:15:23', '2023-12-04 05:56:14'),
(4, 'Platform procced', 'Platform procced', '30', 1, '2023-12-04 11:15:23', '2023-12-04 05:56:45'),
(5, 'To be shipped', 'To be shipped', '30', 1, '2023-12-04 11:15:23', '2023-12-04 05:57:14'),
(6, 'Complete', 'Complete', '30', 1, '2023-12-04 11:15:23', '2023-12-04 05:57:42'),
(7, 'Canceled', 'Canceled', NULL, 1, '2023-12-04 11:15:23', '2023-12-04 05:58:19'),
(8, 'Returning', 'Returning', NULL, 1, '2023-12-04 11:15:23', '2023-12-04 05:58:53'),
(9, 'Return complete', 'Return complete', NULL, 1, '2023-12-04 11:15:23', '2023-12-04 05:59:17'),
(10, 'Abnormal order', 'Abnormal order', NULL, 1, '2023-12-04 11:15:23', '2023-12-04 05:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `created_at`) VALUES
(1, 'gazigiashuddin@gmail.com', 'cBk8LmFh6xfydQ2ao78Qznbj4XtNcPMSJRlNxSUePN07sEr9Vg2yCl3Ou9Y9', '2024-07-11 17:39:05'),
(2, 'gazigiashuddin@gmail.com', 'mhEUCcET2u0JHkrS9srpcahx1Uz9g7D4AcohXUW4VutHE5qiNw73Ozjifyi4', '2024-07-11 17:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description_short` text DEFAULT NULL,
  `description_full` text DEFAULT NULL,
  `question` text DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `name`, `status`) VALUES
(1, 'Announcement', 1),
(2, 'Event', 1),
(3, 'FAQs', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `description_short` text DEFAULT NULL,
  `description_full` text DEFAULT NULL,
  `selling_price` double(10,2) DEFAULT NULL,
  `profit` double(10,2) DEFAULT NULL,
  `buying_price` double(10,2) DEFAULT NULL,
  `qty_status` int(11) DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `product_tag` varchar(255) DEFAULT NULL,
  `brand` int(11) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `external_link` varchar(255) DEFAULT NULL,
  `sell_qty` int(11) DEFAULT NULL,
  `balance_qty` int(11) DEFAULT NULL,
  `cash_dev_status` int(11) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `stock_qty` int(11) DEFAULT NULL,
  `stock_mini_qty` int(11) DEFAULT NULL,
  `stock_status` int(11) DEFAULT NULL,
  `manufacturer` int(11) DEFAULT NULL,
  `download_link` varchar(255) DEFAULT NULL,
  `year` varchar(255) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `discount_status` int(11) DEFAULT NULL,
  `shipping_days` int(11) DEFAULT NULL,
  `free_shopping` int(11) DEFAULT NULL,
  `flat_rate_status` int(11) DEFAULT NULL,
  `flat_rate_price` double(10,5) DEFAULT NULL,
  `draw_details` text DEFAULT NULL,
  `vat` varchar(255) DEFAULT NULL,
  `vat_status` int(11) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `tax_status` int(11) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `entry_by` int(11) DEFAULT NULL,
  `counter` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produc_categories`
--

CREATE TABLE `produc_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produc_img_history`
--

CREATE TABLE `produc_img_history` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `images` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rewards_centers_settings`
--

CREATE TABLE `rewards_centers_settings` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rewards_centers_settings`
--

INSERT INTO `rewards_centers_settings` (`id`, `name`, `thumnail_img`, `value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Loan', '/backend/files/7kuJrvCYXGqWeCcJwftV.png', 100000, 1, '2024-08-01 01:38:34', '2024-08-01 16:50:01'),
(2, 'Cliam', '/backend/files/ExVOYf8TdmqpZk82YaLz.png', 900, 1, '2024-08-01 01:38:41', '2024-08-01 14:12:39'),
(3, 'Cliam', '/backend/files/SwjkvAaQvIYiZilAIJ45.png', 89, 1, '2024-08-01 01:38:41', '2024-08-01 14:12:22'),
(4, 'Cliam', '/backend/files/l6VRRqPRBZuyTJWdkhNz.png', 70, 1, '2024-08-01 01:38:41', '2024-08-01 14:12:13'),
(5, 'Cliam', '/backend/files/neOnOd2xWHfImGNyjNvJ.png', 60, 1, '2024-08-01 01:38:41', '2024-08-01 14:12:05'),
(6, 'Cliam', '/backend/files/bGpjwIcmtZAdRrNuEWtd.png', 560, 1, '2024-08-01 01:38:41', '2024-08-01 18:54:43'),
(7, 'Cliam', '/backend/files/AdKo1qz6rHkXbl4IDm7e.png', 230, 1, '2024-08-01 01:38:41', '2024-08-01 18:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `reward_center_request`
--

CREATE TABLE `reward_center_request` (
  `id` int(11) NOT NULL,
  `reward_center_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT ' 	0=Review,2=Reject,1=Approved 	',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reward_center_request`
--

INSERT INTO `reward_center_request` (`id`, `reward_center_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 9, 1, '2024-08-01 14:39:32', '2024-08-01 14:39:32'),
(2, 6, 9, 0, '2024-08-01 14:39:37', '2024-08-01 14:39:37'),
(3, 1, 9, 0, '2024-08-01 14:39:54', '2024-08-01 14:39:54'),
(4, 4, 8, 0, '2024-08-01 14:42:21', '2024-08-01 16:26:17'),
(6, 5, 9, 0, '2024-08-01 16:26:28', '2024-08-01 16:26:28'),
(7, 2, 9, 0, '2024-08-01 17:58:22', '2024-08-01 17:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `rule`
--

CREATE TABLE `rule` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rule`
--

INSERT INTO `rule` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 1, '2024-04-16 10:33:46', '2024-04-16 10:33:46'),
(2, 'User', 1, '2024-04-16 10:56:15', '2024-04-16 10:56:15'),
(3, 'Admin', 1, '2024-04-16 10:56:27', '2024-04-16 10:56:27'),
(4, 'Agent', 1, '2024-04-16 10:56:39', '2024-04-16 10:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `deposit_service_charge` int(11) DEFAULT NULL COMMENT '%',
  `convert_php_amt` float DEFAULT NULL,
  `withdraw_service_charge` int(11) DEFAULT NULL COMMENT '%',
  `withdraw_minimum_amount` int(11) DEFAULT NULL,
  `withdraw_maximum_amount` int(11) DEFAULT NULL,
  `minimum_trade_amount` int(11) DEFAULT NULL,
  `minimum_purchages_amt` int(11) DEFAULT NULL,
  `minimum_deposit_amount` int(11) DEFAULT NULL,
  `trade_fee` int(11) DEFAULT NULL COMMENT '%',
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` mediumtext NOT NULL,
  `whatsApp` varchar(255) NOT NULL,
  `emergency` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` mediumtext NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `admin_photo` varchar(244) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_phone` varchar(255) NOT NULL,
  `meta_keywords` mediumtext DEFAULT NULL,
  `meta_description` mediumtext DEFAULT NULL,
  `pphoto` varchar(255) NOT NULL,
  `bg_color` varchar(255) DEFAULT NULL,
  `currency` varchar(150) DEFAULT NULL,
  `openinig_balance_date` date DEFAULT NULL,
  `reffer_bonus` int(11) DEFAULT NULL,
  `maximum_supply` double(10,2) DEFAULT NULL,
  `total_supply` varchar(255) DEFAULT NULL,
  `openinig_balance_comments` mediumtext DEFAULT NULL,
  `fblink` varchar(255) DEFAULT NULL,
  `twitterlink` varchar(255) DEFAULT NULL,
  `linkdinlink` varchar(255) DEFAULT NULL,
  `instragramlink` varchar(255) DEFAULT NULL,
  `store_policy` longtext DEFAULT NULL,
  `crypto_wallet_address` varchar(255) DEFAULT NULL,
  `master_pass_acc_no` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `register_bonus` int(11) DEFAULT NULL,
  `mininmum_deposit_amount` double(10,2) DEFAULT NULL,
  `maximum_deposit_amount` double(10,2) DEFAULT NULL,
  `minimum_withdrawal` double(10,2) DEFAULT NULL,
  `maximum_withdrawal` double(10,2) DEFAULT NULL,
  `level_1_bonus` int(11) DEFAULT NULL,
  `level_2_bonus` int(11) DEFAULT NULL,
  `level_3_bonus` int(11) DEFAULT NULL,
  `ocn_purchage` double(10,2) DEFAULT NULL,
  `daily_max_withdraw_request` double(10,2) DEFAULT NULL,
  `withdrawal_free_amount` double(10,2) DEFAULT NULL,
  `withdrawal_free_on_percentage` double(10,2) DEFAULT NULL,
  `maximum_supply_level` varchar(255) DEFAULT NULL,
  `mimumun_transfer_amount_to_other_user` double(10,2) DEFAULT NULL,
  `maximum_transfer_amount_to_other_user` double(10,2) DEFAULT NULL,
  `transfer_fee_fixed_amount` double(10,2) DEFAULT NULL,
  `traansfer_fee_on_percentage` double(10,2) DEFAULT NULL,
  `total_supply_level` varchar(255) DEFAULT NULL,
  `liquidity_total_supply` varchar(255) DEFAULT NULL,
  `beganing_price` varchar(255) DEFAULT NULL,
  `circlation` varchar(255) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `name`, `deposit_service_charge`, `convert_php_amt`, `withdraw_service_charge`, `withdraw_minimum_amount`, `withdraw_maximum_amount`, `minimum_trade_amount`, `minimum_purchages_amt`, `minimum_deposit_amount`, `trade_fee`, `tel`, `email`, `address`, `whatsApp`, `emergency`, `photo`, `description`, `copyright`, `status`, `admin_photo`, `admin_name`, `admin_email`, `admin_phone`, `meta_keywords`, `meta_description`, `pphoto`, `bg_color`, `currency`, `openinig_balance_date`, `reffer_bonus`, `maximum_supply`, `total_supply`, `openinig_balance_comments`, `fblink`, `twitterlink`, `linkdinlink`, `instragramlink`, `store_policy`, `crypto_wallet_address`, `master_pass_acc_no`, `website`, `telegram`, `register_bonus`, `mininmum_deposit_amount`, `maximum_deposit_amount`, `minimum_withdrawal`, `maximum_withdrawal`, `level_1_bonus`, `level_2_bonus`, `level_3_bonus`, `ocn_purchage`, `daily_max_withdraw_request`, `withdrawal_free_amount`, `withdrawal_free_on_percentage`, `maximum_supply_level`, `mimumun_transfer_amount_to_other_user`, `maximum_transfer_amount_to_other_user`, `transfer_fee_fixed_amount`, `traansfer_fee_on_percentage`, `total_supply_level`, `liquidity_total_supply`, `beganing_price`, `circlation`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 'OCN TRADE AI', 5, 64, 5, 20, 4000, 5, 20, 20, 6, '+44245454545', 'ocn@abcd.com', 'Addres', '00000055555', '+000000', 'pic/2tAjiUpJ0X8GziIrKJJJ.png', 'Business Description', 'Copyright © 2024 uic . All Rights Reserved', 1, 'pic/ZOdc8nsWAMY1YELkp9zH.jpg', 'admin', 'info@admin.com', '+44245454545', NULL, NULL, '', '#ffffff', '$', '2020-05-13', 5, 30000000.00, '4500000', NULL, 'https://www.fiverr.com', 'https://www.facebook.com', 'https://web.whatsapp.com/', '#', '', 'TPpMvdKfhENfJqYZsDJQLgEopMRBy15jeU', '225588996633', 'http://winup360.com', '116898999999', 5, 55.00, 5.00, 20.00, 3690.00, 3, 2, 1, NULL, 5.00, 5.00, 5.00, '30 MILLION', 5.00, 5.00, 5.00, 50.00, '4.5 MILLION', '5000', '0.0011244444', 'null', 2993, '2024-05-12 05:32:50', '2024-05-12 03:42:05');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(11) NOT NULL,
  `images` varchar(255) DEFAULT NULL,
  `redirect_url` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trade`
--

CREATE TABLE `trade` (
  `id` int(11) NOT NULL,
  `tradeID` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'trading category_id',
  `subcategory_id` int(11) DEFAULT NULL COMMENT 'trading subcategory_id',
  `tradeAmount` decimal(10,2) DEFAULT NULL,
  `durationPercentage` int(11) DEFAULT NULL,
  `estProfit` decimal(10,2) DEFAULT NULL,
  `trading_fee` double(10,2) DEFAULT NULL,
  `net_profit` double(10,2) DEFAULT NULL,
  `return_amount` double(10,2) DEFAULT 0.00,
  `start_datetime` timestamp NULL DEFAULT NULL,
  `end_datetime` timestamp NULL DEFAULT NULL,
  `durationId` int(11) DEFAULT NULL,
  `durationDay` varchar(255) DEFAULT NULL,
  `durationHours` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `request_datetime` timestamp NULL DEFAULT current_timestamp(),
  `unique_md5` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trade`
--

INSERT INTO `trade` (`id`, `tradeID`, `user_id`, `category_id`, `subcategory_id`, `tradeAmount`, `durationPercentage`, `estProfit`, `trading_fee`, `net_profit`, `return_amount`, `start_datetime`, `end_datetime`, `durationId`, `durationDay`, `durationHours`, `status`, `created_at`, `updated_at`, `request_datetime`, `unique_md5`) VALUES
(1, 'TID000001', 9, 4, 16, 50.00, 10, 5.00, 0.25, 4.75, 54.75, '2024-07-30 20:49:49', '2024-07-30 20:51:20', 3, '7D', 168, 1, '2024-07-30 20:49:49', '2024-08-03 05:02:26', '2024-08-03 05:02:26', '1fd26d4acd2f25efe271259a6aaa53b7'),
(3, 'TID000002', 9, 4, 16, 50.00, 10, 5.00, 0.25, 4.75, 54.75, '2024-07-30 20:49:49', '2024-07-30 20:51:20', 3, '7D', 168, 1, '2024-07-30 20:49:49', '2024-08-03 05:02:26', '2024-08-03 05:02:26', '1fd26d4acd2f25efe271259a6aaa53b72');

--
-- Triggers `trade`
--
DELIMITER $$
CREATE TRIGGER `trade_update` BEFORE UPDATE ON `trade` FOR EACH ROW BEGIN
    -- User-defined variable for current timestamp
    SET @current_time = NOW();
    
    -- Check if the current time is past the end time of the task
    IF NEW.end_datetime <= @current_time THEN
        -- Set the status to '1'
        SET NEW.status = 1;

        -- Update the return_amount column with the sum of tradeAmount and net_profit
        SET NEW.return_amount = NEW.tradeAmount + NEW.net_profit;
          
    END IF;
    
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `trading_category`
--

CREATE TABLE `trading_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `banner_images` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trading_category`
--

INSERT INTO `trading_category` (`id`, `name`, `slug`, `thumnail_img`, `banner_images`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Crypto', 'crypto', '/backend/files/yoKAPslcqTiQkMkiBRyk.png', '/backend/files/gskUbw8F5jmzDshrYqwB.png', 1, '2024-07-25 16:40:29', '2024-07-25 20:50:11'),
(2, 'Currencies', 'currencies', '/backend/files/d4EXYljnzD8ORAInwHoe.png', '/backend/files/C629dEQal4JPMlUBHUYX.png', 1, '2024-07-25 16:40:29', '2024-07-25 22:13:26'),
(3, 'Stocks', 'stocks', '/backend/files/fDiGtIAi0hJVCoVcqDJN.png', '/backend/files/zMMuNgFwTwV9rP6ULBSA.png', 1, '2024-07-25 16:40:29', '2024-07-25 22:13:22'),
(4, 'Commodities', 'commodities', '/backend/files/9brQBFRK7okGdbJW0P0q.png', '/backend/files/r4AQrbj2WuBAkpmrSu5u.png', 1, '2024-07-25 16:40:29', '2024-07-25 22:13:18');

-- --------------------------------------------------------

--
-- Table structure for table `trading_duration`
--

CREATE TABLE `trading_duration` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `percentage` int(11) DEFAULT NULL COMMENT '%',
  `hours` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trading_duration`
--

INSERT INTO `trading_duration` (`id`, `name`, `percentage`, `hours`, `status`, `created_at`, `updated_at`) VALUES
(1, '1D', 5, 24, 1, '2024-07-26 15:30:49', '2024-07-26 15:30:49'),
(2, '3D', 7, 72, 1, '2024-07-26 15:30:49', '2024-07-26 15:30:49'),
(3, '7D', 10, 168, 1, '2024-07-26 15:30:49', '2024-07-26 15:30:49'),
(4, '15D', 15, 360, 1, '2024-07-26 15:30:49', '2024-07-26 15:30:49'),
(5, '30D', 20, 720, 1, '2024-07-26 15:30:49', '2024-07-26 15:30:49'),
(6, '45D', 25, 1080, 1, '2024-07-26 15:30:49', '2024-07-26 15:30:49'),
(7, '60D', 30, 1440, 1, '2024-07-26 15:30:49', '2024-07-26 15:30:49'),
(8, '90D', 35, 2160, 1, '2024-07-26 15:30:49', '2024-07-26 15:30:49');

-- --------------------------------------------------------

--
-- Table structure for table `trading_subcategory`
--

CREATE TABLE `trading_subcategory` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `thumnail_img` varchar(255) DEFAULT NULL,
  `trading_amunt` text DEFAULT NULL COMMENT 'need to daily update',
  `min_trade` int(11) DEFAULT NULL,
  `selected_graph` varchar(255) DEFAULT NULL COMMENT ' 	1=Crypto,2=Currencies,3=Stocks,4=Commodities 	',
  `trading_fee` int(11) DEFAULT NULL COMMENT '%',
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trading_subcategory`
--

INSERT INTO `trading_subcategory` (`id`, `category_id`, `name`, `slug`, `thumnail_img`, `trading_amunt`, `min_trade`, `selected_graph`, `trading_fee`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'BTC', 'btc-1', '/backend/files/enSgCCBZbGoMlNiq2C7p.png', '1000000000000', 20, '1', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:24:20'),
(2, 1, 'ETH', 'eth-1', '/backend/files/Cic9k79Sf7ppCjWA0Jy4.png', '1000000000000', 20, '1', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:24:07'),
(4, 1, 'SOL', 'sql-1', '/backend/files/agMG5prdanWkXot3gUng.png', '1000000000000', 20, '1', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:23:54'),
(5, 1, 'XRP', 'xrp-1', '/backend/files/Zjfissb682nCBmPofYft.png', '1000000000000', 20, '1', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:23:28'),
(6, 2, 'BTC', 'btc-2', '/backend/files/i8ujz0IL3jBwZkG3kf2Y.png', '1000000000000', 20, '2', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:23:17'),
(7, 2, 'ETH', 'eth-2', '/backend/files/mmpcM0CEcPQvdkNU1L9V.png', '1000000000000', 20, '2', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:23:02'),
(9, 2, 'SOL', 'sql-2', '/backend/files/JNcRYeJ5pThs9KW1vkUw.png', '1000000000000', 20, '2', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:21:33'),
(10, 2, 'XRP', 'xrp-2', '/backend/files/hFEYzC1r2zzVb4OG4h48.png', '1000000000000', 20, '2', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:21:11'),
(11, 3, 'BTC', 'btc-3', '/backend/files/GODJNzzx40MFaMSqxa86.png', '1000000000000', 20, '3', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:21:00'),
(12, 3, 'ETH', 'eth-3', '/backend/files/pWVFLE6mSbZlXxMuCCvu.png', '1000000000000', 20, '3', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:20:46'),
(14, 3, 'SOL', 'sol-3', '/backend/files/ZN7ZUNHUPvGFywdujjSy.png', '1000000000000', 20, '3', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:20:31'),
(15, 3, 'XRP', 'xrp-3', '/backend/files/GU1FmCRG8AH1JcFI5D6U.png', '1000000000000', 20, '3', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:20:17'),
(16, 4, 'BTC', 'btc-4', '/backend/files/TCWZujXkCpH7SovKkFLq.png', '1000000000000', 20, '4', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:14:34'),
(17, 4, 'ETH', 'eth-4', '/backend/files/DpIzDXpDx0hCrchjZkm9.png', '1000000000000', 20, '4', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:14:19'),
(19, 4, 'SOL', 'sol-4', '/backend/files/OlqYf7qhVa7X1N0w1TAD.png', '1000000000000', 20, '4', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:14:04'),
(20, 4, 'XRP', 'xrp-4', '/backend/files/l753f8m3yKGoAELNx5dA.png', '1000000000000', 20, '4', 5, 1, '2024-07-25 16:51:19', '2024-07-26 15:13:45');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_history`
--

CREATE TABLE `transaction_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL COMMENT '1=deposit,2=withdraw,3=machine purchase,4=Send/Receive',
  `last_Id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction_history`
--

INSERT INTO `transaction_history` (`id`, `user_id`, `type`, `last_Id`, `description`, `amount`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 7, 'Deposit', '22', '2024-07-13 18:32:34', '2024-07-13 18:32:34'),
(2, 8, 1, 8, 'Deposit', '23', '2024-07-13 18:34:02', '2024-07-13 18:34:02'),
(3, 8, 1, 9, 'Deposit', '26', '2024-07-13 22:42:24', '2024-07-13 22:42:24'),
(4, 8, 1, 1, 'Deposit', '24', '2024-07-13 22:52:20', '2024-07-13 22:52:20'),
(5, 8, 1, 2, 'Deposit', '151', '2024-07-13 22:52:44', '2024-07-13 22:52:44'),
(6, 8, 1, 3, 'Deposit', '801', '2024-07-13 22:52:55', '2024-07-13 22:52:55'),
(7, 8, 1, 4, 'Deposit', '901', '2024-07-13 22:53:09', '2024-07-13 22:53:09'),
(8, 8, 1, 5, 'Deposit', '23', '2024-07-13 22:53:34', '2024-07-13 22:53:34'),
(9, 8, 1, 6, 'Deposit', '21', '2024-07-14 05:58:58', '2024-07-14 05:58:58'),
(10, 8, 2, 1, 'Withdraw', '22', '2024-07-14 14:35:43', '2024-07-14 14:35:43'),
(11, 8, 2, 1, 'Withdraw', '22', '2024-07-14 14:37:46', '2024-07-14 14:37:46'),
(12, 8, 2, 2, 'Withdraw', '22', '2024-07-14 14:39:17', '2024-07-14 14:39:17'),
(13, 8, 2, 3, 'Withdraw', '18', '2024-07-14 14:39:51', '2024-07-14 14:39:51'),
(14, 8, 2, 4, 'Withdraw', '10', '2024-07-14 14:42:26', '2024-07-14 14:42:26'),
(15, 8, 2, 5, 'Withdraw', '15', '2024-07-14 14:45:04', '2024-07-14 14:45:04'),
(16, 8, 2, 6, 'Withdraw', '22', '2024-07-14 14:48:20', '2024-07-14 14:48:20'),
(17, 8, 2, 7, 'Withdraw', '22', '2024-07-14 14:49:17', '2024-07-14 14:49:17'),
(18, 8, 2, 8, 'Withdraw', '22', '2024-07-14 14:50:10', '2024-07-14 14:50:10'),
(19, 8, 2, 9, 'Withdraw', '22', '2024-07-14 14:50:25', '2024-07-14 14:50:25'),
(20, 8, 2, 10, 'Withdraw', '22', '2024-07-14 14:50:53', '2024-07-14 14:50:53'),
(21, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 60', NULL, '2024-07-14 21:52:04', '2024-07-14 21:52:04'),
(22, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 60', '18', '2024-07-14 22:14:38', '2024-07-14 22:14:38'),
(23, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 60', '18', '2024-07-14 22:15:51', '2024-07-14 22:15:51'),
(24, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-14 22:24:39', '2024-07-14 22:24:39'),
(25, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-14 22:26:53', '2024-07-14 22:26:53'),
(26, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-14 22:27:28', '2024-07-14 22:27:28'),
(27, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-14 22:29:33', '2024-07-14 22:29:33'),
(28, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-14 22:33:07', '2024-07-14 22:33:07'),
(29, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-14 22:55:10', '2024-07-14 22:55:10'),
(30, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-14 23:09:07', '2024-07-14 23:09:07'),
(31, 8, 1, 7, 'Deposit', '501', '2024-07-15 12:02:33', '2024-07-15 12:02:33'),
(32, 8, 3, 2, 'Mining Machine : [Shark Driller], Duration : 30', '10', '2024-07-15 12:34:30', '2024-07-15 12:34:30'),
(33, 8, 3, 3, 'Mining Machine : [Orca Drillmaster], Duration : 30', '10', '2024-07-15 12:34:44', '2024-07-15 12:34:44'),
(34, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-15 12:40:45', '2024-07-15 12:40:45'),
(35, 8, 3, 2, 'Mining Machine : [Shark Driller], Duration : 30', '10', '2024-07-15 12:41:16', '2024-07-15 12:41:16'),
(36, 8, 3, 3, 'Mining Machine : [Orca Drillmaster], Duration : 120', '32', '2024-07-15 13:33:44', '2024-07-15 13:33:44'),
(37, 8, 3, 4, 'Mining Machine : [Whale Excavator], Duration : 30', '10', '2024-07-15 13:34:25', '2024-07-15 13:34:25'),
(38, 8, 3, 5, 'Mining Machine : [Whale Excavator], Duration : 90', '25', '2024-07-15 14:36:21', '2024-07-15 14:36:21'),
(39, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-15 16:01:02', '2024-07-15 16:01:02'),
(40, 8, 3, 2, 'Mining Machine : [Shark Driller], Duration : 30', '10', '2024-07-15 16:15:50', '2024-07-15 16:15:50'),
(41, 8, 3, 3, 'Mining Machine : [Orca Drillmaster], Duration : 30', '10', '2024-07-15 20:20:57', '2024-07-15 20:20:57'),
(42, 8, 3, 4, 'Mining Machine : [Whale Excavator], Duration : 120', '32', '2024-07-15 20:25:14', '2024-07-15 20:25:14'),
(43, 8, 3, 5, 'Mining Machine : [Whale Excavator], Duration : 60', '18', '2024-07-15 20:33:26', '2024-07-15 20:33:26'),
(44, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-15 20:36:48', '2024-07-15 20:36:48'),
(45, 8, 3, 2, 'Mining Machine : [Orca Drillmaster], Duration : 120', '32', '2024-07-15 20:36:59', '2024-07-15 20:36:59'),
(46, 8, 3, 3, 'Mining Machine : [Shark Driller], Duration : 30', '10', '2024-07-15 20:43:00', '2024-07-15 20:43:00'),
(47, 8, 3, 4, 'Mining Machine : [Whale Excavator], Duration : 60', '18', '2024-07-15 20:43:11', '2024-07-15 20:43:11'),
(48, 8, 3, 1, 'Mining Machine : [Shark Driller], Duration : 60', '18', '2024-07-15 20:48:41', '2024-07-15 20:48:41'),
(49, 8, 3, 2, 'Mining Machine : [Dolphin Digger], Duration : 120', '32', '2024-07-15 20:49:09', '2024-07-15 20:49:09'),
(50, 8, 3, 1, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-15 20:53:58', '2024-07-15 20:53:58'),
(51, 8, 3, 2, 'Mining Machine : [Whale Excavator], Duration : 30', '10', '2024-07-15 20:54:07', '2024-07-15 20:54:07'),
(52, 8, 3, 3, 'Mining Machine : [Orca Drillmaster], Duration : 120', '32', '2024-07-15 21:00:01', '2024-07-15 21:00:01'),
(53, 9, 1, 8, 'Deposit', '10001', '2024-07-15 22:18:09', '2024-07-15 22:18:09'),
(54, 9, 3, 4, 'Mining Machine : [Dolphin Digger], Duration : 30', '10', '2024-07-15 22:18:34', '2024-07-15 22:18:34'),
(55, 8, 3, 5, 'Mining Machine : [Shark Driller], Duration : 30', '10', '2024-07-16 11:52:28', '2024-07-16 11:52:28'),
(56, 17, 3, 6, 'Mining Machine : [Shark Driller], Duration : 30', '10', '2024-07-16 11:53:50', '2024-07-16 11:53:50'),
(57, 17, 3, 7, 'Mining Machine : [Whale Excavator], Duration : 120', '32', '2024-07-16 11:54:39', '2024-07-16 11:54:39'),
(58, 17, 3, 8, 'Mining Machine : [Whale Excavator], Duration : 120', '32', '2024-07-16 11:57:38', '2024-07-16 11:57:38'),
(59, 17, 3, 9, 'Mining Machine : [Orca Drillmaster], Duration : 30', '10', '2024-07-16 11:59:54', '2024-07-16 11:59:54'),
(60, 17, 3, 10, 'Mining Machine : [Orca Drillmaster], Duration : 30', '10', '2024-07-16 12:00:49', '2024-07-16 12:00:49'),
(61, 17, 1, 9, 'Deposit', '501', '2024-07-16 17:44:37', '2024-07-16 17:44:37'),
(62, 17, 3, 11, 'Mining Machine : [Whale Excavator], Duration : 30', '10', '2024-07-17 17:04:34', '2024-07-17 17:04:34'),
(63, 9, 3, 12, 'Mining Machine : [Orca Drillmaster], Duration : 30', '10', '2024-07-17 20:02:02', '2024-07-17 20:02:02'),
(64, 9, 3, 13, 'Mining Machine : [Whale Excavator], Duration : 120', '32', '2024-07-17 20:53:47', '2024-07-17 20:53:47'),
(65, 9, 3, 14, 'Mining Machine : [Shark Driller], Duration : 30', '10', '2024-07-17 23:19:29', '2024-07-17 23:19:29'),
(66, 9, 1, 10, 'Deposit', '20001', '2024-07-31 10:14:50', '2024-07-31 10:14:50'),
(67, 9, 1, 11, 'Deposit', '20001', '2024-07-31 10:14:51', '2024-07-31 10:14:51'),
(68, 9, 1, 12, 'Deposit', '20001', '2024-07-31 10:14:51', '2024-07-31 10:14:51'),
(69, 9, 1, 13, 'Deposit', '1000', '2024-07-31 10:19:02', '2024-07-31 10:19:02'),
(70, 9, 1, 14, 'Deposit', '200', '2024-08-02 11:57:31', '2024-08-02 11:57:31'),
(71, 9, 2, 1, 'Withdraw', '500', '2024-08-03 04:34:06', '2024-08-03 04:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `previous_user_id` int(11) DEFAULT NULL,
  `transer_user_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ocn_id` varchar(255) DEFAULT NULL,
  `ocn_address` varchar(255) DEFAULT NULL,
  `inviteCode` varchar(255) DEFAULT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `available_balance` double(10,8) DEFAULT NULL,
  `mining_amount` varchar(255) DEFAULT NULL,
  `level_commission` int(11) DEFAULT NULL,
  `show_password` varchar(225) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(225) DEFAULT NULL,
  `image` varchar(225) DEFAULT NULL,
  `doc_file` varchar(255) DEFAULT NULL,
  `address` varchar(225) DEFAULT NULL,
  `address_1` varchar(255) DEFAULT NULL,
  `address_2` varchar(255) DEFAULT NULL,
  `website` varchar(225) DEFAULT NULL,
  `github` varchar(225) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `twitter` varchar(225) DEFAULT NULL,
  `instagram` varchar(225) DEFAULT NULL,
  `nationality_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `register_bonus` int(11) DEFAULT NULL,
  `otp` int(11) DEFAULT NULL,
  `facebook` varchar(225) DEFAULT NULL,
  `wallet_balance` decimal(10,2) DEFAULT NULL,
  `old_pin` varchar(255) DEFAULT '000000',
  `new_pin` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `whtsapp` varchar(255) DEFAULT NULL,
  `othersway_connect` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `register_ip` varchar(255) DEFAULT NULL,
  `lastlogin_ip` varchar(255) DEFAULT NULL,
  `lastlogin_country` varchar(255) DEFAULT NULL,
  `lastlogin_datetime` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `logged_out` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `ocn_id`, `ocn_address`, `inviteCode`, `ref_id`, `employee_id`, `role_id`, `email`, `available_balance`, `mining_amount`, `level_commission`, `show_password`, `password`, `name`, `real_name`, `phone_number`, `image`, `doc_file`, `address`, `address_1`, `address_2`, `website`, `github`, `gender`, `date_of_birth`, `twitter`, `instagram`, `nationality_id`, `state_id`, `register_bonus`, `otp`, `facebook`, `wallet_balance`, `old_pin`, `new_pin`, `email_verified_at`, `telegram`, `whtsapp`, `othersway_connect`, `remember_token`, `entry_by`, `register_ip`, `lastlogin_ip`, `lastlogin_country`, `lastlogin_datetime`, `created_at`, `updated_at`, `status`, `logged_out`) VALUES
(1, NULL, '6f21357fs863ce24ce21c1a82f49a7d5d13', '0000123', 0, 4, 1, 'dev1@mail.com', 1.00000000, NULL, 1, 'dev1@mail.com', '$2a$12$oT7dmrympiE1Y1tfnz8iIOYWGL1qLEtpB5LDmVAwVEhxZ6rPHLmJq', 'Dev1', NULL, '0000123', '/backend/files/hZkagctUSINKsFU64UJr.png', NULL, 'Dhaka', '', '', 'http://localhost:3000/profile', 'http://localhost:3000/profile', '', '1982-01-30', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 0, 0, 0, NULL, 'http://localhost:3000/profile', NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '127.0.0.1', NULL, '2024-08-03 11:02:09', '2023-06-22 03:20:43', '2024-08-03 05:02:09', 1, NULL),
(2, 'UIC000000002', '3839cc87060e26b9e4111f63af1ab7f4', '25409115', 1, NULL, 2, 'cadasd@gmail.com', 1.00000000, NULL, 1, '95998989989', '$2y$10$XqEIa.K8BnclhSw18g3KweXskOh1IQSrfO0tYmCOrzzoui5VlQ1C6', 'cadasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-10 14:25:40', '2024-07-10 16:21:17', 0, NULL),
(3, 'OCN000000003', 'd8c918769ac4145a3b53531acd4a3d7e', '33207501', 2, NULL, 2, 'jons@gmal.com', 1.00000000, NULL, 1, '25409115', '$2y$10$OQJffvL1z1xIXR41Zvgdx.8VD0KwPVD45/mg4FmLT0GDDUA5AIEBu', 'jons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-10 14:38:40', '2024-07-10 16:22:49', 0, NULL),
(4, 'OCN000000004', '1e6e3b49cc9b7746f8ab4d1f4f8da2ab', '47334704', 3, NULL, 2, 'mdbijon311131@gmail.com', 1.00000000, NULL, 1, '{{ $details[\'otp\'] }}', '$2y$10$OUtvSNhG7AQnXQELk/YxPOooaJU.hc0o883mJ/4OzKuBTdRPx53bG', 'mdbijon311131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-10 16:08:53', '2024-07-11 12:45:08', 0, NULL),
(5, 'OCN000000005', '82da8e4233dea2bda931b8dde29550c3', '59000614', 4, NULL, 2, 'mdbijo1n311131@gmail.com', 5.00000000, NULL, NULL, 'mdbijon311131@gmail.com', '$2y$10$GDKNaaZ3ti5KVBdXCOOMgOK0rpaiCwwKg0Qtp9tjjckvtqc.w.0zS', 'mdbijo1n311131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-10 16:11:40', '2024-07-10 16:11:40', 0, NULL),
(6, 'OCN000000006', '189e39170561e49e5710bd2c686838be', '60762015', 4, NULL, 2, 'kamal@gmail.com', 5.00000000, NULL, NULL, '72287228', '$2y$10$feZSpqPMNE8/kawdJyoXLOMhvAmFoyanLhAivfy4AM1hsENzQc15a', 'kamal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-10 16:14:36', '2024-07-10 16:14:36', 0, NULL),
(7, 'OCN000000007', 'ade0cd39d5f900bbb80eb148b6fef048', '74775396', 4, NULL, 2, 'mdbijon123@gmail.com', 1.00000000, NULL, 1, 'mdbijon123@gmail.com', '$2y$10$AhZtiWS22XxDXeiwowptnOOAuK37Rg.dJi8pfBSssqBifyIsO0amS', 'mdbijon123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-10 22:43:59', '2024-07-10 16:21:17', '2024-07-11 19:38:53', 1, NULL),
(8, 'OCN000000008', 'cd800a2aa5af56acb1d0acfaedc427e9', '85691278', 7, NULL, 2, 'gazigiashuddin@gmail.com', 1.00000000, '0.32264', 1, 'gazigiashuddin@gmail.com', '$2y$10$JXR7VeScf7yerzoy/wuhkuS2X.8oFe4/NKUsFHw0hxlSvzkihBOMa', 'gazigiashuddin', 'Bijon', '0018457877888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.twitter.com/', '', NULL, NULL, 5, NULL, 'https://www.facebook.com/', NULL, '123123', '123123', NULL, 'https://www.telegram.com/', '8801915728982', NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-08-01 20:42:07', '2024-07-10 16:22:49', '2024-08-01 14:42:07', 1, NULL),
(9, 'OCN000000009', '0d3a3ea346cd912d77ed72a874ee622a', '99082839', 8, NULL, 2, 'jannat@gmail.com', 3.00000000, '0', 3, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-08-03 10:00:27', '2024-07-11 12:45:08', '2024-08-03 04:00:27', 1, NULL),
(10, 'OCN000000010', '74f34e84897b400c0e2824b41b61bb42', '103604993', 9, NULL, 2, 'ibraheem@gmail.com', 5.00000000, NULL, NULL, 'ibraheem@gmail.com', '$2y$10$hmSSJFnKakgsL5GI6O3aSugtzZp5XYaUH.kHGPGMKS7ccp1GcsNSq', 'ibraheem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-11 19:42:51', '2024-07-11 13:42:40', '2024-07-11 13:42:51', 1, NULL),
(12, 'OCN0000002009', '0d3a3ea346cd912d77ed72a874ee3622a', '990828392', 8, NULL, 2, 'jannat1@gmail.com', 2.00000000, NULL, 2, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-12 01:33:34', '2024-07-11 12:45:08', '2024-07-11 20:09:13', 1, NULL),
(13, 'OCN0000003009', '0d3a3ea346cd912d77ed72a874ee36222a', '9908283922', 8, NULL, 2, 'jannat2@gmail.com', 3.00000000, NULL, 3, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-12 01:37:14', '2024-07-11 12:45:08', '2024-07-11 19:38:53', 1, NULL),
(15, 'OCN0000004009', '0d3a3ea346cd912d77ed72a874ee36222a4', '9908283924', 8, NULL, 2, 'jannat4@gmail.com', 3.00000000, NULL, 3, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-11 18:45:37', '2024-07-11 12:45:08', '2024-07-11 13:42:40', 1, NULL),
(16, 'OCN0000005009', '0d3a3ea346cd912d77ed72a874ee36222a5', '9908283924', 8, NULL, 2, 'jannat5@gmail.com', 3.00000000, NULL, 3, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-11 18:45:37', '2024-07-11 12:45:08', '2024-07-11 13:42:40', 1, NULL),
(17, 'OCN0000006009', '0d3a3ea346cd912d77ed72a874ee36222a6', '9908283924', 8, NULL, 2, 'jannat6@gmail.com', 3.00000000, NULL, 3, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-17 22:23:56', '2024-07-11 12:45:08', '2024-07-17 16:23:56', 1, NULL),
(18, 'OCN000000018', 'e3220262a4f162aa21c633db2d569ef0', '180177205', 9, NULL, 2, 'ibraheem1@gmail.com', 5.00000000, NULL, NULL, 'ibraheem1@gmail.com', '$2y$10$eqHFpCmbUVbh5WBDk82reO2NO/c8dZbHL9.zrbyQwqkKM.VXeeytO', 'ibraheem1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:26:57', '2024-07-11 19:26:57', 1, NULL),
(19, 'OCN000000019', '82b835dd13aa62eacf5a4412bab0ee1c', '190681736', 9, NULL, 2, 'ibraheem2@gmail.com', 5.00000000, NULL, NULL, 'ibraheem2@gmail.com', '$2y$10$IHM6zlTrpAW/eRi6811h5OXKqXg.nwnoyYHbEHTW1t/LuHEbi9Kb6', 'ibraheem2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:27:48', '2024-07-11 19:27:48', 1, NULL),
(20, 'OCN000000020', '773e7403ca89fe1d23b045b6c1850dc4', '201197377', 9, NULL, 2, 'ibraheem3@gmail.com', 5.00000000, NULL, NULL, 'ibraheem3@gmail.com', '$2y$10$LuNoRL3tYg6Ja20bOSsN3.6durQ1N1GHoShgl979hGF8XDLly/VWu', 'ibraheem3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-17 18:41:11', '2024-07-11 19:28:39', '2024-07-17 12:41:11', 1, NULL),
(21, 'OCN000000021', 'af9d5f01ed9cc50229f5c41c96b45a38', '212656418', 9, NULL, 2, 'ayesha1@gmail.com', 5.00000000, NULL, NULL, 'ayesha1@gmail.com', '$2y$10$QXPg.EhPVGFEWRpMpx6k0./fxE1wxAEb8QX.Vg0eJDfvNUyHWKKtO', 'ayesha1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:31:05', '2024-07-11 19:31:05', 1, NULL),
(22, 'OCN000000022', '1dc73ef4d95965208d489399eed0cbf6', '222965968', 9, NULL, 2, 'ayesha2@gmail.com', 5.00000000, NULL, NULL, 'ayesha1@gmail.com', '$2y$10$zPQdOwMfEFeJ1gXrnenQsuT2VCuGX0G483Vn2.gsdGJ5HldrtYcnG', 'ayesha2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:31:36', '2024-07-11 19:31:36', 1, NULL),
(23, 'OCN000000023', '9dc81ad861d8b605360742565e434044', '234805003', 12, NULL, 2, 'sharmin1@gmail.com', 5.00000000, NULL, NULL, 'sharmin1@gmail.com', '$2y$10$7zcoqZdrwBUoHE824efqKuMoMUOSoYkPYKmMhNHX0sCDvzsu6QOoG', 'sharmin1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:34:40', '2024-07-11 19:34:40', 1, NULL),
(24, 'OCN000000024', '0a2c22d06695fed3c248f933a2764659', '245365148', 12, NULL, 2, 'sharmin2@gmail.com', 5.00000000, NULL, NULL, 'sharmin2@gmail.com', '$2y$10$x/oHo2yqmaZS.nls3ywWZedTET3UhhD1lAIMfXROzvcIe.LjW0aK6', 'sharmin2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:35:36', '2024-07-11 19:35:36', 1, NULL),
(25, 'OCN000000025', '2c32652d38e7830bc4a9f951e06c215b', '255826052', 12, NULL, 2, 'sharmin3@gmail.com', 3.00000000, NULL, 3, 'sharmin3@gmail.com', '$2y$10$reou0aF/Jn4qmBh651bF4O1OG.7.6UF1t8Y11d0/f5auJT7T/265W', 'sharmin3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-12 01:52:49', '2024-07-11 19:36:22', '2024-07-11 20:09:13', 1, NULL),
(26, 'OCN000000026', '92d4086b525a0244e474d2cd5b8bfa80', '266734604', 13, NULL, 2, 'gazi1@gmail.com', 5.00000000, NULL, NULL, 'gazi1@gmail.com', '$2y$10$fn0N0obfRPrSZPA.MjtnaOT0VB07oh2LuuRvTV0zjrrnZ18Qm5DRq', 'gazi1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:37:53', '2024-07-11 19:37:53', 1, NULL),
(27, 'OCN000000027', '87f06a411db8d785643fc6665a800f3f', '277331967', 13, NULL, 2, 'gazi2@gmail.com', 5.00000000, NULL, NULL, 'gazi2@gmail.com', '$2y$10$oGoCgg17WPhFqmiqI76R6eZga9utEQPZn53ZGDWcWH.4EycuTl9pq', 'gazi2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-19 17:37:04', '2024-07-11 19:38:53', '2024-07-19 11:37:04', 1, NULL),
(28, 'OCN000000028', '11885a7c11645736cb90e58bc93f1b85', '286232443', 25, NULL, 2, 'kamal1@gmail.com', 5.00000000, NULL, NULL, 'kamal1@gmail.com', '$2y$10$if6CLJjnPaco84ebbGOp4u52PyJn93LyjUFX82maDIjPmIGZwjgWy', 'kamal1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:53:43', '2024-07-11 19:53:43', 1, NULL),
(29, 'OCN000000029', '8c7d04cbfd4b4b952d4f7377ecec1da7', '297099453', 25, NULL, 2, 'kamal2@gmail.com', 5.00000000, NULL, NULL, 'kamal1@gmail.com', '$2y$10$KEdMoPa6ev8mNTF6v7EZY.ygL08arqr8QNZc1IxYkiq2VBxsbIxMu', 'kamal2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:55:09', '2024-07-11 19:55:09', 1, NULL),
(30, 'OCN000000030', '78e3613fded5565b728a73afc5e55beb', '301906065', 25, NULL, 2, 'harun1@gmail.com', 5.00000000, NULL, NULL, 'harun1@gmail.com', '$2y$10$BXjj3vd.nJzPqnAwPgIIluGqkYBIr0u1wb7bFR25OFHxbrtwcns6u', 'harun1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 20:03:10', '2024-07-11 20:03:10', 1, NULL),
(31, 'OCN000000031', '1258ce226e1d89f7b100b4c2f0d3e569', '315538793', 25, NULL, 2, 'lokman@gmail.com', 5.00000000, NULL, NULL, 'lokman@gmail.com', '$2y$10$ScJkg9C3v9qeeO.JOq9qtOO7aE8H7GNH0ORugkF.EEAZl97dzSnym', 'lokman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1040, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 20:09:13', '2024-07-11 20:09:13', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_bot_history`
--

CREATE TABLE `user_bot_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mining_category_id` int(11) DEFAULT NULL,
  `boost_setting_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level_cost` int(11) DEFAULT NULL,
  `hours` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_bot_history`
--

INSERT INTO `user_bot_history` (`id`, `user_id`, `mining_category_id`, `boost_setting_id`, `name`, `level_cost`, `hours`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 1, 'Level-1', 0, 1, '2024-07-18 14:21:42', '2024-07-18 14:21:42'),
(2, 9, 1, 2, 'Level-2', 1, 12, '2024-07-18 14:21:57', '2024-07-18 14:21:57'),
(3, 9, 1, 3, 'Level-3', 2, 24, '2024-07-18 14:22:16', '2024-07-18 14:22:16'),
(4, 9, 1, 4, 'Level-4', 10, 2880, '2024-07-18 14:22:29', '2024-07-18 14:22:29'),
(5, 9, 2, 5, 'Level-1', 0, 2, '2024-07-18 14:26:42', '2024-07-18 14:26:42'),
(6, 9, 2, 6, 'Level-2', 2, 12, '2024-07-18 14:26:45', '2024-07-18 14:26:45'),
(7, 9, 3, 9, 'Level-1', 0, 4, '2024-07-18 14:27:41', '2024-07-18 14:27:41'),
(8, 9, 4, 13, 'Level-1', 0, 6, '2024-07-18 14:28:27', '2024-07-18 14:28:27'),
(9, 9, 4, 14, 'Level-2', 12, 12, '2024-07-18 14:28:29', '2024-07-18 14:28:29'),
(10, 9, 4, 15, 'Level-3', 25, 24, '2024-07-18 14:28:30', '2024-07-18 14:28:30'),
(11, 9, 4, 16, 'Level-4', 30, 2880, '2024-07-18 14:28:32', '2024-07-18 14:28:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_mining_history`
--

CREATE TABLE `user_mining_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mining_category_id` int(11) DEFAULT NULL,
  `boost_mining_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `level_cost` int(11) DEFAULT NULL,
  `mining_per_seconds` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_mining_history`
--

INSERT INTO `user_mining_history` (`id`, `user_id`, `mining_category_id`, `boost_mining_id`, `name`, `level_cost`, `mining_per_seconds`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 1, 'Level-1', 0, 1, '2024-07-18 17:56:14', '2024-07-18 17:56:14'),
(2, 9, 1, 2, 'Level-2', 2, 2, '2024-07-18 17:56:26', '2024-07-18 17:56:26'),
(3, 9, 1, 3, 'Level-3', 3, 3, '2024-07-18 18:07:33', '2024-07-18 18:07:33'),
(4, 9, 1, 4, 'Level-4', 4, 4, '2024-07-18 18:07:48', '2024-07-18 18:07:48'),
(5, 8, 2, 11, 'Level-1', 0, 2, '2024-07-18 18:13:36', '2024-07-18 18:13:36'),
(6, 8, 2, 12, 'Level-2', 2, 4, '2024-07-18 18:13:38', '2024-07-18 18:13:38'),
(7, 8, 2, 13, 'Level-3', 3, 6, '2024-07-18 18:14:01', '2024-07-18 18:14:01'),
(8, 8, 2, 14, 'Level-4', 4, 8, '2024-07-18 18:14:56', '2024-07-18 18:14:56'),
(9, 8, 1, 1, 'Level-1', 0, 1, '2024-07-18 18:15:55', '2024-07-18 18:15:55'),
(10, 8, 1, 2, 'Level-2', 2, 2, '2024-07-18 18:16:08', '2024-07-18 18:16:08'),
(11, 8, 3, 21, 'Level-1', 0, 4, '2024-07-18 18:17:42', '2024-07-18 18:17:42'),
(12, 8, 3, 22, 'Level-2', 2, 8, '2024-07-18 18:17:44', '2024-07-18 18:17:44'),
(13, 8, 3, 23, 'Level-3', 3, 12, '2024-07-18 18:17:45', '2024-07-18 18:17:45'),
(14, 8, 3, 24, 'Level-4', 4, 16, '2024-07-18 18:17:46', '2024-07-18 18:17:46'),
(15, 8, 3, 25, 'Level-5', 5, 20, '2024-07-18 18:17:47', '2024-07-18 18:17:47'),
(16, 8, 3, 26, 'Level-6', 6, 24, '2024-07-18 18:17:49', '2024-07-18 18:17:49'),
(17, 8, 4, 31, 'Level-1', 0, 6, '2024-07-18 18:19:38', '2024-07-18 18:19:38'),
(18, 8, 4, 32, 'Level-2', 2, 12, '2024-07-18 18:19:39', '2024-07-18 18:19:39'),
(19, 8, 4, 33, 'Level-3', 3, 18, '2024-07-18 18:19:40', '2024-07-18 18:19:40'),
(20, 8, 4, 34, 'Level-4', 4, 24, '2024-07-18 18:19:42', '2024-07-18 18:19:42'),
(21, 8, 4, 35, 'Level-5', 5, 30, '2024-07-18 18:19:43', '2024-07-18 18:19:43'),
(22, 8, 4, 36, 'Level-6', 6, 36, '2024-07-18 18:19:45', '2024-07-18 18:19:45'),
(23, 8, 4, 37, 'Level-7', 7, 42, '2024-07-18 18:19:46', '2024-07-18 18:19:46'),
(24, 8, 4, 38, 'Level-8', 8, 48, '2024-07-18 18:19:48', '2024-07-18 18:19:48'),
(25, 8, 4, 39, 'Level-9', 9, 54, '2024-07-18 18:19:50', '2024-07-18 18:19:50'),
(26, 8, 4, 40, 'Level-10', 10, 60, '2024-07-18 18:19:51', '2024-07-18 18:19:51'),
(27, 9, 2, 11, 'Level-1', 0, 2, '2024-07-18 18:22:12', '2024-07-18 18:22:12'),
(28, 9, 2, 12, 'Level-2', 2, 4, '2024-07-18 18:22:14', '2024-07-18 18:22:14'),
(29, 9, 2, 13, 'Level-3', 3, 6, '2024-07-18 18:22:15', '2024-07-18 18:22:15'),
(30, 9, 2, 14, 'Level-4', 4, 8, '2024-07-18 18:22:17', '2024-07-18 18:22:17'),
(31, 9, 2, 15, 'Level-5', 5, 10, '2024-07-18 18:22:18', '2024-07-18 18:22:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_mining_log`
--

CREATE TABLE `user_mining_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `mining_cat_id` int(11) DEFAULT NULL,
  `ocn_balance` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_mining_log`
--

INSERT INTO `user_mining_log` (`id`, `user_id`, `mining_cat_id`, `ocn_balance`, `created_at`, `updated_at`) VALUES
(1, 9, 1, '716', '2024-07-17 23:18:52', '2024-08-03 05:21:35'),
(2, 9, 2, NULL, '2024-07-17 23:18:54', '2024-08-03 05:21:36'),
(4, 9, 4, '1377', '2024-07-17 23:18:55', '2024-08-03 05:21:40'),
(13, 9, 3, NULL, '2024-07-21 04:40:40', '2024-08-03 05:21:40'),
(14, 8, 1, NULL, '2024-08-01 14:42:11', '2024-08-01 14:42:11'),
(15, 8, 2, NULL, '2024-08-01 14:42:14', '2024-08-01 14:42:14'),
(16, 8, 3, NULL, '2024-08-01 14:42:15', '2024-08-01 14:42:15'),
(17, 8, 4, NULL, '2024-08-01 14:42:15', '2024-08-01 14:42:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_wallet_address`
--

CREATE TABLE `user_wallet_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `global_user_wall_add_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  `delete_time` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_wallet_address`
--

INSERT INTO `user_wallet_address` (`id`, `user_id`, `global_user_wall_add_id`, `name`, `status`, `created_at`, `updated_at`, `delete_time`) VALUES
(5, 9, 1, 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 1, '2024-07-15 22:18:01', '2024-07-15 22:18:01', '2024-07-15 22:48:01'),
(6, 17, 2, 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 1, '2024-07-16 17:44:30', '2024-07-16 17:44:30', '2024-07-16 18:14:30');

-- --------------------------------------------------------

--
-- Table structure for table `verifyemail`
--

CREATE TABLE `verifyemail` (
  `id` int(11) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '1=active,0=inactive',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verifyemail`
--

INSERT INTO `verifyemail` (`id`, `email`, `code`, `status`, `created_at`, `updated_at`) VALUES
(1, 'mdbijon@gmail.com', '7251', 0, '2024-07-10 15:05:57', '2024-07-10 15:05:57'),
(2, 'mdbijon1@gmail.com', '9868', 0, '2024-07-10 15:14:12', '2024-07-10 15:14:12'),
(3, 'mdbijon11@gmail.com', '6674', 0, '2024-07-10 15:14:54', '2024-07-10 15:14:54'),
(4, 'mdbijon1q1@gmail.com', '2004', 0, '2024-07-10 15:16:20', '2024-07-10 15:16:20'),
(5, 'mdbijon1qq1@gmail.com', '3999', 0, '2024-07-10 15:20:49', '2024-07-10 15:20:49'),
(6, 'mdbijon1qeq1@gmail.com', '8809', 0, '2024-07-10 15:24:36', '2024-07-10 15:24:36'),
(7, 'mdbijon1qeq221@gmail.com', '8683', 0, '2024-07-10 15:31:43', '2024-07-10 15:31:43'),
(8, 'mdbijon11131@gmail.com', '7725', 0, '2024-07-10 16:05:34', '2024-07-10 16:05:34'),
(9, 'mdbijon311131@gmail.com', '5044', 0, '2024-07-10 16:07:59', '2024-07-10 16:07:59'),
(10, 'mdbijo1n311131@gmail.com', '1044', 0, '2024-07-10 16:11:14', '2024-07-10 16:11:14'),
(11, 'kamal@gmail.com', '7228', 0, '2024-07-10 16:14:11', '2024-07-10 16:14:11'),
(12, 'rana@gmail.com', '8771', 0, '2024-07-10 16:18:30', '2024-07-10 16:18:30'),
(13, 'rana233@gmail.com', '6958', 0, '2024-07-10 16:19:43', '2024-07-10 16:19:43'),
(14, 'mdbijon123@gmail.com', '2406', 0, '2024-07-10 16:20:35', '2024-07-10 16:20:35'),
(15, 'gazigiashuddin@gmail.com', '7742', 0, '2024-07-10 16:22:13', '2024-07-10 16:22:13'),
(16, 'jannat@gmail.com', '8951', 1, '2024-07-11 12:44:25', '2024-07-11 12:44:25'),
(17, 'ibraheem@gmail.com', '5445', 0, '2024-07-11 13:42:14', '2024-07-11 13:42:14'),
(18, 'ibraheem1@gmail.com', '8566', 0, '2024-07-11 19:26:23', '2024-07-11 19:26:23'),
(19, 'ibraheem2@gmail.com', '4731', 0, '2024-07-11 19:27:25', '2024-07-11 19:27:25'),
(20, 'ibraheem3@gmail.com', '3245', 0, '2024-07-11 19:28:19', '2024-07-11 19:28:19'),
(21, 'ayesha1@gmail.com', '1719', 0, '2024-07-11 19:30:44', '2024-07-11 19:30:44'),
(22, 'ayesha2@gmail.com', '3859', 0, '2024-07-11 19:31:16', '2024-07-11 19:31:16'),
(23, 'sharmin1@gmail.com', '9260', 0, '2024-07-11 19:34:20', '2024-07-11 19:34:20'),
(24, 'sharmin2@gmail.com', '5895', 0, '2024-07-11 19:35:06', '2024-07-11 19:35:06'),
(25, 'sharmin3@gmail.com', '2254', 0, '2024-07-11 19:35:59', '2024-07-11 19:35:59'),
(26, 'gazi1@gmail.com', '5841', 0, '2024-07-11 19:37:33', '2024-07-11 19:37:33'),
(27, 'gazi2@gmail.com', '4783', 0, '2024-07-11 19:38:24', '2024-07-11 19:38:24'),
(28, 'kamal1@gmail.com', '3423', 0, '2024-07-11 19:53:16', '2024-07-11 19:53:16'),
(29, 'kamal2@gmail.com', '2941', 0, '2024-07-11 19:55:01', '2024-07-11 19:55:01'),
(30, 'harun1@gmail.com', '4939', 0, '2024-07-11 20:00:35', '2024-07-11 20:00:35'),
(31, 'lokman@gmail.com', '1040', 0, '2024-07-11 20:08:56', '2024-07-11 20:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `withdraw`
--

CREATE TABLE `withdraw` (
  `id` int(11) NOT NULL,
  `withdrawID` varchar(255) DEFAULT NULL,
  `depscription` text DEFAULT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `withdrawal_amount` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receivable_amount` int(11) DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `withdrawal_pin` varchar(255) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `approved_by` int(11) DEFAULT NULL,
  `transection_fee` int(11) NOT NULL COMMENT '%',
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'After 5% deduction amount',
  `status` int(11) DEFAULT NULL COMMENT ' 	0=Review,2=Reject,1=Approved 	',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdraw`
--

INSERT INTO `withdraw` (`id`, `withdrawID`, `depscription`, `payment_method`, `withdrawal_amount`, `user_id`, `receivable_amount`, `wallet_address`, `withdrawal_pin`, `remarks`, `approved_by`, `transection_fee`, `payable_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 'W.4fa91c19016cb1f807ea47b5a959d518', 'W.4fa91c19016cb1f807ea47b5a959d518', 'TRX(TRC20)', '500', 9, 500, 'XXXXXXX878888iyuiyiuyiu', '123456', NULL, NULL, 0, NULL, 1, '2024-08-03 04:34:06', '2024-08-03 04:34:06');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_method`
--

CREATE TABLE `withdrawal_method` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) DEFAULT NULL,
  `currency_type_id` int(11) DEFAULT NULL,
  `wallet_address` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_user_payment_address`
--
ALTER TABLE `add_user_payment_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallet_address` (`wallet_address`);

--
-- Indexes for table `boost_boot_setting`
--
ALTER TABLE `boost_boot_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boost_mining_setting`
--
ALTER TABLE `boost_mining_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buy_token`
--
ALTER TABLE `buy_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `community`
--
ALTER TABLE `community`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countdown`
--
ALTER TABLE `countdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency_type`
--
ALTER TABLE `currency_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_history`
--
ALTER TABLE `customer_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit`
--
ALTER TABLE `deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_history`
--
ALTER TABLE `expense_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `global_wallet_address`
--
ALTER TABLE `global_wallet_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_pay_history`
--
ALTER TABLE `loan_pay_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_request`
--
ALTER TABLE `loan_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_return_request`
--
ALTER TABLE `loan_return_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loan_settings`
--
ALTER TABLE `loan_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_adjustment`
--
ALTER TABLE `manual_adjustment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mininghistory`
--
ALTER TABLE `mininghistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mining_categogy`
--
ALTER TABLE `mining_categogy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mining_categogy_duration`
--
ALTER TABLE `mining_categogy_duration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mining_process_history`
--
ALTER TABLE `mining_process_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mining_service_buy_history`
--
ALTER TABLE `mining_service_buy_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderId` (`orderId`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produc_categories`
--
ALTER TABLE `produc_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produc_img_history`
--
ALTER TABLE `produc_img_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards_centers_settings`
--
ALTER TABLE `rewards_centers_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_center_request`
--
ALTER TABLE `reward_center_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tradeID` (`tradeID`),
  ADD UNIQUE KEY `unique_md5` (`unique_md5`);

--
-- Indexes for table `trading_category`
--
ALTER TABLE `trading_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trading_duration`
--
ALTER TABLE `trading_duration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trading_subcategory`
--
ALTER TABLE `trading_subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_history`
--
ALTER TABLE `transaction_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `ocn_address` (`ocn_address`),
  ADD UNIQUE KEY `ocn_id` (`ocn_id`);

--
-- Indexes for table `user_bot_history`
--
ALTER TABLE `user_bot_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_mining_history`
--
ALTER TABLE `user_mining_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_mining_log`
--
ALTER TABLE `user_mining_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wallet_address`
--
ALTER TABLE `user_wallet_address`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `verifyemail`
--
ALTER TABLE `verifyemail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdraw`
--
ALTER TABLE `withdraw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal_method`
--
ALTER TABLE `withdrawal_method`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_user_payment_address`
--
ALTER TABLE `add_user_payment_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `boost_boot_setting`
--
ALTER TABLE `boost_boot_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `boost_mining_setting`
--
ALTER TABLE `boost_mining_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buy_token`
--
ALTER TABLE `buy_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `community`
--
ALTER TABLE `community`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `countdown`
--
ALTER TABLE `countdown`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `currency_type`
--
ALTER TABLE `currency_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_history`
--
ALTER TABLE `customer_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit`
--
ALTER TABLE `deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `expense_history`
--
ALTER TABLE `expense_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_wallet_address`
--
ALTER TABLE `global_wallet_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loan_pay_history`
--
ALTER TABLE `loan_pay_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `loan_request`
--
ALTER TABLE `loan_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loan_return_request`
--
ALTER TABLE `loan_return_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loan_settings`
--
ALTER TABLE `loan_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `manual_adjustment`
--
ALTER TABLE `manual_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mininghistory`
--
ALTER TABLE `mininghistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `mining_categogy`
--
ALTER TABLE `mining_categogy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mining_categogy_duration`
--
ALTER TABLE `mining_categogy_duration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `mining_process_history`
--
ALTER TABLE `mining_process_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `mining_service_buy_history`
--
ALTER TABLE `mining_service_buy_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produc_categories`
--
ALTER TABLE `produc_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produc_img_history`
--
ALTER TABLE `produc_img_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rewards_centers_settings`
--
ALTER TABLE `rewards_centers_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `reward_center_request`
--
ALTER TABLE `reward_center_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rule`
--
ALTER TABLE `rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trading_category`
--
ALTER TABLE `trading_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `trading_duration`
--
ALTER TABLE `trading_duration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trading_subcategory`
--
ALTER TABLE `trading_subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_bot_history`
--
ALTER TABLE `user_bot_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_mining_history`
--
ALTER TABLE `user_mining_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `user_mining_log`
--
ALTER TABLE `user_mining_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user_wallet_address`
--
ALTER TABLE `user_wallet_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `verifyemail`
--
ALTER TABLE `verifyemail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `withdrawal_method`
--
ALTER TABLE `withdrawal_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
