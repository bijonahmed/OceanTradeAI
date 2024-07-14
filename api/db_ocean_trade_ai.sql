-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2024 at 06:35 PM
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
(1, 8, 'USDT-TRC20-TRX', 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '2024-07-14 08:20:01', '2024-07-14 08:20:01');

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
(6, 'DEPOSIT.182e6c2d3d78eef40e5dac7da77a748f', 8, 21.00, NULL, 'TRX(TRC20)', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 'TRX(TRC20)', 'DEPOSIT.182e6c2d3d78eef40e5dac7da77a748f', NULL, 0, NULL, '2024-07-14 11:58:58', '2024-07-14 11:58:58');

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
(8, 3, NULL, 'Credited', NULL, 1.00, 'fff [ID: 3] ', '2024-06-22', '2024-06-22 07:27:10', '2024-06-22 07:27:10');

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
(1, 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 1, 1, '2024-07-12 18:37:40', '2024-07-13 16:56:09'),
(2, 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 1, 1, '2024-07-12 18:37:49', '2024-07-13 16:56:56'),
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
('GET', 'http://127.0.0.1:8000/api/mining/allMiningDuration?page=1&pageSize=20&searchQuery=Whale%20Excavator&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:00:22', '2024-07-14 09:00:22'),
('GET', 'http://127.0.0.1:8000/api/mining/allMiningDuration?page=1&pageSize=20&searchQuery=&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:00:27', '2024-07-14 09:00:27'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 09:00:47', '2024-07-14 09:00:47'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 09:01:02', '2024-07-14 09:01:02'),
('POST', 'http://127.0.0.1:8000/api/auth/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 09:01:07', '2024-07-14 09:01:07'),
('POST', 'http://127.0.0.1:8000/api/auth/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, '2024-07-14 09:28:40', '2024-07-14 09:28:40'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, '2024-07-14 09:28:42', '2024-07-14 09:28:42'),
('GET', 'http://127.0.0.1:8000/api/product/dashboardCounting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:28:43', '2024-07-14 09:28:43'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:28:43', '2024-07-14 09:28:43'),
('GET', 'http://127.0.0.1:8000/api/user/allUsers?page=1&pageSize=10&searchQuery=&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:28:49', '2024-07-14 09:28:49'),
('GET', 'http://127.0.0.1:8000/api/user/allUsers?page=1&pageSize=10&searchQuery=gazigiash&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:29:05', '2024-07-14 09:29:05'),
('GET', 'http://127.0.0.1:8000', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, '2024-07-14 09:29:52', '2024-07-14 09:29:52'),
('POST', 'http://127.0.0.1:8000/api/auth/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', NULL, '2024-07-14 09:30:18', '2024-07-14 09:30:18'),
('GET', 'http://127.0.0.1:8000/api/category/allMiningCategoryes?page=1&pageSize=10&searchQuery=&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:30:42', '2024-07-14 09:30:42'),
('GET', 'http://127.0.0.1:8000/api/mining/allMiningDuration?page=1&pageSize=20&searchQuery=&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:31:11', '2024-07-14 09:31:11'),
('GET', 'http://127.0.0.1:8000/api/category/allMiningCategoryes?page=1&pageSize=10&searchQuery=&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:32:24', '2024-07-14 09:32:24'),
('GET', 'http://127.0.0.1:8000/api/mining/allMiningDuration?page=1&pageSize=20&searchQuery=&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:33:45', '2024-07-14 09:33:45'),
('GET', 'http://127.0.0.1:8000/api/mining/getMiningCategory', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:35:35', '2024-07-14 09:35:35'),
('GET', 'http://127.0.0.1:8000/api/category/allMiningCategoryes?page=1&pageSize=10&searchQuery=&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:36:01', '2024-07-14 09:36:01'),
('GET', 'http://127.0.0.1:8000/api/category/allMiningCategoryes?page=1&pageSize=10&searchQuery=&selectedFilter=1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:36:36', '2024-07-14 09:36:36'),
('GET', 'http://127.0.0.1:8000/api/category/minningCategoryrow/4', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 09:36:38', '2024-07-14 09:36:38'),
('POST', 'http://127.0.0.1:8000/api/auth/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, '2024-07-14 13:11:46', '2024-07-14 13:11:46'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:11:53', '2024-07-14 13:11:53'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:14:57', '2024-07-14 13:14:57'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:15:03', '2024-07-14 13:15:03'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:18:56', '2024-07-14 13:18:56'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:22:29', '2024-07-14 13:22:29'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:24:41', '2024-07-14 13:24:41'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:25:07', '2024-07-14 13:25:07'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:25:09', '2024-07-14 13:25:09'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:25:16', '2024-07-14 13:25:16'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:25:46', '2024-07-14 13:25:46'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:26:04', '2024-07-14 13:26:04'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:26:50', '2024-07-14 13:26:50'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:29:47', '2024-07-14 13:29:47'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:29:52', '2024-07-14 13:29:52'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:29:52', '2024-07-14 13:29:52'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:29:54', '2024-07-14 13:29:54'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:29:54', '2024-07-14 13:29:54'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:29:54', '2024-07-14 13:29:54'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:30:42', '2024-07-14 13:30:42'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:31:02', '2024-07-14 13:31:02'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:31:08', '2024-07-14 13:31:08'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:31:47', '2024-07-14 13:31:47'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:32:19', '2024-07-14 13:32:19'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:33:06', '2024-07-14 13:33:06'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:33:42', '2024-07-14 13:33:42'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:33:51', '2024-07-14 13:33:51'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:44:06', '2024-07-14 13:44:06'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:44:19', '2024-07-14 13:44:19'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:44:23', '2024-07-14 13:44:23'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:47:36', '2024-07-14 13:47:36'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:48:07', '2024-07-14 13:48:07'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:51:26', '2024-07-14 13:51:26'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:51:37', '2024-07-14 13:51:37'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:52:49', '2024-07-14 13:52:49'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:53:17', '2024-07-14 13:53:17'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:53:28', '2024-07-14 13:53:28'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:53:50', '2024-07-14 13:53:50'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:54:19', '2024-07-14 13:54:19'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 13:54:27', '2024-07-14 13:54:27'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:08:29', '2024-07-14 14:08:29'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:14:03', '2024-07-14 14:14:03'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:14:23', '2024-07-14 14:14:23'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:15:33', '2024-07-14 14:15:33'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:18:05', '2024-07-14 14:18:05'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:18:21', '2024-07-14 14:18:21'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:18:31', '2024-07-14 14:18:31'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:18:46', '2024-07-14 14:18:46'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:20:13', '2024-07-14 14:20:13'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:20:55', '2024-07-14 14:20:55'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:21:06', '2024-07-14 14:21:06'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:21:25', '2024-07-14 14:21:25'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:21:34', '2024-07-14 14:21:34'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:21:45', '2024-07-14 14:21:45'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:21:54', '2024-07-14 14:21:54'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:22:00', '2024-07-14 14:22:00'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:22:13', '2024-07-14 14:22:13'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:22:30', '2024-07-14 14:22:30'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:23:17', '2024-07-14 14:23:17'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:23:53', '2024-07-14 14:23:53'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:29:07', '2024-07-14 14:29:07'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:29:21', '2024-07-14 14:29:21'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:30:06', '2024-07-14 14:30:06'),
('GET', 'http://127.0.0.1:8000/api/user/checkPayment', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:35:08', '2024-07-14 14:35:08'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:35:33', '2024-07-14 14:35:33'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:35:43', '2024-07-14 14:35:43'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:37:46', '2024-07-14 14:37:46'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:39:17', '2024-07-14 14:39:17'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:39:51', '2024-07-14 14:39:51'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:41:20', '2024-07-14 14:41:20'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:41:56', '2024-07-14 14:41:56'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:42:10', '2024-07-14 14:42:10'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:42:26', '2024-07-14 14:42:26'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:42:44', '2024-07-14 14:42:44'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:45:04', '2024-07-14 14:45:04'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:45:19', '2024-07-14 14:45:19'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:46:23', '2024-07-14 14:46:23'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:48:03', '2024-07-14 14:48:03'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:48:12', '2024-07-14 14:48:12'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:48:20', '2024-07-14 14:48:20'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:48:51', '2024-07-14 14:48:51'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:49:00', '2024-07-14 14:49:00'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:49:07', '2024-07-14 14:49:07'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:49:17', '2024-07-14 14:49:17'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:50:10', '2024-07-14 14:50:10'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:50:17', '2024-07-14 14:50:17'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:50:25', '2024-07-14 14:50:25'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:50:53', '2024-07-14 14:50:53'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:50:53', '2024-07-14 14:50:53'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:51:14', '2024-07-14 14:51:14'),
('POST', 'http://127.0.0.1:8000/api/deposit/withdrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:51:15', '2024-07-14 14:51:15'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 14:59:03', '2024-07-14 14:59:03'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:00:28', '2024-07-14 15:00:28'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:00:28', '2024-07-14 15:00:28'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:01:33', '2024-07-14 15:01:33'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:01:33', '2024-07-14 15:01:33'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:03:53', '2024-07-14 15:03:53'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:03:53', '2024-07-14 15:03:53'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:06:21', '2024-07-14 15:06:21'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:06:21', '2024-07-14 15:06:21'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:14:22', '2024-07-14 15:14:22'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:14:22', '2024-07-14 15:14:22'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:14:40', '2024-07-14 15:14:40'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:14:40', '2024-07-14 15:14:40'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:15:40', '2024-07-14 15:15:40'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:15:40', '2024-07-14 15:15:40'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:16:10', '2024-07-14 15:16:10'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:16:10', '2024-07-14 15:16:10'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:16:12', '2024-07-14 15:16:12'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:16:12', '2024-07-14 15:16:12'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:16:13', '2024-07-14 15:16:13'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=69386f6bb1dfed68692a24c8686939b9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:16:17', '2024-07-14 15:16:17'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=69386f6bb1dfed68692a24c8686939b9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:16:17', '2024-07-14 15:16:17'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:16:35', '2024-07-14 15:16:35'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=2024-07-02&toDate=2024-07-05&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:16:41', '2024-07-14 15:16:41'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=2024-07-01&toDate=2024-07-20&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:16:47', '2024-07-14 15:16:47'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:17:17', '2024-07-14 15:17:17'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:17:20', '2024-07-14 15:17:20'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 15:17:20', '2024-07-14 15:17:20'),
('POST', 'http://127.0.0.1:8000/api/auth/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, '2024-07-14 16:15:20', '2024-07-14 16:15:20'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', NULL, '2024-07-14 16:15:20', '2024-07-14 16:15:20'),
('GET', 'http://127.0.0.1:8000/api/product/dashboardCounting', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:15:23', '2024-07-14 16:15:23'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:15:23', '2024-07-14 16:15:23'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:15:29', '2024-07-14 16:15:29'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=1aa6f8ae85e92e03593a6b5a37f60c57&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:15:36', '2024-07-14 16:15:36'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:15:39', '2024-07-14 16:15:39'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=gazigiashuddin%40gmail.com&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:15:47', '2024-07-14 16:15:47'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=gazigiashuddin%40g1mail.com&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:15:50', '2024-07-14 16:15:50'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:15:54', '2024-07-14 16:15:54'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:16:10', '2024-07-14 16:16:10'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:16:10', '2024-07-14 16:16:10'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:16:20', '2024-07-14 16:16:20'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=W.e1fc9c082df6cfff8cbcfff2b5a722ef&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:17:56', '2024-07-14 16:17:56'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:18:01', '2024-07-14 16:18:01'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:18:08', '2024-07-14 16:18:08'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:19:54', '2024-07-14 16:19:54'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:19:54', '2024-07-14 16:19:54'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:20:24', '2024-07-14 16:20:24'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:21:16', '2024-07-14 16:21:16'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:21:22', '2024-07-14 16:21:22'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:21:22', '2024-07-14 16:21:22'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:22:19', '2024-07-14 16:22:19'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:22:41', '2024-07-14 16:22:41'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:22:52', '2024-07-14 16:22:52'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:22:52', '2024-07-14 16:22:52'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:23:44', '2024-07-14 16:23:44'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:24:14', '2024-07-14 16:24:14'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:24:20', '2024-07-14 16:24:20'),
('POST', 'http://127.0.0.1:8000/api/auth/me', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:24:56', '2024-07-14 16:24:56'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:24:56', '2024-07-14 16:24:56'),
('GET', 'http://127.0.0.1:8000/api/deposit/approvedWithdrawRequest/6', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:25:15', '2024-07-14 16:25:15'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:25:16', '2024-07-14 16:25:16'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:25:19', '2024-07-14 16:25:19'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:25:21', '2024-07-14 16:25:21'),
('POST', 'http://127.0.0.1:8000/api/deposit/updateWithDrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:25:28', '2024-07-14 16:25:28'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:25:28', '2024-07-14 16:25:28'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:25:31', '2024-07-14 16:25:31'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:25:32', '2024-07-14 16:25:32'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:25:38', '2024-07-14 16:25:38'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:25:38', '2024-07-14 16:25:38'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:27:04', '2024-07-14 16:27:04'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:27:04', '2024-07-14 16:27:04'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:27:49', '2024-07-14 16:27:49'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:27:50', '2024-07-14 16:27:50'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:27:50', '2024-07-14 16:27:50'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:27:52', '2024-07-14 16:27:52'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:27:52', '2024-07-14 16:27:52'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:28:33', '2024-07-14 16:28:33'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:28:33', '2024-07-14 16:28:33'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:28:43', '2024-07-14 16:28:43'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:28:43', '2024-07-14 16:28:43'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:29:04', '2024-07-14 16:29:04'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:29:05', '2024-07-14 16:29:05'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:29:31', '2024-07-14 16:29:31'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:29:31', '2024-07-14 16:29:31'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:32:22', '2024-07-14 16:32:22'),
('POST', 'http://127.0.0.1:8000/api/deposit/updateWithDrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:32:28', '2024-07-14 16:32:28'),
('POST', 'http://127.0.0.1:8000/api/deposit/updateWithDrawRequest', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:32:56', '2024-07-14 16:32:56'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:32:56', '2024-07-14 16:32:56'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=2', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:33:00', '2024-07-14 16:33:00'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/9', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:33:01', '2024-07-14 16:33:01'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=0', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:33:07', '2024-07-14 16:33:07'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawal-list?filterFrmDate=2024-07-14&filterToDate=2024-07-14&page=1&pageSize=10&searchEmail=&searchOrderId=&searchQuery=&selectedFilter=5', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:33:15', '2024-07-14 16:33:15'),
('GET', 'http://127.0.0.1:8000/api/deposit/withdrawrow/10', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:33:35', '2024-07-14 16:33:35'),
('POST', 'http://127.0.0.1:8000/api/auth/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 1, '2024-07-14 16:33:52', '2024-07-14 16:33:52'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:34:45', '2024-07-14 16:34:45'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:34:46', '2024-07-14 16:34:46'),
('GET', 'http://127.0.0.1:8000/api/deposit/getDepositfetchdata?frmDate=&toDate=&trxId=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:35:02', '2024-07-14 16:35:02'),
('GET', 'http://127.0.0.1:8000/api/deposit/getWithdrwalfetchdata?frmDate=&toDate=&withdrawal_Id=', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 8, '2024-07-14 16:35:03', '2024-07-14 16:35:03');

-- --------------------------------------------------------

--
-- Table structure for table `manual_adjustment`
--

CREATE TABLE `manual_adjustment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `adjustment_type` int(11) DEFAULT NULL COMMENT '1=The effective amount is manually increased\r\n2=The effective amount is manually reduced',
  `adjustment_amount` int(11) DEFAULT NULL COMMENT 'UIC Amount',
  `detailed_remarks` varchar(255) DEFAULT NULL,
  `entry_by` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `manual_adjustment`
--

INSERT INTO `manual_adjustment` (`id`, `user_id`, `adjustment_type`, `adjustment_amount`, `detailed_remarks`, `entry_by`, `created_at`, `updated_at`) VALUES
(1, 20, 1, 5, 'Test', 1, '2024-06-22 01:24:36', '2024-06-22 01:24:36'),
(2, 3, 1, 5, 'ssss', 1, '2024-06-22 01:25:46', '2024-06-22 01:25:46'),
(3, 3, 2, 1, 'fff', 1, '2024-06-22 01:27:10', '2024-06-22 01:27:10');

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
(31, 3, '2024-06-22', '0.00001830', '2024-06-23 16:36:00', '2024-06-23 16:36:00');

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
(1, 'Dolphin Digger', 'dolphin-digger', 1, 60, 3600, '0.00000000', 'null', '0.00000000', 'A mining package providing essential tools and resources to kick start your projects.', 1, 1, '2024-05-25 12:33:49', '2024-07-12 17:09:09'),
(2, 'Shark Driller', 'shark-driller', 2, 120, 7200, '0.00000000', 'null', '0.00000000', 'Premium mining package offering high-speed, reliable services for a fee.', 1, 1, '2024-05-25 12:34:10', '2024-07-12 17:08:56'),
(3, 'Orca Drillmaster', 'orca-drillmaster', 4, 240, 14400, '0.0000005', 'null', 'null', 'Premium mining package offering advanced tools and resources for professional use.', 1, 1, '2024-05-25 12:34:29', '2024-07-12 17:08:32'),
(4, 'Whale Excavator', 'whale-excavator', 6, 360, 21600, '0.00000000', '0', '0.00000000', 'This premium and paid service offering advanced mining tools and resources.', 1, 1, '2024-05-25 12:34:57', '2024-07-12 17:08:00');

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
  `ip` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mining_process_history`
--

INSERT INTO `mining_process_history` (`id`, `user_id`, `start_time`, `end_time`, `duration`, `mining_category_id`, `ip`, `created_at`, `updated_at`) VALUES
(1, 3, '2024-06-22 04:20:40', '2024-06-22 05:20:40', 1, 1, '127.0.0.1', '2024-06-22 04:20:40', '2024-06-22 04:20:40'),
(2, 3, '2024-06-23 13:59:51', '2024-06-23 14:59:51', 1, 1, '127.0.0.1', '2024-06-23 13:59:51', '2024-06-23 13:59:51'),
(3, 3, '2024-06-23 15:27:41', '2024-06-23 16:27:41', 1, 1, '127.0.0.1', '2024-06-23 15:27:41', '2024-06-23 15:27:41'),
(4, 3, '2024-06-23 16:34:59', '2024-06-23 17:34:59', 1, 1, '127.0.0.1', '2024-06-23 16:34:59', '2024-06-23 16:34:59');

-- --------------------------------------------------------

--
-- Table structure for table `mining_service_buy_history`
--

CREATE TABLE `mining_service_buy_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
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

INSERT INTO `mining_service_buy_history` (`id`, `user_id`, `mining_category_id`, `mining_category_duration_id`, `duration`, `service_price`, `start_date`, `end_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, '30', 10, '2024-06-22', '2024-07-22', NULL, '2024-06-22 04:20:10', '2024-06-22 04:20:10'),
(2, 3, 4, 10, '30', 10, '2024-06-22', '2024-07-22', NULL, '2024-06-22 04:20:26', '2024-06-22 04:20:26');

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

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `slug`, `description_short`, `description_full`, `question`, `answer`, `categoryId`, `entry_by`, `thumnail_img`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Automation Testing', 'automation-testing', '', '<p>Automation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation TestingAutomation Testing<br></p>', '', '', 0, 1, '/backend/files/SaEQDSXlk5pEwqoScDnV.jpg', 1, '2024-06-24 12:12:27', '2024-06-24 12:15:34'),
(2, 'Active Directory', 'active-directory', '', '<p>Active DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive DirectoryActive Directory<br></p>', '', '', 0, 1, '/backend/files/ck7bBb8CRZcnPdbbiaaX.jpeg', 1, '2024-06-24 12:15:50', '2024-06-24 12:15:50'),
(3, 'Adobe Photoshop', 'adobe-photoshop', '', '<p>Adobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe Photoshop<br></p>', '', '', 0, 1, '/backend/files/m8S1QuWsgtCfI65tBhqV.jpeg', 1, '2024-06-24 12:19:02', '2024-06-24 12:19:02'),
(4, 'sss', 'sss', '', '<p>Adobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe Photoshop<br></p>', '', '', 0, 1, NULL, 1, '2024-06-27 02:11:36', '2024-06-27 04:41:18'),
(5, 'xxx', 'xxx', '', '<p>Adobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe PhotoshopAdobe Photoshop<br></p>', '', '', 0, 3, NULL, 0, '2024-06-27 02:11:53', '2024-06-27 02:11:53'),
(6, 'Gazi', 'gazi', NULL, 'I am Mohammad Hasan Ejaz and i was designed this movie cover poster, I have designed this poster on photoshop and if you want', NULL, NULL, NULL, 1, '/backend/files/o0iO1GQqBmIZzgqo3g7Y.png', 0, '2024-06-27 02:19:18', '2024-06-27 04:22:36'),
(7, 'Gazi', 'gazi', NULL, 'I am Mohammad Hasan Ejaz and i was designed this movie cover poster, I have designed this poster on photoshop and if you want I am Mohammad Hasan Ejaz and i was designed this movie cover poster, I have designed this poster on photoshop and if you want I am Mohammad Hasan Ejaz and i was designed this movie cover poster, I have designed this poster on photoshop and if you want I am Mohammad Hasan Ejaz and i was designed this movie cover poster, I have designed this poster on photoshop and if you want', NULL, NULL, NULL, 3, '/backend/files/BBX7qnVcTjqwyuGhFFgL.png', 0, '2024-06-27 02:20:52', '2024-06-27 02:20:52'),
(8, 'Gazi', 'gazi', NULL, 'Your post is pending. Your post will be published if the admin approves it', NULL, NULL, NULL, 1, NULL, 0, '2024-06-27 02:22:10', '2024-06-27 04:09:16');

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
  `maximum_supply` varchar(255) DEFAULT NULL,
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
  `daily_max_withdraw_request` double(10,2) DEFAULT NULL,
  `withdrawal_free_amount` double(10,2) DEFAULT NULL,
  `withdrawal_free_on_percentage` double(10,2) DEFAULT NULL,
  `mimumun_transfer_amount_to_other_user` double(10,2) DEFAULT NULL,
  `maximum_transfer_amount_to_other_user` double(10,2) DEFAULT NULL,
  `transfer_fee_fixed_amount` double(10,2) DEFAULT NULL,
  `traansfer_fee_on_percentage` double(10,2) DEFAULT NULL,
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

INSERT INTO `setting` (`id`, `name`, `deposit_service_charge`, `convert_php_amt`, `withdraw_service_charge`, `withdraw_minimum_amount`, `withdraw_maximum_amount`, `minimum_trade_amount`, `minimum_deposit_amount`, `trade_fee`, `tel`, `email`, `address`, `whatsApp`, `emergency`, `photo`, `description`, `copyright`, `status`, `admin_photo`, `admin_name`, `admin_email`, `admin_phone`, `meta_keywords`, `meta_description`, `pphoto`, `bg_color`, `currency`, `openinig_balance_date`, `reffer_bonus`, `maximum_supply`, `total_supply`, `openinig_balance_comments`, `fblink`, `twitterlink`, `linkdinlink`, `instragramlink`, `store_policy`, `crypto_wallet_address`, `master_pass_acc_no`, `website`, `telegram`, `register_bonus`, `mininmum_deposit_amount`, `maximum_deposit_amount`, `minimum_withdrawal`, `maximum_withdrawal`, `level_1_bonus`, `level_2_bonus`, `level_3_bonus`, `daily_max_withdraw_request`, `withdrawal_free_amount`, `withdrawal_free_on_percentage`, `mimumun_transfer_amount_to_other_user`, `maximum_transfer_amount_to_other_user`, `transfer_fee_fixed_amount`, `traansfer_fee_on_percentage`, `liquidity_total_supply`, `beganing_price`, `circlation`, `update_by`, `created_at`, `updated_at`) VALUES
(1, 'OCN TRADE AI', 5, 64, 5, 20, 4000, 5, 20, 6, '+44245454545', 'uic@abcd.com', 'Addres', '00000055555', '+000000', 'pic/2tAjiUpJ0X8GziIrKJJJ.png', 'Business Description', 'Copyright © 2024 uic . All Rights Reserved', 1, 'pic/ZOdc8nsWAMY1YELkp9zH.jpg', 'admin', 'info@admin.com', '+44245454545', NULL, NULL, '', '#ffffff', '$', '2020-05-13', 5, '300000000', '120000000', NULL, 'https://www.fiverr.com', 'https://www.facebook.com', 'https://web.whatsapp.com/', '#', '', 'TPpMvdKfhENfJqYZsDJQLgEopMRBy15jeU', '225588996633', 'http://winup360.com', '116898999999', 5, 55.00, 5.00, 20.00, 3690.00, 3, 2, 1, 5.00, 5.00, 5.00, 5.00, 5.00, 5.00, 50.00, '1000', '0.00000833333333', '66666666', 2993, '2024-05-12 05:32:50', '2024-05-12 03:42:05');

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
(20, 8, 2, 10, 'Withdraw', '22', '2024-07-14 14:50:53', '2024-07-14 14:50:53');

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
(1, NULL, '6f21357fs863ce24ce21c1a82f49a7d5d13', '0000123', 0, 4, 1, 'dev1@mail.com', 1.00000000, NULL, 1, 'dev1@mail.com', '$2a$12$oT7dmrympiE1Y1tfnz8iIOYWGL1qLEtpB5LDmVAwVEhxZ6rPHLmJq', 'Dev1', NULL, '0000123', '/backend/files/hZkagctUSINKsFU64UJr.png', NULL, 'Dhaka', '', '', 'http://localhost:3000/profile', 'http://localhost:3000/profile', '', '1982-01-30', 'http://localhost:3000/profile', 'http://localhost:3000/profile', 0, 0, 0, NULL, 'http://localhost:3000/profile', NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '127.0.0.1', NULL, '2024-07-14 22:15:20', '2023-06-22 03:20:43', '2024-07-14 16:15:20', 1, NULL),
(2, 'UIC000000002', '3839cc87060e26b9e4111f63af1ab7f4', '25409115', 1, NULL, 2, 'cadasd@gmail.com', 1.00000000, NULL, 1, '95998989989', '$2y$10$XqEIa.K8BnclhSw18g3KweXskOh1IQSrfO0tYmCOrzzoui5VlQ1C6', 'cadasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-10 14:25:40', '2024-07-10 16:21:17', 0, NULL),
(3, 'OCN000000003', 'd8c918769ac4145a3b53531acd4a3d7e', '33207501', 2, NULL, 2, 'jons@gmal.com', 1.00000000, NULL, 1, '25409115', '$2y$10$OQJffvL1z1xIXR41Zvgdx.8VD0KwPVD45/mg4FmLT0GDDUA5AIEBu', 'jons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-10 14:38:40', '2024-07-10 16:22:49', 0, NULL),
(4, 'OCN000000004', '1e6e3b49cc9b7746f8ab4d1f4f8da2ab', '47334704', 3, NULL, 2, 'mdbijon311131@gmail.com', 1.00000000, NULL, 1, '{{ $details[\'otp\'] }}', '$2y$10$OUtvSNhG7AQnXQELk/YxPOooaJU.hc0o883mJ/4OzKuBTdRPx53bG', 'mdbijon311131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-10 16:08:53', '2024-07-11 12:45:08', 0, NULL),
(5, 'OCN000000005', '82da8e4233dea2bda931b8dde29550c3', '59000614', 4, NULL, 2, 'mdbijo1n311131@gmail.com', 5.00000000, NULL, NULL, 'mdbijon311131@gmail.com', '$2y$10$GDKNaaZ3ti5KVBdXCOOMgOK0rpaiCwwKg0Qtp9tjjckvtqc.w.0zS', 'mdbijo1n311131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-10 16:11:40', '2024-07-10 16:11:40', 0, NULL),
(6, 'OCN000000006', '189e39170561e49e5710bd2c686838be', '60762015', 4, NULL, 2, 'kamal@gmail.com', 5.00000000, NULL, NULL, '72287228', '$2y$10$feZSpqPMNE8/kawdJyoXLOMhvAmFoyanLhAivfy4AM1hsENzQc15a', 'kamal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-10 16:14:36', '2024-07-10 16:14:36', 0, NULL),
(7, 'OCN000000007', 'ade0cd39d5f900bbb80eb148b6fef048', '74775396', 4, NULL, 2, 'mdbijon123@gmail.com', 1.00000000, NULL, 1, 'mdbijon123@gmail.com', '$2y$10$AhZtiWS22XxDXeiwowptnOOAuK37Rg.dJi8pfBSssqBifyIsO0amS', 'mdbijon123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-10 22:43:59', '2024-07-10 16:21:17', '2024-07-11 19:38:53', 1, NULL),
(8, 'OCN000000008', 'cd800a2aa5af56acb1d0acfaedc427e9', '85691278', 7, NULL, 2, 'gazigiashuddin@gmail.com', 1.00000000, NULL, 1, 'gazigiashuddin@gmail.com', '$2y$10$JXR7VeScf7yerzoy/wuhkuS2X.8oFe4/NKUsFHw0hxlSvzkihBOMa', 'gazigiashuddin', 'Bijon', '0018457877888', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://www.twitter.com/', '', NULL, NULL, 5, NULL, 'https://www.facebook.com/', NULL, '123123', '123123', NULL, 'https://www.telegram.com/', '8801915728982', NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-14 19:11:48', '2024-07-10 16:22:49', '2024-07-14 13:11:48', 1, NULL),
(9, 'OCN000000009', '0d3a3ea346cd912d77ed72a874ee622a', '99082839', 8, NULL, 2, 'jannat@gmail.com', 3.00000000, NULL, 3, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-13 22:56:49', '2024-07-11 12:45:08', '2024-07-13 16:56:49', 1, NULL),
(10, 'OCN000000010', '74f34e84897b400c0e2824b41b61bb42', '103604993', 9, NULL, 2, 'ibraheem@gmail.com', 5.00000000, NULL, NULL, 'ibraheem@gmail.com', '$2y$10$hmSSJFnKakgsL5GI6O3aSugtzZp5XYaUH.kHGPGMKS7ccp1GcsNSq', 'ibraheem', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-11 19:42:51', '2024-07-11 13:42:40', '2024-07-11 13:42:51', 1, NULL),
(12, 'OCN0000002009', '0d3a3ea346cd912d77ed72a874ee3622a', '990828392', 8, NULL, 2, 'jannat1@gmail.com', 2.00000000, NULL, 2, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-12 01:33:34', '2024-07-11 12:45:08', '2024-07-11 20:09:13', 1, NULL),
(13, 'OCN0000003009', '0d3a3ea346cd912d77ed72a874ee36222a', '9908283922', 8, NULL, 2, 'jannat2@gmail.com', 3.00000000, NULL, 3, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-12 01:37:14', '2024-07-11 12:45:08', '2024-07-11 19:38:53', 1, NULL),
(15, 'OCN0000004009', '0d3a3ea346cd912d77ed72a874ee36222a4', '9908283924', 8, NULL, 2, 'jannat4@gmail.com', 3.00000000, NULL, 3, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-11 18:45:37', '2024-07-11 12:45:08', '2024-07-11 13:42:40', 1, NULL),
(16, 'OCN0000005009', '0d3a3ea346cd912d77ed72a874ee36222a5', '9908283924', 8, NULL, 2, 'jannat5@gmail.com', 3.00000000, NULL, 3, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-11 18:45:37', '2024-07-11 12:45:08', '2024-07-11 13:42:40', 1, NULL),
(17, 'OCN0000006009', '0d3a3ea346cd912d77ed72a874ee36222a6', '9908283924', 8, NULL, 2, 'jannat6@gmail.com', 3.00000000, NULL, 3, 'jannat@gmail.com', '$2y$10$2kafjH2Lk1Gf/PXqiPH5v.0DlqrWPGGAUErygWH/OoahgsU5g7lpq', 'jannat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '123456', '123456', NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-11 18:45:37', '2024-07-11 12:45:08', '2024-07-11 13:42:40', 1, NULL),
(18, 'OCN000000018', 'e3220262a4f162aa21c633db2d569ef0', '180177205', 9, NULL, 2, 'ibraheem1@gmail.com', 5.00000000, NULL, NULL, 'ibraheem1@gmail.com', '$2y$10$eqHFpCmbUVbh5WBDk82reO2NO/c8dZbHL9.zrbyQwqkKM.VXeeytO', 'ibraheem1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:26:57', '2024-07-11 19:26:57', 1, NULL),
(19, 'OCN000000019', '82b835dd13aa62eacf5a4412bab0ee1c', '190681736', 9, NULL, 2, 'ibraheem2@gmail.com', 5.00000000, NULL, NULL, 'ibraheem2@gmail.com', '$2y$10$IHM6zlTrpAW/eRi6811h5OXKqXg.nwnoyYHbEHTW1t/LuHEbi9Kb6', 'ibraheem2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:27:48', '2024-07-11 19:27:48', 1, NULL),
(20, 'OCN000000020', '773e7403ca89fe1d23b045b6c1850dc4', '201197377', 9, NULL, 2, 'ibraheem3@gmail.com', 5.00000000, NULL, NULL, 'ibraheem3@gmail.com', '$2y$10$LuNoRL3tYg6Ja20bOSsN3.6durQ1N1GHoShgl979hGF8XDLly/VWu', 'ibraheem3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:28:39', '2024-07-11 19:28:39', 1, NULL),
(21, 'OCN000000021', 'af9d5f01ed9cc50229f5c41c96b45a38', '212656418', 9, NULL, 2, 'ayesha1@gmail.com', 5.00000000, NULL, NULL, 'ayesha1@gmail.com', '$2y$10$QXPg.EhPVGFEWRpMpx6k0./fxE1wxAEb8QX.Vg0eJDfvNUyHWKKtO', 'ayesha1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:31:05', '2024-07-11 19:31:05', 1, NULL),
(22, 'OCN000000022', '1dc73ef4d95965208d489399eed0cbf6', '222965968', 9, NULL, 2, 'ayesha2@gmail.com', 5.00000000, NULL, NULL, 'ayesha1@gmail.com', '$2y$10$zPQdOwMfEFeJ1gXrnenQsuT2VCuGX0G483Vn2.gsdGJ5HldrtYcnG', 'ayesha2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:31:36', '2024-07-11 19:31:36', 1, NULL),
(23, 'OCN000000023', '9dc81ad861d8b605360742565e434044', '234805003', 12, NULL, 2, 'sharmin1@gmail.com', 5.00000000, NULL, NULL, 'sharmin1@gmail.com', '$2y$10$7zcoqZdrwBUoHE824efqKuMoMUOSoYkPYKmMhNHX0sCDvzsu6QOoG', 'sharmin1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:34:40', '2024-07-11 19:34:40', 1, NULL),
(24, 'OCN000000024', '0a2c22d06695fed3c248f933a2764659', '245365148', 12, NULL, 2, 'sharmin2@gmail.com', 5.00000000, NULL, NULL, 'sharmin2@gmail.com', '$2y$10$x/oHo2yqmaZS.nls3ywWZedTET3UhhD1lAIMfXROzvcIe.LjW0aK6', 'sharmin2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:35:36', '2024-07-11 19:35:36', 1, NULL),
(25, 'OCN000000025', '2c32652d38e7830bc4a9f951e06c215b', '255826052', 12, NULL, 2, 'sharmin3@gmail.com', 3.00000000, NULL, 3, 'sharmin3@gmail.com', '$2y$10$reou0aF/Jn4qmBh651bF4O1OG.7.6UF1t8Y11d0/f5auJT7T/265W', 'sharmin3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-12 01:52:49', '2024-07-11 19:36:22', '2024-07-11 20:09:13', 1, NULL),
(26, 'OCN000000026', '92d4086b525a0244e474d2cd5b8bfa80', '266734604', 13, NULL, 2, 'gazi1@gmail.com', 5.00000000, NULL, NULL, 'gazi1@gmail.com', '$2y$10$fn0N0obfRPrSZPA.MjtnaOT0VB07oh2LuuRvTV0zjrrnZ18Qm5DRq', 'gazi1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:37:53', '2024-07-11 19:37:53', 1, NULL),
(27, 'OCN000000027', '87f06a411db8d785643fc6665a800f3f', '277331967', 13, NULL, 2, 'gazi2@gmail.com', 5.00000000, NULL, NULL, 'gazi2@gmail.com', '$2y$10$oGoCgg17WPhFqmiqI76R6eZga9utEQPZn53ZGDWcWH.4EycuTl9pq', 'gazi2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', '127.0.0.1', NULL, '2024-07-12 23:22:05', '2024-07-11 19:38:53', '2024-07-12 17:22:05', 1, NULL),
(28, 'OCN000000028', '11885a7c11645736cb90e58bc93f1b85', '286232443', 25, NULL, 2, 'kamal1@gmail.com', 5.00000000, NULL, NULL, 'kamal1@gmail.com', '$2y$10$if6CLJjnPaco84ebbGOp4u52PyJn93LyjUFX82maDIjPmIGZwjgWy', 'kamal1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:53:43', '2024-07-11 19:53:43', 1, NULL),
(29, 'OCN000000029', '8c7d04cbfd4b4b952d4f7377ecec1da7', '297099453', 25, NULL, 2, 'kamal2@gmail.com', 5.00000000, NULL, NULL, 'kamal1@gmail.com', '$2y$10$KEdMoPa6ev8mNTF6v7EZY.ygL08arqr8QNZc1IxYkiq2VBxsbIxMu', 'kamal2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 19:55:09', '2024-07-11 19:55:09', 1, NULL),
(30, 'OCN000000030', '78e3613fded5565b728a73afc5e55beb', '301906065', 25, NULL, 2, 'harun1@gmail.com', 5.00000000, NULL, NULL, 'harun1@gmail.com', '$2y$10$BXjj3vd.nJzPqnAwPgIIluGqkYBIr0u1wb7bFR25OFHxbrtwcns6u', 'harun1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 20:03:10', '2024-07-11 20:03:10', 1, NULL),
(31, 'OCN000000031', '1258ce226e1d89f7b100b4c2f0d3e569', '315538793', 25, NULL, 2, 'lokman@gmail.com', 5.00000000, NULL, NULL, 'lokman@gmail.com', '$2y$10$ScJkg9C3v9qeeO.JOq9qtOO7aE8H7GNH0ORugkF.EEAZl97dzSnym', 'lokman', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1040, NULL, NULL, '000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '127.0.0.1', NULL, NULL, NULL, '2024-07-11 20:09:13', '2024-07-11 20:09:13', 1, NULL);

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
(3, 8, 1, 'TJ1GEtjoXfy8kRmJvQ44ekEj8DeAVKMDqo', 1, '2024-07-13 16:56:09', '2024-07-13 16:56:09', '2024-07-13 17:26:09'),
(4, 9, 2, 'TKpRQQeykiNPuTjy5vw8do1QK3G64U6VxR', 1, '2024-07-13 16:56:56', '2024-07-13 16:56:56', '2024-07-13 17:26:56');

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
(2, 'W.69386f6bb1dfed68692a24c8686939b9', 'W.69386f6bb1dfed68692a24c8686939b9', 'TRX(TRC20)', '22', 8, NULL, 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '123123', NULL, NULL, 0, NULL, 0, '2024-07-14 14:39:17', '2024-07-14 14:39:17'),
(3, 'W.760abe2f7ea403a5c8ac329f72e4d42e', 'W.760abe2f7ea403a5c8ac329f72e4d42e', 'TRX(TRC20)', '18', 8, NULL, 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '123123', NULL, NULL, 0, NULL, 0, '2024-07-14 14:39:51', '2024-07-14 14:39:51'),
(4, 'W.e1fc9c082df6cfff8cbcfff2b5a722ef', 'W.e1fc9c082df6cfff8cbcfff2b5a722ef', 'TRX(TRC20)', '10', 8, NULL, 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '123123', 'remarks', NULL, 0, NULL, 0, '2024-07-14 14:42:26', '2024-07-14 14:42:26'),
(5, 'W.cd6ce2f9cb75d8f41dc96d3c0b8952b9', 'W.cd6ce2f9cb75d8f41dc96d3c0b8952b9', 'TRX(TRC20)', '15', 8, NULL, 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '123123', 'remarks', NULL, 0, NULL, 0, '2024-07-14 14:45:04', '2024-07-14 14:45:04'),
(6, 'W.1aa6f8ae85e92e03593a6b5a37f60c57', 'W.1aa6f8ae85e92e03593a6b5a37f60c57', 'TRX(TRC20)', '22', 8, NULL, 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '123123', 'remarks', NULL, 0, NULL, 1, '2024-07-14 14:48:20', '2024-07-14 16:25:15'),
(7, 'W.6101903146e4bbf4999c449d78441606', 'W.6101903146e4bbf4999c449d78441606', 'TRX(TRC20)', '22', 8, NULL, 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '123123', 'remarks', NULL, 0, NULL, 2, '2024-07-14 14:49:17', '2024-07-14 14:49:17'),
(8, 'W.8f187f643090a53e52550571a8e92ad8', 'W.8f187f643090a53e52550571a8e92ad8', 'TRX(TRC20)', '22', 8, NULL, 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '123123', NULL, NULL, 0, NULL, 2, '2024-07-14 14:50:10', '2024-07-14 14:50:10'),
(9, 'W.95177e528f8d6c7c28a5473fd5a471b6', 'W.95177e528f8d6c7c28a5473fd5a471b6', 'TRX(TRC20)', '22', 8, NULL, 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '123123', 'dddddd', 1, 0, NULL, 2, '2024-07-14 14:50:25', '2024-07-14 16:32:56'),
(10, 'W.b071cfa81605a94ad80cfa2bbc747448', 'W.b071cfa81605a94ad80cfa2bbc747448', 'TRX(TRC20)', '22', 8, NULL, 'TY9h7s4aQ2hX4N8b4C1Jv2L3pW4ZmR7sT1', '123123', NULL, NULL, 0, NULL, 1, '2024-07-14 14:50:53', '2024-07-14 14:50:53');

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
-- Indexes for table `brands`
--
ALTER TABLE `brands`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expense_history`
--
ALTER TABLE `expense_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `manual_adjustment`
--
ALTER TABLE `manual_adjustment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mining_service_buy_history`
--
ALTER TABLE `mining_service_buy_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
-- AUTO_INCREMENT for table `transaction_history`
--
ALTER TABLE `transaction_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
-- AUTO_INCREMENT for table `user_wallet_address`
--
ALTER TABLE `user_wallet_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `verifyemail`
--
ALTER TABLE `verifyemail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `withdraw`
--
ALTER TABLE `withdraw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `withdrawal_method`
--
ALTER TABLE `withdrawal_method`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
