-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 27, 2022 at 03:34 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `heeralalsweets_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `a_username` varchar(255) NOT NULL,
  `a_password` varchar(255) NOT NULL,
  `a_created_at` datetime NOT NULL,
  `a_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `a_status` tinyint(4) NOT NULL COMMENT '1 : Active 2 : Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_username`, `a_password`, `a_created_at`, `a_updated_at`, `a_status`) VALUES
(1, 'admin', '2d91967e6fd13dc7aaec098812cf524d4f387331', '2022-05-11 16:13:50', '2022-07-23 22:27:21', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_image` varchar(255) NOT NULL,
  `c_created_at` datetime NOT NULL,
  `c_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`c_id`, `c_name`, `c_image`, `c_created_at`, `c_updated_at`) VALUES
(2, 'Pure Ghee-Sweets', 'balusha.jpg', '2022-05-16 08:36:45', '2022-05-16 06:36:45'),
(14, 'Agra Peta Sweets', 'SMA02659.jpg', '2022-05-16 09:10:48', '2022-05-16 09:10:48'),
(15, 'Baklava Sweets', 'Cashew_Baklawa.jpg', '2022-05-16 09:11:47', '2022-05-16 09:11:47'),
(16, 'Bengali Sweets', 'pineapple-chena_sweet.jpg', '2022-05-16 09:12:08', '2022-05-16 09:12:08'),
(17, 'Dry-Fruits-Kaju-Sweets', 'essarted_mix_dry_fruits.jpg', '2022-05-16 09:12:41', '2022-05-16 09:12:41'),
(18, 'Dry-Fruits-Khowa Sweets', 'Kesar_burfi.jpg', '2022-05-16 09:13:09', '2022-05-19 07:12:19'),
(19, 'Gift Packs', '10.JPG', '2022-05-16 09:13:34', '2022-05-16 09:13:34'),
(20, 'Kalakand Sweets', 'malai_kalakand.jpg', '2022-05-16 09:13:58', '2022-05-16 09:13:58'),
(21, 'Laddu', 'Mothichur_ladoo.jpg', '2022-05-16 09:14:16', '2022-05-16 09:14:16'),
(23, 'Snacks And Namkeens', 'boondi.jpg', '2022-05-16 09:15:14', '2022-05-16 09:15:14'),
(24, 'Bites Sweets', '2.jpeg', '2022-05-16 09:18:22', '2022-05-16 09:18:22'),
(27, 'Festival Special', 'Ghewar.jpg', '2022-05-16 11:04:13', '2022-05-16 11:04:13'),
(28, 'Deserts And Beverages', 'Khamandhokla.jpg', '2022-05-16 11:04:35', '2022-05-16 11:04:35');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_mobile` bigint(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_mobile`, `contact_email`, `contact_message`, `created_at`, `updated_at`) VALUES
(397, 'Crytoswogs', 0, 'failure4floid@yahoo.com', 'This robot will help you to make hundreds of dollars each day. https://Vant.frostyelk.se/gotodate/go', '2022-07-26 20:49:57', '2022-07-26 20:49:57'),
(396, 'Crytoswogs', 0, 'dpk@dkesq.com', 'Invest $1 today to make $1000 tomorrow. https://Vant.frostyelk.se/gotodate/go', '2022-07-26 17:25:00', '2022-07-26 17:25:00'),
(398, 'Crytoswogs', 0, 'hamid.faizi7@outlook.com', 'See how Robot makes $1000 from $1 of investment. https://Vant.frostyelk.se/gotodate/go', '2022-07-27 00:14:15', '2022-07-27 00:14:15'),
(399, 'Crytoswogs', 0, 'minniegazelle@chipmunkbox.com', 'Turn $1 into $100 instantly. Use the financial Robot. https://Vant.frostyelk.se/gotodate/go', '2022-07-27 03:38:25', '2022-07-27 03:38:25'),
(400, 'Crytoswogs', 0, 'rafael_kaiosama@hotmail.com', 'Financial independence is what this robot guarantees. https://Vant.frostyelk.se/gotodate/go', '2022-07-27 07:00:22', '2022-07-27 07:00:22'),
(390, 'Crytoswogs', 0, 'tanktl1114@gmail.com', 'Making money can be extremely easy if you use this Robot. https://Vant.frostyelk.se/gotodate/go', '2022-07-25 23:07:30', '2022-07-25 23:07:30'),
(391, 'Crytoswogs', 0, 'olya.lamstein@cox.net', 'Join the society of successful people who make money here. https://Vant.frostyelk.se/gotodate/go', '2022-07-26 02:36:58', '2022-07-26 02:36:58'),
(392, 'Crytoswogs', 0, 'vtowns1@yahoo.com', 'The online job can bring you a fantastic profit. https://Vant.frostyelk.se/gotodate/go', '2022-07-26 06:07:37', '2022-07-26 06:07:37'),
(393, 'Crytoswogs', 0, 'ecumalih@usa.com', 'Additional income is now available for anyone all around the world. https://Vant.frostyelk.se/gotodate/go', '2022-07-26 10:30:46', '2022-07-26 10:30:46'),
(389, 'Crytoswogs', 0, 'niccoo12@gmail.com', 'See how Robot makes $1000 from $1 of investment. https://Vant.elletvweb.it/gotodate/go', '2022-07-24 18:37:51', '2022-07-24 18:37:51'),
(395, 'Crytoswogs', 0, 'v8927@hotmail.com', 'Let the financial Robot be your companion in the financial market. https://Vant.frostyelk.se/gotodate/go', '2022-07-26 13:53:51', '2022-07-26 13:53:51'),
(14, 'Henryswogs', 0, 'RookTessa9292@o2.pl', 'Buy everything you want earning money online. https://swogs.bode-roesch.de/swogs ', '2022-06-03 23:16:23', '2022-06-03 23:16:23'),
(15, 'Henryswogs', 0, 'RookTessa9292@o2.pl', 'No need to work anymore while you have the Robot launched! https://swogs.bode-roesch.de/swogs ', '2022-06-05 09:45:59', '2022-06-05 09:45:59'),
(387, 'Crytoswogs', 0, 'redheadav8r139@yahoo.com', 'Making money can be extremely easy if you use this Robot. https://Vant.elletvweb.it/gotodate/go', '2022-07-24 11:37:19', '2022-07-24 11:37:19'),
(17, 'Henryswogs', 0, 'reycastro@forum.dk', 'Launch the robot and let it bring you money. https://swogs.bode-roesch.de/swogs ', '2022-06-06 01:48:38', '2022-06-06 01:48:38'),
(18, 'Henryswogs', 0, 'eshk@mailme.dk', 'Make your money work for you all day long. https://swogs.bode-roesch.de/swogs ', '2022-06-06 04:37:27', '2022-06-06 04:37:27'),
(19, 'Henryswogs', 0, 'acar@forum.dk', 'Looking for additional money? Try out the best financial instrument. https://swogs.bode-roesch.de/swogs ', '2022-06-06 07:22:58', '2022-06-06 07:22:58'),
(20, 'Henryswogs', 0, 'alexan@forum.dk', 'Make money online, staying at home this cold winter. https://swogs.bode-roesch.de/swogs ', '2022-06-06 10:08:05', '2022-06-06 10:08:05'),
(388, 'Crytoswogs', 0, 'jenda57@telia.com', 'No need to work anymore while you have the Robot launched! https://Vant.elletvweb.it/gotodate/go', '2022-07-24 15:05:52', '2022-07-24 15:05:52'),
(385, 'Crytoswogs', 0, 'yujenchen@hotmail.com', 'Let your money grow into the capital with this Robot. https://Vant.elletvweb.it/gotodate/go', '2022-07-24 03:51:00', '2022-07-24 03:51:00'),
(386, 'Crytoswogs', 0, 'Stlp@yahoo.com', 'Earn additional money without efforts and skills. https://Vant.elletvweb.it/gotodate/go', '2022-07-24 07:47:15', '2022-07-24 07:47:15'),
(394, 'Mike ', 0, 'no-replyEredy@gmail.com', 'Howdy \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our plans here, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike  \r\nSpeed SEO Digital Agency', '2022-07-26 13:15:24', '2022-07-26 13:15:24'),
(26, 'Henryswogs', 0, 'pjevs2008@forum.dk', 'Have no financial skills? Let Robot make money for you. https://swogs.bode-roesch.de/swogs ', '2022-06-07 03:04:04', '2022-06-07 03:04:04'),
(27, 'Henryswogs', 0, 'destinerx@mailme.dk', 'Need money? Get it here easily? https://swogs.bode-roesch.de/swogs ', '2022-06-07 05:50:52', '2022-06-07 05:50:52'),
(28, 'Henryswogs', 0, 'linekp3@forum.dk', 'Financial robot is the best companion of rich people. https://swogs.bode-roesch.de/swogs ', '2022-06-07 08:33:41', '2022-06-07 08:33:41'),
(29, 'Henryswogs', 0, 'tina.overgaard@forum.dk', 'We know how to increase your financial stability. https://swogs.bode-roesch.de/swogs ', '2022-06-07 11:23:38', '2022-06-07 11:23:38'),
(30, 'Henryswogs', 0, 'mille1234@forum.dk', 'Make your computer to be you earning instrument. https://swogs.bode-roesch.de/swogs ', '2022-06-07 14:20:45', '2022-06-07 14:20:45'),
(31, 'Henryswogs', 0, 'ida_jac@forum.dk', 'Online job can be really effective if you use this Robot. https://swogs.bode-roesch.de/swogs ', '2022-06-07 17:12:24', '2022-06-07 17:12:24'),
(32, 'Henryswogs', 0, 'grethe.kjolby@forum.dk', 'Buy everything you want earning money online. https://swogs.bode-roesch.de/swogs ', '2022-06-07 20:17:43', '2022-06-07 20:17:43'),
(33, 'Henryswogs', 0, 'janzeboi@mail-online.dk', 'Your money keep grow 24/7 if you use the financial Robot. https://swogs.blueliners07.de/swogs ', '2022-06-07 22:59:33', '2022-06-07 22:59:33'),
(34, 'Henryswogs', 0, 'karina.jensen@jubiipost.dk', 'Financial independence is what everyone needs. https://swogs.blueliners07.de/swogs ', '2022-06-08 02:18:43', '2022-06-08 02:18:43'),
(35, 'Henryswogs', 0, 'kousted@forum.dk', 'One dollar is nothing, but it can grow into $100 here. https://swogs.blueliners07.de/swogs ', '2022-06-08 05:15:28', '2022-06-08 05:15:28'),
(36, 'Henryswogs', 0, 'sib42@mailme.dk', 'Online Bot will bring you wealth and satisfaction. https://swogs.blueliners07.de/swogs ', '2022-06-08 08:06:57', '2022-06-08 08:06:57'),
(37, 'Henryswogs', 0, 'maureen.shutt1@mailme.dk', 'Turn $1 into $100 instantly. Use the financial Robot. https://swogs.blueliners07.de/swogs ', '2022-06-08 10:54:42', '2022-06-08 10:54:42'),
(38, 'Henryswogs', 0, 'silvannemuzen@forum.dk', 'Wow! This is a fastest way for a financial independence. https://swogs.blueliners07.de/swogs ', '2022-06-08 13:55:32', '2022-06-08 13:55:32'),
(39, 'Henryswogs', 0, 'varde@forum.dk', 'The financial Robot is the most effective financial tool in the net! https://swogs.blueliners07.de/swogs ', '2022-06-08 16:45:23', '2022-06-08 16:45:23'),
(40, 'Henryswogs', 0, 'black_rainbow@mail-online.dk', 'The best online job for retirees. Make your old ages rich. https://swogs.blueliners07.de/swogs ', '2022-06-08 19:29:46', '2022-06-08 19:29:46'),
(41, 'Kevin Johnson', 0, 'funneldeals360@gmail.com', 'Hello \r\n \r\nDo you want to get more leads for your business or increase sales within days? \r\n \r\nThen you might want to get a Sales Funnel Landing Page that will motivate prospects to take action immediately and drive more sales for your business. \r\n \r\nAnd today, we have slashed our price from $997 to just $497. So, you are saving $500 when you order a Sales Funnel this week. \r\n \r\nBut this offer is only good this week, for the first 10 clients, so you need to order now, before you miss out. \r\n \r\nTo Book A 10 Minute Call With Me, Click Here: https://bit.ly/gb360-funnel-appointment \r\n \r\nYou can get an American owned and operated professional Sales Funnel building marketing company to create a high-quality Sales Funnel for your business. \r\n \r\nDid you know: \r\n \r\n•	Sales Funnels are much more powerful than websites when it comes to conversions \r\n•	Sales Funnels average sales per visitor is 2-3 times higher per order than a standard website \r\n•	Sales Funnels are one of the most inexpensive tools to use to obtain prospect contact info \r\nAgain, this $497 promotion is for this week only. Don’t miss out!!! The normal price is $997, so today you are saving $500. Get a sales funnel today before the 10 discounted funnel slots are gone. \r\n \r\nClick Here Now To Book A 10 Minute Call With Me: https://bit.ly/gb360-funnel-appointment', '2022-06-08 20:24:15', '2022-06-08 20:24:15'),
(42, 'Henryswogs', 0, 'zaikacat@mailme.dk', 'Need some more money? Robot will earn them really fast. https://swogs.blueliners07.de/swogs ', '2022-06-08 22:15:56', '2022-06-08 22:15:56'),
(43, 'Henryswogs', 0, 'mr_nice@forum.dk', 'Launch the financial Bot now to start earning. https://swogs.blueliners07.de/swogs ', '2022-06-09 00:58:06', '2022-06-09 00:58:06'),
(44, 'Henryswogs', 0, 'mlk@forum.dk', 'Earn additional money without efforts. https://swogs.blueliners07.de/swogs ', '2022-06-09 03:43:37', '2022-06-09 03:43:37'),
(45, 'Henryswogs', 0, 'nurvikz@mailme.dk', 'The financial Robot is your future wealth and independence. https://swogs.blueliners07.de/swogs ', '2022-06-09 06:22:40', '2022-06-09 06:22:40'),
(46, 'Henryswogs', 0, 'hex@mail-online.dk', 'Make your computer to be you earning instrument. https://swogs.blueliners07.de/swogs ', '2022-06-09 09:10:13', '2022-06-09 09:10:13'),
(47, 'Henryswogs', 0, 'mshaini@forum.dk', 'Your money keep grow 24/7 if you use the financial Robot. https://swogs.blueliners07.de/swogs ', '2022-06-09 11:51:41', '2022-06-09 11:51:41'),
(48, 'Henryswogs', 0, 'bottos@forum.dk', 'Robot is the best way for everyone who looks for financial independence. https://swogs.blueliners07.de/swogs ', '2022-06-09 14:52:35', '2022-06-09 14:52:35'),
(49, 'Henryswogs', 0, 'signefleur@forum.dk', 'Start making thousands of dollars every week just using this robot. https://swogs.blueliners07.de/swogs ', '2022-06-09 17:38:52', '2022-06-09 17:38:52'),
(50, 'Henryswogs', 0, 'grhreuirohgeri@forum.dk', 'Financial Robot is #1 investment tool ever. Launch it! https://swogs.blueliners07.de/swogs ', '2022-06-09 20:19:27', '2022-06-09 20:19:27'),
(51, 'Henryswogs', 0, 'aleksandr-silin11@mailme.dk', 'Launch the best investment instrument to start making money today. https://swogs.blueliners07.de/swogs ', '2022-06-09 22:32:42', '2022-06-09 22:32:42'),
(52, 'Henryswogs', 0, 'aleksandr-silin11@mailme.dk', 'Launch the best investment instrument to start making money today. https://swogs.blueliners07.de/swogs ', '2022-06-09 22:32:44', '2022-06-09 22:32:44'),
(53, 'Henryswogs', 0, 'aleksandr-silin11@mailme.dk', 'Launch the best investment instrument to start making money today. https://swogs.blueliners07.de/swogs ', '2022-06-09 22:32:45', '2022-06-09 22:32:45'),
(135, 'Henryswogs', 0, 'iozh495@mailme.dk', 'Start making thousands of dollars every week. https://swogs.fannyberlin.se/swogs ', '2022-06-18 11:28:06', '2022-06-18 11:28:06'),
(55, 'Henryswogs', 0, 'aleksandr-silin11@mailme.dk', 'Launch the best investment instrument to start making money today. https://swogs.blueliners07.de/swogs ', '2022-06-09 22:32:49', '2022-06-09 22:32:49'),
(56, 'Michael', 0, 'tbformleads@gmail.com', 'Hello, \r\n \r\nI would like to schedule a quick call to discuss our marketing system that can bring you leads daily. \r\n \r\nWe use a robust email application that mimics real people sending emails, so we get a huge delivery rate. \r\n \r\nSTART GETTING HOT LEADS NOW: \r\n \r\n- We create the content for the email(s). \r\n- We forward leads to you daily. \r\n- We send to 500 new contacts a day M-F (10k monthly), then we send 5 follow up emails (that is 50k emails a month). \r\n \r\nPlus!! Monthly, we provide the 10,000 targeted new email addresses that we will email to. That email list is worth over $2,000 a month, but you get that free with our service. \r\n \r\nJust imagine, you will start getting hot leads within days of getting started with us. Get started now for a $47.00 setup fee and just $997 per month (month-to-month/no long-term contract). \r\n \r\nBook a 10 min call with me now: Click Here  (   http://www.erpgoldgroup.com/appointments/   ) \r\n \r\nNOTE: To hire a person to send one-to-one emails (like our system does) would cost around $2,500 a month, but with us, you pay just $997. \r\n \r\nOffer good for the first 20 clients, start getting quality leads now, don’t miss out.  Book appointment now: Click Here  (   http://www.erpgoldgroup.com/appointments/   ) \r\n \r\nSincerely, \r\n \r\n-	Michael', '2022-06-10 00:11:29', '2022-06-10 00:11:29'),
(57, 'Henryswogs', 0, 'friisi@jubiipost.dk', 'The additional income is available for everyone using this robot. https://swogs.blueliners07.de/swogs ', '2022-06-10 01:13:45', '2022-06-10 01:13:45'),
(58, 'Henryswogs', 0, 'friisi@jubiipost.dk', 'The additional income is available for everyone using this robot. https://swogs.blueliners07.de/swogs ', '2022-06-10 01:13:46', '2022-06-10 01:13:46'),
(59, 'Henryswogs', 0, 'friisi@jubiipost.dk', 'The additional income is available for everyone using this robot. https://swogs.blueliners07.de/swogs ', '2022-06-10 01:13:48', '2022-06-10 01:13:48'),
(60, 'Henryswogs', 0, 'friisi@jubiipost.dk', 'The additional income is available for everyone using this robot. https://swogs.blueliners07.de/swogs ', '2022-06-10 01:13:50', '2022-06-10 01:13:50'),
(61, 'Henryswogs', 0, 'friisi@jubiipost.dk', 'The additional income is available for everyone using this robot. https://swogs.blueliners07.de/swogs ', '2022-06-10 01:13:52', '2022-06-10 01:13:52'),
(62, 'Henryswogs', 0, 'osvald-trold@forum.dk', 'The huge income without investments is available, now! https://swogs.blueliners07.de/swogs ', '2022-06-10 09:44:29', '2022-06-10 09:44:29'),
(63, 'Henryswogs', 0, 'kennethvester88@forum.dk', 'Online earnings are the easiest way for financial independence. https://swogs.blueliners07.de/swogs ', '2022-06-10 13:34:46', '2022-06-10 13:34:46'),
(64, 'Henryswogs', 0, 'harrycorry@mailme.dk', 'Money, money! Make more money with financial robot! https://swogs.coronect.de/swogs ', '2022-06-10 18:24:03', '2022-06-10 18:24:03'),
(65, 'Henryswogs', 0, 'uriy1903@mailme.dk', 'Financial robot is the best companion of rich people. https://swogs.coronect.de/swogs ', '2022-06-10 21:09:39', '2022-06-10 21:09:39'),
(66, 'Henryswogs', 0, 'schmidtkom@forum.dk', 'We know how to increase your financial stability. https://swogs.coronect.de/swogs ', '2022-06-10 23:57:00', '2022-06-10 23:57:00'),
(67, 'Henryswogs', 0, 'nicolajthomsen@forum.dk', 'Check out the newest way to make a fantastic profit. https://swogs.coronect.de/swogs ', '2022-06-11 02:42:09', '2022-06-11 02:42:09'),
(68, 'Henryswogs', 0, 'oldme@forum.dk', 'Need some more money? Robot will earn them really fast. https://swogs.coronect.de/swogs ', '2022-06-11 05:23:49', '2022-06-11 05:23:49'),
(69, 'Henryswogs', 0, 'sicilia@forum.dk', 'Using this Robot is the best way to make you rich. https://swogs.coronect.de/swogs ', '2022-06-11 08:06:08', '2022-06-11 08:06:08'),
(70, 'Henryswogs', 0, 'dankurdo@forum.dk', 'Make your computer to be you earning instrument. https://swogs.coronect.de/swogs ', '2022-06-11 10:58:36', '2022-06-11 10:58:36'),
(71, 'Henryswogs', 0, 'lapusentus@mailme.dk', 'The fastest way to make you wallet thick is here. https://swogs.coronect.de/swogs ', '2022-06-11 13:49:47', '2022-06-11 13:49:47'),
(72, 'Henryswogs', 0, 'raz@mail-online.dk', 'Make money, not war! Financial Robot is what you need. https://swogs.coronect.de/swogs ', '2022-06-11 17:01:34', '2022-06-11 17:01:34'),
(73, 'Henryswogs', 0, 'halloffameboy@forum.dk', 'The huge income without investments is available, now! https://swogs.coronect.de/swogs ', '2022-06-11 19:52:54', '2022-06-11 19:52:54'),
(74, 'Henryswogs', 0, 'john.smith@mailme.dk', 'Make yourself rich in future using this financial robot. https://swogs.coronect.de/swogs ', '2022-06-11 22:53:01', '2022-06-11 22:53:01'),
(75, 'Henryswogs', 0, 'abc123@forum.dk', 'We know how to make our future rich and do you? https://swogs.coronect.de/swogs ', '2022-06-12 01:49:30', '2022-06-12 01:49:30'),
(76, 'Henryswogs', 0, 'jesperbrlarsen@forum.dk', 'Even a child knows how to make money. This robot is what you need! https://swogs.coronect.de/swogs ', '2022-06-12 05:01:25', '2022-06-12 05:01:25'),
(77, 'Henryswogs', 0, 'folmer@mail-online.dk', 'Even a child knows how to make $100 today. https://swogs.coronect.de/swogs ', '2022-06-12 07:50:11', '2022-06-12 07:50:11'),
(78, 'Henryswogs', 0, 'anette.strarup@forum.dk', 'Using this Robot is the best way to make you rich. https://swogs.coronect.de/swogs ', '2022-06-12 10:36:22', '2022-06-12 10:36:22'),
(79, 'Henryswogs', 0, 'kimmiekatharina@forum.dk', 'Using this Robot is the best way to make you rich. https://swogs.coronect.de/swogs ', '2022-06-12 13:24:03', '2022-06-12 13:24:03'),
(80, 'Henryswogs', 0, 'simonhoegh@forum.dk', 'No need to work anymore. Just launch the robot. https://swogs.coronect.de/swogs ', '2022-06-12 16:12:11', '2022-06-12 16:12:11'),
(81, 'Henryswogs', 0, 'drumik1211@mailme.dk', 'One dollar is nothing, but it can grow into $100 here. https://swogs.coronect.de/swogs ', '2022-06-12 19:26:47', '2022-06-12 19:26:47'),
(82, 'Henryswogs', 0, 'thomas-j@forum.dk', 'Trust your dollar to the Robot and see how it grows to $100. https://swogs.coronect.de/swogs ', '2022-06-12 22:17:29', '2022-06-12 22:17:29'),
(83, 'Henryswogs', 0, 'ajss@forum.dk', 'Financial robot guarantees everyone stability and income. https://swogs.coronect.de/swogs ', '2022-06-13 01:09:09', '2022-06-13 01:09:09'),
(84, 'Henryswogs', 0, 'm57@forum.dk', 'Earn additional money without efforts. https://swogs.coronect.de/swogs ', '2022-06-13 03:57:21', '2022-06-13 03:57:21'),
(85, 'Henryswogs', 0, 'srapply@forum.dk', 'Check out the automatic Bot, which works for you 24/7. https://swogs.coronect.de/swogs ', '2022-06-13 06:48:43', '2022-06-13 06:48:43'),
(86, 'Henryswogs', 0, 'vurtnex@mailme.dk', 'Earning money in the Internet is easy if you use Robot. https://swogs.coronect.de/swogs ', '2022-06-13 09:37:15', '2022-06-13 09:37:15'),
(87, 'Henryswogs', 0, 'ipsen@forum.dk', 'Just one click can turn you dollar into $1000. https://swogs.coronect.de/swogs ', '2022-06-13 12:26:15', '2022-06-13 12:26:15'),
(88, 'Henryswogs', 0, 'fivshukvasya@mailme.dk', 'Start making thousands of dollars every week. https://swogs.coronect.de/swogs ', '2022-06-13 15:16:42', '2022-06-13 15:16:42'),
(89, 'Henryswogs', 0, 'muhammed1957@forum.dk', 'Financial independence is what this robot guarantees. https://swogs.coronect.de/swogs ', '2022-06-13 18:07:22', '2022-06-13 18:07:22'),
(90, 'RichardPag', 0, 'no-replyJedy@gmail.com', 'Hi!  heeralalsweets.com \r\n \r\nWe put up of the sale \r\n \r\nSending your business proposition through the feedback form which can be found on the sites in the contact section. Contact form are filled in by our program and the captcha is solved. The advantage of this method is that messages sent through feedback forms are whitelisted. This method improve the odds that your message will be read. \r\n \r\nOur database contains more than 27 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing Up to 50,000 messages. \r\n \r\n \r\nThis letter is created automatically.  Use our contacts for communication. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', '2022-06-13 20:06:52', '2022-06-13 20:06:52'),
(91, 'Henryswogs', 0, 'ansivirin@mailme.dk', 'Need money? Earn it without leaving your home. https://swogs.coronect.de/swogs ', '2022-06-13 20:47:42', '2022-06-13 20:47:42'),
(92, 'Henryswogs', 0, 'irina1852009@mailme.dk', 'Additional income is now available for anyone all around the world. https://swogs.coronect.de/swogs ', '2022-06-13 23:28:39', '2022-06-13 23:28:39'),
(93, 'Henryswogs', 0, 'paladinliao@forum.dk', 'Need money? Get it here easily! Just press this to launch the robot. https://swogs.coronect.de/swogs ', '2022-06-14 02:12:25', '2022-06-14 02:12:25'),
(94, 'Henryswogs', 0, 'kris009@forum.dk', 'Most successful people already use Robot. Do you? https://swogs.coronect.de/swogs ', '2022-06-14 04:51:28', '2022-06-14 04:51:28'),
(95, 'Henryswogs', 0, 'boeje@forum.dk', 'Your computer can bring you additional income if you use this Robot. https://swogs.coronect.de/swogs ', '2022-06-14 08:29:59', '2022-06-14 08:29:59'),
(96, 'Henryswogs', 0, 'pedersen_lammert@mailme.dk', 'Financial Robot is #1 investment tool ever. Launch it! https://swogs.coronect.de/swogs ', '2022-06-14 11:17:05', '2022-06-14 11:17:05'),
(97, 'Henryswogs', 0, 'saxo@mail-online.dk', 'Looking for additional money? Try out the best financial instrument. https://swogs.coronect.de/swogs ', '2022-06-14 14:09:21', '2022-06-14 14:09:21'),
(98, 'Henryswogs', 0, 'balthor1@forum.dk', 'Financial independence is what everyone needs. https://swogs.coronect.de/swogs ', '2022-06-14 17:17:12', '2022-06-14 17:17:12'),
(99, 'Henryswogs', 0, 'jorgenjepsen@forum.dk', 'The financial Robot is your # 1 expert of making money. https://swogs.coronect.de/swogs ', '2022-06-14 20:20:45', '2022-06-14 20:20:45'),
(100, 'Henryswogs', 0, 'leska-alenka@mailme.dk', 'Making money is very easy if you use the financial Robot. https://swogs.coronect.de/swogs ', '2022-06-14 23:02:08', '2022-06-14 23:02:08'),
(101, 'Henryswogs', 0, 'zinkzz@forum.dk', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://swogs.coronect.de/swogs ', '2022-06-15 01:41:45', '2022-06-15 01:41:45'),
(102, 'Henryswogs', 0, 'oxi32v@mailme.dk', 'This robot will help you to make hundreds of dollars each day. https://swogs.coronect.de/swogs ', '2022-06-15 04:22:27', '2022-06-15 04:22:27'),
(103, 'Donald Cole', 0, 'lanj7962@gmail.com', 'Good day \r\n \r\n \r\n \r\nI contacted you some days back seeking your cooperation in a matter regarding funds worth $24 Million, I \r\nurge you to get back to me through this email coledd221@cloedcolela.com if you\'re still interested. \r\n \r\n \r\nI await your response. \r\n \r\n \r\nThanks, \r\n \r\n \r\nDonald Cole', '2022-06-15 05:37:17', '2022-06-15 05:37:17'),
(104, 'Henryswogs', 0, 'complete@forum.dk', 'One dollar is nothing, but it can grow into $100 here. https://swogs.coronect.de/swogs ', '2022-06-15 07:04:59', '2022-06-15 07:04:59'),
(105, 'Henryswogs', 0, 'bradleyhowarth034@mailme.dk', 'Your computer can bring you additional income if you use this Robot. https://swogs.coronect.de/swogs ', '2022-06-15 09:57:03', '2022-06-15 09:57:03'),
(106, 'Henryswogs', 0, 'poj@mail-online.dk', 'No need to work anymore. Just launch the robot. https://swogs.coronect.de/swogs ', '2022-06-15 12:56:56', '2022-06-15 12:56:56'),
(107, 'Henryswogs', 0, 'michelle2001@forum.dk', 'Every your dollar can turn into $100 after you lunch this Robot. https://swogs.coronect.de/swogs ', '2022-06-15 15:39:52', '2022-06-15 15:39:52'),
(108, 'Henryswogs', 0, 'johanwilm@mail-online.dk', 'No need to worry about the future if your use this financial robot. https://swogs.coronect.de/swogs ', '2022-06-15 18:16:58', '2022-06-15 18:16:58'),
(109, 'Henryswogs', 0, 'cxvj@forum.dk', 'Let your money grow into the capital with this Robot. https://swogs.coronect.de/swogs ', '2022-06-15 20:20:38', '2022-06-15 20:20:38'),
(110, 'Henryswogs', 0, 'a.krogh@forum.dk', 'Financial robot guarantees everyone stability and income. https://swogs.coronect.de/swogs ', '2022-06-15 23:03:32', '2022-06-15 23:03:32'),
(111, 'Henryswogs', 0, 'ege1@forum.dk', 'Join the society of successful people who make money here. https://swogs.coronect.de/swogs ', '2022-06-16 01:44:00', '2022-06-16 01:44:00'),
(112, 'Henryswogs', 0, 'trold02@forum.dk', 'Invest $1 today to make $1000 tomorrow. https://swogs.coronect.de/swogs ', '2022-06-16 04:35:27', '2022-06-16 04:35:27'),
(113, 'Henryswogs', 0, 'lemmer@mailme.dk', 'The online income is your key to success. https://swogs.coronect.de/swogs ', '2022-06-16 07:19:10', '2022-06-16 07:19:10'),
(114, 'Henryswogs', 0, 'prilepco69@mailme.dk', 'The best online investment tool is found. Learn more! https://swogs.coronect.de/swogs ', '2022-06-16 09:58:25', '2022-06-16 09:58:25'),
(115, 'Henryswogs', 0, 'dogz2410@forum.dk', 'Check out the newest way to make a fantastic profit. https://swogs.bode-roesch.de/swogs ', '2022-06-16 12:42:52', '2022-06-16 12:42:52'),
(116, 'Henryswogs', 0, 'r8manden@forum.dk', 'Have no money? It’s easy to earn them online here. https://swogs.bode-roesch.de/swogs ', '2022-06-16 15:26:52', '2022-06-16 15:26:52'),
(117, 'Henryswogs', 0, 'kasperjuel@forum.dk', 'Your money work even when you sleep. https://swogs.bode-roesch.de/swogs ', '2022-06-16 18:14:19', '2022-06-16 18:14:19'),
(118, 'Henryswogs', 0, 'penpedersen@forum.dk', 'Financial independence is what this robot guarantees. https://swogs.bode-roesch.de/swogs ', '2022-06-16 20:57:29', '2022-06-16 20:57:29'),
(119, 'OBJfrIhpkExWq', 5008460908, 'udamaris19ul80go1i0i@outlook.com', 'brBFOcXvJfZj', '2022-06-16 23:27:46', '2022-06-16 23:27:46'),
(120, 'emEAHplD', 5943536924, 'udamaris19ul80go1i0i@outlook.com', 'RoVdnETP', '2022-06-16 23:27:48', '2022-06-16 23:27:48'),
(121, 'Henryswogs', 0, 'brooks@forum.dk', 'Everyone who needs money should try this Robot out. https://swogs.bode-roesch.de/swogs ', '2022-06-16 23:48:33', '2022-06-16 23:48:33'),
(122, 'Henryswogs', 0, 'tokach72@mailme.dk', 'Even a child knows how to make money. This robot is what you need! https://swogs.bode-roesch.de/swogs ', '2022-06-17 02:27:05', '2022-06-17 02:27:05'),
(123, 'Henryswogs', 0, 'nataschaf2@mailme.dk', 'Even a child knows how to make $100 today. https://swogs.bode-roesch.de/swogs ', '2022-06-17 05:06:29', '2022-06-17 05:06:29'),
(124, 'Henryswogs', 0, 'simbasabi@forum.dk', 'Need cash? Launch this robot and see what it can. https://swogs.bode-roesch.de/swogs ', '2022-06-17 08:15:27', '2022-06-17 08:15:27'),
(125, 'Henryswogs', 0, 'koty157@mailme.dk', 'Feel free to buy everything you want with the additional income. https://swogs.bode-roesch.de/swogs ', '2022-06-17 11:02:53', '2022-06-17 11:02:53'),
(126, 'Mike Fraser\r\n', 0, 'no-replyEredy@gmail.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Fraser\r\n \r\nsupport@digital-x-press.com', '2022-06-17 11:15:23', '2022-06-17 11:15:23'),
(127, 'Henryswogs', 0, 'peter_valg@forum.dk', 'Looking for an easy way to make money? Check out the financial robot. https://swogs.fannyberlin.se/swogs ', '2022-06-17 13:45:09', '2022-06-17 13:45:09'),
(128, 'Henryswogs', 0, 'chitooz@mailme.dk', 'Financial robot is your success formula is found. Learn more about it. https://swogs.fannyberlin.se/swogs ', '2022-06-17 16:28:49', '2022-06-17 16:28:49'),
(129, 'Henryswogs', 0, 'kricriongoulcin@mailme.dk', 'Need some more money? Robot will earn them really fast. https://swogs.fannyberlin.se/swogs ', '2022-06-17 19:25:05', '2022-06-17 19:25:05'),
(130, 'Henryswogs', 0, 'xdrahus@mailme.dk', 'Your money work even when you sleep. https://swogs.fannyberlin.se/swogs ', '2022-06-17 22:08:42', '2022-06-17 22:08:42'),
(131, 'Henryswogs', 0, 'mickey1833@forum.dk', 'Make your computer to be you earning instrument. https://swogs.fannyberlin.se/swogs ', '2022-06-18 00:42:15', '2022-06-18 00:42:15'),
(132, 'Henryswogs', 0, 'runeholmjensenzl@mailme.dk', 'The best online investment tool is found. Learn more! https://swogs.fannyberlin.se/swogs ', '2022-06-18 02:43:05', '2022-06-18 02:43:05'),
(133, 'Henryswogs', 0, 'karlsen999@forum.dk', 'Financial robot is your success formula is found. Learn more about it. https://swogs.fannyberlin.se/swogs ', '2022-06-18 05:29:00', '2022-06-18 05:29:00'),
(134, 'Henryswogs', 0, 'jrrt3791@mailme.dk', 'We know how to become rich and do you? https://swogs.fannyberlin.se/swogs ', '2022-06-18 08:23:26', '2022-06-18 08:23:26'),
(136, 'Henryswogs', 0, 'valyuta73@mailme.dk', 'The best online investment tool is found. Learn more! https://swogs.fannyberlin.se/swogs ', '2022-06-18 14:10:38', '2022-06-18 14:10:38'),
(137, 'Henryswogs', 0, 'lidusik1@mailme.dk', 'Watch your money grow while you invest with the Robot. https://swogs.fannyberlin.se/swogs ', '2022-06-18 16:57:58', '2022-06-18 16:57:58'),
(138, 'Henryswogs', 0, 'xdeputat777x@mailme.dk', 'The online income is the easiest ways to make you dream come true. https://swogs.fannyberlin.se/swogs ', '2022-06-18 19:44:08', '2022-06-18 19:44:08'),
(139, 'Henryswogs', 0, 'mille@mailme.dk', 'Make money 24/7 without any efforts and skills. https://swogs.fannyberlin.se/swogs ', '2022-06-18 22:46:26', '2022-06-18 22:46:26'),
(140, 'Henryswogs', 0, 'firyll_viga@mailme.dk', 'Online earnings are the easiest way for financial independence. https://swogs.fannyberlin.se/swogs ', '2022-06-19 01:26:27', '2022-06-19 01:26:27'),
(141, 'Henryswogs', 0, 'binebethina@forum.dk', 'Still not a millionaire? Fix it now! https://swogs.fannyberlin.se/swogs ', '2022-06-19 04:15:34', '2022-06-19 04:15:34'),
(142, 'Henryswogs', 0, 'gsimonsenrot@mailme.dk', 'Let your money grow into the capital with this Robot. https://swogs.fannyberlin.se/swogs ', '2022-06-19 06:54:21', '2022-06-19 06:54:21'),
(143, 'Henryswogs', 0, 'k_pabst@forum.dk', 'Try out the automatic robot to keep earning all day long. https://swogs.fannyberlin.se/swogs ', '2022-06-19 09:32:19', '2022-06-19 09:32:19'),
(144, 'Henryswogs', 0, 'stan90@mailme.dk', '# 1 financial expert in the net! Check out the new Robot. https://swogs.fannyberlin.se/swogs ', '2022-06-19 12:37:56', '2022-06-19 12:37:56'),
(145, 'Henryswogs', 0, 'mishaseriy1995@mailme.dk', 'Wow! This is a fastest way for a financial independence. https://swogs.fannyberlin.se/swogs ', '2022-06-19 15:16:22', '2022-06-19 15:16:22'),
(146, 'Henryswogs', 0, 'lea@mail-online.dk', 'Online earnings are the easiest way for financial independence. https://swogs.fannyberlin.se/swogs ', '2022-06-19 18:11:12', '2022-06-19 18:11:12'),
(147, 'Henryswogs', 0, 'mikkelquvang@forum.dk', 'Make yourself rich in future using this financial robot. https://swogs.fannyberlin.se/swogs ', '2022-06-19 20:53:31', '2022-06-19 20:53:31'),
(148, 'Henryswogs', 0, 'a380cpi@mail-online.dk', 'The online financial Robot is your key to success. https://collectif-hameb.fr/swogs ', '2022-06-20 00:03:33', '2022-06-20 00:03:33'),
(149, 'Henryswogs', 0, 'bettimac@forum.dk', 'No need to worry about the future if your use this financial robot. https://collectif-hameb.fr/swogs ', '2022-06-20 02:51:05', '2022-06-20 02:51:05'),
(150, 'Henryswogs', 0, 'lsh@mail-online.dk', 'Make dollars staying at home and launched this Bot. https://swogs.compras2u.es/swogs ', '2022-06-20 05:36:39', '2022-06-20 05:36:39'),
(151, 'Henryswogs', 0, 'this_is_me@jubiipost.dk', 'Even a child knows how to make $100 today with the help of this robot. https://amalgamas.es/swogs ', '2022-06-20 08:18:52', '2022-06-20 08:18:52'),
(152, 'Henryswogs', 0, 'nielsfugl@forum.dk', 'Everyone can earn as much as he wants now. https://amalgamas.es/swogs ', '2022-06-20 10:57:37', '2022-06-20 10:57:37'),
(153, 'Henryswogs', 0, 'behene@mail-online.dk', 'Financial independence is what everyone needs. https://swogs.borisvonsmercek.de/swogs ', '2022-06-20 13:41:04', '2022-06-20 13:41:04'),
(154, 'Henryswogs', 0, 'adidas1234@mail-online.dk', 'No need to worry about the future if your use this financial robot. https://swogs.borisvonsmercek.de/swogs ', '2022-06-20 16:24:29', '2022-06-20 16:24:29'),
(155, 'Henryswogs', 0, 'alelara@mailme.dk', 'Check out the newest way to make a fantastic profit. https://swogs.compras2u.es/swogs ', '2022-06-20 19:14:28', '2022-06-20 19:14:28'),
(156, 'Henryswogs', 0, 'jasnat@forum.dk', 'The additional income for everyone. https://borisvonsmercek.de/swogs ', '2022-06-20 21:55:57', '2022-06-20 21:55:57'),
(157, 'Henryswogs', 0, 'dino10@forum.dk', 'One dollar is nothing, but it can grow into $100 here. https://swogs.fannyberlin.se/swogs ', '2022-06-21 00:37:21', '2022-06-21 00:37:21'),
(158, 'Henryswogs', 0, 'kraken@forum.dk', 'Just one click can turn you dollar into $1000. https://swogs.baleti-design.fr/swogs ', '2022-06-21 03:25:00', '2022-06-21 03:25:00'),
(159, 'Henryswogs', 0, 'pardalis@forum.dk', 'Most successful people already use Robot. Do you? https://swogs.baleti-design.fr/swogs ', '2022-06-21 06:06:01', '2022-06-21 06:06:01'),
(160, 'Henryswogs', 0, 'pia2012@forum.dk', 'No need to work anymore while you have the Robot launched! https://swogs.amalgamas.es/swogs ', '2022-06-21 08:46:15', '2022-06-21 08:46:15'),
(161, 'Henryswogs', 0, 'helenehc1@forum.dk', 'This robot will help you to make hundreds of dollars each day. https://swogs.borisvonsmercek.de/swogs ', '2022-06-21 11:33:54', '2022-06-21 11:33:54'),
(162, 'Henryswogs', 0, 'plejaderne@forum.dk', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. http://go.afalobo.com/0ide ', '2022-06-21 14:08:46', '2022-06-21 14:08:46'),
(163, 'Henryswogs', 0, 'anatolijterentev846@gmail.com', 'This robot will help you to make hundreds of dollars each day. http://go.afalobo.com/0ide ', '2022-06-21 16:59:11', '2022-06-21 16:59:11'),
(164, 'Henryswogs', 0, 'haymongmo814@gmail.com', 'Try out the automatic robot to keep earning all day long. http://go.afalobo.com/0ide ', '2022-06-21 19:38:17', '2022-06-21 19:38:17'),
(165, 'Henryswogs', 0, 'ihavemight@gmail.com', 'Even a child knows how to make money. This robot is what you need! http://go.afalobo.com/0ide ', '2022-06-21 22:22:52', '2022-06-21 22:22:52'),
(166, 'Henryswogs', 0, 'megusen@coremail.ru', 'One click of the robot can bring you thousands of bucks. http://go.afalobo.com/0ide ', '2022-06-22 01:08:22', '2022-06-22 01:08:22'),
(167, 'Henryswogs', 0, 'doanhongnhung69663@gmail.com', 'Online Bot will bring you wealth and satisfaction. http://go.afalobo.com/0ide ', '2022-06-22 03:51:55', '2022-06-22 03:51:55'),
(168, 'Henryswogs', 0, 'donnamudakseer01@coremail.ru', 'We know how to make our future rich and do you? http://go.afalobo.com/0ide ', '2022-06-22 06:37:38', '2022-06-22 06:37:38'),
(169, 'Henryswogs', 0, 'elisalavrenteva85@mail.ru', 'Make thousands of bucks. Pay nothing. http://go.afalobo.com/0ide ', '2022-06-22 09:28:35', '2022-06-22 09:28:35'),
(170, 'Henryswogs', 0, 'abbe@studioten25.com', 'Need money? Get it here easily? http://go.cufasez.com/0ie5 ', '2022-06-22 12:27:06', '2022-06-22 12:27:06'),
(171, 'Henryswogs', 0, 'despondency@coremail.ru', 'Financial independence is what everyone needs. https://swogs.nanolabs.es/swogs ', '2022-06-22 15:17:43', '2022-06-22 15:17:43'),
(172, 'Mike Baker\r\n', 0, 'no-replyEredy@gmail.com', 'Hi \r\n \r\nThis is Mike Baker\r\n \r\nLet me show you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your heeralalsweets.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Baker\r\n \r\nmike@strictlydigital.net', '2022-06-22 15:56:13', '2022-06-22 15:56:13'),
(173, 'Henryswogs', 0, 'cripto06@coremail.ru', 'Robot is the best way for everyone who looks for financial independence. https://swogs.nanolabs.es/swogs ', '2022-06-22 18:07:46', '2022-06-22 18:07:46'),
(174, 'Henryswogs', 0, 'ngaykyniem175@gmail.com', 'Launch the robot and let it bring you money. https://swogs.nanolabs.es/swogs ', '2022-06-22 21:18:20', '2022-06-22 21:18:20'),
(175, 'Henryswogs', 0, 'pitaganjaneth@gmail.com', 'Automatic robot is the best start for financial independence. https://swogs.nanolabs.es/swogs ', '2022-06-23 00:09:21', '2022-06-23 00:09:21'),
(176, 'Henryswogs', 0, 'shoshannahephzibah47361@gmail.com', 'Start making thousands of dollars every week. https://swogs.nanolabs.es/swogs ', '2022-06-23 02:51:28', '2022-06-23 02:51:28'),
(177, 'Henryswogs', 0, 'matthew@gmail.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://swogs.nanolabs.es/swogs ', '2022-06-23 05:33:48', '2022-06-23 05:33:48'),
(178, 'Henryswogs', 0, 'mariomarsh4288@gmail.com', 'Make thousands of bucks. Financial robot will help you to do it! https://swogs.nanolabs.es/swogs ', '2022-06-23 08:34:19', '2022-06-23 08:34:19'),
(179, 'Henryswogs', 0, 'chadaniya78@gmail.com', 'Rich people are rich because they use this robot. https://swogs.nanolabs.es/swogs ', '2022-06-23 11:11:53', '2022-06-23 11:11:53'),
(180, 'Henryswogs', 0, 'reinmar532@coremail.ru', 'Robot is the best solution for everyone who wants to earn. https://swogs.nanolabs.es/swogs ', '2022-06-23 13:58:24', '2022-06-23 13:58:24'),
(181, 'Henryswogs', 0, 'rashidsahi50@gmail.com', 'Online Bot will bring you wealth and satisfaction. https://swogs.nanolabs.es/swogs ', '2022-06-23 17:13:08', '2022-06-23 17:13:08'),
(182, 'Henryswogs', 0, 'lananxy@1gmail.com', 'We know how to become rich and do you? https://swogs.nanolabs.es/swogs ', '2022-06-23 19:56:20', '2022-06-23 19:56:20'),
(183, 'Henryswogs', 0, 'fomichevafrikan999@bk.ru', 'Feel free to buy everything you want with the additional income. https://swogs.nanolabs.es/swogs ', '2022-06-23 22:39:27', '2022-06-23 22:39:27'),
(184, 'Henryswogs', 0, 'kurttwiford@coremail.ru', 'There is no need to look for a job anymore. Work online. https://swogs.nanolabs.es/swogs ', '2022-06-24 01:23:57', '2022-06-24 01:23:57'),
(185, 'Henryswogs', 0, 'daooli@seznam.cz', 'Let your money grow into the capital with this Robot. https://swogs.nanolabs.es/swogs ', '2022-06-24 04:13:28', '2022-06-24 04:13:28'),
(186, 'Henryswogs', 0, 'stephen.gornick@outlook.com', 'Need money? Get it here easily? https://swogs.nanolabs.es/swogs ', '2022-06-24 06:53:48', '2022-06-24 06:53:48'),
(187, 'cHUtkCXLrlB', 6895550257, 'raymonokya6kaz5@outlook.com', 'yChPrnBwaLcuQMv', '2022-06-24 07:06:06', '2022-06-24 07:06:06'),
(188, 'wtSQlkXB', 5871769972, 'raymonokya6kaz5@outlook.com', 'zpnaWCQoVRH', '2022-06-24 07:06:08', '2022-06-24 07:06:08'),
(189, 'Henryswogs', 0, 's.oshitkova@gmail.com', 'Small investments can bring tons of dollars fast. https://swogs.nanolabs.es/swogs ', '2022-06-24 09:39:31', '2022-06-24 09:39:31'),
(190, 'Henryswogs', 0, 'xyliese8fzh@gmail.com', 'See how Robot makes $1000 from $1 of investment. https://swogs.nanolabs.es/swogs ', '2022-06-24 12:21:08', '2022-06-24 12:21:08'),
(191, 'Henryswogs', 0, 'malithcrypto@coremail.ru', 'Robot never sleeps. It makes money for you 24/7. https://swogs.nanolabs.es/swogs ', '2022-06-24 15:01:44', '2022-06-24 15:01:44'),
(192, 'Henryswogs', 0, 'richardpeterson@coremail.ru', 'Make thousands of bucks. Pay nothing. https://swogs.nanolabs.es/swogs ', '2022-06-24 17:45:31', '2022-06-24 17:45:31'),
(193, 'Henryswogs', 0, 'cathy.hall@dalystreet6162.com', 'Everyone can earn as much as he wants now. https://swogs.nanolabs.es/swogs ', '2022-06-24 20:16:21', '2022-06-24 20:16:21'),
(194, 'Henryswogs', 0, 'levvv@gmail.com', 'Make money in the internet using this Bot. It really works! https://swogs.nanolabs.es/swogs ', '2022-06-24 22:57:27', '2022-06-24 22:57:27'),
(195, 'Henryswogs', 0, 'javierdouglaskwjk@gmail.com', 'Thousands of bucks are guaranteed if you use this robot. https://swogs.nanolabs.es/swogs ', '2022-06-25 01:36:34', '2022-06-25 01:36:34'),
(196, 'Henryswogs', 0, 'battlecreek1@yahoo.com', 'Attention! Here you can earn money online! https://swogs.nanolabs.es/swogs ', '2022-06-25 04:20:58', '2022-06-25 04:20:58'),
(197, 'Henryswogs', 0, 'tranhaibinh66801@gmail.com', 'The best online job for retirees. Make your old ages rich. https://swogs.nanolabs.es/swogs ', '2022-06-25 06:58:11', '2022-06-25 06:58:11'),
(198, 'Henryswogs', 0, 'gukublack15486@gmail.com', 'The financial Robot is the most effective financial tool in the net! https://swogs.nanolabs.es/swogs ', '2022-06-25 09:41:57', '2022-06-25 09:41:57'),
(199, 'Crytoswogsswogs', 0, 'MerinoBart@o2.pl', 'The online financial Robot is your key to success. https://Vant.startupers.se/promo ', '2022-06-26 06:17:29', '2022-06-26 06:17:29'),
(200, 'Christian Djurit', 0, '5rdhp2fe29yb@beconfidential.com', 'We provide funding  through our venture company to both startups and existing businesses either looking for expansion or to accelerate their company growth. \r\nWe have a structured joint venture investment plan in which we are interested in an annual return on investment not more than 10% ROI. We are also currently structuring a convertible debt and loan financing of 3% interest repayable annually with no early prepayment penalties. \r\nEmail: Chris.djurit@alconmcl.com \r\ndjuritchris@gmail.com \r\n \r\nChristian Djurit \r\nDirector/Investment Head \r\nAlcon Management Company LTD UK.', '2022-06-27 04:20:13', '2022-06-27 04:20:13'),
(201, 'Mike Forman\r\n', 0, 'no-replyEredy@gmail.com', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your website? \r\nHaving a high DA score, always helps \r\n \r\nGet your heeralalsweets.com to have a DA between 50 to 60 points in Moz with us today and reap the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nOn SALE: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nThank you \r\nMike Forman\r\n', '2022-06-28 11:50:13', '2022-06-28 11:50:13'),
(202, 'Mike ', 0, 'no-replyEredy@gmail.com', 'Hi \r\n \r\nWe will enhance your Local Ranks organically and safely, using only whitehat methods, while providing Google maps and website offsite work at the same time. \r\n \r\nPlease check our services below, we offer Local SEO at cheap rates. \r\nhttps://speed-seo.net/product/local-seo-package/ \r\n \r\nNEW: \r\nhttps://www.speed-seo.net/product/zip-codes-gmaps-citations/ \r\n \r\nregards \r\nMike  \r\nSpeed SEO Digital Agency', '2022-06-28 18:43:33', '2022-06-28 18:43:33'),
(203, 'AvHjgcOkw', 7651244218, 'rosariaf7uk7d1e835e@outlook.com', 'FjoNeGzgvJZ', '2022-06-30 11:07:25', '2022-06-30 11:07:25'),
(204, 'fPxcwqCRHiTYKlN', 5766684712, 'rosariaf7uk7d1e835e@outlook.com', 'EzPhtDvLHgGwmN', '2022-06-30 11:07:27', '2022-06-30 11:07:27'),
(205, 'Crytoswogs', 0, 'marylea_rufino@yahoo.com', 'Earn additional money without efforts. https://Vant.dkworld.de/gotodate/go', '2022-07-03 15:02:10', '2022-07-03 15:02:10'),
(206, 'Crytoswogs', 0, 'kaileymartinez2017@yahoo.com', 'Additional income is now available for anyone all around the world. https://Vant.dkworld.de/gotodate/go', '2022-07-03 22:36:12', '2022-07-03 22:36:12'),
(207, 'Crytoswogs', 0, 'alexk1031@gmail.com', 'Everyone can earn as much as he wants suing this Bot. https://Vant.dkworld.de/gotodate/go', '2022-07-04 00:49:45', '2022-07-04 00:49:45'),
(208, 'Crytoswogs', 0, 'grettaparks@yahoo.com', 'Making money in the net is easier now. https://Vant.dkworld.de/gotodate/go', '2022-07-04 03:05:55', '2022-07-04 03:05:55'),
(209, 'Crytoswogs', 0, 'amandavincent04@hotmail.com', 'The online job can bring you a fantastic profit. https://Vant.dkworld.de/gotodate/go', '2022-07-04 05:24:27', '2022-07-04 05:24:27'),
(210, 'Crytoswogs', 0, 'firstusckid@yahoo.com', 'Make money 24/7 without any efforts and skills. https://Vant.dkworld.de/gotodate/go', '2022-07-04 07:38:44', '2022-07-04 07:38:44'),
(211, 'Crytoswogs', 0, 'fgtautomation+58ca454951f0177a3f753c98da', 'Need money? Get it here easily! Just press this to launch the robot. https://Vant.dkworld.de/gotodate/go', '2022-07-04 09:50:04', '2022-07-04 09:50:04'),
(212, 'Crytoswogs', 0, 'angel.fox1993@yahoo.com', 'Automatic robot is the best start for financial independence. https://Vant.dkworld.de/gotodate/go', '2022-07-04 11:54:50', '2022-07-04 11:54:50'),
(213, 'Mason Jones', 0, 'explaineranimationstudio7@gmail.com', 'Hey! \r\n \r\nDo you want to increase sales for your business 24/7? \r\n \r\nIf so, you have to grab people’s attention quickly. And there’s nothing like a catchy explainer video to do the trick! \r\n \r\nI have an exclusive offer available for the first 20 people that act on this message today, but you must act fast. \r\n \r\nWhile you would normally pay as much as $600, or probably even $1,000, for a 60-second video like this, I am providing the same service for only $97. \r\n \r\nDon’t be fooled by the price, we create high-quality videos, and you can see samples or order now at: https://bit.ly/explainer-animation-promo \r\n \r\nNot sure if you caught it, but this offer is only good this week, for the first 20 clients, so you need to order now, before you miss out. \r\n \r\nAgain, this $97 promotion is for a 60-second explainer video and is for this week only. Don’t miss out!!! \r\n \r\nClick Here Now To Watch The Animated Video That We Created To Explain It All \r\n---> https://bit.ly/explainer-animation-promo \r\n \r\nCheers, \r\nMason Jones \r\nExplainer Animation Studio', '2022-07-04 12:39:31', '2022-07-04 12:39:31'),
(214, 'Crytoswogs', 0, 'maricervantez@gmail.com', 'Even a child knows how to make money. This robot is what you need! https://Vant.dkworld.de/gotodate/go', '2022-07-04 14:03:00', '2022-07-04 14:03:00'),
(215, 'Crytoswogs', 0, 'MsLombard2@aol.com', 'Make money, not war! Financial Robot is what you need. https://Vant.dkworld.de/gotodate/go', '2022-07-04 16:09:22', '2022-07-04 16:09:22'),
(216, 'Crytoswogs', 0, 'bocaviwo@bestmedicinehat.net', 'Find out about the easiest way of money earning. https://Vant.dkworld.de/gotodate/go', '2022-07-04 18:17:24', '2022-07-04 18:17:24'),
(217, 'Crytoswogs', 0, 'benihana534@gmail.com', 'The financial Robot is the most effective financial tool in the net! https://Vant.dkworld.de/gotodate/go', '2022-07-04 20:24:36', '2022-07-04 20:24:36'),
(218, 'Crytoswogs', 0, 'luber_duber_ms@yahoo.com', 'We have found the fastest way to be rich. Find it out here. https://Vant.dkworld.de/gotodate/go', '2022-07-04 22:40:19', '2022-07-04 22:40:19'),
(219, 'Crytoswogs', 0, 'ibfqgfygw@msn.com', 'Online job can be really effective if you use this Robot. https://Vant.dkworld.de/gotodate/go', '2022-07-05 00:55:14', '2022-07-05 00:55:14'),
(220, 'Crytoswogs', 0, 'plotnikova.olg@gmail.com', 'We know how to make our future rich and do you? https://Vant.dkworld.de/gotodate/go', '2022-07-05 03:07:32', '2022-07-05 03:07:32'),
(221, 'Crytoswogs', 0, 'feliciar2006@aol.com', 'Additional income is now available for anyone all around the world. https://Vant.dkworld.de/gotodate/go', '2022-07-05 05:17:18', '2022-07-05 05:17:18'),
(222, 'Crytoswogs', 0, 'mast8rmind@hotmail.com', 'Start making thousands of dollars every week just using this robot. https://Vant.dkworld.de/gotodate/go', '2022-07-05 07:34:37', '2022-07-05 07:34:37'),
(223, 'Crytoswogs', 0, 'tanvia30@gmail.com', 'Financial robot keeps bringing you money while you sleep. https://Vant.dkworld.de/gotodate/go', '2022-07-05 09:49:40', '2022-07-05 09:49:40'),
(224, 'Crytoswogs', 0, 'omoola09@yahoo.com', 'Just one click can turn you dollar into $1000. https://Vant.dkworld.de/gotodate/go', '2022-07-05 12:00:06', '2022-07-05 12:00:06'),
(225, 'Crytoswogs', 0, 'eric@yahoo.com', 'Start making thousands of dollars every week. https://Vant.dkworld.de/gotodate/go', '2022-07-05 14:03:00', '2022-07-05 14:03:00'),
(226, 'Crytoswogs', 0, 'autrionnaj@yahoo.com', 'Make thousands of bucks. Financial robot will help you to do it! https://Vant.dkworld.de/gotodate/go', '2022-07-05 16:06:34', '2022-07-05 16:06:34'),
(227, 'Crytoswogs', 0, 'liagaoazile@yahoo.com', 'Financial robot is a great way to manage and increase your income. https://Vant.dkworld.de/gotodate/go', '2022-07-05 18:11:55', '2022-07-05 18:11:55'),
(228, 'Mike Babcock\r\n', 0, 'no-replyEredy@gmail.com', 'Howdy \r\n \r\nI have just verified your SEO on  heeralalsweets.com for the ranking keywords and saw that your website could use a boost. \r\n \r\nWe will enhance your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\n \r\nregards \r\nMike Babcock\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de', '2022-07-05 20:17:49', '2022-07-05 20:17:49'),
(229, 'Crytoswogs', 0, 'c.thomas7007@gmail.com', 'Need cash? Launch this robot and see what it can. https://Vant.dkworld.de/gotodate/go', '2022-07-05 20:20:45', '2022-07-05 20:20:45'),
(230, 'Crytoswogs', 0, '7845120205@gmail.com', 'This robot can bring you money 24/7. https://Vant.seamonkey.es/gotodate/go', '2022-07-05 22:26:23', '2022-07-05 22:26:23'),
(231, 'Crytoswogs', 0, 'j3gp1y@yahoo.com', 'Financial independence is what everyone needs. https://Vant.seamonkey.es/gotodate/go', '2022-07-06 00:41:16', '2022-07-06 00:41:16'),
(232, 'Crytoswogs', 0, 'odinsrevolution@yahoo.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://Vant.seamonkey.es/gotodate/go', '2022-07-06 02:56:13', '2022-07-06 02:56:13'),
(233, 'Crytoswogs', 0, 'babymaeggie@yahoo.com', 'No need to worry about the future if your use this financial robot. https://Vant.seamonkey.es/gotodate/go', '2022-07-06 05:07:14', '2022-07-06 05:07:14');
INSERT INTO `contact` (`contact_id`, `contact_name`, `contact_mobile`, `contact_email`, `contact_message`, `created_at`, `updated_at`) VALUES
(234, 'Crytoswogs', 0, 'gwatrous@gmail.com', 'Making money is very easy if you use the financial Robot. https://Vant.seamonkey.es/gotodate/go', '2022-07-06 07:20:02', '2022-07-06 07:20:02'),
(235, 'Crytoswogs', 0, 'ritawu0206@hotmail.com', 'Make yourself rich in future using this financial robot. https://Vant.seamonkey.es/gotodate/go', '2022-07-06 09:45:36', '2022-07-06 09:45:36'),
(236, 'Crytoswogs', 0, 'dan.sxly@yahoo.com', 'Learn how to make hundreds of backs each day. https://Vant.seamonkey.es/gotodate/go', '2022-07-06 11:59:32', '2022-07-06 11:59:32'),
(237, 'Crytoswogs', 0, 'dredridinghood@hotmail.com', 'We know how to increase your financial stability. https://Vant.seamonkey.es/gotodate/go', '2022-07-06 14:05:17', '2022-07-06 14:05:17'),
(238, 'Crytoswogs', 0, 'yo5454@yahoo.com', 'The best way for everyone who rushes for financial independence. https://Vant.seamonkey.es/gotodate/go', '2022-07-06 16:10:47', '2022-07-06 16:10:47'),
(239, 'Crytoswogs', 0, 'ym700@gmail.com', 'Money, money! Make more money with financial robot! https://Vant.seamonkey.es/gotodate/go', '2022-07-06 18:19:22', '2022-07-06 18:19:22'),
(240, 'Crytoswogs', 0, 'sarahmstovell@hotmail.com', 'Try out the best financial robot in the Internet. https://Vant.seamonkey.es/gotodate/go', '2022-07-06 20:25:01', '2022-07-06 20:25:01'),
(241, 'Crytoswogs', 0, 'inezmm2010@gmail.com', 'Even a child knows how to make money. Do you? https://Vant.seamonkey.es/gotodate/go', '2022-07-06 22:29:09', '2022-07-06 22:29:09'),
(242, 'Crytoswogs', 0, 'pkcqwcrw@usa.com', 'Launch the financial Bot now to start earning. https://Vant.seamonkey.es/gotodate/go', '2022-07-07 00:35:34', '2022-07-07 00:35:34'),
(243, 'Crytoswogs', 0, 'mariannagal2299@yahoo.com', 'Even a child knows how to make money. Do you? https://Vant.seamonkey.es/gotodate/go', '2022-07-07 02:41:31', '2022-07-07 02:41:31'),
(244, 'Crytoswogs', 0, 'colin_isabel@yahoo.com', 'Join the society of successful people who make money here. https://Vant.seamonkey.es/gotodate/go', '2022-07-07 04:50:26', '2022-07-07 04:50:26'),
(245, 'Crytoswogs', 0, 'bubbufet@aim.com', 'Launch the best investment instrument to start making money today. https://Vant.seamonkey.es/gotodate/go', '2022-07-07 06:54:06', '2022-07-07 06:54:06'),
(246, 'Crytoswogs', 0, 'rjbrekke@yahoo.com', 'Make your laptop a financial instrument with this program. https://Vant.seamonkey.es/gotodate/go', '2022-07-07 17:47:22', '2022-07-07 17:47:22'),
(247, 'Crytoswogs', 0, 'amelialing@buchananinbox.com', 'Financial Robot is #1 investment tool ever. Launch it! https://Vant.seamonkey.es/gotodate/go', '2022-07-07 19:51:13', '2022-07-07 19:51:13'),
(248, 'Crytoswogs', 0, 'myvi76@yahoo.com', 'See how Robot makes $1000 from $1 of investment. https://Vant.seamonkey.es/gotodate/go', '2022-07-07 21:54:28', '2022-07-07 21:54:28'),
(249, 'Crytoswogs', 0, 'trafikpe4@hotmail.com', 'Financial robot keeps bringing you money while you sleep. https://Vant.seamonkey.es/gotodate/go', '2022-07-08 00:04:07', '2022-07-08 00:04:07'),
(250, 'Crytoswogs', 0, 'ronjane866@hotmail.com', 'The fastest way to make you wallet thick is here. https://Vant.seamonkey.es/gotodate/go', '2022-07-08 02:11:04', '2022-07-08 02:11:04'),
(251, 'Crytoswogs', 0, 'lindsay.ann.hall@gmail.com', 'Make your computer to be you earning instrument. https://Vant.seamonkey.es/gotodate/go', '2022-07-08 04:19:55', '2022-07-08 04:19:55'),
(252, 'Crytoswogs', 0, 'sbrown0720@yahoo.com', 'Buy everything you want earning money online. https://Vant.seamonkey.es/gotodate/go', '2022-07-08 06:31:41', '2022-07-08 06:31:41'),
(253, 'Crytoswogs', 0, 'tazman1082@comcast.net', 'This robot will help you to make hundreds of dollars each day. https://Vant.seamonkey.es/gotodate/go', '2022-07-08 08:40:07', '2022-07-08 08:40:07'),
(254, 'Crytoswogs', 0, 'phutc@hotmail.com', 'Financial robot is the best companion of rich people. https://Vant.seamonkey.es/gotodate/go', '2022-07-08 10:50:00', '2022-07-08 10:50:00'),
(255, 'Crytoswogs', 0, 'p.arl.apip.a.s5.2@gmail.com', 'We know how to become rich and do you? https://Vant.seamonkey.es/gotodate/go', '2022-07-08 12:58:15', '2022-07-08 12:58:15'),
(256, 'Crytoswogs', 0, 'blue.pihing@gmail.com', 'Still not a millionaire? The financial robot will make you him! https://Vant.seamonkey.es/gotodate/go', '2022-07-08 15:25:05', '2022-07-08 15:25:05'),
(257, 'Jessegot', 0, 'jessicasamantha663@gmail.com', 'We are a Team of IT Experts specialized in the production of authentic Documents and Counterfeit bank notes. We work with government officials, professors and professional hackers from China, US, Russia, Taiwan etc. All these documents are registered into the supposed database. Documents such as Passport, Visa\'s, Driving License, Covid19 Vaccine Card, University Certificates etc. We also have Canadian dollars, US dollars, pounds and euros. We also have our money in categories, Grade A quality that works at ATMs and bypasses the fake money detector and we also have the normal stage money that was used in jokes, commercials, music and movie videos. Contact details below. \r\nWhatsApp..... +44 7459 530545 \r\nEmail Address.... jameskinds65@gmail.com \r\nTelegram ID..... \"@Jameskind65\" \r\nWickr Me ID..... Jameskind65.', '2022-07-09 11:16:12', '2022-07-09 11:16:12'),
(258, 'Crytoswogs', 0, 'sademerkki@yahoo.com', 'Turn $1 into $100 instantly. Use the financial Robot. https://Vant.seamonkey.es/gotodate/go', '2022-07-12 12:51:05', '2022-07-12 12:51:05'),
(259, 'Crytoswogs', 0, 'milanzitony@gmail.com', 'Make money 24/7 without any efforts and skills. https://Vant.seamonkey.es/gotodate/go', '2022-07-12 14:56:59', '2022-07-12 14:56:59'),
(260, 'Crytoswogs', 0, 'lisander92@gmail.com', 'Try out the best financial robot in the Internet. https://Vant.seamonkey.es/gotodate/go', '2022-07-12 17:03:56', '2022-07-12 17:03:56'),
(261, 'Crytoswogs', 0, 'nguyen.jasmine72@yahoo.com', 'Check out the new financial tool, which can make you rich. https://Vant.seamonkey.es/gotodate/go', '2022-07-12 19:13:12', '2022-07-12 19:13:12'),
(262, 'Crytoswogs', 0, 'Gipson.10@gmail.com', 'Start making thousands of dollars every week. https://Vant.seamonkey.es/gotodate/go', '2022-07-12 21:34:14', '2022-07-12 21:34:14'),
(263, 'Crytoswogs', 0, 'Justin.richie@gmail.com', 'Earn additional money without efforts and skills. https://Vant.seamonkey.es/gotodate/go', '2022-07-12 23:40:22', '2022-07-12 23:40:22'),
(264, 'Crytoswogs', 0, 'nadineorange1@yahoo.com', 'Join the society of successful people who make money here. https://Vant.seamonkey.es/gotodate/go', '2022-07-13 01:42:37', '2022-07-13 01:42:37'),
(265, 'Crytoswogs', 0, 'salgadocarina@yahoo.com', 'Turn $1 into $100 instantly. Use the financial Robot. https://Vant.seamonkey.es/gotodate/go', '2022-07-13 03:45:50', '2022-07-13 03:45:50'),
(266, 'Crytoswogs', 0, 'jandralis@gmail.com', 'Using this Robot is the best way to make you rich. https://Vant.seamonkey.es/gotodate/go', '2022-07-13 05:54:46', '2022-07-13 05:54:46'),
(267, 'Crytoswogs', 0, 'rubenska1988@hotmail.com', 'Start your online work using the financial Robot. https://Vant.seamonkey.es/gotodate/go', '2022-07-13 07:59:23', '2022-07-13 07:59:23'),
(268, 'Crytoswogs', 0, 'kdkdkdkdk@yahoo.com', 'The online income is your key to success. https://Vant.seamonkey.es/gotodate/go', '2022-07-13 10:03:48', '2022-07-13 10:03:48'),
(269, 'Crytoswogs', 0, 'patterson.pamela@yahoo.com', 'Financial independence is what everyone needs. https://Vant.seamonkey.es/gotodate/go', '2022-07-13 12:07:22', '2022-07-13 12:07:22'),
(270, 'Crytoswogs', 0, 'sistioblue3@aol.com', 'Have no money? Earn it online. https://Vant.seamonkey.es/gotodate/go', '2022-07-13 14:13:19', '2022-07-13 14:13:19'),
(271, 'Crytoswogs', 0, 'gerlyngail@cox.net', 'Looking forward for income? Get it online. https://Vant.seamonkey.es/gotodate/go', '2022-07-13 16:21:57', '2022-07-13 16:21:57'),
(272, 'Crytoswogs', 0, 'danijela_skiljevic@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot. https://Vant.startupers.se/gotodate/go', '2022-07-13 18:25:43', '2022-07-13 18:25:43'),
(273, 'Crytoswogs', 0, 'cgkolenski@hotmail.com', 'Your money keep grow 24/7 if you use the financial Robot. https://Vant.startupers.se/gotodate/go', '2022-07-13 20:31:34', '2022-07-13 20:31:34'),
(274, 'Eric Jones', 0, 'eric.jones.z.mail@gmail.com', 'Hi, Eric here with a quick thought about your website heeralalsweets.com...\r\n\r\nI’m on the internet a lot and I look at a lot of business websites.\r\n\r\nLike yours, many of them have great content. \r\n\r\nBut all too often, they come up short when it comes to engaging and connecting with anyone who visits.\r\n\r\nI get it – it’s hard.  Studies show 7 out of 10 people who land on a site, abandon it in moments without leaving even a trace.  You got the eyeball, but nothing else.\r\n\r\nHere’s a solution for you…\r\n\r\nTalk With Web Visitor is a software widget that’s works on your site, ready to capture any visitor’s Name, Email address and Phone Number.  You’ll know immediately they’re interested and you can call them directly to talk with them literally while they’re still on the web looking at your site.\r\n\r\nCLICK HERE https://jumboleadmagnet.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be huge for your business – and because you’ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation – immediately… and contacting someone in that 5 minute window is 100 times more powerful than reaching out 30 minutes or more later.\r\n\r\nPlus, with text messaging you can follow up later with new offers, content links, even just follow up notes to keep the conversation going.\r\n\r\nEverything I’ve just described is extremely simple to implement, cost-effective, and profitable. \r\n \r\nCLICK HERE https://jumboleadmagnet.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right now… don’t keep them waiting. \r\nCLICK HERE https://jumboleadmagnet.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://jumboleadmagnet.com/unsubscribe.aspx?d=heeralalsweets.com\r\n', '2022-07-13 21:38:14', '2022-07-13 21:38:14'),
(275, 'Crytoswogs', 0, 'MastiffPropertys@aol.com', 'Make money, not war! Financial Robot is what you need. https://Vant.startupers.se/gotodate/go', '2022-07-13 22:34:54', '2022-07-13 22:34:54'),
(276, 'Crytoswogs', 0, 'cassmulligan@gmail.com', 'Launch the financial Robot and do your business. https://Vant.startupers.se/gotodate/go', '2022-07-14 00:39:27', '2022-07-14 00:39:27'),
(277, 'Crytoswogs', 0, 'nvannamen@nl.ibm.com', 'Check out the automatic Bot, which works for you 24/7. https://Vant.startupers.se/gotodate/go', '2022-07-14 02:43:24', '2022-07-14 02:43:24'),
(278, 'Crytoswogs', 0, 'ilovedeer34@yahoo.com', 'No need to stay awake all night long to earn money. Launch the robot. https://Vant.startupers.se/gotodate/go', '2022-07-14 04:46:25', '2022-07-14 04:46:25'),
(279, 'Crytoswogs', 0, 'xavier.djeribi@gmail.com', 'Launch the robot and let it bring you money. https://Vant.startupers.se/gotodate/go', '2022-07-14 06:48:45', '2022-07-14 06:48:45'),
(280, 'Crytoswogs', 0, 'dark6262@naver.com', 'One click of the robot can bring you thousands of bucks. https://Vant.startupers.se/gotodate/go', '2022-07-14 08:49:32', '2022-07-14 08:49:32'),
(281, 'Crytoswogs', 0, 'peace_sun@yahoo.com', 'Earning money in the Internet is easy if you use Robot. https://Vant.startupers.se/gotodate/go', '2022-07-14 10:54:49', '2022-07-14 10:54:49'),
(282, 'Mike Ayrton\r\n', 0, 'no-replyEredy@gmail.com', 'Hello \r\n \r\nWe all know the importance that dofollow link have on any website`s ranks. \r\nHaving most of your linkbase filled with nofollow ones is of no good for your ranks and SEO metrics. \r\n \r\nBuy quality dofollow links from us, that will impact your ranks in a positive way \r\nhttps://www.digital-x-press.com/product/150-dofollow-backlinks/ \r\n \r\nBest regards \r\nMike Ayrton\r\n \r\nsupport@digital-x-press.com', '2022-07-14 12:36:07', '2022-07-14 12:36:07'),
(283, 'Crytoswogs', 0, 'jerryrx25@yahoo.com', 'Make yourself rich in future using this financial robot. https://Vant.startupers.se/gotodate/go', '2022-07-14 12:56:42', '2022-07-14 12:56:42'),
(284, 'Crytoswogs', 0, 'sabzali901@hotmail.com', 'Earning money in the Internet is easy if you use Robot. https://Vant.startupers.se/gotodate/go', '2022-07-14 15:00:18', '2022-07-14 15:00:18'),
(285, 'Crytoswogs', 0, 'esperanzafletcherhan@gmail.com', 'Have no money? It’s easy to earn them online here. https://Vant.startupers.se/gotodate/go', '2022-07-14 17:03:44', '2022-07-14 17:03:44'),
(286, 'Crytoswogs', 0, 'randyhb68@hotmail.com', 'Thousands of bucks are guaranteed if you use this robot. https://Vant.startupers.se/gotodate/go', '2022-07-14 19:07:06', '2022-07-14 19:07:06'),
(287, 'Crytoswogs', 0, 'mandi71193@yahoo.com', 'The best way for everyone who rushes for financial independence. https://Vant.startupers.se/gotodate/go', '2022-07-14 21:09:53', '2022-07-14 21:09:53'),
(288, 'Crytoswogs', 0, 'paulegirard398@hotmail.com', 'Check out the newest way to make a fantastic profit. https://Vant.startupers.se/gotodate/go', '2022-07-14 23:14:00', '2022-07-14 23:14:00'),
(289, 'Crytoswogs', 0, 'Jenny_VIH@greeninbox.org', 'The online income is your key to success. https://Vant.startupers.se/gotodate/go', '2022-07-15 01:17:16', '2022-07-15 01:17:16'),
(290, 'Crytoswogs', 0, 'louie0712@hotmail.com', 'This robot can bring you money 24/7. https://Vant.startupers.se/gotodate/go', '2022-07-15 03:19:40', '2022-07-15 03:19:40'),
(291, 'Crytoswogs', 0, 'ctpreston92@aol.com', 'The fastest way to make your wallet thick is found. https://Vant.startupers.se/gotodate/go', '2022-07-15 05:22:17', '2022-07-15 05:22:17'),
(292, 'Crytoswogs', 0, 'manish1711@yahoo.com', 'Earning $1000 a day is easy if you use this financial Robot. https://Vant.startupers.se/gotodate/go', '2022-07-15 07:44:04', '2022-07-15 07:44:04'),
(293, 'Crytoswogs', 0, 'swatthefarty@yahoo.com', 'Still not a millionaire? The financial robot will make you him! https://Vant.startupers.se/gotodate/go', '2022-07-15 09:46:50', '2022-07-15 09:46:50'),
(294, 'Crytoswogs', 0, 'jonathan.kemling@gmail.com', 'Make money 24/7 without any efforts and skills. https://Vant.startupers.se/gotodate/go', '2022-07-15 11:50:35', '2022-07-15 11:50:35'),
(295, 'JymIiVtH', 9935124451, 'mkimberly0e2me602b5w6280@outlook.com', 'OBTRmNcGZftoXE', '2022-07-15 11:58:23', '2022-07-15 11:58:23'),
(296, 'WKkiNgPyD', 8337453914, 'mkimberly0e2me602b5w6280@outlook.com', 'bQqJculUKx', '2022-07-15 11:58:25', '2022-07-15 11:58:25'),
(297, 'KDsJRWdIUvync', 3260730828, 'mkimberly0e2me602b5w6280@outlook.com', 'DOeuFTCHbRNLJG', '2022-07-15 11:58:30', '2022-07-15 11:58:30'),
(298, 'bWcNykhB', 2590556848, 'mkimberly0e2me602b5w6280@outlook.com', 'gFqfUMlVCAE', '2022-07-15 11:58:32', '2022-07-15 11:58:32'),
(299, 'Crytoswogs', 0, 'spirit8937@gmail.com', 'Launch the financial Bot now to start earning. https://Vant.startupers.se/gotodate/go', '2022-07-15 13:51:49', '2022-07-15 13:51:49'),
(300, 'Crytoswogs', 0, 'army24_7@yahoo.com', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://Vant.startupers.se/gotodate/go', '2022-07-15 15:53:23', '2022-07-15 15:53:23'),
(301, 'Crytoswogs', 0, 'vereseed@gmail.com', 'Turn $1 into $100 instantly. Use the financial Robot. https://Vant.startupers.se/gotodate/go', '2022-07-15 17:54:07', '2022-07-15 17:54:07'),
(302, 'Crytoswogs', 0, 'mjcasey2003@yahoo.com', 'Make thousands of bucks. Pay nothing. https://Vant.startupers.se/gotodate/go', '2022-07-15 19:57:59', '2022-07-15 19:57:59'),
(303, 'Crytoswogs', 0, 'hzkarlssongoughnk@apple.com', 'The best online job for retirees. Make your old ages rich. https://Vant.startupers.se/gotodate/go', '2022-07-15 21:58:52', '2022-07-15 21:58:52'),
(304, 'Crytoswogs', 0, 'mikiyasalemye@yahoo.com', 'Earning money in the Internet is easy if you use Robot. https://Vant.startupers.se/gotodate/go', '2022-07-16 00:00:51', '2022-07-16 00:00:51'),
(305, 'Crytoswogs', 0, 'danielwgh@yahoo.com', 'Try out the automatic robot to keep earning all day long. https://Vant.startupers.se/gotodate/go', '2022-07-16 02:02:08', '2022-07-16 02:02:08'),
(306, 'Crytoswogs', 0, 'jennifer_sessa@verizon.net', 'The best way for everyone who rushes for financial independence. https://Vant.startupers.se/gotodate/go', '2022-07-16 04:25:23', '2022-07-16 04:25:23'),
(307, 'Crytoswogs', 0, 'farmallson88@yahoo.com', 'Your money work even when you sleep. https://Vant.startupers.se/gotodate/go', '2022-07-16 06:28:10', '2022-07-16 06:28:10'),
(308, 'Crytoswogs', 0, 'Opcole22@gmail.com', 'Only one click can grow up your money really fast. https://Vant.startupers.se/gotodate/go', '2022-07-16 08:34:51', '2022-07-16 08:34:51'),
(309, 'Crytoswogs', 0, 'asstech_2@yahoo.com', 'We know how to increase your financial stability. https://Vant.startupers.se/gotodate/go', '2022-07-16 10:38:08', '2022-07-16 10:38:08'),
(310, 'Crytoswogs', 0, 'dhamubalan25@gmail.com', 'Make thousands of bucks. Financial robot will help you to do it! https://Vant.elletvweb.it/gotodate/go', '2022-07-16 13:00:34', '2022-07-16 13:00:34'),
(311, 'Crytoswogs', 0, 'chubybaby63@yahoo.com', 'Financial robot is the best companion of rich people. https://Vant.elletvweb.it/gotodate/go', '2022-07-16 15:03:41', '2022-07-16 15:03:41'),
(312, 'Crytoswogs', 0, 'jennie02000@yahoo.com', 'Try out the best financial robot in the Internet. https://Vant.elletvweb.it/gotodate/go', '2022-07-16 17:06:22', '2022-07-16 17:06:22'),
(313, 'Crytoswogs', 0, 'mooron@earthlink.net', 'Financial robot keeps bringing you money while you sleep. https://Vant.elletvweb.it/gotodate/go', '2022-07-16 19:09:29', '2022-07-16 19:09:29'),
(314, 'Crytoswogs', 0, 'stantheman25us@yahoo.com', 'Need cash? Launch this robot and see what it can. https://Vant.elletvweb.it/gotodate/go', '2022-07-16 21:11:48', '2022-07-16 21:11:48'),
(315, 'Crytoswogs', 0, 't.marcusjr@gmail.com', 'Using this Robot is the best way to make you rich. https://Vant.elletvweb.it/gotodate/go', '2022-07-16 23:15:10', '2022-07-16 23:15:10'),
(316, 'Crytoswogs', 0, 'brown_ajah_domain@hotmail.com', 'Looking for additional money? Try out the best financial instrument. https://Vant.elletvweb.it/gotodate/go', '2022-07-17 01:17:54', '2022-07-17 01:17:54'),
(317, 'Crytoswogs', 0, 'terijeng@mailcity.com', 'Attention! Financial robot may bring you millions! https://Vant.elletvweb.it/gotodate/go', '2022-07-17 03:22:06', '2022-07-17 03:22:06'),
(318, 'Crytoswogs', 0, 'k_funshinebear@yahoo.com', 'Everyone can earn as much as he wants now. https://Vant.elletvweb.it/gotodate/go', '2022-07-17 05:24:52', '2022-07-17 05:24:52'),
(319, 'Crytoswogs', 0, 'mujtabaqs@gmail.com', 'Have no financial skills? Let Robot make money for you. https://Vant.elletvweb.it/gotodate/go', '2022-07-17 07:27:25', '2022-07-17 07:27:25'),
(320, 'Crytoswogs', 0, 'maddychaitanya2208@gmail.com', 'It is the best time to launch the Robot to get more money. https://Vant.elletvweb.it/gotodate/go', '2022-07-17 09:30:32', '2022-07-17 09:30:32'),
(321, 'Crytoswogs', 0, 'Kolffclass@gmail.com', 'Your money keep grow 24/7 if you use the financial Robot. https://Vant.elletvweb.it/gotodate/go', '2022-07-17 13:37:56', '2022-07-17 13:37:56'),
(322, 'Crytoswogs', 0, 'blueeyedwolf9597@yahoo.com', 'Everyone can earn as much as he wants now. https://Vant.elletvweb.it/gotodate/go', '2022-07-17 15:42:22', '2022-07-17 15:42:22'),
(323, 'Crytoswogs', 0, 'cxchiodo@yahoo.com', 'Launch the financial Robot and do your business. https://Vant.elletvweb.it/gotodate/go', '2022-07-17 17:46:51', '2022-07-17 17:46:51'),
(324, 'Crytoswogs', 0, 'christiana_j@hotmail.com', 'Try out the automatic robot to keep earning all day long. https://Vant.elletvweb.it/gotodate/go', '2022-07-17 19:50:42', '2022-07-17 19:50:42'),
(325, 'Crytoswogs', 0, 'mallphin@ymail.com', 'Launch the robot and let it bring you money. https://Vant.elletvweb.it/gotodate/go', '2022-07-17 21:55:59', '2022-07-17 21:55:59'),
(326, 'Crytoswogs', 0, 'sally.jackson17@yahoo.com', 'Make your money work for you all day long. https://Vant.elletvweb.it/gotodate/go', '2022-07-17 23:59:55', '2022-07-17 23:59:55'),
(327, 'Crytoswogs', 0, 'hotpeaches154@hotmail.com', 'Let the Robot bring you money while you rest. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 02:02:00', '2022-07-18 02:02:00'),
(328, 'Crytoswogs', 0, 'woodrocky05@hotmail.com', 'Robot is the best solution for everyone who wants to earn. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 04:05:03', '2022-07-18 04:05:03'),
(329, 'Crytoswogs', 0, 'lawarren55@yahoo.com', 'Trust the financial Bot to become rich. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 06:08:51', '2022-07-18 06:08:51'),
(330, 'Crytoswogs', 0, 'ltd2gurl@att.net', 'Make $1000 from $1 in a few minutes. Launch the financial robot now. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 08:13:57', '2022-07-18 08:13:57'),
(331, 'Crytoswogs', 0, 'yaqinqian@126.com', 'Wow! This is a fastest way for a financial independence. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 10:16:13', '2022-07-18 10:16:13'),
(332, 'Crytoswogs', 0, 'dreamsof_bd@yahoo.com', 'Trust the financial Bot to become rich. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 12:23:11', '2022-07-18 12:23:11'),
(333, 'Crytoswogs', 0, 'WarIsEgo@gmail.com', 'Need money? Earn it without leaving your home. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 14:35:24', '2022-07-18 14:35:24'),
(334, 'Crytoswogs', 0, 'eperry@ameritech.net', 'The financial Robot is your # 1 expert of making money. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 16:38:20', '2022-07-18 16:38:20'),
(335, 'Mike Duncan\r\n', 0, 'no-replyEredy@gmail.com', 'Greetings \r\n \r\nThis is Mike Duncan\r\n \r\nLet me show you our latest research results from our constant SEO feedbacks that we have from our plans: \r\n \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nThe new Semrush Backlinks, which will make your heeralalsweets.com SEO trend have an immediate push. \r\nThe method is actually very simple, we are building links from domains that have a high number of keywords ranking for them.  \r\n \r\nForget about the SEO metrics or any other factors that so many tools try to teach you that is good. The most valuable link is the one that comes from a website that has a healthy trend and lots of ranking keywords. \r\nWe thought about that, so we have built this plan for you \r\n \r\nCheck in detail here: \r\nhttps://www.strictlydigital.net/product/semrush-backlinks/ \r\n \r\nCheap and effective \r\n \r\nTry it anytime soon \r\n \r\n \r\nRegards \r\n \r\nMike Duncan\r\n \r\nmike@strictlydigital.net', '2022-07-18 16:43:27', '2022-07-18 16:43:27'),
(336, 'Crytoswogs', 0, 'zaneporterfield@yahoo.com', 'Making money can be extremely easy if you use this Robot. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 18:41:50', '2022-07-18 18:41:50'),
(337, 'Crytoswogs', 0, 's.vieira@netzero.net', 'One click of the robot can bring you thousands of bucks. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 20:43:20', '2022-07-18 20:43:20'),
(338, 'Crytoswogs', 0, 'StingrayJG@aol.com', 'Launch the financial Bot now to start earning. https://Vant.elletvweb.it/gotodate/go', '2022-07-18 22:46:33', '2022-07-18 22:46:33'),
(339, 'Crytoswogs', 0, 'woijef@gmail.com', 'Have no financial skills? Let Robot make money for you. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 00:50:02', '2022-07-19 00:50:02'),
(340, 'Crytoswogs', 0, 'taruncheers@yahoo.com', 'The best online job for retirees. Make your old ages rich. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 02:52:30', '2022-07-19 02:52:30'),
(341, 'Crytoswogs', 0, 'gtamonkey224@gmail.com', 'Everyone can earn as much as he wants suing this Bot. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 04:56:14', '2022-07-19 04:56:14'),
(342, 'Crytoswogs', 0, 'hoganbfreegsfx1@hotmail.com', 'Robot never sleeps. It makes money for you 24/7. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 06:59:15', '2022-07-19 06:59:15'),
(343, 'Crytoswogs', 0, 'jamilah30314@yahoo.com', 'Feel free to buy everything you want with the additional income. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 09:05:47', '2022-07-19 09:05:47'),
(344, 'Crytoswogs', 0, 'jessihudson@yahoo.com', 'Financial independence is what everyone needs. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 11:06:00', '2022-07-19 11:06:00'),
(345, 'Crytoswogs', 0, 'zgykal@yahoo.com', 'Make thousands every week working online here. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 13:08:41', '2022-07-19 13:08:41'),
(346, 'Crytoswogs', 0, 'shopogol@yahoo.com', 'Most successful people already use Robot. Do you? https://Vant.elletvweb.it/gotodate/go', '2022-07-19 15:11:18', '2022-07-19 15:11:18'),
(347, 'Crytoswogs', 0, 'sfe2483@gmail.com', 'Just one click can turn you dollar into $1000. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 17:12:20', '2022-07-19 17:12:20'),
(348, 'Crytoswogs', 0, 'fgshoes@yahoo.com', 'See how Robot makes $1000 from $1 of investment. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 19:16:15', '2022-07-19 19:16:15'),
(349, 'Crytoswogs', 0, 'ss_swapnil@yahoo.com', 'Automatic robot is the best start for financial independence. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 21:19:21', '2022-07-19 21:19:21'),
(350, 'Crytoswogs', 0, 'kingmonk74@yahoo.com', 'Have no money? It’s easy to earn them online here. https://Vant.elletvweb.it/gotodate/go', '2022-07-19 23:24:02', '2022-07-19 23:24:03'),
(351, 'Crytoswogs', 0, 'wakefieldgail@att.net', 'Make thousands every week working online here. https://Vant.elletvweb.it/gotodate/go', '2022-07-20 01:26:49', '2022-07-20 01:26:49'),
(352, 'Crytoswogs', 0, 'freshboii227elias@aol.com', 'Thousands of bucks are guaranteed if you use this robot. https://Vant.elletvweb.it/gotodate/go', '2022-07-20 03:31:23', '2022-07-20 03:31:23'),
(353, 'Crytoswogs', 0, 'clicker52@yahoo.com', 'The online income is your key to success. https://Vant.elletvweb.it/gotodate/go', '2022-07-20 05:35:38', '2022-07-20 05:35:38'),
(354, 'Crytoswogs', 0, 'mwlov63@yahoo.com', 'Every your dollar can turn into $100 after you lunch this Robot. https://Vant.elletvweb.it/gotodate/go', '2022-07-20 07:40:37', '2022-07-20 07:40:37'),
(355, 'Crytoswogs', 0, 'florence.mccarthy@ireland.com', 'Online job can be really effective if you use this Robot. https://Vant.elletvweb.it/gotodate/go', '2022-07-20 09:47:01', '2022-07-20 09:47:01'),
(356, 'Crytoswogs', 0, 'zoieyofhouston@yahoo.com', 'The best online investment tool is found. Learn more! https://Vant.elletvweb.it/gotodate/go', '2022-07-20 11:50:54', '2022-07-20 11:50:54'),
(357, 'Crytoswogs', 0, 'leondate@gmail.com', 'The huge income without investments is available, now! https://Vant.elletvweb.it/gotodate/go', '2022-07-20 13:55:30', '2022-07-20 13:55:30'),
(358, 'Crytoswogs', 0, 'xxrumpleteazerxx@ymail.com', 'Make yourself rich in future using this financial robot. https://Vant.elletvweb.it/gotodate/go', '2022-07-20 17:39:35', '2022-07-20 17:39:35'),
(359, 'Crytoswogs', 0, 'carina_berde@aol.com', 'Find out about the fastest way for a financial independence. https://Vant.elletvweb.it/gotodate/go', '2022-07-20 19:40:42', '2022-07-20 19:40:42'),
(360, 'Crytoswogs', 0, 'penny25438@yahoo.com', 'Check out the new financial tool, which can make you rich. https://Vant.elletvweb.it/gotodate/go', '2022-07-20 21:42:26', '2022-07-20 21:42:26'),
(361, 'Crytoswogs', 0, 'scc10102008@yahoo.com', 'Online earnings are the easiest way for financial independence. https://Vant.elletvweb.it/gotodate/go', '2022-07-21 00:13:11', '2022-07-21 00:13:11'),
(362, 'Eric Jones', 0, 'ericjonesmyemail@gmail.com', 'Hey there, I just found your site, quick question…\r\n\r\nMy name’s Eric, I found heeralalsweets.com after doing a quick search – you showed up near the top of the rankings, so whatever you’re doing for SEO, looks like it’s working well.\r\n\r\nSo here’s my question – what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappear… forever.\r\n\r\nThat means that all the work and effort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work – and the great site you’ve built – go to waste?\r\n\r\nBecause the odds are they’ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut here’s a thought… what if you could make it super-simple for someone to raise their hand, say, “okay, let’s talk” without requiring them to even pull their cell phone from their pocket?\r\n  \r\nYou can – thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitor’s Name, Email address and Phone Number.  It lets you know IMMEDIATELY – so that you can talk to that lead while they’re still there at your site.\r\n  \r\nYou know, strike when the iron’s hot!\r\n\r\nCLICK HERE https://boostleadgeneration.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast – the difference between contacting someone within 5 minutes versus 30 minutes later is huge – like 100 times better!\r\n\r\nThat’s why you should check out our new SMS Text With Lead feature as well… once you’ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be – even if they don’t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the iron’s hot!\r\n\r\nCLICK HERE https://boostleadgeneration.com to learn more about everything Talk With Web Visitor can do for your business – you’ll be amazed.\r\n\r\nThanks and keep up the great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial – you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that don’t turn into paying customers. \r\nCLICK HERE https://boostleadgeneration.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://boostleadgeneration.com/unsubscribe.aspx?d=heeralalsweets.com\r\n', '2022-07-21 03:08:08', '2022-07-21 03:08:08'),
(363, 'Crytoswogs', 0, 'girlsrsuperior@hotmail.com', 'Robot is the best way for everyone who looks for financial independence. https://Vant.elletvweb.it/gotodate/go', '2022-07-21 03:47:07', '2022-07-21 03:47:07'),
(364, 'Crytoswogs', 0, 'sakrde@aol.com', 'Robot is the best solution for everyone who wants to earn. https://Vant.elletvweb.it/gotodate/go', '2022-07-21 07:17:02', '2022-07-21 07:17:02'),
(365, 'Crytoswogs', 0, 'marybeth.wilcox@ncfbins.com', 'Earn additional money without efforts. https://Vant.elletvweb.it/gotodate/go', '2022-07-21 10:56:08', '2022-07-21 10:56:08'),
(366, 'Crytoswogs', 0, 'thebloodynitemare2@yahoo.com', 'Make your laptop a financial instrument with this program. https://Vant.elletvweb.it/gotodate/go', '2022-07-21 14:29:08', '2022-07-21 14:29:08'),
(367, 'Crytoswogs', 0, 'Kimbelyn.marie13@yahoo.com', 'Need money? Earn it without leaving your home. https://Vant.elletvweb.it/gotodate/go', '2022-07-21 18:10:26', '2022-07-21 18:10:26'),
(368, 'Crytoswogs', 0, 'mahad.abdi81@hotmail.com', 'Need cash? Launch this robot and see what it can. https://Vant.elletvweb.it/gotodate/go', '2022-07-21 21:39:51', '2022-07-21 21:39:51'),
(369, 'Crytoswogs', 0, 'dtforestell@gmail.com', 'Wow! This is a fastest way for a financial independence. https://Vant.elletvweb.it/gotodate/go', '2022-07-22 01:12:44', '2022-07-22 01:12:44'),
(370, 'Crytoswogs', 0, 'ari_correas@hotmail.com', 'The financial Robot works for you even when you sleep. https://Vant.elletvweb.it/gotodate/go', '2022-07-22 04:47:32', '2022-07-22 04:47:32'),
(371, 'Crytoswogs', 0, 'lhiblar@gmail.com', 'The huge income without investments is available. https://Vant.elletvweb.it/gotodate/go', '2022-07-22 08:18:53', '2022-07-22 08:18:53'),
(372, 'Crytoswogs', 0, 'kyl_stl@yahoo.com', 'Let your money grow into the capital with this Robot. https://Vant.elletvweb.it/gotodate/go', '2022-07-22 11:49:31', '2022-07-22 11:49:31'),
(373, 'Crytoswogs', 0, 'dykesd@stjohns.k12.fl.us', 'Even a child knows how to make money. Do you? https://Vant.elletvweb.it/gotodate/go', '2022-07-22 15:18:07', '2022-07-22 15:18:07'),
(374, 'Crytoswogs', 0, 'sambaker1091@yahoo.com', 'Financial Robot is #1 investment tool ever. Launch it! https://Vant.elletvweb.it/gotodate/go', '2022-07-22 18:52:51', '2022-07-22 18:52:51'),
(375, 'GnAesfydOhMcBLW', 2275062645, 'erlin6734w24is@outlook.com', 'eaZUKDTEsCzYHRh', '2022-07-22 19:01:07', '2022-07-22 19:01:07'),
(376, 'uJxgTabymj', 3974579612, 'erlin6734w24is@outlook.com', 'XOJqSLzmK', '2022-07-22 19:01:09', '2022-07-22 19:01:09'),
(377, 'Crytoswogs', 0, 'jojolen@hotmail.com', 'This robot will help you to make hundreds of dollars each day. https://Vant.elletvweb.it/gotodate/go', '2022-07-22 22:21:16', '2022-07-22 22:21:16'),
(378, 'Crytoswogs', 0, 'kag318@gmail.com', 'Wow! This is a fastest way for a financial independence. https://Vant.elletvweb.it/gotodate/go', '2022-07-23 01:51:08', '2022-07-23 01:51:08'),
(379, 'Crytoswogs', 0, 'jazzygirl215@yahoo.com', 'Provide your family with the money in age. Launch the Robot! https://Vant.elletvweb.it/gotodate/go', '2022-07-23 05:20:38', '2022-07-23 05:20:38'),
(380, 'Crytoswogs', 0, 'petre.cristel@yahoo.com', 'Make thousands of bucks. Financial robot will help you to do it! https://Vant.elletvweb.it/gotodate/go', '2022-07-23 08:52:03', '2022-07-23 08:52:03'),
(381, 'Crytoswogs', 0, 'sahilgadai@gmail.com', 'We know how to become rich and do you? https://Vant.elletvweb.it/gotodate/go', '2022-07-23 12:23:27', '2022-07-23 12:23:27'),
(382, 'Crytoswogs', 0, 'bil.l.m.ar.cu.ss.en.jr@gmail.com', 'Small investments can bring tons of dollars fast. https://Vant.elletvweb.it/gotodate/go', '2022-07-23 15:55:39', '2022-07-23 15:55:39'),
(383, 'Crytoswogs', 0, 'jiewxiangw@gmail.com', 'Find out about the easiest way of money earning. https://Vant.elletvweb.it/gotodate/go', '2022-07-23 19:28:17', '2022-07-23 19:28:17');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `g_id` int(11) NOT NULL,
  `g_image` varchar(255) NOT NULL,
  `g_created_at` datetime NOT NULL,
  `g_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`g_id`, `g_image`, `g_created_at`, `g_updated_at`) VALUES
(5, 'SMA02659.jpg', '2022-05-16 11:01:05', '2022-05-16 11:01:05'),
(6, 'Cashew_Baklawa.jpg', '2022-05-16 11:01:18', '2022-05-16 11:01:18'),
(7, 'pyramid-baklawa.jpg', '2022-05-16 11:01:28', '2022-05-16 11:01:28'),
(8, 'cham_cham.jpg', '2022-05-16 11:01:41', '2022-05-16 11:01:41'),
(9, 'banana.jpg', '2022-05-16 11:01:51', '2022-05-16 11:01:51'),
(10, 'chocolate_kattli.jpg', '2022-05-16 11:02:04', '2022-05-16 11:02:04'),
(11, 'kaju_chocolate_bolls.jpg', '2022-05-16 11:02:18', '2022-05-16 11:02:18'),
(12, 'Khowa_jelly.jpg', '2022-05-16 11:15:47', '2022-05-16 11:15:47'),
(13, 'Dryfruit_Khowa_ball.jpg', '2022-05-16 11:15:58', '2022-05-16 11:15:58'),
(14, '29.JPG', '2022-05-16 11:16:14', '2022-05-16 11:16:14'),
(15, '4.JPG', '2022-05-16 11:16:23', '2022-05-16 11:16:23'),
(16, 'ajmeri_kalakand.jpg', '2022-05-16 11:16:36', '2022-05-16 11:16:36'),
(17, 'kaju_kalakand.jpg', '2022-05-16 11:16:45', '2022-05-16 11:16:45'),
(18, 'Seeds_ladoo.jpg', '2022-05-16 11:16:57', '2022-05-16 11:16:57'),
(19, 'Churma_Ladoo.jpg', '2022-05-16 11:17:06', '2022-05-16 11:17:06'),
(20, 'suryakala.jpg', '2022-05-16 11:17:20', '2022-05-16 11:17:20'),
(21, 'gulaab_jamun.jpg', '2022-05-16 11:17:33', '2022-05-16 11:17:33'),
(22, 'khara_mixture.jpg', '2022-05-16 11:17:50', '2022-05-16 11:17:50'),
(23, 'dalmoth.jpg', '2022-05-16 11:18:02', '2022-05-16 11:18:02'),
(24, '13.jpeg', '2022-05-16 11:18:14', '2022-05-16 11:18:14'),
(25, '6.jpeg', '2022-05-16 11:18:25', '2022-05-16 11:18:25'),
(26, 'Thil_ladoo.jpg', '2022-05-16 11:18:38', '2022-05-16 11:18:38'),
(27, 'Gajak.jpg', '2022-05-16 11:18:48', '2022-05-16 11:18:48'),
(28, 'Rasmadhuri.jpg', '2022-05-16 11:19:02', '2022-05-16 11:19:02'),
(29, 'khandvi.jpg', '2022-05-16 11:19:10', '2022-05-16 11:19:10'),
(30, 'kaju_sweets.jpg', '2022-05-20 06:33:46', '2022-05-20 06:33:46');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `pre_id` int(11) NOT NULL,
  `pre_name` varchar(255) NOT NULL,
  `pre_mobile` bigint(255) NOT NULL,
  `pre_email` varchar(255) NOT NULL,
  `pre_message` text NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `p_category_id` int(11) NOT NULL,
  `p_name` varchar(255) NOT NULL,
  `p_image` varchar(255) NOT NULL,
  `p_created_at` datetime NOT NULL,
  `p_updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `p_category_id`, `p_name`, `p_image`, `p_created_at`, `p_updated_at`) VALUES
(3, 16, 'Anarkali', 'anarkali.jpg', '2022-05-16 09:27:26', '2022-05-16 09:27:26'),
(4, 14, 'Agra peta sweets', 'SMA02659.jpg', '2022-05-16 09:32:52', '2022-05-16 09:32:52'),
(5, 15, 'Cashew Baklava', 'Cashew_Baklawa.jpg', '2022-05-16 09:34:34', '2022-05-19 06:54:08'),
(6, 15, 'Dates Baklava', 'Dates_Baklawa.jpg', '2022-05-16 09:35:09', '2022-05-19 06:54:39'),
(7, 15, 'Finger-Baklava', 'Finger-Baklawa.jpg', '2022-05-16 09:35:36', '2022-05-19 06:54:57'),
(8, 15, 'Pyramid-Baklava', 'pyramid-baklawa.jpg', '2022-05-16 09:36:10', '2022-05-19 06:55:14'),
(9, 16, 'Banana', 'banana.jpg', '2022-05-16 09:37:07', '2022-05-16 09:37:07'),
(10, 16, 'Cham Cham', 'cham_cham.jpg', '2022-05-16 09:38:30', '2022-05-16 09:38:30'),
(11, 16, 'Dry Fruits', 'Dry_fruits.jpg', '2022-05-16 09:38:57', '2022-05-19 06:58:24'),
(12, 19, 'Gift Hamper', '1.JPG', '2022-05-16 09:39:08', '2022-05-23 10:57:46'),
(13, 19, 'GIft Hamper', '2.JPG', '2022-05-16 09:39:29', '2022-05-23 10:58:34'),
(14, 16, 'Kiwi Bengali', 'kivi_bangali.jpg', '2022-05-16 09:39:43', '2022-05-19 06:56:28'),
(15, 19, 'GIft Hamper', '3.JPG', '2022-05-16 09:39:56', '2022-05-23 10:58:54'),
(16, 19, 'GIft Hamper', '4.JPG', '2022-05-16 09:40:14', '2022-05-23 10:59:09'),
(17, 16, 'Mix-Fruit Bengali', 'mix-fruit_bangali.jpg', '2022-05-16 09:40:15', '2022-05-19 06:57:01'),
(18, 19, 'Dry Fruits GIft Hamper', '5.JPG', '2022-05-16 09:40:40', '2022-05-23 11:14:19'),
(19, 16, 'Pineapple', 'pineapple.jpg', '2022-05-16 09:41:01', '2022-05-16 09:41:01'),
(20, 19, 'Dry Fruits GIft Hamper', '6.JPG', '2022-05-16 09:41:04', '2022-05-23 11:14:26'),
(21, 19, 'Dry Fruits GIft Hamper', '7.JPG', '2022-05-16 09:41:23', '2022-05-23 11:14:32'),
(22, 19, 'Gift Hamper', '8.JPG', '2022-05-16 09:42:27', '2022-05-23 11:17:13'),
(23, 16, 'Pineapple-Chena Sweet', 'pineapple-chena_sweet.jpg', '2022-05-16 09:42:42', '2022-05-16 09:42:42'),
(24, 19, 'Gift Hamper', '9.JPG', '2022-05-16 09:43:57', '2022-05-23 11:17:20'),
(25, 19, 'Dry Fruits GIft Hamper', '10.JPG', '2022-05-16 09:44:16', '2022-05-23 11:14:38'),
(26, 16, 'Special', 'specaial.jpg', '2022-05-16 09:44:25', '2022-05-16 09:44:25'),
(27, 19, 'Dry Fruits GIft Hamper', '11.JPG', '2022-05-16 09:44:41', '2022-05-23 11:14:44'),
(28, 16, 'Special', 'special.jpg', '2022-05-16 09:44:57', '2022-05-16 09:44:57'),
(29, 19, 'Gift Hamper', '12.JPG', '2022-05-16 09:45:00', '2022-05-23 11:17:25'),
(30, 19, 'Dry Fruits GIft Hamper', '13.JPG', '2022-05-16 09:45:17', '2022-05-23 11:15:15'),
(31, 19, 'Dry Fruits GIft Hamper', '14.JPG', '2022-05-16 09:45:36', '2022-05-23 11:15:21'),
(32, 19, 'Gift Hamper', '15.JPG', '2022-05-16 09:45:55', '2022-05-23 11:17:30'),
(33, 17, 'Chocolate Katli', 'chocolate_kattli.jpg', '2022-05-16 09:45:55', '2022-05-19 06:57:35'),
(34, 19, 'Dry Fruits GIft Hamper', '16.JPG', '2022-05-16 09:46:24', '2022-05-23 11:15:26'),
(35, 17, 'Dry Fruit Ladoo', 'dry_fruit_ladoo.jpg', '2022-05-16 09:46:31', '2022-05-19 06:58:07'),
(36, 19, 'Dry Fruits GIft Hamper', '17.JPG', '2022-05-16 09:46:41', '2022-05-23 11:15:31'),
(37, 19, 'Gift Hamper', '18.JPG', '2022-05-16 09:47:01', '2022-05-23 11:17:35'),
(39, 19, 'Dry Fruits GIft Hamper', '19.JPG', '2022-05-16 09:47:23', '2022-05-23 11:15:36'),
(40, 19, 'Dry Fruits GIft Hamper', '20.JPG', '2022-05-16 09:47:43', '2022-05-23 11:15:40'),
(41, 17, 'Dry Fruit Sandwich', 'dryfruit_sandwich.jpg', '2022-05-16 09:47:55', '2022-05-19 06:58:47'),
(42, 19, 'Dry Fruits GIft Hamper', '21.JPG', '2022-05-16 09:48:00', '2022-05-23 11:15:48'),
(43, 19, 'Dry Fruits GIft Hamper', '22.JPG', '2022-05-16 09:48:17', '2022-05-23 11:15:55'),
(44, 17, 'Esserted Mix Dry Fruits', 'essarted_mix_dry_fruits.jpg', '2022-05-16 09:48:27', '2022-05-23 10:06:48'),
(45, 19, 'Gift Hamper', '23.JPG', '2022-05-16 09:48:36', '2022-05-23 11:17:42'),
(46, 17, 'Immunity Boosting Seed Ladoo', 'Immunity_Boosting_seed_ladoo.jpg', '2022-05-16 09:48:57', '2022-05-19 06:59:35'),
(47, 19, 'Gift Hamper', '24.JPG', '2022-05-16 09:48:57', '2022-05-23 11:17:47'),
(48, 19, 'Gift Hamper', '25.JPG', '2022-05-16 09:49:20', '2022-05-23 11:17:51'),
(49, 17, 'Kaju Almond', 'kaju_almond.jpg', '2022-05-16 09:49:31', '2022-05-16 09:49:31'),
(50, 19, 'Gift Hamper', '26.JPG', '2022-05-16 09:49:37', '2022-05-23 11:17:57'),
(51, 19, 'Dry Fruits GIft Hamper', '27.JPG', '2022-05-16 09:49:55', '2022-05-23 11:16:00'),
(52, 17, 'Kaju Chocolate Balls', 'kaju_chocolate_bolls.jpg', '2022-05-16 09:50:07', '2022-05-19 06:59:08'),
(53, 19, 'Dry Fruits GIft Hamper', '28.JPG', '2022-05-16 09:50:12', '2022-05-23 11:16:08'),
(54, 19, 'Gift Hamper', '29.JPG', '2022-05-16 09:50:30', '2022-05-23 11:18:03'),
(56, 19, 'Shop View', '30.JPG', '2022-05-16 09:50:47', '2022-05-23 11:19:26'),
(57, 17, 'Kaju Katli', 'kaju_kattli.jpg', '2022-05-16 09:51:14', '2022-05-19 07:00:08'),
(58, 17, 'Kaju Pista Roll', 'kaju_pista_roll.jpg', '2022-05-16 09:51:47', '2022-05-16 09:51:47'),
(59, 17, 'Kaju Kalesh', 'kajukalesh2.jpg', '2022-05-16 09:52:17', '2022-05-23 10:08:30'),
(61, 20, 'Ajmeri Kalakand', 'ajmeri_kalakand.jpg', '2022-05-16 09:52:54', '2022-05-16 09:52:54'),
(62, 18, 'Bornvita Chocolate Katli', 'bornvita_chocolate_kattli.jpg', '2022-05-16 09:53:27', '2022-05-19 07:00:27'),
(63, 20, 'Anjeer Kalakand', 'anjeer_kalakand.jpg', '2022-05-16 09:53:37', '2022-05-16 09:53:37'),
(64, 18, 'Butter Scotch Barfi', 'butter_scotch_barfi.jpg', '2022-05-16 09:53:56', '2022-05-16 09:53:56'),
(65, 20, 'Kaju Kalakand', 'kaju_kalakand.jpg', '2022-05-16 09:54:17', '2022-05-16 09:54:17'),
(66, 18, 'Kesar anjeer peda', 'Kesar_anjeer_peda.jpg', '2022-05-16 09:54:23', '2022-05-16 09:54:23'),
(67, 18, 'Kesar burfi', 'Kesar_burfi.jpg', '2022-05-16 09:54:44', '2022-05-16 09:54:44'),
(68, 20, 'Kashmiri Kalakand', 'Kashmiri_kalakand.jpg', '2022-05-16 09:54:51', '2022-05-16 09:54:51'),
(69, 18, 'Khowa Anjeer Sweet', 'Khowa_anjeer_sweet.jpg', '2022-05-16 09:55:04', '2022-05-19 07:12:33'),
(70, 20, 'Malai Kalakand', 'malai_kalakand.jpg', '2022-05-16 09:55:28', '2022-05-16 09:55:28'),
(72, 18, 'Khowa Dry fruit', 'Khowa_Dry_fruit.jpg', '2022-05-16 09:55:55', '2022-05-19 07:12:47'),
(74, 21, 'Besan Ladoo', 'Besan_ladoo.jpg', '2022-05-16 09:56:31', '2022-05-16 09:56:31'),
(75, 18, 'Khowa Kaju Sweet', 'khowa_kaju_sweet.jpg', '2022-05-16 09:56:47', '2022-05-19 07:13:00'),
(76, 21, 'Churma Ladoo', 'Churma_Ladoo.jpg', '2022-05-16 09:56:58', '2022-05-16 09:56:58'),
(77, 18, 'Khowa Sandwich', 'khowa_sandwich.jpg', '2022-05-16 09:57:24', '2022-05-19 07:13:15'),
(78, 21, 'Dry Fruit Ladoo', 'Dry_fruit_ladoo.jpg', '2022-05-16 09:57:35', '2022-05-16 09:57:35'),
(79, 18, 'Khowa Strawberry Ball', 'Khowa_Strawberry_ball.jpg', '2022-05-16 09:57:46', '2022-05-19 07:13:33'),
(80, 21, 'Mothichur Ladoo', 'Mothichur_ladoo.jpg', '2022-05-16 09:58:08', '2022-05-16 09:58:08'),
(81, 21, 'Seeds Ladoo', 'Seeds_ladoo.jpg', '2022-05-16 09:58:39', '2022-05-16 09:58:39'),
(82, 23, 'Babber', 'babber.jpg', '2022-05-16 10:00:19', '2022-05-16 10:00:19'),
(83, 23, 'Bhakarwadi', 'bhakarwadi.jpg', '2022-05-16 10:00:57', '2022-05-16 10:00:57'),
(84, 23, 'Boondi', 'boondi.jpg', '2022-05-16 10:01:26', '2022-05-16 10:01:26'),
(85, 23, 'Chekodi', 'chekodi.jpg', '2022-05-16 10:01:56', '2022-05-16 10:01:56'),
(86, 23, 'Chuduva', 'chuduva.jpg', '2022-05-16 10:02:28', '2022-05-16 10:02:28'),
(87, 23, 'Dalmoth', 'dalmoth.jpg', '2022-05-16 10:02:56', '2022-05-16 10:02:56'),
(89, 23, 'Dryfruit Mixture', 'dryfruit_mixture.jpg', '2022-05-16 10:03:29', '2022-05-16 10:03:29'),
(91, 23, 'Kabuli Chana', 'Kabuli_chana.jpg', '2022-05-16 10:04:41', '2022-05-16 10:04:41'),
(92, 18, 'Khowa Butter Scotch Ball', 'khowa_butter_scotch_ball.jpg', '2022-05-16 10:04:55', '2022-05-16 10:04:55'),
(93, 23, 'Khara Mixture', 'khara_mixture.jpg', '2022-05-16 10:05:16', '2022-05-16 10:05:16'),
(94, 18, 'Khowa Jelly', 'Khowa_jelly.jpg', '2022-05-16 10:05:53', '2022-05-16 10:05:53'),
(95, 23, 'Masala Green Peas', 'peas3.jpg', '2022-05-16 10:05:54', '2022-05-23 10:16:30'),
(96, 23, 'Masala Palli', 'masala_palli.jpg', '2022-05-16 10:06:37', '2022-05-16 10:06:37'),
(97, 23, 'Masala Sev', 'masala_save1.jpg', '2022-05-16 10:07:11', '2022-05-19 07:02:15'),
(98, 23, 'Navarathan Mixture', 'navarathan_mixture.jpg', '2022-05-16 10:07:42', '2022-05-16 10:07:42'),
(99, 24, 'kiwi fusion', '1.jpeg', '2022-05-16 10:07:46', '2022-05-23 10:20:00'),
(101, 23, 'Palak Pakodi', 'palak_pakodi.jpg', '2022-05-16 10:08:13', '2022-05-16 10:08:13'),
(102, 24, 'Pineapple Fusion ', '2.jpeg', '2022-05-16 10:08:14', '2022-05-20 06:40:44'),
(103, 24, 'Almond fusion', '3.jpeg', '2022-05-16 10:08:38', '2022-05-23 10:27:58'),
(104, 23, 'Sev', 'save.jpg', '2022-05-16 10:08:42', '2022-05-19 07:04:35'),
(105, 24, 'Mango Crunch', '4.jpeg', '2022-05-16 10:09:02', '2022-05-23 10:28:35'),
(106, 24, 'Mango Delight', '5.jpeg', '2022-05-16 10:09:32', '2022-05-23 10:29:03'),
(107, 24, 'Sahi Dry fruit Crunch', '6.jpeg', '2022-05-16 10:09:59', '2022-05-23 10:29:54'),
(108, 24, 'Mix Fruit Delight', '7.jpeg', '2022-05-16 10:10:26', '2022-05-23 10:30:36'),
(111, 24, 'Kacha Mango Crunch', '8.jpeg', '2022-05-16 10:11:03', '2022-05-23 10:31:13'),
(122, 24, 'Canberry Bite', '12.jpeg', '2022-05-16 10:12:47', '2022-05-23 10:32:57'),
(123, 24, 'Choco Crunch', '101.jpeg', '2022-05-16 10:12:56', '2022-05-23 10:34:41'),
(124, 24, 'Mixfruit Delight', '112.jpeg', '2022-05-16 10:13:10', '2022-05-23 10:35:48'),
(131, 24, 'Khajoor Bite', '16.jpeg', '2022-05-16 10:14:34', '2022-05-23 10:36:38'),
(145, 24, 'Bites', '13.jpeg', '2022-05-16 10:24:57', '2022-05-23 10:37:07'),
(149, 24, 'Mango Cream', '15.jpeg', '2022-05-16 10:25:29', '2022-05-23 10:38:52'),
(150, 2, 'Bombay Halwa', 'Bombay_halwa.jpg', '2022-05-16 10:28:51', '2022-05-16 10:28:51'),
(151, 26, 'Gajak', 'Gajak.jpg', '2022-05-16 10:42:49', '2022-05-16 10:42:49'),
(152, 26, 'Ghewar', 'Ghewar.jpg', '2022-05-16 10:43:06', '2022-05-16 10:43:06'),
(153, 26, 'Rewdi', 'Rewdi.jpg', '2022-05-16 10:43:23', '2022-05-16 10:43:23'),
(154, 26, 'Thil Ladoo', 'Thil_ladoo.jpg', '2022-05-16 10:43:46', '2022-05-16 10:43:46'),
(155, 26, 'Thil Papdi', 'thil_papdi.jpg', '2022-05-16 10:44:09', '2022-05-16 10:44:09'),
(156, 25, 'Basuandi', 'Basuandi.jpg', '2022-05-16 10:55:33', '2022-05-16 10:55:33'),
(157, 25, 'Khamandhokla', 'Khamandhokla.jpg', '2022-05-16 10:55:57', '2022-05-16 10:55:57'),
(158, 25, 'khandvi', 'khandvi.jpg', '2022-05-16 10:56:12', '2022-05-16 10:56:12'),
(159, 25, 'Rajbhog', 'Rajbhog.jpg', '2022-05-16 10:56:28', '2022-05-16 10:56:28'),
(160, 25, 'Rasgulla', 'Rasgulla.jpg', '2022-05-16 10:56:43', '2022-05-16 10:56:43'),
(161, 25, 'Rasmadhuri', 'Rasmadhuri.jpg', '2022-05-16 10:56:59', '2022-05-16 10:56:59'),
(162, 25, 'Rasmalai', 'Rasmalai.jpg', '2022-05-16 10:57:14', '2022-05-16 10:57:14'),
(163, 27, 'Gajak', 'Gajak1.jpg', '2022-05-17 12:59:45', '2022-05-17 12:59:45'),
(164, 27, 'Ghewar', 'Ghewar1.jpg', '2022-05-17 13:00:01', '2022-05-17 13:00:01'),
(165, 27, 'Rewdi', 'Rewdi1.jpg', '2022-05-17 13:00:16', '2022-05-17 13:00:16'),
(167, 27, 'Thil Papdi', 'thil-papdi.jpg', '2022-05-17 13:01:00', '2022-05-23 10:41:33'),
(168, 27, 'Thil Ladoo', 'Thil_ladoo1.jpg', '2022-05-17 13:01:54', '2022-05-17 13:01:54'),
(169, 28, 'Basundi', 'Basuandi1.jpg', '2022-05-17 13:02:24', '2022-05-23 10:43:50'),
(170, 28, 'Khaman Dhokla', 'Khamandhokla1.jpg', '2022-05-17 13:02:38', '2022-05-19 07:03:10'),
(171, 28, 'khandvi', 'khandvi1.jpg', '2022-05-17 13:02:51', '2022-05-17 13:02:51'),
(172, 28, 'Rajbhog', 'Rajbhog1.jpg', '2022-05-17 13:03:06', '2022-05-17 13:03:06'),
(173, 28, 'Rasgulla', 'Rasgulla1.jpg', '2022-05-17 13:03:19', '2022-05-17 13:03:19'),
(174, 28, 'Rasmadhuri', 'Rasmadhuri1.jpg', '2022-05-17 13:03:35', '2022-05-17 13:03:35'),
(175, 28, 'Rasmalai', 'Rasmalai1.jpg', '2022-05-17 13:03:51', '2022-05-17 13:03:51'),
(183, 30, 'Test', 'Screenshot_(11).png', '2022-05-18 07:54:27', '2022-05-18 07:54:27'),
(185, 19, 'Gift Hamper', 'kaju_sweets1.jpg', '2022-05-20 06:28:13', '2022-05-23 11:19:53'),
(186, 17, 'Pista Roll', 'pista_roll.jpg', '2022-05-23 10:45:59', '2022-05-23 10:45:59'),
(187, 2, 'Milk Mysore Pak ', 'milk_mysore-pak.png', '2022-05-23 10:49:19', '2022-05-23 10:49:19'),
(188, 2, 'Dry Fruit Halwa', 'dry-Fruit-Halwa.jpg', '2022-05-23 10:51:34', '2022-05-23 10:51:34'),
(189, 2, 'Doodha Barfi', 'dodha-barfi.jpg', '2022-05-23 10:52:43', '2022-05-23 10:52:43'),
(190, 2, 'Soanpapdi', 'sonpapdi.jpg', '2022-05-23 10:54:32', '2022-05-23 10:54:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`pre_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `pre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
