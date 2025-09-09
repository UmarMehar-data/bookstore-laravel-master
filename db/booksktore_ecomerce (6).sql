-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 04:01 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `booksktore_ecomerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `board_member`
--

CREATE TABLE `board_member` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `social_sites` text DEFAULT NULL,
  `social_link` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `board_member`
--

INSERT INTO `board_member` (`id`, `name`, `designation`, `image`, `social_sites`, `social_link`, `created_at`, `updated_at`) VALUES
(1, 'momi', 'Full Stack Developer', 'BoardMember_Images/UstyqavQTylhDVKIHRVVAVZWcW9F2zUc7ZRu8XdY.jpg', '1@2', 'https://facebook.com/momi@https://twitter.com/momi', '2021-04-09 11:13:09', '2021-04-09 11:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `price` float DEFAULT NULL,
  `cover_image` text DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `feature` int(11) DEFAULT 0,
  `description` text DEFAULT NULL,
  `detailDescription` text DEFAULT NULL,
  `pending` int(11) NOT NULL DEFAULT 0,
  `recommded_all` int(11) NOT NULL DEFAULT 0,
  `recommded_only` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `price`, `cover_image`, `categoryId`, `authorId`, `feature`, `description`, `detailDescription`, `pending`, `recommded_all`, `recommded_only`, `created_at`, `updated_at`) VALUES
(1, 'momi', 15.2, 'Vendor_Images/YLft2gmyVyfOTDTK7Nfge0oBiYHWWhNj5vTLwfWK.png', 1, 2, 1, 'asddsaasddas', '&lt;p&gt;dasadssad&lt;/p&gt;', 0, 1, 1, '2021-04-05 17:22:33', '2021-04-14 07:59:16'),
(3, 'momi', 10.5, 'Book_Images/hABBWxPmWzUeq3I6HOuVp5j0kyYzGt3tx5uoTIUB.jpg', 1, 2, 1, 'test', '&lt;p&gt;test&lt;/p&gt;', 0, 1, 1, '2021-04-06 08:28:32', '2021-04-12 17:29:45'),
(4, 'ارحیق المختوم', 150, 'Book_Images/MLcf9h3yuDyyhKHpYg6ptpMyrVtHOu6Z1XGiPQiv.png', 1, 3, 1, 'Test', '&lt;p&gt;tst&lt;/p&gt;', 0, 1, 1, '2021-04-13 09:19:33', '2021-04-13 09:20:17'),
(5, 'ads12', 2, 'Book_Images/UmDaCbkIAQoP6EAVLyIS5BF8Ipxr1YWWDO2T8rT2.jpg', 1, 2, 0, 'ads', '&lt;p&gt;daas&lt;/p&gt;', 1, 0, 0, '2021-04-14 07:22:19', '2021-04-14 07:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `book_category`
--

CREATE TABLE `book_category` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_category`
--

INSERT INTO `book_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Comedy', '2021-04-05 16:48:54', '2021-04-05 16:52:12'),
(3, 'Funny', '2021-04-05 17:45:38', '2021-04-05 17:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `firstName` text DEFAULT NULL,
  `lastName` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `block` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `firstName`, `lastName`, `email`, `password`, `block`, `created_at`, `updated_at`) VALUES
(1, 'momi', 'test', 'rmomi786@gmail.com', '$2y$10$csvZXs3mvlqyluSNYnq0qe5Ijs.YsInnWH7KWgEcijyDeEGpctpyC', 1, '2021-04-07 13:44:55', '2021-04-08 07:36:33'),
(3, 'Momi', 'Rana', 'areenasoft123.solution@gmail.com', '$2y$10$csvZXs3mvlqyluSNYnq0qe5Ijs.YsInnWH7KWgEcijyDeEGpctpyC', 0, '2021-04-07 13:59:23', '2021-04-07 13:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `message` text DEFAULT NULL,
  `replyId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `name`, `email`, `message`, `replyId`, `created_at`, `updated_at`) VALUES
