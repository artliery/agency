-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2025 at 08:10 PM
-- Server version: 11.8.2-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agency_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_aboutpage`
--

CREATE TABLE `about_aboutpage` (
  `id` bigint(20) NOT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `title` varchar(300) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `feature1` varchar(100) DEFAULT NULL,
  `feature2` varchar(100) DEFAULT NULL,
  `feature3` varchar(100) DEFAULT NULL,
  `years_of_experience` int(11) DEFAULT NULL,
  `image1` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `image3` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_aboutpage`
--

INSERT INTO `about_aboutpage` (`id`, `subtitle`, `title`, `description`, `feature1`, `feature2`, `feature3`, `years_of_experience`, `image1`, `image2`, `image3`) VALUES
(1, 'Why Choose', 'Phasellus Tristique A Nisi Etal Tristique Cras Interdum.', 'Integer purus odio, placerat nec rhoncus in, ullamcorper nec dolor. Class onlin aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos only himenaeos. Praesent nec neque at dolor venenatis consectetur eu quis ex. the Donec lacinia placerat felis non aliquam.Mauris nec justo vitae ante auctor tol euismod sit amet non ipsum. Praesent commodo at massa eget suscipit. Utani vitae enim velit. Ut ut posuere orci, id dapibus odio.', '24/7 Support', 'Unique Design', 'Clean Code Develope', 20, 'AboutPage/why-1.jpg', 'AboutPage/why-2.jpg', 'AboutPage/why-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `about_aboutpageseo`
--

CREATE TABLE `about_aboutpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_aboutpageseo`
--

INSERT INTO `about_aboutpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'About Us', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `about_teamsection`
--

CREATE TABLE `about_teamsection` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `position` varchar(200) DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `linkedin` varchar(500) DEFAULT NULL,
  `whatsapp` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `about_teamsection`
--

INSERT INTO `about_teamsection` (`id`, `image`, `name`, `position`, `facebook`, `instagram`, `linkedin`, `whatsapp`) VALUES
(1, 'Teams/team-1.jpg', 'Thoren Okendhild', 'Founder & Director', 'https://facebook.com', '#', '#', '0123456789'),
(2, 'Teams/team-2.jpg', 'Lincoln Anthony', 'Co Founder & CEO', 'https://facebook.com', '#', 'https://www.linkedin.com/cvtfile', '#'),
(3, 'Teams/team-3.jpg', 'Adrian Eodri', 'Managing Director', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://www.linkedin.com/', '#');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_passwordresettoken`
--

CREATE TABLE `accounts_passwordresettoken` (
  `id` bigint(20) NOT NULL,
  `token` varchar(36) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `expiration_time` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user`
--

CREATE TABLE `accounts_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `is_verified` tinyint(1) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_user`
--

INSERT INTO `accounts_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `is_verified`, `role`, `created`) VALUES
(1, 'pbkdf2_sha256$1000000$1uGUYWi1ZbJFvpDXPjFQwy$+fhjS/RRI8RrxmTpqmlQd3eF/GNG4+srJZZ133Smwkk=', '2025-06-23 17:56:03.322954', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2025-06-23 07:10:36.107020', 0, 'Admin', '2025-06-23');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_userprofile`
--

CREATE TABLE `accounts_userprofile` (
  `id` bigint(20) NOT NULL,
  `profile_picture` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(255) DEFAULT NULL,
  `facebook` varchar(500) DEFAULT NULL,
  `instagram` varchar(500) DEFAULT NULL,
  `linkedin` varchar(500) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_userprofile`
--

INSERT INTO `accounts_userprofile` (`id`, `profile_picture`, `name`, `slug`, `email`, `phone`, `address`, `city`, `state`, `country`, `zipcode`, `facebook`, `instagram`, `linkedin`, `user_id`) VALUES
(1, '', 'admin', 'admin', 'admin@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_groups`
--

CREATE TABLE `accounts_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_user_user_permissions`
--

CREATE TABLE `accounts_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `analytics_visitor`
--

CREATE TABLE `analytics_visitor` (
  `id` bigint(20) NOT NULL,
  `count` int(11) NOT NULL,
  `os` varchar(50) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `device` varchar(50) DEFAULT NULL,
  `visited_at` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_user'),
(22, 'Can change user', 6, 'change_user'),
(23, 'Can delete user', 6, 'delete_user'),
(24, 'Can view user', 6, 'view_user'),
(25, 'Can add password reset token', 7, 'add_passwordresettoken'),
(26, 'Can change password reset token', 7, 'change_passwordresettoken'),
(27, 'Can delete password reset token', 7, 'delete_passwordresettoken'),
(28, 'Can view password reset token', 7, 'view_passwordresettoken'),
(29, 'Can add user profile', 8, 'add_userprofile'),
(30, 'Can change user profile', 8, 'change_userprofile'),
(31, 'Can delete user profile', 8, 'delete_userprofile'),
(32, 'Can view user profile', 8, 'view_userprofile'),
(33, 'Can add about section', 9, 'add_aboutsection'),
(34, 'Can change about section', 9, 'change_aboutsection'),
(35, 'Can delete about section', 9, 'delete_aboutsection'),
(36, 'Can view about section', 9, 'view_aboutsection'),
(37, 'Can add client section', 10, 'add_clientsection'),
(38, 'Can change client section', 10, 'change_clientsection'),
(39, 'Can delete client section', 10, 'delete_clientsection'),
(40, 'Can view client section', 10, 'view_clientsection'),
(41, 'Can add fun fact section', 11, 'add_funfactsection'),
(42, 'Can change fun fact section', 11, 'change_funfactsection'),
(43, 'Can delete fun fact section', 11, 'delete_funfactsection'),
(44, 'Can view fun fact section', 11, 'view_funfactsection'),
(45, 'Can add home page seo', 12, 'add_homepageseo'),
(46, 'Can change home page seo', 12, 'change_homepageseo'),
(47, 'Can delete home page seo', 12, 'delete_homepageseo'),
(48, 'Can view home page seo', 12, 'view_homepageseo'),
(49, 'Can add project category', 13, 'add_projectcategory'),
(50, 'Can change project category', 13, 'change_projectcategory'),
(51, 'Can delete project category', 13, 'delete_projectcategory'),
(52, 'Can view project category', 13, 'view_projectcategory'),
(53, 'Can add service section', 14, 'add_servicesection'),
(54, 'Can change service section', 14, 'change_servicesection'),
(55, 'Can delete service section', 14, 'delete_servicesection'),
(56, 'Can view service section', 14, 'view_servicesection'),
(57, 'Can add slider section', 15, 'add_slidersection'),
(58, 'Can change slider section', 15, 'change_slidersection'),
(59, 'Can delete slider section', 15, 'delete_slidersection'),
(60, 'Can view slider section', 15, 'view_slidersection'),
(61, 'Can add testimonials section', 16, 'add_testimonialssection'),
(62, 'Can change testimonials section', 16, 'change_testimonialssection'),
(63, 'Can delete testimonials section', 16, 'delete_testimonialssection'),
(64, 'Can view testimonials section', 16, 'view_testimonialssection'),
(65, 'Can add project section', 17, 'add_projectsection'),
(66, 'Can change project section', 17, 'change_projectsection'),
(67, 'Can delete project section', 17, 'delete_projectsection'),
(68, 'Can view project section', 17, 'view_projectsection'),
(69, 'Can add blog section title', 18, 'add_blogsectiontitle'),
(70, 'Can change blog section title', 18, 'change_blogsectiontitle'),
(71, 'Can delete blog section title', 18, 'delete_blogsectiontitle'),
(72, 'Can view blog section title', 18, 'view_blogsectiontitle'),
(73, 'Can add client section title', 19, 'add_clientsectiontitle'),
(74, 'Can change client section title', 19, 'change_clientsectiontitle'),
(75, 'Can delete client section title', 19, 'delete_clientsectiontitle'),
(76, 'Can view client section title', 19, 'view_clientsectiontitle'),
(77, 'Can add funfact section title', 20, 'add_funfactsectiontitle'),
(78, 'Can change funfact section title', 20, 'change_funfactsectiontitle'),
(79, 'Can delete funfact section title', 20, 'delete_funfactsectiontitle'),
(80, 'Can view funfact section title', 20, 'view_funfactsectiontitle'),
(81, 'Can add pricing section title', 21, 'add_pricingsectiontitle'),
(82, 'Can change pricing section title', 21, 'change_pricingsectiontitle'),
(83, 'Can delete pricing section title', 21, 'delete_pricingsectiontitle'),
(84, 'Can view pricing section title', 21, 'view_pricingsectiontitle'),
(85, 'Can add project section title', 22, 'add_projectsectiontitle'),
(86, 'Can change project section title', 22, 'change_projectsectiontitle'),
(87, 'Can delete project section title', 22, 'delete_projectsectiontitle'),
(88, 'Can view project section title', 22, 'view_projectsectiontitle'),
(89, 'Can add team section title', 23, 'add_teamsectiontitle'),
(90, 'Can change team section title', 23, 'change_teamsectiontitle'),
(91, 'Can delete team section title', 23, 'delete_teamsectiontitle'),
(92, 'Can view team section title', 23, 'view_teamsectiontitle'),
(93, 'Can add testimonial section title', 24, 'add_testimonialsectiontitle'),
(94, 'Can change testimonial section title', 24, 'change_testimonialsectiontitle'),
(95, 'Can delete testimonial section title', 24, 'delete_testimonialsectiontitle'),
(96, 'Can view testimonial section title', 24, 'view_testimonialsectiontitle'),
(97, 'Can add service section title', 25, 'add_servicesectiontitle'),
(98, 'Can change service section title', 25, 'change_servicesectiontitle'),
(99, 'Can delete service section title', 25, 'delete_servicesectiontitle'),
(100, 'Can view service section title', 25, 'view_servicesectiontitle'),
(101, 'Can add about page', 26, 'add_aboutpage'),
(102, 'Can change about page', 26, 'change_aboutpage'),
(103, 'Can delete about page', 26, 'delete_aboutpage'),
(104, 'Can view about page', 26, 'view_aboutpage'),
(105, 'Can add about page seo', 27, 'add_aboutpageseo'),
(106, 'Can change about page seo', 27, 'change_aboutpageseo'),
(107, 'Can delete about page seo', 27, 'delete_aboutpageseo'),
(108, 'Can view about page seo', 27, 'view_aboutpageseo'),
(109, 'Can add team section', 28, 'add_teamsection'),
(110, 'Can change team section', 28, 'change_teamsection'),
(111, 'Can delete team section', 28, 'delete_teamsection'),
(112, 'Can view team section', 28, 'view_teamsection'),
(113, 'Can add pricing page seo', 29, 'add_pricingpageseo'),
(114, 'Can change pricing page seo', 29, 'change_pricingpageseo'),
(115, 'Can delete pricing page seo', 29, 'delete_pricingpageseo'),
(116, 'Can view pricing page seo', 29, 'view_pricingpageseo'),
(117, 'Can add pricing section', 30, 'add_pricingsection'),
(118, 'Can change pricing section', 30, 'change_pricingsection'),
(119, 'Can delete pricing section', 30, 'delete_pricingsection'),
(120, 'Can view pricing section', 30, 'view_pricingsection'),
(121, 'Can add Blog Category', 31, 'add_blogcategory'),
(122, 'Can change Blog Category', 31, 'change_blogcategory'),
(123, 'Can delete Blog Category', 31, 'delete_blogcategory'),
(124, 'Can view Blog Category', 31, 'view_blogcategory'),
(125, 'Can add blog page seo', 32, 'add_blogpageseo'),
(126, 'Can change blog page seo', 32, 'change_blogpageseo'),
(127, 'Can delete blog page seo', 32, 'delete_blogpageseo'),
(128, 'Can view blog page seo', 32, 'view_blogpageseo'),
(129, 'Can add blogs', 33, 'add_blogs'),
(130, 'Can change blogs', 33, 'change_blogs'),
(131, 'Can delete blogs', 33, 'delete_blogs'),
(132, 'Can view blogs', 33, 'view_blogs'),
(133, 'Can add contact', 34, 'add_contact'),
(134, 'Can change contact', 34, 'change_contact'),
(135, 'Can delete contact', 34, 'delete_contact'),
(136, 'Can view contact', 34, 'view_contact'),
(137, 'Can add contact page seo', 35, 'add_contactpageseo'),
(138, 'Can change contact page seo', 35, 'change_contactpageseo'),
(139, 'Can delete contact page seo', 35, 'delete_contactpageseo'),
(140, 'Can view contact page seo', 35, 'view_contactpageseo'),
(141, 'Can add subscriber', 36, 'add_subscriber'),
(142, 'Can change subscriber', 36, 'change_subscriber'),
(143, 'Can delete subscriber', 36, 'delete_subscriber'),
(144, 'Can view subscriber', 36, 'view_subscriber'),
(145, 'Can add contact form title', 37, 'add_contactformtitle'),
(146, 'Can change contact form title', 37, 'change_contactformtitle'),
(147, 'Can delete contact form title', 37, 'delete_contactformtitle'),
(148, 'Can view contact form title', 37, 'view_contactformtitle'),
(149, 'Can add subscriber form title', 38, 'add_subscriberformtitle'),
(150, 'Can change subscriber form title', 38, 'change_subscriberformtitle'),
(151, 'Can delete subscriber form title', 38, 'delete_subscriberformtitle'),
(152, 'Can view subscriber form title', 38, 'view_subscriberformtitle'),
(153, 'Can add service page seo', 39, 'add_servicepageseo'),
(154, 'Can change service page seo', 39, 'change_servicepageseo'),
(155, 'Can delete service page seo', 39, 'delete_servicepageseo'),
(156, 'Can view service page seo', 39, 'view_servicepageseo'),
(157, 'Can add project page seo', 40, 'add_projectpageseo'),
(158, 'Can change project page seo', 40, 'change_projectpageseo'),
(159, 'Can delete project page seo', 40, 'delete_projectpageseo'),
(160, 'Can view project page seo', 40, 'view_projectpageseo'),
(161, 'Can add header footer setting', 41, 'add_headerfootersetting'),
(162, 'Can change header footer setting', 41, 'change_headerfootersetting'),
(163, 'Can delete header footer setting', 41, 'delete_headerfootersetting'),
(164, 'Can view header footer setting', 41, 'view_headerfootersetting'),
(165, 'Can add seo setting', 42, 'add_seosetting'),
(166, 'Can change seo setting', 42, 'change_seosetting'),
(167, 'Can delete seo setting', 42, 'delete_seosetting'),
(168, 'Can view seo setting', 42, 'view_seosetting'),
(169, 'Can add template settings', 43, 'add_templatesettings'),
(170, 'Can change template settings', 43, 'change_templatesettings'),
(171, 'Can delete template settings', 43, 'delete_templatesettings'),
(172, 'Can view template settings', 43, 'view_templatesettings'),
(173, 'Can add website setting', 44, 'add_websitesetting'),
(174, 'Can change website setting', 44, 'change_websitesetting'),
(175, 'Can delete website setting', 44, 'delete_websitesetting'),
(176, 'Can view website setting', 44, 'view_websitesetting'),
(177, 'Can add policy', 45, 'add_policy'),
(178, 'Can change policy', 45, 'change_policy'),
(179, 'Can delete policy', 45, 'delete_policy'),
(180, 'Can view policy', 45, 'view_policy'),
(181, 'Can add terms', 46, 'add_terms'),
(182, 'Can change terms', 46, 'change_terms'),
(183, 'Can delete terms', 46, 'delete_terms'),
(184, 'Can view terms', 46, 'view_terms'),
(185, 'Can add primary menu', 47, 'add_primarymenu'),
(186, 'Can change primary menu', 47, 'change_primarymenu'),
(187, 'Can delete primary menu', 47, 'delete_primarymenu'),
(188, 'Can view primary menu', 47, 'view_primarymenu'),
(189, 'Can add sub menu', 48, 'add_submenu'),
(190, 'Can change sub menu', 48, 'change_submenu'),
(191, 'Can delete sub menu', 48, 'delete_submenu'),
(192, 'Can view sub menu', 48, 'view_submenu'),
(193, 'Can add custom page', 49, 'add_custompage'),
(194, 'Can change custom page', 49, 'change_custompage'),
(195, 'Can delete custom page', 49, 'delete_custompage'),
(196, 'Can view custom page', 49, 'view_custompage'),
(197, 'Can add visitor', 50, 'add_visitor'),
(198, 'Can change visitor', 50, 'change_visitor'),
(199, 'Can delete visitor', 50, 'delete_visitor'),
(200, 'Can view visitor', 50, 'view_visitor');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogcategory`
--

CREATE TABLE `blog_blogcategory` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_blogcategory`
--

INSERT INTO `blog_blogcategory` (`id`, `title`, `slug`) VALUES
(1, 'Business', 'business'),
(2, 'Develop', 'develop'),
(3, 'Software', 'software');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogpageseo`
--

CREATE TABLE `blog_blogpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(200) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_blogpageseo`
--

INSERT INTO `blog_blogpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Blogs', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `blog_blogs`
--

CREATE TABLE `blog_blogs` (
  `id` bigint(20) NOT NULL,
  `thumbnail` varchar(100) DEFAULT NULL,
  `title` varchar(1000) DEFAULT NULL,
  `slug` varchar(500) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_blogs`
--

INSERT INTO `blog_blogs` (`id`, `thumbnail`, `title`, `slug`, `author`, `description`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'blog_images/blog-1.jpg', 'Quisque Malesuada Sapien And Donec Sed Nunc.', 'quisque-malesuada-sapien-and-donec-sed-nunc', 'The CodeGrammer', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, <strong>pellentesque risus.</strong> Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv Pellentesque vel turp<strong>is vitae urna tincidunt hendrerit at ut est. Sed </strong>eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus. Proin sit amet arcu sem. dontami Phasellus ut pharetra purus, sed condimentum dui. Suspendisse potenti. Nam bibendum, augue europea ultricies semper, nisi lorem consectetur diam, nec dapibus nulla tortor at sem.</p>\r\n\r\n<h2><strong>Remarketing Strategy To Get Morelknoi Anda?</strong></h2>\r\n\r\n<p>VInterdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accu neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus v</p>\r\n\r\n<p>purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit.</p>\r\n\r\n<h1><strong>Purus at eros interdum, in dignissim nulla vestibulum.</strong></h1>\r\n\r\n<p>pellentesque quis magna eu vestibulum. Ut sed nec e commodo neque. Morbi erat nisi, vehicula porttitor egut, hendrerit vel tortor. In pharetra lectus luctus.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. S<strong>edan pellentesque quis m</strong>agna eu vestibulum. Ut sed commodo neque. Morbi <u>erat nisi, vehicula quis faucib</u>us il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokalporttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec toldelacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel j<strong>usto scelerisque, vestibulu</strong>m ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est.</p>', '2025-06-23', '2025-06-23', 1),
(2, 'blog_images/blog-2.jpg', 'Suspendisse Pretium Magna Qu Nisl Egestas Porttitor.', 'suspendisse-pretium-magna-qu-nisl-egestas-porttitor', 'The CodeGrammer', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, <strong>pellentesque risus.</strong> Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv Pellentesque vel turp<strong>is vitae urna tincidunt hendrerit at ut est. Sed </strong>eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus. Proin sit amet arcu sem. dontami Phasellus ut pharetra purus, sed condimentum dui. Suspendisse potenti. Nam bibendum, augue europea ultricies semper, nisi lorem consectetur diam, nec dapibus nulla tortor at sem.</p>\r\n\r\n<h2><strong>Remarketing Strategy To Get Morelknoi Anda?</strong></h2>\r\n\r\n<p>VInterdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accu neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus v</p>\r\n\r\n<p>purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit.</p>\r\n\r\n<h1><strong>Purus at eros interdum, in dignissim nulla vestibulum.</strong></h1>\r\n\r\n<p>pellentesque quis magna eu vestibulum. Ut sed nec e commodo neque. Morbi erat nisi, vehicula porttitor egut, hendrerit vel tortor. In pharetra lectus luctus.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. S<strong>edan pellentesque quis m</strong>agna eu vestibulum. Ut sed commodo neque. Morbi <u>erat nisi, vehicula quis faucib</u>us il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokalporttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec toldelacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel j<strong>usto scelerisque, vestibulu</strong>m ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est.</p>', '2025-06-23', '2025-06-23', 2),
(3, 'blog_images/blog-3.jpg', 'In A Augue Sit Amet Erat Suspel Eleifend Suscipit Issen.', 'in-a-augue-sit-amet-erat-suspel-eleifend-suscipit-issen', 'The CodeGrammer', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, <strong>pellentesque risus.</strong> Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv Pellentesque vel turp<strong>is vitae urna tincidunt hendrerit at ut est. Sed </strong>eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus. Proin sit amet arcu sem. dontami Phasellus ut pharetra purus, sed condimentum dui. Suspendisse potenti. Nam bibendum, augue europea ultricies semper, nisi lorem consectetur diam, nec dapibus nulla tortor at sem.</p>\r\n\r\n<h2><strong>Remarketing Strategy To Get Morelknoi Anda?</strong></h2>\r\n\r\n<p>VInterdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accu neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus v</p>\r\n\r\n<p>purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit.</p>\r\n\r\n<h1><strong>Purus at eros interdum, in dignissim nulla vestibulum.</strong></h1>\r\n\r\n<p>pellentesque quis magna eu vestibulum. Ut sed nec e commodo neque. Morbi erat nisi, vehicula porttitor egut, hendrerit vel tortor. In pharetra lectus luctus.</p>\r\n\r\n<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. S<strong>edan pellentesque quis m</strong>agna eu vestibulum. Ut sed commodo neque. Morbi <u>erat nisi, vehicula quis faucib</u>us il ut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokalporttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec toldelacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel j<strong>usto scelerisque, vestibulu</strong>m ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est.</p>', '2025-06-23', '2025-06-23', 3);

-- --------------------------------------------------------

--
-- Table structure for table `contact_contact`
--

CREATE TABLE `contact_contact` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_contactformtitle`
--

CREATE TABLE `contact_contactformtitle` (
  `id` bigint(20) NOT NULL,
  `name_field_placeholder` varchar(100) DEFAULT NULL,
  `email_field_placeholder` varchar(100) DEFAULT NULL,
  `phone_field_placeholder` varchar(100) DEFAULT NULL,
  `subject_field_placeholder` varchar(100) DEFAULT NULL,
  `message_field_placeholder` varchar(100) DEFAULT NULL,
  `submit_button_text` varchar(100) DEFAULT NULL,
  `contact_form_title` varchar(100) DEFAULT NULL,
  `email_title` varchar(100) DEFAULT NULL,
  `location_title` varchar(100) DEFAULT NULL,
  `phone_title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_contactformtitle`
--

INSERT INTO `contact_contactformtitle` (`id`, `name_field_placeholder`, `email_field_placeholder`, `phone_field_placeholder`, `subject_field_placeholder`, `message_field_placeholder`, `submit_button_text`, `contact_form_title`, `email_title`, `location_title`, `phone_title`) VALUES
(1, 'Enter your name', 'Enter your email', 'Enter your phone', 'Enter your subject', 'Enter your message', 'Send Message', 'Have Any Questions', 'Email', 'Location', 'Phone');

-- --------------------------------------------------------

--
-- Table structure for table `contact_contactpageseo`
--

CREATE TABLE `contact_contactpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_contactpageseo`
--

INSERT INTO `contact_contactpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Contact Us', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `contact_subscriber`
--

CREATE TABLE `contact_subscriber` (
  `id` bigint(20) NOT NULL,
  `email` varchar(254) NOT NULL,
  `created_at` date NOT NULL,
  `time` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_subscriberformtitle`
--

CREATE TABLE `contact_subscriberformtitle` (
  `id` bigint(20) NOT NULL,
  `top_title` varchar(100) DEFAULT NULL,
  `middle_title` varchar(100) DEFAULT NULL,
  `bottom_title` varchar(100) DEFAULT NULL,
  `email_field_placeholder` varchar(100) DEFAULT NULL,
  `submit_button_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_subscriberformtitle`
--

INSERT INTO `contact_subscriberformtitle` (`id`, `top_title`, `middle_title`, `bottom_title`, `email_field_placeholder`, `submit_button_text`) VALUES
(1, 'Get In Touch', 'Subscribe Our', 'Newsletter', 'Enter your email', 'Subscribe');

-- --------------------------------------------------------

--
-- Table structure for table `custompage_custompage`
--

CREATE TABLE `custompage_custompage` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(26, 'about', 'aboutpage'),
(27, 'about', 'aboutpageseo'),
(28, 'about', 'teamsection'),
(7, 'accounts', 'passwordresettoken'),
(6, 'accounts', 'user'),
(8, 'accounts', 'userprofile'),
(1, 'admin', 'logentry'),
(50, 'analytics', 'visitor'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(31, 'blog', 'blogcategory'),
(32, 'blog', 'blogpageseo'),
(33, 'blog', 'blogs'),
(34, 'contact', 'contact'),
(37, 'contact', 'contactformtitle'),
(35, 'contact', 'contactpageseo'),
(36, 'contact', 'subscriber'),
(38, 'contact', 'subscriberformtitle'),
(4, 'contenttypes', 'contenttype'),
(49, 'custompage', 'custompage'),
(9, 'home', 'aboutsection'),
(18, 'home', 'blogsectiontitle'),
(10, 'home', 'clientsection'),
(19, 'home', 'clientsectiontitle'),
(11, 'home', 'funfactsection'),
(20, 'home', 'funfactsectiontitle'),
(12, 'home', 'homepageseo'),
(21, 'home', 'pricingsectiontitle'),
(13, 'home', 'projectcategory'),
(17, 'home', 'projectsection'),
(22, 'home', 'projectsectiontitle'),
(14, 'home', 'servicesection'),
(25, 'home', 'servicesectiontitle'),
(15, 'home', 'slidersection'),
(23, 'home', 'teamsectiontitle'),
(24, 'home', 'testimonialsectiontitle'),
(16, 'home', 'testimonialssection'),
(45, 'legal', 'policy'),
(46, 'legal', 'terms'),
(47, 'menus', 'primarymenu'),
(48, 'menus', 'submenu'),
(29, 'pricing', 'pricingpageseo'),
(30, 'pricing', 'pricingsection'),
(40, 'project', 'projectpageseo'),
(39, 'service', 'servicepageseo'),
(5, 'sessions', 'session'),
(41, 'settings', 'headerfootersetting'),
(42, 'settings', 'seosetting'),
(43, 'settings', 'templatesettings'),
(44, 'settings', 'websitesetting');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'about', '0001_initial', '2025-06-23 07:09:55.394759'),
(2, 'contenttypes', '0001_initial', '2025-06-23 07:09:55.513938'),
(3, 'contenttypes', '0002_remove_content_type_name', '2025-06-23 07:09:55.678628'),
(4, 'auth', '0001_initial', '2025-06-23 07:09:56.266750'),
(5, 'auth', '0002_alter_permission_name_max_length', '2025-06-23 07:09:56.372048'),
(6, 'auth', '0003_alter_user_email_max_length', '2025-06-23 07:09:56.380587'),
(7, 'auth', '0004_alter_user_username_opts', '2025-06-23 07:09:56.387592'),
(8, 'auth', '0005_alter_user_last_login_null', '2025-06-23 07:09:56.395607'),
(9, 'auth', '0006_require_contenttypes_0002', '2025-06-23 07:09:56.402249'),
(10, 'auth', '0007_alter_validators_add_error_messages', '2025-06-23 07:09:56.409993'),
(11, 'auth', '0008_alter_user_username_max_length', '2025-06-23 07:09:56.417728'),
(12, 'auth', '0009_alter_user_last_name_max_length', '2025-06-23 07:09:56.424763'),
(13, 'auth', '0010_alter_group_name_max_length', '2025-06-23 07:09:56.494564'),
(14, 'auth', '0011_update_proxy_permissions', '2025-06-23 07:09:56.504563'),
(15, 'auth', '0012_alter_user_first_name_max_length', '2025-06-23 07:09:56.511672'),
(16, 'accounts', '0001_initial', '2025-06-23 07:09:56.878783'),
(17, 'accounts', '0002_alter_userprofile_user', '2025-06-23 07:09:56.884798'),
(18, 'admin', '0001_initial', '2025-06-23 07:09:56.946498'),
(19, 'admin', '0002_logentry_remove_auto_add', '2025-06-23 07:09:56.952085'),
(20, 'admin', '0003_logentry_add_action_flag_choices', '2025-06-23 07:09:56.957100'),
(21, 'analytics', '0001_initial', '2025-06-23 07:09:56.967634'),
(22, 'blog', '0001_initial', '2025-06-23 07:09:57.052352'),
(23, 'blog', '0002_alter_blogcategory_options', '2025-06-23 07:09:57.055858'),
(24, 'contact', '0001_initial', '2025-06-23 07:09:57.085364'),
(25, 'contact', '0002_contactformtitle', '2025-06-23 07:09:57.096459'),
(26, 'contact', '0003_contactformtitle_contact_form_title', '2025-06-23 07:09:57.112084'),
(27, 'contact', '0004_contactformtitle_email_title_and_more', '2025-06-23 07:09:57.220634'),
(28, 'contact', '0005_subscriberformtitle', '2025-06-23 07:09:57.231667'),
(29, 'custompage', '0001_initial', '2025-06-23 07:09:57.244259'),
(30, 'home', '0001_initial', '2025-06-23 07:09:57.397359'),
(31, 'home', '0002_blogsectiontitle_clientsectiontitle_and_more', '2025-06-23 07:09:57.461009'),
(32, 'home', '0003_servicesectiontitle', '2025-06-23 07:09:57.472138'),
(33, 'legal', '0001_initial', '2025-06-23 07:09:57.500012'),
(34, 'menus', '0001_initial', '2025-06-23 07:09:57.554519'),
(35, 'pricing', '0001_initial', '2025-06-23 07:09:57.574738'),
(36, 'project', '0001_initial', '2025-06-23 07:09:57.585642'),
(37, 'service', '0001_initial', '2025-06-23 07:09:57.596295'),
(38, 'sessions', '0001_initial', '2025-06-23 07:09:57.623040'),
(39, 'settings', '0001_initial', '2025-06-23 07:09:57.676696'),
(40, 'settings', '0002_websitesetting_address_title_and_more', '2025-06-23 07:09:57.724454'),
(41, 'settings', '0003_remove_websitesetting_address_title_and_more', '2025-06-23 07:09:57.777789'),
(42, 'settings', '0004_websitesetting_primary_color_and_more', '2025-06-23 07:09:57.837191'),
(43, 'settings', '0005_alter_websitesetting_primary_color_and_more', '2025-06-23 07:09:57.843219'),
(44, 'settings', '0006_alter_websitesetting_custom_css_and_more', '2025-06-23 07:09:57.851754'),
(45, 'settings', '0007_alter_websitesetting_custom_css_and_more', '2025-06-23 07:09:57.859267'),
(46, 'settings', '0008_headerfootersetting_footer_contact_title_and_more', '2025-06-23 16:57:55.236708'),
(47, 'settings', '0009_alter_websitesetting_secondary_color', '2025-06-23 17:09:08.539556');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8249fkv8a0944lwkojlupiaqfoltep0t', '.eJxVjEEOwiAQRe_C2pAyCAWX7nuGhhkGi5o2AerGeHfbpJtu33v_f8Un19w4ilsrK1_EGNY2jWvlMuYNCiVODAO9eN5FfIb5sUha5lYyyj2Rh61yWCK_70d7OphCnbZ1Mkxase6jc7bDCFdlETklDwqsiQQUWHe-N-CTd-AM9aA5EKJlBCt-f7UMPZw:1uTjvD:JWTHSsXcejYyxfQ7BiaOHmdmAuZpeEkd3BvxnzB7bU4', '2025-07-07 16:21:27.183447'),
('ldlb75h2lwwg9t6ze3amq1qxfjprhfix', '.eJxVjEEOwiAQRe_C2pAyCAWX7nuGhhkGi5o2AerGeHfbpJtu33v_f8Un19w4ilsrK1_EGNY2jWvlMuYNCiVODAO9eN5FfIb5sUha5lYyyj2Rh61yWCK_70d7OphCnbZ1Mkxase6jc7bDCFdlETklDwqsiQQUWHe-N-CTd-AM9aA5EKJlBCt-f7UMPZw:1uTlOl:gECyLQuSNi-jx5CJYlsgK1NvftQe1Oq4MUZfjOQQCNI', '2025-07-07 17:56:03.333227'),
('uwiyxd2275o6yvdnrrl1d8sdjeqnsc9y', '.eJxVjEEOwiAQRe_C2pAyCAWX7nuGhhkGi5o2AerGeHfbpJtu33v_f8Un19w4ilsrK1_EGNY2jWvlMuYNCiVODAO9eN5FfIb5sUha5lYyyj2Rh61yWCK_70d7OphCnbZ1Mkxase6jc7bDCFdlETklDwqsiQQUWHe-N-CTd-AM9aA5EKJlBCt-f7UMPZw:1uTbKZ:0cjNcyWbJAdGzPi2TtqtOPGsR5sFUWE58uhgK_79DVs', '2025-07-07 07:11:03.362398');

-- --------------------------------------------------------

--
-- Table structure for table `home_aboutsection`
--

CREATE TABLE `home_aboutsection` (
  `id` bigint(20) NOT NULL,
  `subtitle` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `short_description` varchar(200) DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `ranking_number` int(11) DEFAULT NULL,
  `tag_line` varchar(200) DEFAULT NULL,
  `experience` varchar(200) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `video_thumbnail` varchar(100) DEFAULT NULL,
  `video_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_aboutsection`
--

INSERT INTO `home_aboutsection` (`id`, `subtitle`, `title`, `short_description`, `long_description`, `ranking_number`, `tag_line`, `experience`, `image`, `video_thumbnail`, `video_url`) VALUES
(1, 'Get To Know', 'About Us', 'We Do Design, Code & Develop Software Finally Launch.', 'Integer purus odio, placerat nec rhoncus in, ullamcorper nec dolor. Class onlin aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos only himenaeos. Praesent nec neque at dolor venenatis consectetur eu quis ex. the Donec lacinia placerat felis non aliquam.', 1, 'Best Creative IT Agency And Solutions', 'Since 2005.', 'AboutSection/about-baner-1.jpg', 'AboutSection/about-baner-2.jpg', 'https://www.youtube.com/watch?v=lQjtQmnxw3o');

-- --------------------------------------------------------

--
-- Table structure for table `home_blogsectiontitle`
--

CREATE TABLE `home_blogsectiontitle` (
  `id` bigint(20) NOT NULL,
  `title_small` varchar(200) DEFAULT NULL,
  `title_big` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_blogsectiontitle`
--

INSERT INTO `home_blogsectiontitle` (`id`, `title_small`, `title_big`) VALUES
(1, 'All Blog', 'Latest Post');

-- --------------------------------------------------------

--
-- Table structure for table `home_clientsection`
--

CREATE TABLE `home_clientsection` (
  `id` bigint(20) NOT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_clientsection`
--

INSERT INTO `home_clientsection` (`id`, `client_name`, `image`) VALUES
(1, 'Client 01', 'Clients/partner-1.png'),
(2, 'Client 02', 'Clients/partner-2.png'),
(3, 'Client 03', 'Clients/partner-3.png'),
(4, 'Client 04', 'Clients/partner-4.png'),
(5, 'Client 05', 'Clients/partner-5.png');

-- --------------------------------------------------------

--
-- Table structure for table `home_clientsectiontitle`
--

CREATE TABLE `home_clientsectiontitle` (
  `id` bigint(20) NOT NULL,
  `title_small` varchar(200) DEFAULT NULL,
  `title_big` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_clientsectiontitle`
--

INSERT INTO `home_clientsectiontitle` (`id`, `title_small`, `title_big`) VALUES
(1, 'Satisfied Client', 'Our Partner');

-- --------------------------------------------------------

--
-- Table structure for table `home_funfactsection`
--

CREATE TABLE `home_funfactsection` (
  `id` bigint(20) NOT NULL,
  `fontawesome_icon_class` varchar(200) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `count_after` varchar(20) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_funfactsection`
--

INSERT INTO `home_funfactsection` (`id`, `fontawesome_icon_class`, `count`, `count_after`, `title`) VALUES
(1, 'far fa-handshake', 150, '+', 'Project Completed'),
(2, 'fas fa-smile', 229, '+', 'Satisfied Clients'),
(3, 'fas fa-users', 99, '+', 'Expert Teams'),
(4, 'fas fa-award', 4, '+', 'Win Awards');

-- --------------------------------------------------------

--
-- Table structure for table `home_funfactsectiontitle`
--

CREATE TABLE `home_funfactsectiontitle` (
  `id` bigint(20) NOT NULL,
  `title_small` varchar(100) DEFAULT NULL,
  `title_big` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_funfactsectiontitle`
--

INSERT INTO `home_funfactsectiontitle` (`id`, `title_small`, `title_big`) VALUES
(1, 'Care Study', 'Fun Facts');

-- --------------------------------------------------------

--
-- Table structure for table `home_homepageseo`
--

CREATE TABLE `home_homepageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_homepageseo`
--

INSERT INTO `home_homepageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'The CodeGrammer', 'Best Web & Application Developer');

-- --------------------------------------------------------

--
-- Table structure for table `home_pricingsectiontitle`
--

CREATE TABLE `home_pricingsectiontitle` (
  `id` bigint(20) NOT NULL,
  `title_small` varchar(200) DEFAULT NULL,
  `title_big` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_pricingsectiontitle`
--

INSERT INTO `home_pricingsectiontitle` (`id`, `title_small`, `title_big`) VALUES
(1, 'Getting Start', 'Pricing Plan');

-- --------------------------------------------------------

--
-- Table structure for table `home_projectcategory`
--

CREATE TABLE `home_projectcategory` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_projectcategory`
--

INSERT INTO `home_projectcategory` (`id`, `name`, `slug`) VALUES
(1, 'Software', 'software'),
(2, 'UI/UX', 'uiux'),
(3, 'Web Design', 'web-design'),
(4, 'Developing', 'developing'),
(5, 'Graphic Design', 'graphic-design');

-- --------------------------------------------------------

--
-- Table structure for table `home_projectsection`
--

CREATE TABLE `home_projectsection` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `client` varchar(200) DEFAULT NULL,
  `company` varchar(200) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_projectsection`
--

INSERT INTO `home_projectsection` (`id`, `image`, `title`, `slug`, `description`, `client`, `company`, `duration`, `category_id`) VALUES
(1, 'Projects/project-1_civ0oLG.jpg', 'Desktop Mockup', 'desktop-mockup', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 2),
(2, 'Projects/project-2.jpg', 'Creative Agency', 'creative-agency', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 3),
(3, 'Projects/project-3.jpg', 'Mobile Crypto Wallet', 'mobile-crypto-wallet', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 1),
(4, 'Projects/project-4.jpg', 'E-Shop Ecommerce', 'e-shop-ecommerce', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 4),
(5, 'Projects/project-5.jpg', 'Art Deco Cocktails', 'art-deco-cocktails', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 2),
(6, 'Projects/project-6.jpg', 'Low Poly Base Mesh', 'low-poly-base-mesh', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. <strong>Etiam eu nibh elementum, accumsan ona neque ac, </strong>aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nl purus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedan pellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il ut,</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque, vestibulum ultricies tellus. volv</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac, dictum eu tortor. Nulla faucibus leoren rhoncus, gravida ligula a, ultrices enim. Proin lacinia malesuada finibus.</p>', 'Argova Josen', 'Egens Theme', '5 Days', 5);

-- --------------------------------------------------------

--
-- Table structure for table `home_projectsectiontitle`
--

CREATE TABLE `home_projectsectiontitle` (
  `id` bigint(20) NOT NULL,
  `title_small` varchar(200) DEFAULT NULL,
  `title_big` varchar(300) DEFAULT NULL,
  `all_work_text` varchar(200) DEFAULT NULL,
  `view_button_text` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_projectsectiontitle`
--

INSERT INTO `home_projectsectiontitle` (`id`, `title_small`, `title_big`, `all_work_text`, `view_button_text`) VALUES
(1, 'Most Popular', 'Projects', 'All Work', 'View Details');

-- --------------------------------------------------------

--
-- Table structure for table `home_servicesection`
--

CREATE TABLE `home_servicesection` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `slug` varchar(50) DEFAULT NULL,
  `short_description` varchar(500) DEFAULT NULL,
  `fontawesome_icon_class` varchar(100) DEFAULT NULL,
  `detail_page_image` varchar(100) DEFAULT NULL,
  `detail_page_description` longtext DEFAULT NULL,
  `show_call_now_widget` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_servicesection`
--

INSERT INTO `home_servicesection` (`id`, `name`, `slug`, `short_description`, `fontawesome_icon_class`, `detail_page_image`, `detail_page_description`, `show_call_now_widget`) VALUES
(1, 'Web Design', 'web-design', 'Integer purus odio, placerat nec rhoncu in, ullamcorper nec dolor.', 'fas fa-laptop-code', 'Services/blog-thumnail.jpg', '<p><strong>Interdum et malesuada fames</strong> ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nlpurus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedanpellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il<br />\r\n<br />\r\nut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque,<br />\r\n<br />\r\nvestibulum ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac,</p>', 0),
(2, 'UI/UX Design', 'uiux-design', 'Integer purus odio, placerat nec rhoncu in, ullamcorper nec dolor.', 'far fa-object-group', '', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nlpurus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedanpellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il<br />\r\n<br />\r\nut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque,<br />\r\n<br />\r\nvestibulum ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac,</p>', 1),
(3, 'Software Development', 'software-development', 'Integer purus odio, placerat nec rhoncu in, ullamcorper nec dolor.', 'fab fa-android', '', '<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam eu nibh elementum, accumsan ona neque ac, aliquet nunc. In eu ipsum fringilla, accumsan purus vel, pellentesque risus. Vivamus vehicula nlpurus at eros interdum, in dignissim nulla vestibulum. Nunc sit amet finibus felis, ut egestas lacus. Sedanpellentesque quis magna eu vestibulum. Ut sed commodo neque. Morbi erat nisi, vehicula quis faucibus il<br />\r\n<br />\r\nut, hendrerit vel tortor. In pharetra lectus luctus ornare sollicitudin. Pellentesque at neque nec justo sokal porttitor egestas nec eget ex.Etiam suscipit neque elit, hendrerit laoreet quam ultrices id. Proin nec tolde lacinia ligula, sed laoreet ex. Sed nisl ligula, euismod vel justo scelerisque,<br />\r\n<br />\r\nvestibulum ultricies tellus. volv Pellentesque vel turpis vitae urna tincidunt hendrerit at ut est. Sed eget feugiat felis. Integer sed ornare sem, eget porttitor nisi. Nunc erat sapien, porta laoreet gravida ac,</p>', 0);

-- --------------------------------------------------------

--
-- Table structure for table `home_servicesectiontitle`
--

CREATE TABLE `home_servicesectiontitle` (
  `id` bigint(20) NOT NULL,
  `title_small` varchar(100) DEFAULT NULL,
  `title_big` varchar(100) DEFAULT NULL,
  `service_card_more_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_servicesectiontitle`
--

INSERT INTO `home_servicesectiontitle` (`id`, `title_small`, `title_big`, `service_card_more_text`) VALUES
(1, 'Our Solutions', 'Services', 'Read More');

-- --------------------------------------------------------

--
-- Table structure for table `home_slidersection`
--

CREATE TABLE `home_slidersection` (
  `id` bigint(20) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `subtitle` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `button1_text` varchar(100) DEFAULT NULL,
  `button1_url` varchar(500) DEFAULT NULL,
  `button2_text` varchar(100) DEFAULT NULL,
  `button2_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_slidersection`
--

INSERT INTO `home_slidersection` (`id`, `image`, `title`, `subtitle`, `description`, `button1_text`, `button1_url`, `button2_text`, `button2_url`) VALUES
(1, 'Home/hero-vector_ccGHtRB.png', 'Creative & Minimal', 'IT Agency.', 'Curabitur sed facilisis erat. Vestibulum pharetra eros eget fringilla porttitor. ol Duis a orci nunc. Suspendisse ac convallis sapien, quis commodo libero. Donec nec dui luctus, pellentesque lacus sed, mollis leo.', 'Pricing', 'pricing/', 'Projects', 'projects/'),
(2, 'Home/about-baner-1_MwbBiss_A4fDM8W.jpg', 'Best & Reliable', 'Creative IT.', 'Curabitur sed facilisis erat. Vestibulum pharetra eros eget fringilla porttitor. ol Duis a orci nunc. Suspendisse ac convallis sapien, quis commodo libero. Donec nec dui luctus, pellentesque lacus sed, mollis leo.', 'Contact us', 'contact-us/', 'Projects', 'projects/');

-- --------------------------------------------------------

--
-- Table structure for table `home_teamsectiontitle`
--

CREATE TABLE `home_teamsectiontitle` (
  `id` bigint(20) NOT NULL,
  `title_small` varchar(200) DEFAULT NULL,
  `title_big` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_teamsectiontitle`
--

INSERT INTO `home_teamsectiontitle` (`id`, `title_small`, `title_big`) VALUES
(1, 'Our Team', 'Meet Our Team');

-- --------------------------------------------------------

--
-- Table structure for table `home_testimonialsectiontitle`
--

CREATE TABLE `home_testimonialsectiontitle` (
  `id` bigint(20) NOT NULL,
  `title_small` varchar(200) DEFAULT NULL,
  `title_big` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_testimonialsectiontitle`
--

INSERT INTO `home_testimonialsectiontitle` (`id`, `title_small`, `title_big`) VALUES
(1, 'Testimonial', 'Client Say About Us');

-- --------------------------------------------------------

--
-- Table structure for table `home_testimonialssection`
--

CREATE TABLE `home_testimonialssection` (
  `id` bigint(20) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `star` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `home_testimonialssection`
--

INSERT INTO `home_testimonialssection` (`id`, `name`, `position`, `description`, `image`, `star`) VALUES
(1, 'Martha Maldonado', 'Executive Chairman', 'Integer purus odio, placerat nec rhoncus in, ullamcorper nec dolor. ani aptent taciti sociosqu ad litora torquent per conubia nostra, per sonic himenaeos. Praesent nec neque at dolor venenatis consectetur europ Donec lacinia placerat felis non aliquam.', 'Testimonials/reivewer.jpg', 5),
(2, 'Kelly Smith', 'CEO', 'Integer purus odio, placerat nec rhoncus in, ullamcorper nec dolor. ani aptent taciti sociosqu ad litora torquent per conubia nostra, per sonic himenaeos. Praesent nec neque at dolor venenatis consectetur europ Donec lacinia placerat felis non aliquam.', 'Testimonials/reivewer-1.jpg', 5);

-- --------------------------------------------------------

--
-- Table structure for table `legal_policy`
--

CREATE TABLE `legal_policy` (
  `id` bigint(20) NOT NULL,
  `policy_texts` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `legal_policy`
--

INSERT INTO `legal_policy` (`id`, `policy_texts`) VALUES
(1, '<h1><strong>Privacy Policy for The CodeGrammer</strong></h1>\r\n\r\n<p>At The CodeGrammer, accessible from https://tcgagency.thecodegrammer.com, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by The CodeGrammer and how we use it.</p>\r\n\r\n<p>If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p>\r\n\r\n<p>This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in The CodeGrammer. This policy is not applicable to any information collected offline or via channels other than this website.</p>\r\n\r\n<h2><strong>Consent</strong></h2>\r\n\r\n<p>By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p>\r\n\r\n<h2><strong>Information we collect</strong></h2>\r\n\r\n<p>The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p>\r\n\r\n<p>If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p>\r\n\r\n<p>When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p>\r\n\r\n<h2>How we use your information</h2>\r\n\r\n<p>We use the information we collect in various ways, including to:</p>\r\n\r\n<ul>\r\n	<li>Provide, operate, and maintain our website</li>\r\n	<li>Improve, personalize, and expand our website</li>\r\n	<li>Understand and analyze how you use our website</li>\r\n	<li>Develop new products, services, features, and functionality</li>\r\n	<li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li>\r\n	<li>Send you emails</li>\r\n	<li>Find and prevent fraud</li>\r\n</ul>\r\n\r\n<h2><strong>Log Files</strong></h2>\r\n\r\n<p>The CodeGrammer follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services&#39; analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users&#39; movement on the website, and gathering demographic information.</p>\r\n\r\n<h2><strong>Cookies and Web Beacons</strong></h2>\r\n\r\n<p>Like any other website, The CodeGrammer uses &quot;cookies&quot;. These cookies are used to store information including visitors&#39; preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users&#39; experience by customizing our web page content based on visitors&#39; browser type and/or other information.</p>\r\n\r\n<h2><strong>Advertising Partners Privacy Policies</strong></h2>\r\n\r\n<p>You may consult this list to find the Privacy Policy for each of the advertising partners of The CodeGrammer.</p>\r\n\r\n<p>Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on The CodeGrammer, which are sent directly to users&#39; browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p>\r\n\r\n<p>Note that The CodeGrammer has no access to or control over these cookies that are used by third-party advertisers.</p>\r\n\r\n<h2><strong>Third Party Privacy Policies</strong></h2>\r\n\r\n<p>The CodeGrammer&#39;s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p>\r\n\r\n<p>You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers&#39; respective websites.</p>\r\n\r\n<h2><strong>CCPA Privacy Rights (Do Not Sell My Personal Information)</strong></h2>\r\n\r\n<p>Under the CCPA, among other rights, California consumers have the right to:</p>\r\n\r\n<p>Request that a business that collects a consumer&#39;s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p>\r\n\r\n<p>Request that a business delete any personal data about the consumer that a business has collected.</p>\r\n\r\n<p>Request that a business that sells a consumer&#39;s personal data, not sell the consumer&#39;s personal data.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2><strong>GDPR Data Protection Rights</strong></h2>\r\n\r\n<p>We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p>\r\n\r\n<p>The right to access &ndash; You have the right to request copies of your personal data. We may charge you a small fee for this service.</p>\r\n\r\n<p>The right to rectification &ndash; You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p>\r\n\r\n<p>The right to erasure &ndash; You have the right to request that we erase your personal data, under certain conditions.</p>\r\n\r\n<p>The right to restrict processing &ndash; You have the right to request that we restrict the processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to object to processing &ndash; You have the right to object to our processing of your personal data, under certain conditions.</p>\r\n\r\n<p>The right to data portability &ndash; You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p>\r\n\r\n<p>If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p>\r\n\r\n<h2><strong>Children&#39;s Information</strong></h2>\r\n\r\n<p>Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p>\r\n\r\n<p>The CodeGrammer does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>\r\n\r\n<h2><strong>Changes to This Privacy Policy</strong></h2>\r\n\r\n<p>We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page.</p>\r\n\r\n<h2><strong>Contact Us</strong></h2>\r\n\r\n<p>If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `legal_terms`
--

CREATE TABLE `legal_terms` (
  `id` bigint(20) NOT NULL,
  `term_texts` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `legal_terms`
--

INSERT INTO `legal_terms` (`id`, `term_texts`) VALUES
(1, '<h2><strong>Terms and Conditions</strong></h2>\r\n\r\n<p>Welcome to The CodeGrammer!</p>\r\n\r\n<p>These terms and conditions outline the rules and regulations for the use of The CodeGrammer&#39;s Website, located at https://tcgagency.thecodegrammer.com.</p>\r\n\r\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use The CodeGrammer if you do not agree to take all of the terms and conditions stated on this page.</p>\r\n\r\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &quot;Client&quot;, &quot;You&quot; and &quot;Your&quot; refers to you, the person log on this website and compliant to the Company&#39;s terms and conditions. &quot;The Company&quot;, &quot;Ourselves&quot;, &quot;We&quot;, &quot;Our&quot; and &quot;Us&quot;, refers to our Company. &quot;Party&quot;, &quot;Parties&quot;, or &quot;Us&quot;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&#39;s needs in respect of provision of the Company&#39;s stated services, in accordance with and subject to, prevailing law of bd. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\r\n\r\n<h3><strong>Cookies</strong></h3>\r\n\r\n<p>We employ the use of cookies. By accessing The CodeGrammer, you agreed to use cookies in agreement with the The CodeGrammer&#39;s Privacy Policy.</p>\r\n\r\n<p>Most interactive websites use cookies to let us retrieve the user&#39;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\r\n\r\n<h3><strong>License</strong></h3>\r\n\r\n<p>Unless otherwise stated, The CodeGrammer and/or its licensors own the intellectual property rights for all material on The CodeGrammer. All intellectual property rights are reserved. You may access this from The CodeGrammer for your own personal use subjected to restrictions set in these terms and conditions.</p>\r\n\r\n<p>You must not:</p>\r\n\r\n<ul>\r\n	<li>Republish material from The CodeGrammer</li>\r\n	<li>Sell, rent or sub-license material from The CodeGrammer</li>\r\n	<li>Reproduce, duplicate or copy material from The CodeGrammer</li>\r\n	<li>Redistribute content from The CodeGrammer</li>\r\n</ul>\r\n\r\n<p>This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the&nbsp;<a href=\"https://www.termsandconditionsgenerator.com/\">Free Terms and Conditions Generator</a>.</p>\r\n\r\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. The CodeGrammer does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of The CodeGrammer,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, The CodeGrammer shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\r\n\r\n<p>The CodeGrammer reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\r\n\r\n<p>You warrant and represent that:</p>\r\n\r\n<ul>\r\n	<li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\r\n	<li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\r\n	<li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\r\n	<li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\r\n</ul>\r\n\r\n<p>You hereby grant The CodeGrammer a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\r\n\r\n<h3><strong>Hyperlinking to our Content</strong></h3>\r\n\r\n<p>The following organizations may link to our Website without prior written approval:</p>\r\n\r\n<ul>\r\n	<li>Government agencies;</li>\r\n	<li>Search engines;</li>\r\n	<li>News organizations;</li>\r\n	<li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\r\n	<li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\r\n</ul>\r\n\r\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&#39;s site.</p>\r\n\r\n<p>We may consider and approve other link requests from the following types of organizations:</p>\r\n\r\n<ul>\r\n	<li>commonly-known consumer and/or business information sources;</li>\r\n	<li>dot.com community sites;</li>\r\n	<li>associations or other groups representing charities;</li>\r\n	<li>online directory distributors;</li>\r\n	<li>internet portals;</li>\r\n	<li>accounting, law and consulting firms; and</li>\r\n	<li>educational institutions and trade associations.</li>\r\n</ul>\r\n\r\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of The CodeGrammer; and (d) the link is in the context of general resource information.</p>\r\n\r\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&#39;s site.</p>\r\n\r\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to The CodeGrammer. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\r\n\r\n<p>Approved organizations may hyperlink to our Website as follows:</p>\r\n\r\n<ul>\r\n	<li>By use of our corporate name; or</li>\r\n	<li>By use of the uniform resource locator being linked to; or</li>\r\n	<li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&#39;s site.</li>\r\n</ul>\r\n\r\n<p>No use of The CodeGrammer&#39;s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\r\n\r\n<h3><strong>iFrames</strong></h3>\r\n\r\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\r\n\r\n<h3><strong>Content Liability</strong></h3>\r\n\r\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\r\n\r\n<h3><strong>Reservation of Rights</strong></h3>\r\n\r\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&#39;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\r\n\r\n<h3><strong>Removal of links from our website</strong></h3>\r\n\r\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\r\n\r\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\r\n\r\n<h3><strong>Disclaimer</strong></h3>\r\n\r\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\r\n\r\n<ul>\r\n	<li>limit or exclude our or your liability for death or personal injury;</li>\r\n	<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\r\n	<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\r\n	<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\r\n</ul>\r\n\r\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\r\n\r\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `menus_primarymenu`
--

CREATE TABLE `menus_primarymenu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus_submenu`
--

CREATE TABLE `menus_submenu` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` varchar(100) DEFAULT NULL,
  `parent_menu_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricing_pricingpageseo`
--

CREATE TABLE `pricing_pricingpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing_pricingpageseo`
--

INSERT INTO `pricing_pricingpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Pricings', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_pricingsection`
--

CREATE TABLE `pricing_pricingsection` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `subtitle` varchar(100) DEFAULT NULL,
  `price` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `button_text` varchar(300) DEFAULT NULL,
  `button_url` varchar(1000) DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL,
  `featured_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pricing_pricingsection`
--

INSERT INTO `pricing_pricingsection` (`id`, `title`, `subtitle`, `price`, `description`, `button_text`, `button_url`, `is_featured`, `featured_text`) VALUES
(1, 'Professional', 'Small team', '99.99', '<ul>\r\n	<li>10 Pages Responsive Website</li>\r\n	<li>5PPC Campaigns</li>\r\n	<li>10 SEO Keyword</li>\r\n	<li>5 Facebook Camplaigns</li>\r\n	<li>2 Video Camplaigns</li>\r\n</ul>', 'PAY NOW', 'https://app.thecodegrammer.com', 0, NULL),
(2, 'Small Business', 'Single Business', '15.99', '<ul>\r\n	<li>5&nbsp;Pages Responsive Website</li>\r\n	<li>5 PPC Campaigns</li>\r\n	<li>10 SEO Keywords</li>\r\n	<li>5 Facebook Campaigns</li>\r\n	<li>2 Video Campaigns</li>\r\n</ul>', 'PAY NOW', 'https://app.thecodegrammer.com', 1, 'Popular'),
(3, 'Enterprice', 'Large Team', '120.99', '<ul>\r\n	<li>10 Pages Responsive Website</li>\r\n	<li>5PPC Campaigns</li>\r\n	<li>10 SEO Keyword</li>\r\n	<li>5 Facebook Camplaigns</li>\r\n	<li>2 Video Camplaigns</li>\r\n</ul>', 'PAY NOW', 'https://app.thecodegrammer.com', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_projectpageseo`
--

CREATE TABLE `project_projectpageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project_projectpageseo`
--

INSERT INTO `project_projectpageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Projects', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `service_servicepageseo`
--

CREATE TABLE `service_servicepageseo` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_servicepageseo`
--

INSERT INTO `service_servicepageseo` (`id`, `meta_title`, `meta_description`) VALUES
(1, 'Services', 'The CodeGrammer');

-- --------------------------------------------------------

--
-- Table structure for table `settings_headerfootersetting`
--

CREATE TABLE `settings_headerfootersetting` (
  `id` bigint(20) NOT NULL,
  `header_button_text` varchar(200) DEFAULT NULL,
  `header_button_url` varchar(1000) DEFAULT NULL,
  `footer_col1_description` longtext DEFAULT NULL,
  `social1_icon` varchar(200) DEFAULT NULL,
  `social1_link` varchar(1000) DEFAULT NULL,
  `social2_icon` varchar(200) DEFAULT NULL,
  `social2_link` varchar(1000) DEFAULT NULL,
  `social3_icon` varchar(200) DEFAULT NULL,
  `social3_link` varchar(1000) DEFAULT NULL,
  `social4_icon` varchar(200) DEFAULT NULL,
  `social4_link` varchar(1000) DEFAULT NULL,
  `footer_copyright` varchar(500) DEFAULT NULL,
  `footer_contact_title` varchar(200) DEFAULT NULL,
  `footer_project_title` varchar(200) DEFAULT NULL,
  `footer_service_title` varchar(200) DEFAULT NULL,
  `privacy_policy_title` varchar(200) DEFAULT NULL,
  `terms_and_conditions_title` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings_headerfootersetting`
--

INSERT INTO `settings_headerfootersetting` (`id`, `header_button_text`, `header_button_url`, `footer_col1_description`, `social1_icon`, `social1_link`, `social2_icon`, `social2_link`, `social3_icon`, `social3_link`, `social4_icon`, `social4_link`, `footer_copyright`, `footer_contact_title`, `footer_project_title`, `footer_service_title`, `privacy_policy_title`, `terms_and_conditions_title`) VALUES
(1, 'Start Project', '/contact-us', 'Integer purus odio, placerat nec ande rhoncus in, ullamcorper nec dolor. on aptent taciti sociosqu.', 'fab fa-facebook-f', 'https://facebook.com', 'fab fa-instagram', 'https://instagram.com', 'fab fa-linkedin-in', 'https://linkedin.com', 'fab fa-youtube', 'https://youtube.com/thecodegrammer', '© 2021. All rights reserved by <b>The CodeGrammer</b>', 'Contacts', 'Recent Projects', 'Our Services', 'Privacy Policy', 'Terms & Conditions');

-- --------------------------------------------------------

--
-- Table structure for table `settings_seosetting`
--

CREATE TABLE `settings_seosetting` (
  `id` bigint(20) NOT NULL,
  `meta_title` varchar(500) DEFAULT NULL,
  `tag_line` varchar(600) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL,
  `seo_keywords` longtext DEFAULT NULL,
  `meta_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings_seosetting`
--

INSERT INTO `settings_seosetting` (`id`, `meta_title`, `tag_line`, `meta_description`, `seo_keywords`, `meta_image`) VALUES
(1, 'The CodeGrammer', 'Best Web & Application Developer in Bangladesh', 'The CodeGrammer, as a web and mobile application development company, plays a significant role in the ever-expanding field of web technology in Bangladesh. They specialize in crafting web applications using Python Django, which is a high-level Python web framework known for its efficiency, scalability, and robustness.', 'software,application,marketer,developer', 'app_config/Agency.png');

-- --------------------------------------------------------

--
-- Table structure for table `settings_templatesettings`
--

CREATE TABLE `settings_templatesettings` (
  `id` bigint(20) NOT NULL,
  `template1` tinyint(1) NOT NULL,
  `template2` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings_templatesettings`
--

INSERT INTO `settings_templatesettings` (`id`, `template1`, `template2`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings_websitesetting`
--

CREATE TABLE `settings_websitesetting` (
  `id` bigint(20) NOT NULL,
  `name` varchar(500) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(150) DEFAULT NULL,
  `show_call_now_widget` tinyint(1) NOT NULL,
  `logo_light` varchar(100) DEFAULT NULL,
  `logo_dark` varchar(100) DEFAULT NULL,
  `favicon` varchar(100) DEFAULT NULL,
  `email_address` varchar(500) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `price_ragne` varchar(50) DEFAULT NULL,
  `address` varchar(700) DEFAULT NULL,
  `city` varchar(200) DEFAULT NULL,
  `country` varchar(300) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `postal` int(11) DEFAULT NULL,
  `map_iframe` longtext DEFAULT NULL,
  `contact_form_image` varchar(100) DEFAULT NULL,
  `analytics_code` varchar(300) DEFAULT NULL,
  `facebook_pixel_code` longtext DEFAULT NULL,
  `facebook_chat_code` longtext DEFAULT NULL,
  `whatsapp_is_active` tinyint(1) NOT NULL,
  `facebook_chat_is_active` tinyint(1) NOT NULL,
  `slider_particle_is_active` tinyint(1) NOT NULL,
  `default_menu_is_active` tinyint(1) NOT NULL,
  `magic_cursor_is_active` tinyint(1) NOT NULL,
  `custom_css` longtext DEFAULT NULL,
  `custom_js` longtext DEFAULT NULL,
  `twilio_sid` varchar(500) DEFAULT NULL,
  `twilio_auth_token` varchar(500) DEFAULT NULL,
  `twilio_from_number` varchar(15) DEFAULT NULL,
  `primary_color` varchar(100) DEFAULT NULL,
  `secondary_color` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings_websitesetting`
--

INSERT INTO `settings_websitesetting` (`id`, `name`, `author`, `currency_name`, `currency_symbol`, `show_call_now_widget`, `logo_light`, `logo_dark`, `favicon`, `email_address`, `phone`, `price_ragne`, `address`, `city`, `country`, `state`, `postal`, `map_iframe`, `contact_form_image`, `analytics_code`, `facebook_pixel_code`, `facebook_chat_code`, `whatsapp_is_active`, `facebook_chat_is_active`, `slider_particle_is_active`, `default_menu_is_active`, `magic_cursor_is_active`, `custom_css`, `custom_js`, `twilio_sid`, `twilio_auth_token`, `twilio_from_number`, `primary_color`, `secondary_color`) VALUES
(1, 'The CodeGrammer', 'The CodeGrammer', 'USD', '$', 1, 'app_config/logolight.png', 'app_config/logodark.png', 'app_config/facicon.png', 'test@gmail.com', '88012454784', '60$ to 7000$', 'Your Address', 'Your City', 'Your Country', 'Your State', 12345, '<iframe style=\"border: 0;\" src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3646.419641253625!2d90.38046731467298!3d23.94559668449348!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c52979f8b7a5%3A0x78089acff1ed789f!2sThe%20CodeGrammer!5e0!3m2!1sen!2sus!4v1674327029775!5m2!1sen!2sus\" allowfullscreen=\"\"></iframe>', 'app_config/call-center.png', 'GA_MEASUREMENT_ID', '<script></script>', '<script></script>', 1, 1, 1, 1, 1, '', '', NULL, NULL, NULL, '#75dab4', '#1a1a1a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_aboutpage`
--
ALTER TABLE `about_aboutpage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_aboutpageseo`
--
ALTER TABLE `about_aboutpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_teamsection`
--
ALTER TABLE `about_teamsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts_passwordresettoken`
--
ALTER TABLE `accounts_passwordresettoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`),
  ADD KEY `accounts_passwordresettoken_user_id_2789bc5c_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `accounts_user`
--
ALTER TABLE `accounts_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `accounts_userprofile_slug_98d71aba` (`slug`);

--
-- Indexes for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_groups_user_id_group_id_59c0b32f_uniq` (`user_id`,`group_id`),
  ADD KEY `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_user_user_permi_user_id_permission_id_2ab516c2_uniq` (`user_id`,`permission_id`),
  ADD KEY `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `analytics_visitor`
--
ALTER TABLE `analytics_visitor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `blog_blogcategory`
--
ALTER TABLE `blog_blogcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blogcategory_slug_7996de7a` (`slug`);

--
-- Indexes for table `blog_blogpageseo`
--
ALTER TABLE `blog_blogpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_blogs`
--
ALTER TABLE `blog_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_blogs_category_id_e3e6d3cc_fk_blog_blogcategory_id` (`category_id`),
  ADD KEY `blog_blogs_slug_64335c5e` (`slug`);

--
-- Indexes for table `contact_contact`
--
ALTER TABLE `contact_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_contactformtitle`
--
ALTER TABLE `contact_contactformtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_contactpageseo`
--
ALTER TABLE `contact_contactpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_subscriber`
--
ALTER TABLE `contact_subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_subscriberformtitle`
--
ALTER TABLE `contact_subscriberformtitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custompage_custompage`
--
ALTER TABLE `custompage_custompage`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `home_aboutsection`
--
ALTER TABLE `home_aboutsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_blogsectiontitle`
--
ALTER TABLE `home_blogsectiontitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_clientsection`
--
ALTER TABLE `home_clientsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_clientsectiontitle`
--
ALTER TABLE `home_clientsectiontitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_funfactsection`
--
ALTER TABLE `home_funfactsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_funfactsectiontitle`
--
ALTER TABLE `home_funfactsectiontitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_homepageseo`
--
ALTER TABLE `home_homepageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_pricingsectiontitle`
--
ALTER TABLE `home_pricingsectiontitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_projectcategory`
--
ALTER TABLE `home_projectcategory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_projectcategory_slug_49e96be8` (`slug`);

--
-- Indexes for table `home_projectsection`
--
ALTER TABLE `home_projectsection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_projectsection_category_id_917bf621_fk_home_proj` (`category_id`),
  ADD KEY `home_projectsection_slug_e7eaabbe` (`slug`);

--
-- Indexes for table `home_projectsectiontitle`
--
ALTER TABLE `home_projectsectiontitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_servicesection`
--
ALTER TABLE `home_servicesection`
  ADD PRIMARY KEY (`id`),
  ADD KEY `home_servicesection_slug_e5a4f9e3` (`slug`);

--
-- Indexes for table `home_servicesectiontitle`
--
ALTER TABLE `home_servicesectiontitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_slidersection`
--
ALTER TABLE `home_slidersection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_teamsectiontitle`
--
ALTER TABLE `home_teamsectiontitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_testimonialsectiontitle`
--
ALTER TABLE `home_testimonialsectiontitle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_testimonialssection`
--
ALTER TABLE `home_testimonialssection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal_policy`
--
ALTER TABLE `legal_policy`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `legal_terms`
--
ALTER TABLE `legal_terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_primarymenu`
--
ALTER TABLE `menus_primarymenu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_submenu`
--
ALTER TABLE `menus_submenu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_submenu_parent_menu_id_bab1ba0d_fk_menus_primarymenu_id` (`parent_menu_id`);

--
-- Indexes for table `pricing_pricingpageseo`
--
ALTER TABLE `pricing_pricingpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricing_pricingsection`
--
ALTER TABLE `pricing_pricingsection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_projectpageseo`
--
ALTER TABLE `project_projectpageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_servicepageseo`
--
ALTER TABLE `service_servicepageseo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_headerfootersetting`
--
ALTER TABLE `settings_headerfootersetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_seosetting`
--
ALTER TABLE `settings_seosetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_templatesettings`
--
ALTER TABLE `settings_templatesettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings_websitesetting`
--
ALTER TABLE `settings_websitesetting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_aboutpage`
--
ALTER TABLE `about_aboutpage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_aboutpageseo`
--
ALTER TABLE `about_aboutpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_teamsection`
--
ALTER TABLE `about_teamsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts_passwordresettoken`
--
ALTER TABLE `accounts_passwordresettoken`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_user`
--
ALTER TABLE `accounts_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `analytics_visitor`
--
ALTER TABLE `analytics_visitor`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `blog_blogcategory`
--
ALTER TABLE `blog_blogcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blog_blogpageseo`
--
ALTER TABLE `blog_blogpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog_blogs`
--
ALTER TABLE `blog_blogs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact_contact`
--
ALTER TABLE `contact_contact`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_contactformtitle`
--
ALTER TABLE `contact_contactformtitle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_contactpageseo`
--
ALTER TABLE `contact_contactpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_subscriber`
--
ALTER TABLE `contact_subscriber`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_subscriberformtitle`
--
ALTER TABLE `contact_subscriberformtitle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custompage_custompage`
--
ALTER TABLE `custompage_custompage`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `home_aboutsection`
--
ALTER TABLE `home_aboutsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_blogsectiontitle`
--
ALTER TABLE `home_blogsectiontitle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_clientsection`
--
ALTER TABLE `home_clientsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_clientsectiontitle`
--
ALTER TABLE `home_clientsectiontitle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_funfactsection`
--
ALTER TABLE `home_funfactsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `home_funfactsectiontitle`
--
ALTER TABLE `home_funfactsectiontitle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_homepageseo`
--
ALTER TABLE `home_homepageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_pricingsectiontitle`
--
ALTER TABLE `home_pricingsectiontitle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_projectcategory`
--
ALTER TABLE `home_projectcategory`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `home_projectsection`
--
ALTER TABLE `home_projectsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `home_projectsectiontitle`
--
ALTER TABLE `home_projectsectiontitle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_servicesection`
--
ALTER TABLE `home_servicesection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `home_servicesectiontitle`
--
ALTER TABLE `home_servicesectiontitle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_slidersection`
--
ALTER TABLE `home_slidersection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `home_teamsectiontitle`
--
ALTER TABLE `home_teamsectiontitle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_testimonialsectiontitle`
--
ALTER TABLE `home_testimonialsectiontitle`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home_testimonialssection`
--
ALTER TABLE `home_testimonialssection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `legal_policy`
--
ALTER TABLE `legal_policy`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `legal_terms`
--
ALTER TABLE `legal_terms`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menus_primarymenu`
--
ALTER TABLE `menus_primarymenu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus_submenu`
--
ALTER TABLE `menus_submenu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricing_pricingpageseo`
--
ALTER TABLE `pricing_pricingpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pricing_pricingsection`
--
ALTER TABLE `pricing_pricingsection`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_projectpageseo`
--
ALTER TABLE `project_projectpageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `service_servicepageseo`
--
ALTER TABLE `service_servicepageseo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_headerfootersetting`
--
ALTER TABLE `settings_headerfootersetting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_seosetting`
--
ALTER TABLE `settings_seosetting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_templatesettings`
--
ALTER TABLE `settings_templatesettings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings_websitesetting`
--
ALTER TABLE `settings_websitesetting`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_passwordresettoken`
--
ALTER TABLE `accounts_passwordresettoken`
  ADD CONSTRAINT `accounts_passwordresettoken_user_id_2789bc5c_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_userprofile`
--
ALTER TABLE `accounts_userprofile`
  ADD CONSTRAINT `accounts_userprofile_user_id_92240672_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_groups`
--
ALTER TABLE `accounts_user_groups`
  ADD CONSTRAINT `accounts_user_groups_group_id_bd11a704_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `accounts_user_groups_user_id_52b62117_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `accounts_user_user_permissions`
--
ALTER TABLE `accounts_user_user_permissions`
  ADD CONSTRAINT `accounts_user_user_p_permission_id_113bb443_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `accounts_user_user_p_user_id_e4f0a161_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `blog_blogs`
--
ALTER TABLE `blog_blogs`
  ADD CONSTRAINT `blog_blogs_category_id_e3e6d3cc_fk_blog_blogcategory_id` FOREIGN KEY (`category_id`) REFERENCES `blog_blogcategory` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_user_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_user` (`id`);

--
-- Constraints for table `home_projectsection`
--
ALTER TABLE `home_projectsection`
  ADD CONSTRAINT `home_projectsection_category_id_917bf621_fk_home_proj` FOREIGN KEY (`category_id`) REFERENCES `home_projectcategory` (`id`);

--
-- Constraints for table `menus_submenu`
--
ALTER TABLE `menus_submenu`
  ADD CONSTRAINT `menus_submenu_parent_menu_id_bab1ba0d_fk_menus_primarymenu_id` FOREIGN KEY (`parent_menu_id`) REFERENCES `menus_primarymenu` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