(1, 'Momi Rana', 'rmomi786@gmail.com', 'asddsa', NULL, '2021-04-19 06:42:20', '2021-04-19 06:42:20'),
(2, 'Momi Rana', 'rmomi786@gmail.com', 'sadads', 1, '2021-04-19 07:13:53', '2021-04-19 07:13:53'),
(3, 'Momi Ranadsa', 'rmomi786@gmail.com', 'dsassaddsa', 1, '2021-04-19 07:17:22', '2021-04-19 07:17:22'),
(4, 'Momi Ranaasddas', 'rmomi786@gmail.com', 'dsaadsds', NULL, '2021-04-19 07:22:38', '2021-04-19 07:22:38'),
(5, 'dasasd asdda', 'rmomi786@gmail.com', 'asddsadas', 4, '2021-04-19 07:22:50', '2021-04-19 07:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(11) NOT NULL,
  `ques` text DEFAULT NULL,
  `ans` text DEFAULT NULL,
  `categoryId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `ques`, `ans`, `categoryId`, `created_at`, `updated_at`) VALUES
(1, 'Who is Just Energy?', 'Just Energy is a leading energy retailer in North America and one of the largest energy providers bringing energy solutions, natural gas and electricity to approximately 2 million customers. Our natural gas and electricity supply plans provide innovative solutions that allow our customers to choose from an array of plans to suit their lifestyle and comfort levels with market knowledge that includes secured rates, variable rates and index commodity supply programs. Just Energy also provides green energy products that provide a real and convenient solution for consumers to offset the environmental impact associated with their everyday energy use.', 1, '2021-04-16 06:59:10', '2021-04-16 06:59:10'),
(2, 'Who is Just Energy?1', 'Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1', 1, '2021-04-16 08:53:37', '2021-04-16 08:53:37'),
(3, 'Who is Just Energy?1', 'Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1', 2, '2021-04-16 08:53:47', '2021-04-16 08:53:47'),
(4, 'Who is Just Energy2', 'Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1Who is Just Energy?1', 3, '2021-04-16 08:53:55', '2021-04-16 08:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `faq_category`
--

CREATE TABLE `faq_category` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faq_category`
--

INSERT INTO `faq_category` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Overview of Just Energy', '2021-04-16 06:58:36', '2021-04-16 06:58:36'),
(2, 'Just Energy in California', '2021-04-16 07:31:13', '2021-04-16 07:31:13'),
(3, 'Just Energy In Delaware', '2021-04-16 07:31:18', '2021-04-16 07:31:18');

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

CREATE TABLE `flash_sale` (
  `id` int(11) NOT NULL,
  `salePercent` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `flash_sale`
--

INSERT INTO `flash_sale` (`id`, `salePercent`, `bookId`, `endTime`, `created_at`, `updated_at`) VALUES
(3, 18, 4, '2021-04-20 15:15:31', '2021-04-17 08:26:27', '2021-04-17 09:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `footer_content`
--

CREATE TABLE `footer_content` (
  `id` int(11) NOT NULL,
  `icon` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `social_media` text DEFAULT NULL,
  `social_link` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `footer_content`
--

INSERT INTO `footer_content` (`id`, `icon`, `title`, `description`, `social_media`, `social_link`, `name`, `created_at`, `updated_at`) VALUES
(1, 'f518', 'Book Shop', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', NULL, NULL, 'bookShop', '2021-04-09 13:02:49', '2021-04-09 09:08:13'),
(2, 'f14e', 'Our main Office', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', NULL, NULL, 'ourMainOffice', '2021-04-09 13:02:49', '2021-04-09 09:13:59'),
(3, 'f500', 'Get in Touch', NULL, '1@2', 'https://facebook.com/momi@https://twitter.com/momi', 'GetInTouch', '2021-04-09 13:02:49', '2021-04-09 09:13:26'),
(4, 'f05a', 'Information', NULL, NULL, NULL, 'information', '2021-04-09 13:02:49', '2021-04-09 09:47:44'),
(5, NULL, NULL, 'Copyright @2021 | Designed With by Book Store Website', NULL, NULL, 'copyright', '2021-04-09 13:02:49', '2021-04-09 09:48:25'),
(6, NULL, NULL, '&lt;div class=&quot;row&quot;&gt;\r\n                &lt;div class=&quot;col-md-12 text-center&quot;&gt;\r\n                &lt;div class=&quot;&quot;&gt;\r\n                        &lt;h1&gt;Nice to Meet You&lt;/h1&gt;\r\n                    &lt;/div&gt;\r\n                &lt;/div&gt;\r\n\r\n                &lt;div class=&quot;col-md-6 col-sm-12 col-12 mt-5&quot;&gt;\r\n                    &lt;p class=&quot;p-color&quot;&gt;\r\n                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste vitae maiores numquam, sapiente officia magnam. Iure culpa sapiente enim iste quia saepe voluptatibus aspernatur quam. Expedita corrupti non eius ab?\r\n                    &lt;/p&gt;\r\n                    &lt;p class=&quot;mt-5 p-color&quot;&gt;\r\n                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laboriosam obcaecati distinctio similique id aliquam saepe corporis quis et sunt? Nihil ad quia obcaecati nesciunt odio reiciendis rerum animi dolorum aspernatur.\r\n                    &lt;/p&gt;\r\n                &lt;/div&gt;\r\n                &lt;div class=&quot;col-md-6 col-sm-12 col-12 mt-5&quot;&gt;\r\n                    &lt;p class=&quot;p-color&quot;&gt;\r\n                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Iste vitae maiores numquam, sapiente officia magnam. Iure culpa sapiente enim iste quia saepe voluptatibus aspernatur quam. Expedita corrupti non eius ab? Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laboriosam obcaecati distinctio similique id aliquam saepe corporis quis et sunt? Nihil ad quia obcaecati nesciunt odio reiciendis rerum animi dolorum aspernatur.\r\n                    &lt;/p&gt;\r\n\r\n                &lt;/div&gt;\r\n            &lt;/div&gt;', NULL, NULL, 'aboutUs', '2021-04-09 15:21:41', '2021-04-09 10:41:44'),
(7, 'Footer_Images/ZT1Jo61R1aSeukXGsdQo2AvjLA8k33ZgRQ1gT6ip.png', NULL, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s', NULL, NULL, 'footer1', '2021-04-17 15:43:59', '2021-04-17 11:08:36'),
(8, NULL, 'Follow us', NULL, '1@2', 'https://facebook.com/momi@https://twitter.com/momi', 'footer2', '2021-04-17 15:49:16', '2021-04-17 15:49:16'),
(9, 'Footer_Images/APwzZ8bs4eV5uaiFr2DRPVhsTfMbzz1kwfZMMPGY.jpg', 'Our Store', NULL, NULL, NULL, 'footer3', '2021-04-17 16:00:08', '2021-04-17 11:02:43'),
(10, 'f14e', 'Karachi', NULL, NULL, NULL, 'footer4', '2021-04-09 13:02:49', '2021-04-17 11:11:29'),
(11, 'f14e', '090078601', NULL, NULL, NULL, 'footer5', '2021-04-09 13:02:49', '2021-04-17 11:11:43'),
(12, 'f14e', 'test@gmail.com', NULL, NULL, NULL, 'footer6', '2021-04-09 13:02:49', '2021-04-17 11:11:55');

-- --------------------------------------------------------

--
-- Table structure for table `logo_favicon`
--

CREATE TABLE `logo_favicon` (
  `id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `active` int(11) DEFAULT 0,
  `name` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logo_favicon`
--

INSERT INTO `logo_favicon` (`id`, `image`, `active`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Logo_Favicon_Images/Jy4gp5qzpccbYpbw1Ghr8ZIMKCqUt67c7vjaeLpY.png', 1, 'Logo', '2021-04-15 07:36:48', '2021-04-15 10:53:01'),
(3, 'Logo_Favicon_Images/QHA1s72vdHlwjnpVp3OJEZ9r3gS9oCGFIJ6vcJDO.png', 0, 'Logo', '2021-04-15 07:41:26', '2021-04-15 10:53:01'),
(4, 'Logo_Favicon_Images/50hisXNBW4GtWYrxhCbb189iFrmsa9DpjDvITJcW.png', 1, 'Favicon', '2021-04-15 07:50:27', '2021-04-15 10:48:10'),
(5, 'Logo_Favicon_Images/n88zD4pj0RYJFEr3IpLQE0urjswlueAvS7rCICf6.png', 0, 'Favicon', '2021-04-15 07:50:51', '2021-04-15 10:48:10');

-- --------------------------------------------------------

--
-- Table structure for table `main_menu`
--

CREATE TABLE `main_menu` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_menu`
--

INSERT INTO `main_menu` (`id`, `name`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Home', NULL, '2021-04-07 08:09:45', '2021-04-07 08:09:45'),
(2, 'About', 'about', '2021-04-07 08:10:13', '2021-04-07 08:12:53'),
(3, 'Contact Us', 'contact-us', '2021-04-14 08:22:39', '2021-04-14 08:22:39'),
(4, 'Book News', 'news', '2021-04-14 09:53:18', '2021-04-14 09:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `main_slider`
--

CREATE TABLE `main_slider` (
  `id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `h1` text DEFAULT NULL,
  `h2` text DEFAULT NULL,
  `h3` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link1` text DEFAULT NULL,
  `link1title` text DEFAULT NULL,
  `link2` text DEFAULT NULL,
  `link2title` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `main_slider`
--

INSERT INTO `main_slider` (`id`, `image`, `h1`, `h2`, `h3`, `description`, `link1`, `link1title`, `link2`, `link2title`, `created_at`, `updated_at`) VALUES
(1, 'Slider_Images/2Rfw0QOe1FKrq5VeNCC6B9FGAg2hAgKSLQuq8eQN.png', 'Back To School', 'Specail 50% OFF', 'For Our Student Community', 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Amet corrupti, maiores fugit facilis placeat saepe illum non voluptas mollitia.', '#', 'Get The Deal', '#', 'See Other Promos', '2021-04-07 08:37:49', '2021-04-07 08:38:33'),
(2, 'Slider_Images/pM4HvMN1F0odwB10YCyqvCU49InQFwsNTQ8WALOi.png', 'ascsa', 'assaasv', 'scscasa', 'dfhgjhkl;;\'', 'zcss', 'sddsdc', 'dscsac', 'saa', '2021-04-07 16:27:52', '2021-04-07 16:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `newsImg` text DEFAULT NULL,
  `newsTitle` text DEFAULT NULL,
  `shotDes` text DEFAULT NULL,
  `detailDes` text DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `pending` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `newsImg`, `newsTitle`, `shotDes`, `detailDes`, `authorId`, `pending`, `created_at`, `updated_at`) VALUES
(2, 'News_Images/7617ZCwVqQIFUW4UV676JbU2kLn2epcA6Mtjpoco.png', 'Lorem ipsum dolor, sit amet consectetur adipisicing elit.', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia.', '&lt;p style=&quot;text-align:center&quot;&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/bookstore/public/assests/img/blog-single.jpg&quot; style=&quot;height:150px; width:100%&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;\r\n&lt;p&gt;For 50 years, WWF has been protecting the future of nature. The world&amp;#39;s leading conservation organization, WWF works in 100 countries and is supported by 1.2 million members in the United States and close to 5 million globally.&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Hey I am here&lt;/li&gt;\r\n	&lt;li&gt;Hey I am here&lt;/li&gt;\r\n	&lt;li&gt;Hey I am here&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!&lt;/p&gt;', 5, 0, '2021-04-06 08:24:23', '2021-04-10 07:32:37'),
(3, 'News_Images/UsIe0V2IKZM4h25m5rT4Y24EsZ2qicFBfdLDYmyY.jpg', 'Nobis adipisci ad veritatis magni eveniet culpa', 'Culpa odit ratione debitis excepturi accusamus facere alias!Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea', '&lt;p&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!&lt;/p&gt;\r\n\r\n&lt;p&gt;&lt;img alt=&quot;&quot; src=&quot;http://localhost/bookstore/public/assests/img/blog-single.jpg&quot; style=&quot;height:100px; width:100%&quot; /&gt;&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!&lt;/p&gt;\r\n\r\n&lt;blockquote&gt;\r\n&lt;p&gt;For 50 years, WWF has been protecting the future of nature. The world&amp;#39;s leading conservation organization, WWF works in 100 countries and is supported by 1.2 million members in the United States and close to 5 million globally.&lt;/p&gt;\r\n&lt;/blockquote&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!&lt;/p&gt;\r\n\r\n&lt;ul&gt;\r\n	&lt;li&gt;Hey I am here&lt;/li&gt;\r\n	&lt;li&gt;Hey I am here&lt;/li&gt;\r\n	&lt;li&gt;Hey I am here&lt;/li&gt;\r\n&lt;/ul&gt;\r\n\r\n&lt;p&gt;Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquam, blanditiis enim repellendus ea voluptates omnis itaque eveniet nam, eaque quaerat commodi officia. Culpa odit ratione debitis excepturi accusamus facere alias!&lt;/p&gt;\r\n\r\n&lt;div id=&quot;gtx-anchor&quot; style=&quot;height:15px; left:20px; position:absolute; top:22px; visibility:hidden; width:424.422px&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;gtx-bubble jfk-bubble&quot; style=&quot;left:-238px; opacity:1; top:47px; visibility:visible&quot;&gt;\r\n&lt;div class=&quot;jfk-bubble-content-id&quot; id=&quot;bubble-4&quot;&gt;\r\n&lt;div id=&quot;gtx-host&quot; style=&quot;max-width:400px; min-width:200px&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;div class=&quot;jfk-bubble-closebtn jfk-bubble-closebtn-id&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;jfk-bubble-arrow jfk-bubble-arrow-id jfk-bubble-arrowup&quot; style=&quot;left:212px&quot;&gt;\r\n&lt;div class=&quot;jfk-bubble-arrowimplbefore&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n\r\n&lt;div class=&quot;jfk-bubble-arrowimplafter&quot;&gt;&amp;nbsp;&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 8, 0, '2021-04-10 07:32:08', '2021-04-19 06:13:28'),
(4, 'News_Images/k7bieVT1OMsNtzjE3J0ZwQp29WBftZ3yCDyEEN4D.jpg', 'adsdas', 'asdsdasdsa', '&lt;p&gt;dasdsadsa&lt;/p&gt;', 2, 0, '2021-04-14 07:59:07', '2021-04-14 08:02:15');

-- --------------------------------------------------------

--
-- Table structure for table `page_content`
--

CREATE TABLE `page_content` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `page_content`
--

INSERT INTO `page_content` (`id`, `title`, `description`, `link`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Muzzamil Shari', 'Lorem ipsum dolor sit amet, consectetur', 'f0e7', 'icon1', '2021-04-08 16:45:52', '2021-04-08 16:51:50'),
(2, 'Display Name', 'Lorem ipsum dolor sit amet, consectetur sit amet.', 'f3ed', 'icon2', '2021-04-08 16:45:52', '2021-04-08 13:34:38'),
(3, 'Display Name', 'Lorem ipsum dolor sit amet, consectetur sit amet.', 'f164', 'icon3', '2021-04-08 16:45:52', '2021-04-08 16:45:52'),
(4, 'Display Name', 'Lorem ipsum dolor sit amet, consectetur sit amet.', 'f005', 'icon4', '2021-04-08 16:45:52', '2021-04-08 16:45:52'),
(5, 'Recommded For You All', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero ab architecto omnis. Esse laborum libero magnam corrupti', NULL, 'recommded1', '2021-04-08 16:45:52', '2021-04-08 16:52:12'),
(6, 'Recommded For You  Only', 'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Libero ab architecto omnis. Esse laborum libero magnam corrupti', NULL, 'recommded2', '2021-04-08 16:45:52', '2021-04-08 16:52:22'),
(7, 'Special Offers', 'Lorem ipsum dolor sit amet, consectetur sit ametLorem ipsum dolor\r\nsit amet, Lorem ipsum dolor sit amet, consectetur', NULL, 'specialOffer', '2021-04-08 16:45:52', '2021-04-08 12:43:08'),
(8, 'Flash Sale', 'Lorem ipsum dolor sit amet, consectetur sit ametLorem ipsum dolor\r\nsit amet, Lorem ipsum dolor sit amet, consectetur', NULL, 'flashSale', '2021-04-08 16:45:52', '2021-04-08 16:45:52'),
(9, 'Featured Books', 'Lorem ipsum dolor sit amet, consectetur sit ametLorem ipsum dolor\r\nsit amet, Lorem ipsum dolor sit amet, consectetur', NULL, 'featuredBooks', '2021-04-08 16:45:52', '2021-04-08 12:43:08'),
(10, 'Testimonials', 'Our customers love us! Read what they have to say below. Aliquam sed justo ligula. Vestibulum nibh erat, pellentesque ut laoreet vitae.', NULL, 'testimonials', '2021-04-08 16:45:52', '2021-04-08 16:45:52'),
(11, 'Latest News', 'Lorem ipsum dolor sit amet, consectetur sit ametLorem ipsum dolor\r\nsit amet, Lorem ipsum dolor sit amet, consectetur\r\n\r\n\r\n', NULL, 'latestNews', '2021-04-08 16:45:52', '2021-04-08 12:43:08'),
(12, '', 'Subscribe To Our Newsletter For Newest Books Updates', NULL, 'subscriberNote', '2021-04-08 16:45:52', '2021-04-08 16:45:52'),
(13, 'Happy Customers', '12', 'f0c0', 'HappyCustomers', '2021-04-19 12:47:57', '2021-04-19 08:05:44'),
(14, 'Books Collection', '55', 'f02d', 'BooksCollection', '2021-04-19 12:47:57', '2021-04-19 08:05:16'),
(15, 'Our Store', '359', 'f54e', 'OurStore', '2021-04-19 12:47:57', '2021-04-19 08:05:29'),
(16, 'Famous Writers', '246', 'f52d', 'FamousWriters', '2021-04-19 12:47:57', '2021-04-19 08:06:17');

-- --------------------------------------------------------

--
-- Table structure for table `sale_book`
--

CREATE TABLE `sale_book` (
  `id` int(11) NOT NULL,
  `salePercent` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sale_book`
--

INSERT INTO `sale_book` (`id`, `salePercent`, `bookId`, `created_at`, `updated_at`) VALUES
(2, 50, 3, '2021-04-09 15:13:15', '2021-04-09 15:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `icon` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `icon`, `title`, `created_at`, `updated_at`) VALUES
(1, 'f39e', 'Facebook', '2021-03-30 20:01:39', '2021-03-30 20:05:05'),
(2, 'f099', 'Twitter', '2021-03-30 20:04:48', '2021-03-30 20:04:48'),
(3, 'f16d', 'Instagram', '2021-04-06 11:03:49', '2021-04-06 11:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `special_offer`
--

CREATE TABLE `special_offer` (
  `id` int(11) NOT NULL,
  `salePercent` int(11) DEFAULT NULL,
  `bookId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `special_offer`
--

INSERT INTO `special_offer` (`id`, `salePercent`, `bookId`, `created_at`, `updated_at`) VALUES
(1, 36, 1, '2021-04-12 17:22:07', '2021-04-12 17:22:07');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `title`, `image`, `designation`, `rating`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ben Johnson', 'Testimonial_Images/4cvYvLVllWAp5Nt6gxltA34QOiwMTcFieqX3oTHB.jpg', 'CEO of Company Inc.', 3, 'Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.', '2021-04-16 09:28:38', '2021-04-16 09:30:22'),
(2, 'Ben Johnson', 'Testimonial_Images/YOCqr3oNMglSIcs6I8V5xF0DOm65lvEUwEpHQsHE.jpg', 'CEO of Company Inc.', 4, 'Aenean tortor est, vulputate quis leo in, vehicula rhoncus lacus. Praesent aliquam in tellus eu gravida. Aliquam varius finibus est.', '2021-04-19 07:37:16', '2021-04-19 07:37:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `usertype`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$BXoa.AaaA3Mlh.Q5SR7uguHUSIdfkMvsoOQFVx/MabMDTtk1brpQm', 1, '2021-03-11 19:56:01', '2021-04-05 17:43:57'),
(2, 'MomiRana123', '$2y$10$GrRFbSrW1AVhFRtLRfBQsO5Q0jyysBOOHIVxJz0Goml0gGRIYyVNi', 2, '2021-04-06 11:40:31', '2021-04-06 11:40:31'),
(3, 'dsa', '$2y$10$GQm0aZahIZBA4uh4IqVzV.TuKZhBR2ceBBEKYh4PAd7HR8noTOT0m', 2, '2021-04-06 11:46:49', '2021-04-06 11:46:49'),
(4, 'momirana1', '$2y$10$WzK0mcOCYqqORkBIUOWQ0ev/fHOARHm/MXZw/BueGi1WMx/40d826', 2, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(5, 'momirana2', '$2y$10$WzK0mcOCYqqORkBIUOWQ0ev/fHOARHm/MXZw/BueGi1WMx/40d826', 2, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(6, 'momirana3', '$2y$10$WzK0mcOCYqqORkBIUOWQ0ev/fHOARHm/MXZw/BueGi1WMx/40d826', 2, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(7, 'momirana4', '$2y$10$WzK0mcOCYqqORkBIUOWQ0ev/fHOARHm/MXZw/BueGi1WMx/40d826', 2, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(8, 'momirana5', '$2y$10$WzK0mcOCYqqORkBIUOWQ0ev/fHOARHm/MXZw/BueGi1WMx/40d826', 2, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(9, 'momirana6', '$2y$10$WzK0mcOCYqqORkBIUOWQ0ev/fHOARHm/MXZw/BueGi1WMx/40d826', 2, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(10, 'momirana7', '$2y$10$WzK0mcOCYqqORkBIUOWQ0ev/fHOARHm/MXZw/BueGi1WMx/40d826', 2, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(11, 'momirana8', '$2y$10$WzK0mcOCYqqORkBIUOWQ0ev/fHOARHm/MXZw/BueGi1WMx/40d826', 2, '2021-04-08 15:12:32', '2021-04-08 15:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `social_sites` text DEFAULT NULL,
  `social_link` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_information`
--

INSERT INTO `user_information` (`id`, `name`, `image`, `social_sites`, `social_link`, `description`, `userId`, `created_at`, `updated_at`) VALUES
(1, 'momi', 'User_Images/k9AtmqqGYu3O1CivBT0WLz4r97SUJUuzqiW3fdi6.jpg', '1@2', 'https://facebook.com/momi@https://twitter.com/momi', 'dasasdadsdsa', 2, '2021-04-06 11:40:31', '2021-04-08 14:46:30'),
(2, 'momiads', 'User_Images/3mMWnoI3wkUacxz5gwrGQrXLZ03YLUprxxYnArhK.png', '2@1', 'sdaasdads@https://facebook.com/momi', 'saddasdsa', 3, '2021-04-06 11:46:50', '2021-04-06 12:35:13'),
(3, 'momirana', 'User_Images/k9AtmqqGYu3O1CivBT0WLz4r97SUJUuzqiW3fdi6.jpg', '1', 'https://facebook.com/momi', 'dasasdadsdsa', 1, '2021-04-06 11:40:31', '2021-04-08 07:03:41'),
(4, 'momi1', 'User_Images/uUmVSCwGn0TGly2qPgzd0H1gXGzouMGvTdEydzOt.jpg', '1', 'https://facebook.com/momi', 'I am Author1.', 4, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(5, 'momi2', 'User_Images/uUmVSCwGn0TGly2qPgzd0H1gXGzouMGvTdEydzOt.jpg', '1', 'https://facebook.com/momi', 'I am Author2.', 5, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(6, 'momi3', 'User_Images/uUmVSCwGn0TGly2qPgzd0H1gXGzouMGvTdEydzOt.jpg', '1', 'https://facebook.com/momi', 'I am Author3.', 6, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(7, 'momi4', 'User_Images/uUmVSCwGn0TGly2qPgzd0H1gXGzouMGvTdEydzOt.jpg', '1', 'https://facebook.com/momi', 'I am Author4.', 7, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(8, 'momi5', 'User_Images/uUmVSCwGn0TGly2qPgzd0H1gXGzouMGvTdEydzOt.jpg', '1', 'https://facebook.com/momi', 'I am Author5.', 8, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(9, 'momi6', 'User_Images/uUmVSCwGn0TGly2qPgzd0H1gXGzouMGvTdEydzOt.jpg', '1', 'https://facebook.com/momi', 'I am Author6.', 9, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(10, 'momi7', 'User_Images/uUmVSCwGn0TGly2qPgzd0H1gXGzouMGvTdEydzOt.jpg', '1', 'https://facebook.com/momi', 'I am Author7.', 10, '2021-04-08 15:12:32', '2021-04-08 15:12:32'),
(11, 'momi8', 'User_Images/uUmVSCwGn0TGly2qPgzd0H1gXGzouMGvTdEydzOt.jpg', '1', 'https://facebook.com/momi', 'I am Author8.', 11, '2021-04-08 15:12:32', '2021-04-08 15:12:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `usertype` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `usertype`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2021-04-06 15:08:05', '2021-04-06 15:08:05'),
(2, 'Author', '2021-04-06 15:08:05', '2021-04-06 15:08:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `board_member`
--
ALTER TABLE `board_member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_category`
--
ALTER TABLE `book_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq_category`
--
ALTER TABLE `faq_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `footer_content`
--
ALTER TABLE `footer_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logo_favicon`
--
ALTER TABLE `logo_favicon`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_menu`
--
ALTER TABLE `main_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_slider`
--
ALTER TABLE `main_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_content`
--
ALTER TABLE `page_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sale_book`
--
ALTER TABLE `sale_book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `special_offer`
--
ALTER TABLE `special_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `board_member`
--
ALTER TABLE `board_member`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `book_category`
--
ALTER TABLE `book_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `faq_category`
--
ALTER TABLE `faq_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `flash_sale`
--
ALTER TABLE `flash_sale`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `footer_content`
--
ALTER TABLE `footer_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `logo_favicon`
--
ALTER TABLE `logo_favicon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `main_menu`
--
ALTER TABLE `main_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_slider`
--
ALTER TABLE `main_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_content`
--
ALTER TABLE `page_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `sale_book`
--
ALTER TABLE `sale_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `special_offer`
--
ALTER TABLE `special_offer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_information`
--
ALTER TABLE `user_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
