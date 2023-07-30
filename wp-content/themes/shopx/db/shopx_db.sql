-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 01:39 PM
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
-- Database: `shopx_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-07-18 03:59:23', '2023-07-18 03:59:23', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp-shopx', 'yes'),
(2, 'home', 'http://localhost/wp-shopx', 'yes'),
(3, 'blogname', 'Premium Theme for Fashion Clothing', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'almasicareco@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:106:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:41:\"category_slider/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"category_slider/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"category_slider/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"category_slider/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"category_slider/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"category_slider/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"category_slider/(.+?)/embed/?$\";s:48:\"index.php?category_slider=$matches[1]&embed=true\";s:34:\"category_slider/(.+?)/trackback/?$\";s:42:\"index.php?category_slider=$matches[1]&tb=1\";s:42:\"category_slider/(.+?)/page/?([0-9]{1,})/?$\";s:55:\"index.php?category_slider=$matches[1]&paged=$matches[2]\";s:49:\"category_slider/(.+?)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?category_slider=$matches[1]&cpage=$matches[2]\";s:38:\"category_slider/(.+?)(?:/([0-9]+))?/?$\";s:54:\"index.php?category_slider=$matches[1]&page=$matches[2]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=105&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'shopx', 'yes'),
(41, 'stylesheet', 'shopx', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '105', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '42', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1705204763', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:15:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}i:8;a:1:{s:7:\"content\";s:90:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Stay Contacted.</h2>\n<!-- /wp:heading -->\";}i:9;a:1:{s:7:\"content\";s:48:\"[contact-form-7 id=\"51\" title=\"Email Subscribe\"]\";}i:10;a:1:{s:7:\"content\";s:96:\"<!-- wp:heading {\"level\":3} -->\n<h3 class=\"wp-block-heading\">Category.</h3>\n<!-- /wp:heading -->\";}i:11;a:1:{s:7:\"content\";s:1169:\"<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li><a href=\"http://almasthemes.com\" data-type=\"URL\" data-id=\"almasthemes.com\" target=\"_blank\" rel=\"noreferrer noopener\">Women Dress</a></li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><a href=\"http://almasthemes.com\" data-type=\"URL\" data-id=\"almasthemes.com\" target=\"_blank\" rel=\"noreferrer noopener\">Men Dress</a></li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><a href=\"http://almasthemes.com\" data-type=\"URL\" data-id=\"almasthemes.com\" target=\"_blank\" rel=\"noreferrer noopener\">Kids Dress</a></li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><a href=\"http://almasthemes.com\" data-type=\"URL\" data-id=\"almasthemes.com\" target=\"_blank\" rel=\"noreferrer noopener\">Women Fasion</a></li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><a href=\"http://almasthemes.com\" data-type=\"URL\" data-id=\"almasthemes.com\" target=\"_blank\" rel=\"noreferrer noopener\">Men Fashion</a></li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li><a href=\"http://almasthemes.com\" data-type=\"URL\" data-id=\"almasthemes.com\" target=\"_blank\" rel=\"noreferrer noopener\">Kids Fastion</a></li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\";}i:12;a:1:{s:7:\"content\";s:86:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Site Links.</h2>\n<!-- /wp:heading -->\";}i:13;a:1:{s:7:\"content\";s:393:\"<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Terms &amp; Conditions</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Privacy Policy</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Return &amp; Refund</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>24/7 Support</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Home</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\";}i:14;a:1:{s:7:\"content\";s:313:\"<!-- wp:list -->\n<ul><!-- wp:list-item -->\n<li>Credit Cards</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Paypal</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Cash on Delivery</li>\n<!-- /wp:list-item -->\n\n<!-- wp:list-item -->\n<li>Bank Transfer</li>\n<!-- /wp:list-item --></ul>\n<!-- /wp:list -->\";}i:15;a:1:{s:7:\"content\";s:84:\"<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Payments.</h2>\n<!-- /wp:heading -->\";}i:16;a:1:{s:7:\"content\";s:145:\"<!-- wp:paragraph -->\n<p>Subscribe our newletter and promitions via the above form or follow our social media channels</p>\n<!-- /wp:paragraph -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:8:\"footer-1\";a:3:{i:0;s:7:\"block-8\";i:1;s:7:\"block-9\";i:2;s:8:\"block-16\";}s:8:\"footer-2\";a:2:{i:0;s:8:\"block-10\";i:1;s:8:\"block-11\";}s:8:\"footer-3\";a:2:{i:0;s:8:\"block-12\";i:1;s:8:\"block-13\";}s:8:\"footer-4\";a:2:{i:0;s:8:\"block-15\";i:1;s:8:\"block-14\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1690718363;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1690732763;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1690732773;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1690775963;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690775973;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690775975;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1690948763;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1689652948;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(123, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:17:\"bad_response_code\";a:1:{i:0;s:9:\"Not Found\";}}', 'yes'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.2.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.2.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.2.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.2.2\";s:7:\"version\";s:5:\"6.2.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1690711427;s:15:\"version_checked\";s:5:\"6.2.2\";s:12:\"translations\";a:0:{}}', 'no'),
(130, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1690711428;s:7:\"checked\";a:4:{s:5:\"shopx\";s:5:\"1.0.0\";s:15:\"twentytwentyone\";s:3:\"1.8\";s:17:\"twentytwentythree\";s:3:\"1.1\";s:15:\"twentytwentytwo\";s:3:\"1.4\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(138, 'can_compress_scripts', '1', 'no'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(154, 'current_theme', 'ShopX', 'yes'),
(155, 'theme_mods_shopx', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:16:\"small-header-nav\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:48;}', 'yes'),
(156, 'theme_switched', '', 'yes'),
(166, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":3}', 'yes'),
(167, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(170, 'category_children', 'a:0:{}', 'yes'),
(189, 'site_logo', '48', 'yes'),
(193, 'recovery_mode_email_last_sent', '1690207480', 'yes'),
(200, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.7.7\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1689934892;s:7:\"version\";s:5:\"5.7.7\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(201, 'recently_activated', 'a:2:{s:41:\"acf-theme-code-pro/acf_theme_code_pro.php\";i:1690711510;s:34:\"advanced-custom-fields-pro/acf.php\";i:1690631176;}', 'yes'),
(203, 'secret_key', 'E3DmD7PZ+`T}5Jm~x)il.Vz/cEcI!O<D0Q{fN,Ze<w`?QK8%E44{ff7H`F2y,wR#', 'no'),
(223, 'acf_version', '6.1.7', 'yes'),
(224, '_site_transient_timeout_php_check_f9b25a35946393ab2b3328e72e3e778a', '1690812031', 'no'),
(225, '_site_transient_php_check_f9b25a35946393ab2b3328e72e3e778a', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(251, '_site_transient_timeout_browser_14d58a1ba286f087d9736249ec785314', '1690895129', 'no'),
(252, '_site_transient_browser_14d58a1ba286f087d9736249ec785314', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"114.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(291, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1690717124;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.2.2\";s:12:\"requires_php\";s:6:\"5.6.20\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(292, 'dd9b23a13775ccc12b5389d301f8ef5d', 'a:2:{s:7:\"timeout\";i:1690641613;s:5:\"value\";s:28881:\"{\"new_version\":\"2.5.5\",\"stable_version\":\"2.5.5\",\"name\":\"ACF Theme Code Pro\",\"slug\":\"acf_theme_code_pro\",\"url\":\"https:\\/\\/hookturn.io\\/downloads\\/acf-theme-code-pro\\/?changelog=1\",\"last_updated\":\"2023-05-02 01:06:24\",\"homepage\":\"https:\\/\\/hookturn.io\\/downloads\\/acf-theme-code-pro\\/\",\"package\":\"\",\"download_link\":\"\",\"sections\":{\"description\":\"<p><strong>ACF Theme Code Pro saves you time by automatically generating the code needed to implement ACF PRO field groups and ACF Blocks in your WordPress themes.<\\/strong><\\/p>\\n<p><em>\\u201cWork smarter, not harder! Great work on this ACF plugin!\\u201d<\\/em> - Elliot Condon, Creator of Advanced Custom Fields<\\/p>\\n<p>ACF Theme Code Pro is a premium add-on&nbsp;for the awesome&nbsp;<a href=\\\"https:\\/\\/www.advancedcustomfields.com\\/pro\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Advanced Custom Fields Pro<\\/a>&nbsp;WordPress plugin.<\\/p>\\n<p>The code required to implement your fields is displayed in the <em>Theme Code<\\/em> section at the bottom of your Edit Field Group page.<\\/p>\\n<p><strong>Features<\\/strong><\\/p>\\n<ul>\\n<li>Clipboard icons to easily copy code blocks into your theme<\\/li>\\n<li>Field names and variables are automatically updated<\\/li>\\n<li>Code generated is based on the official ACF documentation and includes escaping<\\/li>\\n<li>Support for field return types and single\\/muliple value options<\\/li>\\n<li>Great for offline ACF documentation<\\/li>\\n<\\/ul>\\n<p><strong>ACF Free, ACF Pro &amp; 3rd party fields <\\/strong><\\/p>\\n<p>Theme Code Pro generates code for all of these fields:<\\/p>\\n<p><strong>ACF Free Fields<\\/strong><\\/p>\\n<ul>\\n<li>Text<\\/li>\\n<li>Text Area<\\/li>\\n<li>Number<\\/li>\\n<li>Range<\\/li>\\n<li>Email<\\/li>\\n<li>URL<\\/li>\\n<li>Password<\\/li>\\n<li>Image<\\/li>\\n<li>File<\\/li>\\n<li>WYSIWYG<\\/li>\\n<li>oEmbed<\\/li>\\n<li>Select<\\/li>\\n<li>Checkbox<\\/li>\\n<li>Radio Button<\\/li>\\n<li>Button Group<\\/li>\\n<li>True \\/ False<\\/li>\\n<li>Link<\\/li>\\n<li>Post Object<\\/li>\\n<li>Page Link<\\/li>\\n<li>Relationship<\\/li>\\n<li>Taxonomy<\\/li>\\n<li>User<\\/li>\\n<li>Google Map<\\/li>\\n<li>Date Picker<\\/li>\\n<li>Date Time Picker<\\/li>\\n<li>Color Picker<\\/li>\\n<li>Group<\\/li>\\n<\\/ul>\\n<p><strong>ACF Pro Fields<\\/strong><\\/p>\\n<ul>\\n<li>Repeater<\\/li>\\n<li>Flexible content<\\/li>\\n<li>Gallery<\\/li>\\n<li>Clone<\\/li>\\n<\\/ul>\\n<p><strong>3rd Party Fields<\\/strong><\\/p>\\n<ul>\\n<li>Font Awesome<\\/li>\\n<li>Gravityforms<\\/li>\\n<li>Ninjaforms<\\/li>\\n<li>Contact Form 7<\\/li>\\n<li>RGBA Colour<\\/li>\\n<li>Color Palette<\\/li>\\n<li>Table<\\/li>\\n<li>TablePress<\\/li>\\n<li>Sidebar Selector<\\/li>\\n<li>Nav Menu<\\/li>\\n<li>Image Aspect Ratio Crop<\\/li>\\n<li>Audio\\/Video Player<\\/li>\\n<li>SVG Icon<\\/li>\\n<li>Icon Selector<\\/li>\\n<li>Code<\\/li>\\n<li>Address<\\/li>\\n<li>Number Slider<\\/li>\\n<li>Star Rating<\\/li>\\n<li>YouTube Picker<\\/li>\\n<li>Post Type Select<\\/li>\\n<li>Smart Button<\\/li>\\n<\\/ul>\\n<p><strong>Location Rule Support<\\/strong><\\/p>\\n<p>ACF Theme Code Pro can generate code for multiple location rules in each field group. This includes more complex locations like <em>Block, Options Page, Widget, Taxonomy, Comment, Attachment, Current User and User Form.<\\/em><\\/p>\\n<p><strong>Create Blocks and Options Pages<\\/strong><\\/p>\\n<p>ACF Theme Code Pro also includes a handy <em>Location Registration Tool<\\/em> that generates the code needed to create new Blocks and Options Pages.<\\/p>\\n<p><strong>Works best with<\\/strong><\\/p>\\n<ul>\\n<li>Advanced Custom Fields Pro v5.9 or higher<\\/li>\\n<li>Advanced Custom Fields Free v5.9 or higher<\\/li>\\n<li>WordPress 5.6 or higher<\\/li>\\n<li>PHP 7.0 or higher<\\/li>\\n<\\/ul>\\n<p><strong>Try our FREE version<\\/strong><\\/p>\\n<p>If you would like to \\u2018try before you buy\\u2019 you can check out our free version <a href=\\\"https:\\/\\/wordpress.org\\/plugins\\/acf-theme-code\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">ACF Theme Code<\\/a> on WordPress.org. This plugin supports all the field types included in free version of Advanced Custom Fields.<\\/p>\\n<p><strong>Hi! We made this<\\/strong><\\/p>\\n<p>The ACF Theme Code Plugin was created by <a href=\\\"http:\\/\\/aaronrutley.com\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">AaronRutley<\\/a> &amp; <a href=\\\"http:\\/\\/benpearson.com.au\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Ben Pearson<\\/a>, two WordPress developers based in Melbourne, Australia.<\\/p>\\n<p><strong>Theme Code Pro makes developers happy!<\\/strong><\\/p>\\n<p><em>\\u201cGreat time saver - No more constantly referring to the ACF documentation for the right ACF code.\\u201d<\\/em> - David McDonald, Freelance Web Developer<\\/p>\\n<p><em>\\u201cAwesome add-on for ACF - It will certainly speed up theme development.\\u201d<\\/em> - Matthew Heyes, Web Developer &amp; WordPress Specialist<\\/p>\\n<p><em>\\u201cI\'m going to use all the free time this plugin gives me to, I don\'t know, catch up on sleep!\\u201d<\\/em> - Joel Eade, Website Designer<\\/p>\\n<p><em>\\u201cI should have dropped the change a long time ago. AWESOME. Massive time saver. Wish I\\u2019d done it sooner.\\u201d<\\/em> - theatereleven, WordPress Developer<\\/p>\\n<p>&nbsp;<\\/p>\\n\",\"changelog\":\"<p><strong>2.5.5<\\/strong><\\/p>\\n<ul>\\n<li>Add new stylesheet to integrate all components with ACF 6<\\/li>\\n<li>Update location registration tool UI to integrate with ACF 6<\\/li>\\n<li>Update scroll to code functionality to support ACF 6<\\/li>\\n<\\/ul>\\n<p><strong>2.5.4<\\/strong><\\/p>\\n<ul>\\n<li>Add support for ACF 6<\\/li>\\n<li>Add Polish translation thanks to Michal Lepiarz<\\/li>\\n<li>Add Dutch translation thanks to Peter Smits<\\/li>\\n<li>Add Chinese (Taiwan) translation thanks to RedBazil<\\/li>\\n<li>Add German translation thanks to Christian Kappmeyer<\\/li>\\n<li>Fix JS and CSS enqueuing bug on Tools page<\\/li>\\n<\\/ul>\\n<p><strong>2.5.3<\\/strong><\\/p>\\n<ul>\\n<li>Add full support for localization (i18n)\\n<ul>\\n<li>Please let us know if you\'re interested in helping translate ACF Theme Code Pro into your language (https:\\/\\/hookturn.io\\/contact\\/)<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Improve enqueuing of CSS and JS<\\/li>\\n<li>Fix notice that occurs when Location is set to an unregistered block type<\\/li>\\n<\\/ul>\\n<p><strong>2.5.2<\\/strong><\\/p>\\n<ul>\\n<li>Add support for the following third party fields:\\n<ul>\\n<li>ACF Field For Contact Form 7<\\/li>\\n<li>Advanced Custom Field: Audio\\/Video Player<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Improve code rendered for the following third party fields:\\n<ul>\\n<li>Advanced Custom Fields: Gravityforms Add-on (including displaying forms, support for Object and ID return types and Single and Multiple values)<\\/li>\\n<li>Advanced Custom Fields: Ninjaforms Add-on (including displaying forms, support for Object and ID return types and Single and Multiple values)<\\/li>\\n<li>TablePress (including support for ID and HTML return types)<\\/li>\\n<li>Table (including caption support and escaping)<\\/li>\\n<li>ACF Icon Selector Field (including escaping)<\\/li>\\n<li>ACF Smart Button (including escaping)<\\/li>\\n<li>Advanced Custom Fields: RGBA Color Field (including escaping)<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Update support for the following third party fields:\\n<ul>\\n<li>Advanced Custom Fields: Font Awesome Field<\\/li>\\n<li>Custom Fields: Nav Menu Field<\\/li>\\n<li>ACF Code Field<\\/li>\\n<li>Advanced Custom Fields: SVG Icon<\\/li>\\n<li>ACF YouTube Picker Field<\\/li>\\n<li>ACF Address Field<\\/li>\\n<li>Post Type Select Field for Advanced Custom Fields<\\/li>\\n<li>Advanced Custom Fields: Number Slider<\\/li>\\n<li>ACF Color Palette Field<\\/li>\\n<li>ACF Color Swatches<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Remove support for the following third party fields that no longer support the latest version of WordPress or ACF:\\n<ul>\\n<li>ACF qTranslate<\\/li>\\n<li>Advanced Custom Fields: Image Crop<\\/li>\\n<li>Advanced Custom Fields: Markdown Field<\\/li>\\n<li>Advanced Custom Fields: Link Picker Field<\\/li>\\n<li>ACF: Google Font Selector<\\/li>\\n<li>ACF: Focal Point<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Ignore `page` field used by Advanced Forms Pro for ACF for multi step forms<\\/li>\\n<\\/ul>\\n<p><strong>2.5.1<\\/strong><\\/p>\\n<ul>\\n<li>Improve support for WordPress 5.6<\\/li>\\n<li>Fix CSS and JS enqueue bugs<\\/li>\\n<li>Fix code formatting bug in \\\"Register ACF Blocks and Options Pages\\\" Tool<\\/li>\\n<li>Add link to Settings page in plugin description on core Plugins page<\\/li>\\n<li>Improve plugin update message on core Plugins page<\\/li>\\n<li>Add instructions to \\\"Download Failed\\\" error message on core Plugins page<\\/li>\\n<li>Updated licensing framework<\\/li>\\n<li>Improve plugin Settings page:\\n<ul>\\n<li>Improve instructions and validation messages<\\/li>\\n<li>Improve design and responsive styles<\\/li>\\n<li>Convert license key field from text input to password input to protect customer license keys<\\/li>\\n<\\/ul>\\n<\\/li>\\n<\\/ul>\\n<p><strong>2.5.0<\\/strong><\\/p>\\n<ul>\\n<li>Improve support for WordPress 5.4.<\\/li>\\n<li>Improve support for all field types included in ACF PRO 5.8.9 (including all their various settings).<\\/li>\\n<li>Improve codebase by syncing both free and pro foundations to facilitate faster development cycles and future features.<\\/li>\\n<li>Add escaping to code rendered to bring it in line with recent updates to ACF field documentation. See\\u00a0https:\\/\\/twitter.com\\/wp_acf\\/status\\/1181344882775875584.<\\/li>\\n<li>Improve code rendered for Taxonomy location.<\\/li>\\n<li>Add support for Current User, Current User Role, User Role locations.<\\/li>\\n<li>Add various enhancements to code rendered for the following fields and field settings:\\n<ul>\\n<li>Gallery field (return types Array, URL and ID)<\\/li>\\n<li>Image (return types Array, URL and ID)<\\/li>\\n<li>File (return types Array, URL and ID)<\\/li>\\n<li>Select (values Single and Multiple, return types Value, Label and Array)<\\/li>\\n<li>Checkbox (return types Value, Label and Array)<\\/li>\\n<li>Radio Button (return type Array)<\\/li>\\n<li>Button Group (return type Array)<\\/li>\\n<li>True \\/ False<\\/li>\\n<li>Link (return types Array and URL)<\\/li>\\n<li>Post Object (values Single and Multiple, return types Post Object and Post ID)<\\/li>\\n<li>Page Link (values Single and Multiple)<\\/li>\\n<li>Relationship (return types Post Object and Post ID)<\\/li>\\n<li>Taxonomy (appearances Checkbox, Multi Select, Radio Buttons and Select, return types Term Object and Term ID)<\\/li>\\n<li>User (values Single and Multiple, return types User Array, User Object and User ID)<\\/li>\\n<li>Google Map<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Fixed issue with \'Copy All\' fields functionality.<\\/li>\\n<\\/ul>\\n<p><strong>2.4.0<\\/strong><\\/p>\\n<ul>\\n<li>Core: Theme Code Pro generates code to register for ACF Blocks and Options!<\\/li>\\n<li>Core: Theme Code Pro generates code for use within for ACF Blocks!<\\/li>\\n<li>Core: Radio Button field (core): Add support for all return types<\\/li>\\n<li>Core: Refactoring that will allow for the more options for the code generated in the future<\\/li>\\n<li>New Field Supported: ACF Icon Field<\\/li>\\n<li>New Field Supported: ACF Star Rating Field<\\/li>\\n<li>New Field Supported: ACF Color Palette Field<\\/li>\\n<li>New Field Supported: ACF Image Aspect Ratio Crop<\\/li>\\n<li>New Field Supported: ACF Color Swatches<\\/li>\\n<li>New Field Supported: ACF SVG Icon<\\/li>\\n<\\/ul>\\n<p><strong>2.3.0<\\/strong><\\/p>\\n<ul>\\n<li>New Field Supported: ACF Ninja Forms add on<\\/li>\\n<li>New Field Supported: ACF Gravity Forms add on<\\/li>\\n<li>New Field Supported: ACF RGBA Colour picker<\\/li>\\n<li>New Field(s) Supported: ACF qTranslate<\\/li>\\n<li>Core: Resolved EDD Conflicts<\\/li>\\n<li>Core: Improved Widget Location Variables<\\/li>\\n<li>Fix: EDD naming conflict<\\/li>\\n<li>Fix: Location error if visual editor is disabled<\\/li>\\n<li>Fix: Select Conflict with Seamless Field Group Option<\\/li>\\n<\\/ul>\\n<p><strong>2.2.0<\\/strong><\\/p>\\n<ul>\\n<li>New Field Supported: Button Field found in ACF Pro v5.6.3<\\/li>\\n<li>New Field Supported: Range Field found in ACF Pro v5.6.2<\\/li>\\n<li>Core: Copy All Feature Added<\\/li>\\n<\\/ul>\\n<p><strong>2.1.0<\\/strong><\\/p>\\n<ul>\\n<li>New Field Supported: Group Field found in ACF Pro v5.6<\\/li>\\n<li>New Field Supported: Link Field found in ACF Pro v5.6<\\/li>\\n<li>New Field Supported: Range Field (Third Party)<\\/li>\\n<li>New Field Supported: Focal Point Field (Third Party)<\\/li>\\n<li>Field: Code field improved to escape output by default<\\/li>\\n<li>Field: Google Map field improved to return lat, lng &amp;\\u00a0address<\\/li>\\n<li>Core: resolved an issue with legacy PHP versions<\\/li>\\n<li>Fix: Bug in File field PHP when returned as a URL<\\/li>\\n<\\/ul>\\n<p><strong>2.0.0<\\/strong><\\/p>\\n<ul>\\n<li>Core : Theme Code Pro now generates code based on your location rules!<\\/li>\\n<li>Core : Theme Code Pro now supports all official ACF Add ons!<\\/li>\\n<li>Core : Theme Code Pro now works when ACF Pro is included in a theme!<\\/li>\\n<li>Location Supported : Options Page<\\/li>\\n<li>Location Supported : Widget<\\/li>\\n<li>Location Supported : Comment<\\/li>\\n<li>Location Supported : Taxonomy Term<\\/li>\\n<li>Location Supported : User<\\/li>\\n<li>Location Supported : Attachment<\\/li>\\n<li>Add-on supported : Options Page<\\/li>\\n<li>Add on supported : Repeater Field<\\/li>\\n<li>Add on supported : Gallery Field<\\/li>\\n<li>Add on supported : Flexible Content Field<\\/li>\\n<li>Fix : Minor bug in file field example link markup<\\/li>\\n<li>Fix : Support for Quicklinks feature within locations<\\/li>\\n<\\/ul>\\n<p><strong>1.2.0<\\/strong><\\/p>\\n<ul>\\n<li>Field : Clone - major improvements to the clone field code output<\\/li>\\n<li>New Field Supported : Address Field<\\/li>\\n<li>New Field Supported : Number Slider Field<\\/li>\\n<li>New Field Supported : Post Type Select Field<\\/li>\\n<li>New Field Supported : Code Field<\\/li>\\n<li>New Field Supported : Link Field<\\/li>\\n<li>New Field Supported : Link Picker Field<\\/li>\\n<li>New Field Supported : YouTube Picker Field<\\/li>\\n<li>Core : Special characters now removed from variable names<\\/li>\\n<li>Fix : Compatibility with CPTUI Pro Plugin<\\/li>\\n<\\/ul>\\n<p><strong>1.1.0<\\/strong><\\/p>\\n<ul>\\n<li>Core: Quicklinks feature with anchor links to the relevant theme code block<\\/li>\\n<li>Core: Notice updates &amp; various bug fixes<\\/li>\\n<li>Core: Plugin options screen moved under Settings<\\/li>\\n<\\/ul>\\n<p><strong>1.0.3<\\/strong><\\/p>\\n<ul>\\n<li>Fix: Use the_sub_field method for nested File fields with return format URL<\\/li>\\n<\\/ul>\\n<p><strong>1.0.2<\\/strong><\\/p>\\n<ul>\\n<li>Field: Fix for Post Object when using ACF 4<\\/li>\\n<li>Core: Various internal code improvements<\\/li>\\n<\\/ul>\\n\"},\"banners\":{\"high\":\"\",\"low\":\"\"},\"icons\":\"a:2:{s:2:\\\"1x\\\";s:75:\\\"https:\\/\\/hookturn.io\\/wp-content\\/uploads\\/edd\\/2016\\/07\\/thumb-acf-theme-code.jpg\\\";s:2:\\\"2x\\\";s:75:\\\"https:\\/\\/hookturn.io\\/wp-content\\/uploads\\/edd\\/2016\\/07\\/thumb-acf-theme-code.jpg\\\";}\",\"msg\":\"No license key has been provided.\",\"description\":[\"<p><strong>ACF Theme Code Pro saves you time by automatically generating the code needed to implement ACF PRO field groups and ACF Blocks in your WordPress themes.<\\/strong><\\/p>\\n<p><em>\\u201cWork smarter, not harder! Great work on this ACF plugin!\\u201d<\\/em> - Elliot Condon, Creator of Advanced Custom Fields<\\/p>\\n<p>ACF Theme Code Pro is a premium add-on&nbsp;for the awesome&nbsp;<a href=\\\"https:\\/\\/www.advancedcustomfields.com\\/pro\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Advanced Custom Fields Pro<\\/a>&nbsp;WordPress plugin.<\\/p>\\n<p>The code required to implement your fields is displayed in the <em>Theme Code<\\/em> section at the bottom of your Edit Field Group page.<\\/p>\\n<p><strong>Features<\\/strong><\\/p>\\n<ul>\\n<li>Clipboard icons to easily copy code blocks into your theme<\\/li>\\n<li>Field names and variables are automatically updated<\\/li>\\n<li>Code generated is based on the official ACF documentation and includes escaping<\\/li>\\n<li>Support for field return types and single\\/muliple value options<\\/li>\\n<li>Great for offline ACF documentation<\\/li>\\n<\\/ul>\\n<p><strong>ACF Free, ACF Pro &amp; 3rd party fields <\\/strong><\\/p>\\n<p>Theme Code Pro generates code for all of these fields:<\\/p>\\n<p><strong>ACF Free Fields<\\/strong><\\/p>\\n<ul>\\n<li>Text<\\/li>\\n<li>Text Area<\\/li>\\n<li>Number<\\/li>\\n<li>Range<\\/li>\\n<li>Email<\\/li>\\n<li>URL<\\/li>\\n<li>Password<\\/li>\\n<li>Image<\\/li>\\n<li>File<\\/li>\\n<li>WYSIWYG<\\/li>\\n<li>oEmbed<\\/li>\\n<li>Select<\\/li>\\n<li>Checkbox<\\/li>\\n<li>Radio Button<\\/li>\\n<li>Button Group<\\/li>\\n<li>True \\/ False<\\/li>\\n<li>Link<\\/li>\\n<li>Post Object<\\/li>\\n<li>Page Link<\\/li>\\n<li>Relationship<\\/li>\\n<li>Taxonomy<\\/li>\\n<li>User<\\/li>\\n<li>Google Map<\\/li>\\n<li>Date Picker<\\/li>\\n<li>Date Time Picker<\\/li>\\n<li>Color Picker<\\/li>\\n<li>Group<\\/li>\\n<\\/ul>\\n<p><strong>ACF Pro Fields<\\/strong><\\/p>\\n<ul>\\n<li>Repeater<\\/li>\\n<li>Flexible content<\\/li>\\n<li>Gallery<\\/li>\\n<li>Clone<\\/li>\\n<\\/ul>\\n<p><strong>3rd Party Fields<\\/strong><\\/p>\\n<ul>\\n<li>Font Awesome<\\/li>\\n<li>Gravityforms<\\/li>\\n<li>Ninjaforms<\\/li>\\n<li>Contact Form 7<\\/li>\\n<li>RGBA Colour<\\/li>\\n<li>Color Palette<\\/li>\\n<li>Table<\\/li>\\n<li>TablePress<\\/li>\\n<li>Sidebar Selector<\\/li>\\n<li>Nav Menu<\\/li>\\n<li>Image Aspect Ratio Crop<\\/li>\\n<li>Audio\\/Video Player<\\/li>\\n<li>SVG Icon<\\/li>\\n<li>Icon Selector<\\/li>\\n<li>Code<\\/li>\\n<li>Address<\\/li>\\n<li>Number Slider<\\/li>\\n<li>Star Rating<\\/li>\\n<li>YouTube Picker<\\/li>\\n<li>Post Type Select<\\/li>\\n<li>Smart Button<\\/li>\\n<\\/ul>\\n<p><strong>Location Rule Support<\\/strong><\\/p>\\n<p>ACF Theme Code Pro can generate code for multiple location rules in each field group. This includes more complex locations like <em>Block, Options Page, Widget, Taxonomy, Comment, Attachment, Current User and User Form.<\\/em><\\/p>\\n<p><strong>Create Blocks and Options Pages<\\/strong><\\/p>\\n<p>ACF Theme Code Pro also includes a handy <em>Location Registration Tool<\\/em> that generates the code needed to create new Blocks and Options Pages.<\\/p>\\n<p><strong>Works best with<\\/strong><\\/p>\\n<ul>\\n<li>Advanced Custom Fields Pro v5.9 or higher<\\/li>\\n<li>Advanced Custom Fields Free v5.9 or higher<\\/li>\\n<li>WordPress 5.6 or higher<\\/li>\\n<li>PHP 7.0 or higher<\\/li>\\n<\\/ul>\\n<p><strong>Try our FREE version<\\/strong><\\/p>\\n<p>If you would like to \\u2018try before you buy\\u2019 you can check out our free version <a href=\\\"https:\\/\\/wordpress.org\\/plugins\\/acf-theme-code\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">ACF Theme Code<\\/a> on WordPress.org. This plugin supports all the field types included in free version of Advanced Custom Fields.<\\/p>\\n<p><strong>Hi! We made this<\\/strong><\\/p>\\n<p>The ACF Theme Code Plugin was created by <a href=\\\"http:\\/\\/aaronrutley.com\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">AaronRutley<\\/a> &amp; <a href=\\\"http:\\/\\/benpearson.com.au\\/\\\" target=\\\"_blank\\\" rel=\\\"noopener noreferrer\\\">Ben Pearson<\\/a>, two WordPress developers based in Melbourne, Australia.<\\/p>\\n<p><strong>Theme Code Pro makes developers happy!<\\/strong><\\/p>\\n<p><em>\\u201cGreat time saver - No more constantly referring to the ACF documentation for the right ACF code.\\u201d<\\/em> - David McDonald, Freelance Web Developer<\\/p>\\n<p><em>\\u201cAwesome add-on for ACF - It will certainly speed up theme development.\\u201d<\\/em> - Matthew Heyes, Web Developer &amp; WordPress Specialist<\\/p>\\n<p><em>\\u201cI\'m going to use all the free time this plugin gives me to, I don\'t know, catch up on sleep!\\u201d<\\/em> - Joel Eade, Website Designer<\\/p>\\n<p><em>\\u201cI should have dropped the change a long time ago. AWESOME. Massive time saver. Wish I\\u2019d done it sooner.\\u201d<\\/em> - theatereleven, WordPress Developer<\\/p>\\n<p>&nbsp;<\\/p>\\n\"],\"changelog\":[\"<p><strong>2.5.5<\\/strong><\\/p>\\n<ul>\\n<li>Add new stylesheet to integrate all components with ACF 6<\\/li>\\n<li>Update location registration tool UI to integrate with ACF 6<\\/li>\\n<li>Update scroll to code functionality to support ACF 6<\\/li>\\n<\\/ul>\\n<p><strong>2.5.4<\\/strong><\\/p>\\n<ul>\\n<li>Add support for ACF 6<\\/li>\\n<li>Add Polish translation thanks to Michal Lepiarz<\\/li>\\n<li>Add Dutch translation thanks to Peter Smits<\\/li>\\n<li>Add Chinese (Taiwan) translation thanks to RedBazil<\\/li>\\n<li>Add German translation thanks to Christian Kappmeyer<\\/li>\\n<li>Fix JS and CSS enqueuing bug on Tools page<\\/li>\\n<\\/ul>\\n<p><strong>2.5.3<\\/strong><\\/p>\\n<ul>\\n<li>Add full support for localization (i18n)\\n<ul>\\n<li>Please let us know if you\'re interested in helping translate ACF Theme Code Pro into your language (https:\\/\\/hookturn.io\\/contact\\/)<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Improve enqueuing of CSS and JS<\\/li>\\n<li>Fix notice that occurs when Location is set to an unregistered block type<\\/li>\\n<\\/ul>\\n<p><strong>2.5.2<\\/strong><\\/p>\\n<ul>\\n<li>Add support for the following third party fields:\\n<ul>\\n<li>ACF Field For Contact Form 7<\\/li>\\n<li>Advanced Custom Field: Audio\\/Video Player<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Improve code rendered for the following third party fields:\\n<ul>\\n<li>Advanced Custom Fields: Gravityforms Add-on (including displaying forms, support for Object and ID return types and Single and Multiple values)<\\/li>\\n<li>Advanced Custom Fields: Ninjaforms Add-on (including displaying forms, support for Object and ID return types and Single and Multiple values)<\\/li>\\n<li>TablePress (including support for ID and HTML return types)<\\/li>\\n<li>Table (including caption support and escaping)<\\/li>\\n<li>ACF Icon Selector Field (including escaping)<\\/li>\\n<li>ACF Smart Button (including escaping)<\\/li>\\n<li>Advanced Custom Fields: RGBA Color Field (including escaping)<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Update support for the following third party fields:\\n<ul>\\n<li>Advanced Custom Fields: Font Awesome Field<\\/li>\\n<li>Custom Fields: Nav Menu Field<\\/li>\\n<li>ACF Code Field<\\/li>\\n<li>Advanced Custom Fields: SVG Icon<\\/li>\\n<li>ACF YouTube Picker Field<\\/li>\\n<li>ACF Address Field<\\/li>\\n<li>Post Type Select Field for Advanced Custom Fields<\\/li>\\n<li>Advanced Custom Fields: Number Slider<\\/li>\\n<li>ACF Color Palette Field<\\/li>\\n<li>ACF Color Swatches<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Remove support for the following third party fields that no longer support the latest version of WordPress or ACF:\\n<ul>\\n<li>ACF qTranslate<\\/li>\\n<li>Advanced Custom Fields: Image Crop<\\/li>\\n<li>Advanced Custom Fields: Markdown Field<\\/li>\\n<li>Advanced Custom Fields: Link Picker Field<\\/li>\\n<li>ACF: Google Font Selector<\\/li>\\n<li>ACF: Focal Point<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Ignore `page` field used by Advanced Forms Pro for ACF for multi step forms<\\/li>\\n<\\/ul>\\n<p><strong>2.5.1<\\/strong><\\/p>\\n<ul>\\n<li>Improve support for WordPress 5.6<\\/li>\\n<li>Fix CSS and JS enqueue bugs<\\/li>\\n<li>Fix code formatting bug in \\\"Register ACF Blocks and Options Pages\\\" Tool<\\/li>\\n<li>Add link to Settings page in plugin description on core Plugins page<\\/li>\\n<li>Improve plugin update message on core Plugins page<\\/li>\\n<li>Add instructions to \\\"Download Failed\\\" error message on core Plugins page<\\/li>\\n<li>Updated licensing framework<\\/li>\\n<li>Improve plugin Settings page:\\n<ul>\\n<li>Improve instructions and validation messages<\\/li>\\n<li>Improve design and responsive styles<\\/li>\\n<li>Convert license key field from text input to password input to protect customer license keys<\\/li>\\n<\\/ul>\\n<\\/li>\\n<\\/ul>\\n<p><strong>2.5.0<\\/strong><\\/p>\\n<ul>\\n<li>Improve support for WordPress 5.4.<\\/li>\\n<li>Improve support for all field types included in ACF PRO 5.8.9 (including all their various settings).<\\/li>\\n<li>Improve codebase by syncing both free and pro foundations to facilitate faster development cycles and future features.<\\/li>\\n<li>Add escaping to code rendered to bring it in line with recent updates to ACF field documentation. See\\u00a0https:\\/\\/twitter.com\\/wp_acf\\/status\\/1181344882775875584.<\\/li>\\n<li>Improve code rendered for Taxonomy location.<\\/li>\\n<li>Add support for Current User, Current User Role, User Role locations.<\\/li>\\n<li>Add various enhancements to code rendered for the following fields and field settings:\\n<ul>\\n<li>Gallery field (return types Array, URL and ID)<\\/li>\\n<li>Image (return types Array, URL and ID)<\\/li>\\n<li>File (return types Array, URL and ID)<\\/li>\\n<li>Select (values Single and Multiple, return types Value, Label and Array)<\\/li>\\n<li>Checkbox (return types Value, Label and Array)<\\/li>\\n<li>Radio Button (return type Array)<\\/li>\\n<li>Button Group (return type Array)<\\/li>\\n<li>True \\/ False<\\/li>\\n<li>Link (return types Array and URL)<\\/li>\\n<li>Post Object (values Single and Multiple, return types Post Object and Post ID)<\\/li>\\n<li>Page Link (values Single and Multiple)<\\/li>\\n<li>Relationship (return types Post Object and Post ID)<\\/li>\\n<li>Taxonomy (appearances Checkbox, Multi Select, Radio Buttons and Select, return types Term Object and Term ID)<\\/li>\\n<li>User (values Single and Multiple, return types User Array, User Object and User ID)<\\/li>\\n<li>Google Map<\\/li>\\n<\\/ul>\\n<\\/li>\\n<li>Fixed issue with \'Copy All\' fields functionality.<\\/li>\\n<\\/ul>\\n<p><strong>2.4.0<\\/strong><\\/p>\\n<ul>\\n<li>Core: Theme Code Pro generates code to register for ACF Blocks and Options!<\\/li>\\n<li>Core: Theme Code Pro generates code for use within for ACF Blocks!<\\/li>\\n<li>Core: Radio Button field (core): Add support for all return types<\\/li>\\n<li>Core: Refactoring that will allow for the more options for the code generated in the future<\\/li>\\n<li>New Field Supported: ACF Icon Field<\\/li>\\n<li>New Field Supported: ACF Star Rating Field<\\/li>\\n<li>New Field Supported: ACF Color Palette Field<\\/li>\\n<li>New Field Supported: ACF Image Aspect Ratio Crop<\\/li>\\n<li>New Field Supported: ACF Color Swatches<\\/li>\\n<li>New Field Supported: ACF SVG Icon<\\/li>\\n<\\/ul>\\n<p><strong>2.3.0<\\/strong><\\/p>\\n<ul>\\n<li>New Field Supported: ACF Ninja Forms add on<\\/li>\\n<li>New Field Supported: ACF Gravity Forms add on<\\/li>\\n<li>New Field Supported: ACF RGBA Colour picker<\\/li>\\n<li>New Field(s) Supported: ACF qTranslate<\\/li>\\n<li>Core: Resolved EDD Conflicts<\\/li>\\n<li>Core: Improved Widget Location Variables<\\/li>\\n<li>Fix: EDD naming conflict<\\/li>\\n<li>Fix: Location error if visual editor is disabled<\\/li>\\n<li>Fix: Select Conflict with Seamless Field Group Option<\\/li>\\n<\\/ul>\\n<p><strong>2.2.0<\\/strong><\\/p>\\n<ul>\\n<li>New Field Supported: Button Field found in ACF Pro v5.6.3<\\/li>\\n<li>New Field Supported: Range Field found in ACF Pro v5.6.2<\\/li>\\n<li>Core: Copy All Feature Added<\\/li>\\n<\\/ul>\\n<p><strong>2.1.0<\\/strong><\\/p>\\n<ul>\\n<li>New Field Supported: Group Field found in ACF Pro v5.6<\\/li>\\n<li>New Field Supported: Link Field found in ACF Pro v5.6<\\/li>\\n<li>New Field Supported: Range Field (Third Party)<\\/li>\\n<li>New Field Supported: Focal Point Field (Third Party)<\\/li>\\n<li>Field: Code field improved to escape output by default<\\/li>\\n<li>Field: Google Map field improved to return lat, lng &amp;\\u00a0address<\\/li>\\n<li>Core: resolved an issue with legacy PHP versions<\\/li>\\n<li>Fix: Bug in File field PHP when returned as a URL<\\/li>\\n<\\/ul>\\n<p><strong>2.0.0<\\/strong><\\/p>\\n<ul>\\n<li>Core : Theme Code Pro now generates code based on your location rules!<\\/li>\\n<li>Core : Theme Code Pro now supports all official ACF Add ons!<\\/li>\\n<li>Core : Theme Code Pro now works when ACF Pro is included in a theme!<\\/li>\\n<li>Location Supported : Options Page<\\/li>\\n<li>Location Supported : Widget<\\/li>\\n<li>Location Supported : Comment<\\/li>\\n<li>Location Supported : Taxonomy Term<\\/li>\\n<li>Location Supported : User<\\/li>\\n<li>Location Supported : Attachment<\\/li>\\n<li>Add-on supported : Options Page<\\/li>\\n<li>Add on supported : Repeater Field<\\/li>\\n<li>Add on supported : Gallery Field<\\/li>\\n<li>Add on supported : Flexible Content Field<\\/li>\\n<li>Fix : Minor bug in file field example link markup<\\/li>\\n<li>Fix : Support for Quicklinks feature within locations<\\/li>\\n<\\/ul>\\n<p><strong>1.2.0<\\/strong><\\/p>\\n<ul>\\n<li>Field : Clone - major improvements to the clone field code output<\\/li>\\n<li>New Field Supported : Address Field<\\/li>\\n<li>New Field Supported : Number Slider Field<\\/li>\\n<li>New Field Supported : Post Type Select Field<\\/li>\\n<li>New Field Supported : Code Field<\\/li>\\n<li>New Field Supported : Link Field<\\/li>\\n<li>New Field Supported : Link Picker Field<\\/li>\\n<li>New Field Supported : YouTube Picker Field<\\/li>\\n<li>Core : Special characters now removed from variable names<\\/li>\\n<li>Fix : Compatibility with CPTUI Pro Plugin<\\/li>\\n<\\/ul>\\n<p><strong>1.1.0<\\/strong><\\/p>\\n<ul>\\n<li>Core: Quicklinks feature with anchor links to the relevant theme code block<\\/li>\\n<li>Core: Notice updates &amp; various bug fixes<\\/li>\\n<li>Core: Plugin options screen moved under Settings<\\/li>\\n<\\/ul>\\n<p><strong>1.0.3<\\/strong><\\/p>\\n<ul>\\n<li>Fix: Use the_sub_field method for nested File fields with return format URL<\\/li>\\n<\\/ul>\\n<p><strong>1.0.2<\\/strong><\\/p>\\n<ul>\\n<li>Field: Fix for Post Object when using ACF 4<\\/li>\\n<li>Core: Various internal code improvements<\\/li>\\n<\\/ul>\\n\"]}\";}', 'no'),
(298, '_site_transient_timeout_theme_roots', '1690713228', 'no'),
(299, '_site_transient_theme_roots', 'a:4:{s:5:\"shopx\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', '#'),
(12, 6, '_menu_item_type', 'custom'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '6'),
(15, 6, '_menu_item_object', 'custom'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', '#'),
(21, 7, '_menu_item_type', 'custom'),
(22, 7, '_menu_item_menu_item_parent', '0'),
(23, 7, '_menu_item_object_id', '7'),
(24, 7, '_menu_item_object', 'custom'),
(25, 7, '_menu_item_target', ''),
(26, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(27, 7, '_menu_item_xfn', ''),
(28, 7, '_menu_item_url', '#'),
(35, 10, '_wp_trash_meta_status', 'publish'),
(36, 10, '_wp_trash_meta_time', '1689836575'),
(42, 13, '_edit_lock', '1689837401:1'),
(63, 13, '_wp_trash_meta_status', 'publish'),
(64, 13, '_wp_trash_meta_time', '1689837409'),
(70, 23, '_wp_trash_meta_status', 'publish'),
(71, 23, '_wp_trash_meta_time', '1689837510'),
(75, 25, '_wp_trash_meta_status', 'publish'),
(76, 25, '_wp_trash_meta_time', '1689837541'),
(80, 27, '_wp_trash_meta_status', 'publish'),
(81, 27, '_wp_trash_meta_time', '1689837578'),
(82, 28, '_edit_lock', '1689840353:1'),
(83, 29, '_wp_attached_file', '2023/07/almasthemeslogo-blacklight.png'),
(84, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:38:\"2023/07/almasthemeslogo-blacklight.png\";s:8:\"filesize\";i:3481;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:38:\"almasthemeslogo-blacklight-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4887;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 30, '_wp_attached_file', '2023/07/cropped-almasthemeslogo-blacklight.png'),
(86, 30, '_wp_attachment_context', 'custom-logo'),
(87, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:183;s:6:\"height\";i:48;s:4:\"file\";s:46:\"2023/07/cropped-almasthemeslogo-blacklight.png\";s:8:\"filesize\";i:3057;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:45:\"cropped-almasthemeslogo-blacklight-150x48.png\";s:5:\"width\";i:150;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2897;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(88, 28, '_wp_trash_meta_status', 'publish'),
(89, 28, '_wp_trash_meta_time', '1689840396'),
(90, 29, '_edit_lock', '1689840514:1'),
(91, 31, '_wp_attached_file', '2023/07/almasthemeslogo-blacklight-1.png'),
(92, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:40:\"2023/07/almasthemeslogo-blacklight-1.png\";s:8:\"filesize\";i:3481;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:40:\"almasthemeslogo-blacklight-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4887;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 32, '_wp_attached_file', '2023/07/cropped-almasthemeslogo-blacklight-1.png'),
(94, 32, '_wp_attachment_context', 'custom-logo'),
(95, 32, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:103;s:4:\"file\";s:48:\"2023/07/cropped-almasthemeslogo-blacklight-1.png\";s:8:\"filesize\";i:3330;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:48:\"cropped-almasthemeslogo-blacklight-1-150x103.png\";s:5:\"width\";i:150;s:6:\"height\";i:103;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3257;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(96, 33, '_edit_lock', '1689840555:1'),
(97, 33, '_wp_trash_meta_status', 'publish'),
(98, 33, '_wp_trash_meta_time', '1689840558'),
(99, 34, '_wp_trash_meta_status', 'publish'),
(100, 34, '_wp_trash_meta_time', '1689840643'),
(101, 35, '_wp_attached_file', '2023/07/cropped-cropped-almasthemeslogo-blacklight-1.png'),
(102, 35, '_wp_attachment_context', 'custom-logo'),
(103, 35, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:183;s:6:\"height\";i:101;s:4:\"file\";s:56:\"2023/07/cropped-cropped-almasthemeslogo-blacklight-1.png\";s:8:\"filesize\";i:3293;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:56:\"cropped-cropped-almasthemeslogo-blacklight-1-150x101.png\";s:5:\"width\";i:150;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3250;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 36, '_wp_trash_meta_status', 'publish'),
(105, 36, '_wp_trash_meta_time', '1689840667'),
(109, 38, '_wp_trash_meta_status', 'publish'),
(110, 38, '_wp_trash_meta_time', '1689840838'),
(111, 39, '_wp_attached_file', '2023/07/cropped-almasthemeslogo-blacklight-1-1.png'),
(112, 39, '_wp_attachment_context', 'site-icon'),
(113, 39, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:50:\"2023/07/cropped-almasthemeslogo-blacklight-1-1.png\";s:8:\"filesize\";i:14574;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:50:\"cropped-almasthemeslogo-blacklight-1-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:62062;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:50:\"cropped-almasthemeslogo-blacklight-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19063;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:50:\"cropped-almasthemeslogo-blacklight-1-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54278;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:50:\"cropped-almasthemeslogo-blacklight-1-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6940;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:50:\"cropped-almasthemeslogo-blacklight-1-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19537;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:48:\"cropped-almasthemeslogo-blacklight-1-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:378;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 40, '_wp_attached_file', '2023/07/cropped-cropped-cropped-almasthemeslogo-blacklight-1.png'),
(115, 40, '_wp_attachment_context', 'site-icon'),
(116, 40, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:64:\"2023/07/cropped-cropped-cropped-almasthemeslogo-blacklight-1.png\";s:8:\"filesize\";i:12138;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:64:\"cropped-cropped-cropped-almasthemeslogo-blacklight-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:63505;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:64:\"cropped-cropped-cropped-almasthemeslogo-blacklight-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:21374;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:64:\"cropped-cropped-cropped-almasthemeslogo-blacklight-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:56578;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:64:\"cropped-cropped-cropped-almasthemeslogo-blacklight-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10875;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:64:\"cropped-cropped-cropped-almasthemeslogo-blacklight-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:23164;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:62:\"cropped-cropped-cropped-almasthemeslogo-blacklight-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:678;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 41, '_wp_trash_meta_status', 'publish'),
(118, 41, '_wp_trash_meta_time', '1689840894'),
(119, 42, '_wp_attached_file', '2023/07/cropped-cropped-almasthemeslogo-blacklight.png'),
(120, 42, '_wp_attachment_context', 'site-icon'),
(121, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:54:\"2023/07/cropped-cropped-almasthemeslogo-blacklight.png\";s:8:\"filesize\";i:6759;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:54:\"cropped-cropped-almasthemeslogo-blacklight-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:61198;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:54:\"cropped-cropped-almasthemeslogo-blacklight-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:19983;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:54:\"cropped-cropped-almasthemeslogo-blacklight-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:51813;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:54:\"cropped-cropped-almasthemeslogo-blacklight-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:9883;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:54:\"cropped-cropped-almasthemeslogo-blacklight-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22020;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:52:\"cropped-cropped-almasthemeslogo-blacklight-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:960;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 43, '_wp_trash_meta_status', 'publish'),
(123, 43, '_wp_trash_meta_time', '1689840925'),
(124, 44, '_wp_trash_meta_status', 'publish'),
(125, 44, '_wp_trash_meta_time', '1689922987'),
(126, 45, '_wp_attached_file', '2023/07/cropped-almasthemeslogo-blacklight-1-2.png'),
(127, 45, '_wp_attachment_context', 'custom-logo'),
(128, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:200;s:6:\"height\";i:75;s:4:\"file\";s:50:\"2023/07/cropped-almasthemeslogo-blacklight-1-2.png\";s:8:\"filesize\";i:3218;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"cropped-almasthemeslogo-blacklight-1-2-150x75.png\";s:5:\"width\";i:150;s:6:\"height\";i:75;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3139;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 46, '_wp_trash_meta_status', 'publish'),
(130, 46, '_wp_trash_meta_time', '1689923036'),
(131, 47, '_wp_trash_meta_status', 'publish'),
(132, 47, '_wp_trash_meta_time', '1689923260'),
(133, 48, '_wp_attached_file', '2023/07/cropped-almasthemeslogo-blacklight-1-3.png'),
(134, 48, '_wp_attachment_context', 'custom-logo'),
(135, 48, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:196;s:6:\"height\";i:66;s:4:\"file\";s:50:\"2023/07/cropped-almasthemeslogo-blacklight-1-3.png\";s:8:\"filesize\";i:3164;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:49:\"cropped-almasthemeslogo-blacklight-1-3-150x66.png\";s:5:\"width\";i:150;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3106;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(136, 49, '_wp_trash_meta_status', 'publish'),
(137, 49, '_wp_trash_meta_time', '1689923301'),
(138, 50, '_form', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]'),
(139, 50, '_mail', 'a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <almasicareco@gmail.com>\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(140, 50, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <almasicareco@gmail.com>\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(141, 50, '_messages', 'a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}'),
(142, 50, '_additional_settings', ''),
(143, 50, '_locale', 'en_US'),
(144, 51, '_form', '[email* your-email autocomplete:email]\n\n[submit \"Submit\"]'),
(145, 51, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <almasicareco@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:161:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(146, 51, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:38:\"[_site_title] <almasicareco@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(147, 51, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(148, 51, '_additional_settings', ''),
(149, 51, '_locale', 'en_US'),
(150, 48, '_oembed_b3c895e772d20e31c37b390235fc8b40', '{{unknown}}'),
(151, 45, '_oembed_c1ddc14755d6e74451cc385c2addd90e', '{{unknown}}'),
(152, 42, '_oembed_bdd5888fc5d096099e12849e3b0bf4bc', '{{unknown}}'),
(153, 40, '_oembed_67d64addf42027dfce9a404306fd3b59', '{{unknown}}'),
(154, 39, '_oembed_7f9f19bae54fe18af419b92eff807a90', '{{unknown}}'),
(155, 35, '_oembed_e54690bd1fe13304938889cb47982101', '{{unknown}}'),
(156, 32, '_oembed_e54690bd1fe13304938889cb47982101', '{{unknown}}'),
(157, 30, '_oembed_b469b8348968cae1986e35856d9bfe77', '{{unknown}}'),
(158, 65, '_edit_last', '1'),
(159, 65, '_edit_lock', '1690212321:1'),
(160, 65, '_wp_trash_meta_status', 'publish'),
(161, 65, '_wp_trash_meta_time', '1690212513'),
(162, 65, '_wp_desired_post_slug', 'group_64be97c617b61'),
(163, 66, '_wp_trash_meta_status', 'publish'),
(164, 66, '_wp_trash_meta_time', '1690212514'),
(165, 66, '_wp_desired_post_slug', 'field_64be97c696cdd'),
(166, 89, '_edit_last', '1'),
(167, 89, '_edit_lock', '1690292126:1'),
(168, 89, '_wp_trash_meta_status', 'publish'),
(169, 89, '_wp_trash_meta_time', '1690292325'),
(170, 89, '_wp_desired_post_slug', 'group_64bfcf3013ce6'),
(171, 90, '_wp_trash_meta_status', 'publish'),
(172, 90, '_wp_trash_meta_time', '1690292326'),
(173, 90, '_wp_desired_post_slug', 'field_64bfcf31817b6'),
(174, 91, '_wp_trash_meta_status', 'publish'),
(175, 91, '_wp_trash_meta_time', '1690292326'),
(176, 91, '_wp_desired_post_slug', 'field_64bfcf5e817b8'),
(177, 92, '_wp_trash_meta_status', 'publish'),
(178, 92, '_wp_trash_meta_time', '1690292326'),
(179, 92, '_wp_desired_post_slug', 'field_64bfcf7c817b9'),
(180, 105, '_edit_lock', '1690367517:1'),
(181, 107, '_edit_last', '1'),
(182, 107, '_edit_lock', '1690716982:1'),
(183, 107, 'slide_heading', 'Shop For Men'),
(184, 107, '_slide_heading', 'field_64bfcf31817b6'),
(185, 107, 'slide_more_link', 'https://almasthemes.com'),
(186, 107, '_slide_more_link', 'field_64bfcf5e817b8'),
(187, 107, 'slide_box_1_label', 'Tops'),
(188, 107, '_slide_box_1_label', 'field_64bfcf92817ba'),
(189, 107, 'slide_box_1_icon', '112'),
(190, 107, '_slide_box_1_icon', 'field_64bfcfa4817bb'),
(191, 107, 'slide_box_1_link', ''),
(192, 107, '_slide_box_1_link', 'field_64bfcfb9817bc'),
(193, 107, 'slide_box_1', ''),
(194, 107, '_slide_box_1', 'field_64bfcf7c817b9'),
(195, 108, 'slide_heading', 'Shop For Men'),
(196, 108, '_slide_heading', 'field_64bfcf31817b6'),
(197, 108, 'slide_more_link', ''),
(198, 108, '_slide_more_link', 'field_64bfcf5e817b8'),
(199, 108, 'slide_box_1_label', ''),
(200, 108, '_slide_box_1_label', 'field_64bfcf92817ba'),
(201, 108, 'slide_box_1_icon', ''),
(202, 108, '_slide_box_1_icon', 'field_64bfcfa4817bb'),
(203, 108, 'slide_box_1_link', ''),
(204, 108, '_slide_box_1_link', 'field_64bfcfb9817bc'),
(205, 108, 'slide_box_1', ''),
(206, 108, '_slide_box_1', 'field_64bfcf7c817b9'),
(207, 109, '_wp_attached_file', '2023/07/tops.jpg'),
(208, 109, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1060;s:6:\"height\";i:706;s:4:\"file\";s:16:\"2023/07/tops.jpg\";s:8:\"filesize\";i:137948;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 110, 'slide_heading', 'Shop For Men'),
(210, 110, '_slide_heading', 'field_64bfcf31817b6'),
(211, 110, 'slide_more_link', ''),
(212, 110, '_slide_more_link', 'field_64bfcf5e817b8'),
(213, 110, 'slide_box_1_label', 'Tops'),
(214, 110, '_slide_box_1_label', 'field_64bfcf92817ba'),
(215, 110, 'slide_box_1_icon', '109'),
(216, 110, '_slide_box_1_icon', 'field_64bfcfa4817bb'),
(217, 110, 'slide_box_1_link', ''),
(218, 110, '_slide_box_1_link', 'field_64bfcfb9817bc'),
(219, 110, 'slide_box_1', ''),
(220, 110, '_slide_box_1', 'field_64bfcf7c817b9'),
(221, 107, '_thumbnail_id', '109'),
(222, 111, 'slide_heading', 'Shop For Men'),
(223, 111, '_slide_heading', 'field_64bfcf31817b6'),
(224, 111, 'slide_more_link', ''),
(225, 111, '_slide_more_link', 'field_64bfcf5e817b8'),
(226, 111, 'slide_box_1_label', 'Tops'),
(227, 111, '_slide_box_1_label', 'field_64bfcf92817ba'),
(228, 111, 'slide_box_1_icon', ''),
(229, 111, '_slide_box_1_icon', 'field_64bfcfa4817bb'),
(230, 111, 'slide_box_1_link', ''),
(231, 111, '_slide_box_1_link', 'field_64bfcfb9817bc'),
(232, 111, 'slide_box_1', ''),
(233, 111, '_slide_box_1', 'field_64bfcf7c817b9'),
(234, 112, '_wp_attached_file', '2023/07/33035.jpg'),
(235, 112, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:4713;s:6:\"height\";i:4713;s:4:\"file\";s:17:\"2023/07/33035.jpg\";s:8:\"filesize\";i:961226;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:56:\"Product design template of with no graphic  illustration\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:42:\"Product design template of with no graphic\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:26:{i:0;s:7:\"product\";i:1;s:8:\"template\";i:2;s:9:\"accessory\";i:3;s:5:\"blank\";i:4;s:10:\"sleeveless\";i:5;s:5:\"white\";i:6;s:8:\"isolated\";i:7;s:8:\"clipping\";i:8;s:4:\"mask\";i:9;s:5:\"empty\";i:10;s:12:\"illustration\";i:11;s:6:\"vector\";i:12;s:3:\"EPS\";i:13;s:7:\"cartoon\";i:14;s:7:\"graphic\";i:15;s:7:\"drawing\";i:16;s:7:\"clipart\";i:17;s:8:\"clip art\";i:18;s:5:\"image\";i:19;s:7:\"picture\";i:20;s:8:\"clip-art\";i:21;s:10:\"background\";i:22;s:3:\"art\";i:23;s:6:\"design\";i:24;s:5:\"EPS10\";i:25;s:8:\"artistic\";}}}'),
(236, 113, 'slide_heading', 'Shop For Men'),
(237, 113, '_slide_heading', 'field_64bfcf31817b6'),
(238, 113, 'slide_more_link', ''),
(239, 113, '_slide_more_link', 'field_64bfcf5e817b8'),
(240, 113, 'slide_box_1_label', 'Tops'),
(241, 113, '_slide_box_1_label', 'field_64bfcf92817ba'),
(242, 113, 'slide_box_1_icon', '112'),
(243, 113, '_slide_box_1_icon', 'field_64bfcfa4817bb'),
(244, 113, 'slide_box_1_link', ''),
(245, 113, '_slide_box_1_link', 'field_64bfcfb9817bc'),
(246, 113, 'slide_box_1', ''),
(247, 113, '_slide_box_1', 'field_64bfcf7c817b9'),
(248, 107, 'slide_box_2_label', 'Dress'),
(249, 107, '_slide_box_2_label', 'field_64bfcf92817ba'),
(250, 107, 'slide_box_2_icon', '116'),
(251, 107, '_slide_box_2_icon', 'field_64bfcfa4817bb'),
(252, 107, 'slide_box_2_link', ''),
(253, 107, '_slide_box_2_link', 'field_64bfcfb9817bc'),
(254, 107, 'slide_box_2', ''),
(255, 107, '_slide_box_2', 'box_2'),
(256, 114, 'slide_heading', 'Shop For Men'),
(257, 114, '_slide_heading', 'field_64bfcf31817b6'),
(258, 114, 'slide_more_link', ''),
(259, 114, '_slide_more_link', 'field_64bfcf5e817b8'),
(260, 114, 'slide_box_1_label', 'Tops'),
(261, 114, '_slide_box_1_label', 'field_64bfcf92817ba'),
(262, 114, 'slide_box_1_icon', '112'),
(263, 114, '_slide_box_1_icon', 'field_64bfcfa4817bb'),
(264, 114, 'slide_box_1_link', ''),
(265, 114, '_slide_box_1_link', 'field_64bfcfb9817bc'),
(266, 114, 'slide_box_1', ''),
(267, 114, '_slide_box_1', 'field_64bfcf7c817b9'),
(268, 114, 'slide_box_2_label', 'Dress'),
(269, 114, '_slide_box_2_label', 'field_64bfcf92817ba'),
(270, 114, 'slide_box_2_icon', ''),
(271, 114, '_slide_box_2_icon', 'field_64bfcfa4817bb'),
(272, 114, 'slide_box_2_link', ''),
(273, 114, '_slide_box_2_link', 'field_64bfcfb9817bc'),
(274, 114, 'slide_box_2', ''),
(275, 114, '_slide_box_2', 'box_2'),
(276, 116, '_wp_attached_file', '2023/07/pd109-pdvintagecloth00032-image.jpg'),
(277, 116, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:3071;s:6:\"height\";i:4000;s:4:\"file\";s:43:\"2023/07/pd109-pdvintagecloth00032-image.jpg\";s:8:\"filesize\";i:1921975;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:18:\"rawpixel.com / nap\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:79:\"Pink dress vector vintage illustration, remixed from the artwork by Doris Beer.\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:13:\"Rawpixel Ltd.\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:14:\"Template Trace\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:36:{i:0;s:7:\"antique\";i:1;s:7:\"apparel\";i:2;s:3:\"art\";i:3;s:7:\"artwork\";i:4;s:4:\"baby\";i:5;s:11:\"boy\'s dress\";i:6;s:3:\"cc0\";i:7;s:5:\"child\";i:8;s:7:\"child\'s\";i:9;s:7:\"clothes\";i:10;s:8:\"clothing\";i:11;s:16:\"creative commons\";i:12;s:18:\"creative commons 0\";i:13;s:6:\"design\";i:14;s:14:\"design element\";i:15;s:7:\"drawing\";i:16;s:5:\"dress\";i:17;s:7:\"fashion\";i:18;s:7:\"garment\";i:19;s:4:\"gown\";i:20;s:7:\"graphic\";i:21;s:12:\"illustration\";i:22;s:11:\"illustrator\";i:23;s:5:\"items\";i:24;s:3:\"kid\";i:25;s:5:\"kid\'s\";i:26;s:13:\"kid\'s apparel\";i:27;s:14:\"kid\'s clothing\";i:28;s:6:\"object\";i:29;s:3:\"old\";i:30;s:8:\"painting\";i:31;s:4:\"pink\";i:32;s:13:\"public domain\";i:33;s:6:\"vector\";i:34;s:7:\"vintage\";i:35;s:16:\"vintage clothing\";}}}'),
(278, 117, 'slide_heading', 'Shop For Men'),
(279, 117, '_slide_heading', 'field_64bfcf31817b6'),
(280, 117, 'slide_more_link', ''),
(281, 117, '_slide_more_link', 'field_64bfcf5e817b8'),
(282, 117, 'slide_box_1_label', 'Tops'),
(283, 117, '_slide_box_1_label', 'field_64bfcf92817ba'),
(284, 117, 'slide_box_1_icon', '112'),
(285, 117, '_slide_box_1_icon', 'field_64bfcfa4817bb'),
(286, 117, 'slide_box_1_link', ''),
(287, 117, '_slide_box_1_link', 'field_64bfcfb9817bc'),
(288, 117, 'slide_box_1', ''),
(289, 117, '_slide_box_1', 'field_64bfcf7c817b9'),
(290, 117, 'slide_box_2_label', 'Dress'),
(291, 117, '_slide_box_2_label', 'field_64bfcf92817ba'),
(292, 117, 'slide_box_2_icon', '116'),
(293, 117, '_slide_box_2_icon', 'field_64bfcfa4817bb'),
(294, 117, 'slide_box_2_link', ''),
(295, 117, '_slide_box_2_link', 'field_64bfcfb9817bc'),
(296, 117, 'slide_box_2', ''),
(297, 117, '_slide_box_2', 'box_2'),
(298, 118, '_edit_last', '1'),
(299, 118, '_edit_lock', '1690711355:1'),
(300, 120, '_edit_last', '1'),
(301, 120, 'slide_heading', ''),
(302, 120, '_slide_heading', 'field_64bfcf31817b6'),
(303, 120, 'slide_more_link', ''),
(304, 120, '_slide_more_link', 'field_64bfcf5e817b8'),
(305, 120, 'slide_box_1_label', ''),
(306, 120, '_slide_box_1_label', 'field_64bfcf92817ba'),
(307, 120, 'slide_box_1_icon', ''),
(308, 120, '_slide_box_1_icon', 'field_64bfcfa4817bb'),
(309, 120, 'slide_box_1_link', ''),
(310, 120, '_slide_box_1_link', 'field_64bfcfb9817bc'),
(311, 120, 'slide_box_1', ''),
(312, 120, '_slide_box_1', 'field_64bfcf7c817b9'),
(313, 120, 'slide_box_2_label', ''),
(314, 120, '_slide_box_2_label', 'field_64bfcf92817ba'),
(315, 120, 'slide_box_2_icon', ''),
(316, 120, '_slide_box_2_icon', 'field_64bfcfa4817bb'),
(317, 120, 'slide_box_2_link', ''),
(318, 120, '_slide_box_2_link', 'field_64bfcfb9817bc'),
(319, 120, 'slide_box_2', ''),
(320, 120, '_slide_box_2', 'box_2'),
(321, 120, '_', 'field_64c4faf145811'),
(322, 121, 'slide_heading', ''),
(323, 121, '_slide_heading', 'field_64bfcf31817b6'),
(324, 121, 'slide_more_link', ''),
(325, 121, '_slide_more_link', 'field_64bfcf5e817b8'),
(326, 121, 'slide_box_1_label', ''),
(327, 121, '_slide_box_1_label', 'field_64bfcf92817ba'),
(328, 121, 'slide_box_1_icon', ''),
(329, 121, '_slide_box_1_icon', 'field_64bfcfa4817bb'),
(330, 121, 'slide_box_1_link', ''),
(331, 121, '_slide_box_1_link', 'field_64bfcfb9817bc'),
(332, 121, 'slide_box_1', ''),
(333, 121, '_slide_box_1', 'field_64bfcf7c817b9'),
(334, 121, 'slide_box_2_label', ''),
(335, 121, '_slide_box_2_label', 'field_64bfcf92817ba'),
(336, 121, 'slide_box_2_icon', ''),
(337, 121, '_slide_box_2_icon', 'field_64bfcfa4817bb'),
(338, 121, 'slide_box_2_link', ''),
(339, 121, '_slide_box_2_link', 'field_64bfcfb9817bc'),
(340, 121, 'slide_box_2', ''),
(341, 121, '_slide_box_2', 'box_2'),
(342, 120, '_edit_lock', '1690630889:1'),
(343, 120, '_wp_trash_meta_status', 'publish'),
(344, 120, '_wp_trash_meta_time', '1690711603'),
(345, 120, '_wp_desired_post_slug', '120-2'),
(346, 118, '_wp_trash_meta_status', 'publish'),
(347, 118, '_wp_trash_meta_time', '1690712900'),
(348, 118, '_wp_desired_post_slug', 'group_64c4faf0f25fb'),
(349, 119, '_wp_trash_meta_status', 'publish'),
(350, 119, '_wp_trash_meta_time', '1690712901'),
(351, 119, '_wp_desired_post_slug', 'field_64c4faf145811'),
(352, 123, 'slide_heading', 'Shop For Men'),
(353, 123, '_slide_heading', 'field_64bfcf31817b6'),
(354, 123, 'slide_more_link', 'https://almasthemes.com'),
(355, 123, '_slide_more_link', 'field_64bfcf5e817b8'),
(356, 123, 'slide_box_1_label', 'Tops'),
(357, 123, '_slide_box_1_label', 'field_64bfcf92817ba'),
(358, 123, 'slide_box_1_icon', '112'),
(359, 123, '_slide_box_1_icon', 'field_64bfcfa4817bb'),
(360, 123, 'slide_box_1_link', ''),
(361, 123, '_slide_box_1_link', 'field_64bfcfb9817bc'),
(362, 123, 'slide_box_1', ''),
(363, 123, '_slide_box_1', 'field_64bfcf7c817b9'),
(364, 123, 'slide_box_2_label', 'Dress'),
(365, 123, '_slide_box_2_label', 'field_64bfcf92817ba'),
(366, 123, 'slide_box_2_icon', '116'),
(367, 123, '_slide_box_2_icon', 'field_64bfcfa4817bb'),
(368, 123, 'slide_box_2_link', ''),
(369, 123, '_slide_box_2_link', 'field_64bfcfb9817bc'),
(370, 123, 'slide_box_2', ''),
(371, 123, '_slide_box_2', 'box_2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-07-18 03:59:23', '2023-07-18 03:59:23', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-07-18 03:59:23', '2023-07-18 03:59:23', '', 0, 'http://localhost/wp-shopx/?p=1', 0, 'post', '', 1),
(2, 1, '2023-07-18 03:59:23', '2023-07-18 03:59:23', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/wp-shopx/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-07-18 03:59:23', '2023-07-18 03:59:23', '', 0, 'http://localhost/wp-shopx/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-07-18 03:59:23', '2023-07-18 03:59:23', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/wp-shopx.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-07-18 03:59:23', '2023-07-18 03:59:23', '', 0, 'http://localhost/wp-shopx/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-07-20 05:17:01', '2023-07-20 05:17:01', '', 'Terma & Conditions', '', 'publish', 'closed', 'closed', '', 'terma-conditions', '', '', '2023-07-20 05:17:01', '2023-07-20 05:17:01', '', 0, 'http://localhost/wp-shopx/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2023-07-20 05:17:01', '2023-07-20 05:17:01', '', '24/7 Support', '', 'publish', 'closed', 'closed', '', '24-7-support', '', '', '2023-07-20 05:17:01', '2023-07-20 05:17:01', '', 0, 'http://localhost/wp-shopx/?p=6', 2, 'nav_menu_item', '', 0),
(7, 1, '2023-07-20 05:17:01', '2023-07-20 05:17:01', '', 'Return Refund', '', 'publish', 'closed', 'closed', '', 'return-refund', '', '', '2023-07-20 05:17:01', '2023-07-20 05:17:01', '', 0, 'http://localhost/wp-shopx/?p=7', 3, 'nav_menu_item', '', 0),
(10, 1, '2023-07-20 07:02:55', '2023-07-20 07:02:55', '{\n    \"shopx::custom_logo\": {\n        \"value\": 9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 07:02:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'aee8bb33-b5ef-4201-9f76-9c35ca8b0c21', '', '', '2023-07-20 07:02:55', '2023-07-20 07:02:55', '', 0, 'http://localhost/wp-shopx/2023/07/20/aee8bb33-b5ef-4201-9f76-9c35ca8b0c21/', 0, 'customize_changeset', '', 0),
(13, 1, '2023-07-20 07:16:49', '2023-07-20 07:16:49', '{\n    \"shopx::custom_logo\": {\n        \"value\": 20,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 07:16:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ead9b9a1-59fd-4fe3-927a-3e4ae284b435', '', '', '2023-07-20 07:16:49', '2023-07-20 07:16:49', '', 0, 'http://localhost/wp-shopx/?p=13', 0, 'customize_changeset', '', 0),
(23, 1, '2023-07-20 07:18:30', '2023-07-20 07:18:30', '{\n    \"shopx::custom_logo\": {\n        \"value\": 22,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 07:18:30\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9de24f19-df4a-4834-beff-aca4c37a10d8', '', '', '2023-07-20 07:18:30', '2023-07-20 07:18:30', '', 0, 'http://localhost/wp-shopx/2023/07/20/9de24f19-df4a-4834-beff-aca4c37a10d8/', 0, 'customize_changeset', '', 0),
(25, 1, '2023-07-20 07:19:01', '2023-07-20 07:19:01', '{\n    \"shopx::custom_logo\": {\n        \"value\": 24,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 07:19:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f73f2ab8-c5a1-4e8f-9114-8ca3f0cd79ba', '', '', '2023-07-20 07:19:01', '2023-07-20 07:19:01', '', 0, 'http://localhost/wp-shopx/2023/07/20/f73f2ab8-c5a1-4e8f-9114-8ca3f0cd79ba/', 0, 'customize_changeset', '', 0),
(27, 1, '2023-07-20 07:19:38', '2023-07-20 07:19:38', '{\n    \"shopx::custom_logo\": {\n        \"value\": 26,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 07:19:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '63f159a7-f477-4644-9faf-f51e485adb42', '', '', '2023-07-20 07:19:38', '2023-07-20 07:19:38', '', 0, 'http://localhost/wp-shopx/2023/07/20/63f159a7-f477-4644-9faf-f51e485adb42/', 0, 'customize_changeset', '', 0),
(28, 1, '2023-07-20 08:06:36', '2023-07-20 08:06:36', '{\n    \"shopx::custom_logo\": {\n        \"value\": 30,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 08:06:36\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'abf929fa-c074-4372-9425-9a94cf1a289a', '', '', '2023-07-20 08:06:36', '2023-07-20 08:06:36', '', 0, 'http://localhost/wp-shopx/?p=28', 0, 'customize_changeset', '', 0),
(29, 1, '2023-07-20 08:06:18', '2023-07-20 08:06:18', '', 'almasthemeslogo-blacklight', '', 'inherit', 'open', 'closed', '', 'almasthemeslogo-blacklight', '', '', '2023-07-20 08:06:18', '2023-07-20 08:06:18', '', 0, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/almasthemeslogo-blacklight.png', 0, 'attachment', 'image/png', 0),
(30, 1, '2023-07-20 08:06:31', '2023-07-20 08:06:31', 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight.png', 'cropped-almasthemeslogo-blacklight.png', '', 'inherit', 'open', 'closed', '', 'cropped-almasthemeslogo-blacklight-png', '', '', '2023-07-20 08:06:31', '2023-07-20 08:06:31', '', 0, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2023-07-20 08:08:58', '2023-07-20 08:08:58', '', 'almasthemeslogo-blacklight', '', 'inherit', 'open', 'closed', '', 'almasthemeslogo-blacklight-2', '', '', '2023-07-20 08:08:58', '2023-07-20 08:08:58', '', 0, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/almasthemeslogo-blacklight-1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2023-07-20 08:09:10', '2023-07-20 08:09:10', 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight-1.png', 'almasthemeslogo-blacklight', '', 'inherit', 'open', 'closed', '', 'almasthemeslogo-blacklight-3', '', '', '2023-07-20 08:09:10', '2023-07-20 08:09:10', '', 0, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight-1.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2023-07-20 08:09:18', '2023-07-20 08:09:18', '{\n    \"shopx::custom_logo\": {\n        \"value\": 32,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 08:09:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '126e3b06-397a-4685-b047-a91c1270bfda', '', '', '2023-07-20 08:09:18', '2023-07-20 08:09:18', '', 0, 'http://localhost/wp-shopx/?p=33', 0, 'customize_changeset', '', 0),
(34, 1, '2023-07-20 08:10:43', '2023-07-20 08:10:43', '{\n    \"shopx::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 08:10:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '411d377c-ce6b-4123-a493-8d7b6847ad43', '', '', '2023-07-20 08:10:43', '2023-07-20 08:10:43', '', 0, 'http://localhost/wp-shopx/2023/07/20/411d377c-ce6b-4123-a493-8d7b6847ad43/', 0, 'customize_changeset', '', 0),
(35, 1, '2023-07-20 08:11:05', '2023-07-20 08:11:05', 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight-1.png', 'almasthemeslogo-blacklight', '', 'inherit', 'open', 'closed', '', 'almasthemeslogo-blacklight-4', '', '', '2023-07-20 08:11:05', '2023-07-20 08:11:05', '', 0, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-cropped-almasthemeslogo-blacklight-1.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2023-07-20 08:11:07', '2023-07-20 08:11:07', '{\n    \"shopx::custom_logo\": {\n        \"value\": 35,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 08:11:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b7b5e8d3-b91e-479c-8060-8af5c5f48852', '', '', '2023-07-20 08:11:07', '2023-07-20 08:11:07', '', 0, 'http://localhost/wp-shopx/2023/07/20/b7b5e8d3-b91e-479c-8060-8af5c5f48852/', 0, 'customize_changeset', '', 0),
(38, 1, '2023-07-20 08:13:58', '2023-07-20 08:13:58', '{\n    \"site_icon\": {\n        \"value\": 37,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 08:13:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '6a0f9b4c-798a-426b-99f6-a137ebffe294', '', '', '2023-07-20 08:13:58', '2023-07-20 08:13:58', '', 0, 'http://localhost/wp-shopx/2023/07/20/6a0f9b4c-798a-426b-99f6-a137ebffe294/', 0, 'customize_changeset', '', 0),
(39, 1, '2023-07-20 08:14:31', '2023-07-20 08:14:31', 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight-1-1.png', 'cropped-almasthemeslogo-blacklight-1-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-almasthemeslogo-blacklight-1-1-png', '', '', '2023-07-20 08:14:31', '2023-07-20 08:14:31', '', 0, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight-1-1.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2023-07-20 08:14:52', '2023-07-20 08:14:52', 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-cropped-cropped-almasthemeslogo-blacklight-1.png', 'cropped-cropped-cropped-almasthemeslogo-blacklight-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-cropped-almasthemeslogo-blacklight-1-png', '', '', '2023-07-20 08:14:52', '2023-07-20 08:14:52', '', 0, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-cropped-cropped-almasthemeslogo-blacklight-1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2023-07-20 08:14:54', '2023-07-20 08:14:54', '{\n    \"site_icon\": {\n        \"value\": 40,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 08:14:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '05473ad9-bac9-4463-9745-96fb5421d2b0', '', '', '2023-07-20 08:14:54', '2023-07-20 08:14:54', '', 0, 'http://localhost/wp-shopx/2023/07/20/05473ad9-bac9-4463-9745-96fb5421d2b0/', 0, 'customize_changeset', '', 0),
(42, 1, '2023-07-20 08:15:23', '2023-07-20 08:15:23', 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-cropped-almasthemeslogo-blacklight.png', 'cropped-cropped-almasthemeslogo-blacklight.png', '', 'inherit', 'open', 'closed', '', 'cropped-cropped-almasthemeslogo-blacklight-png', '', '', '2023-07-20 08:15:23', '2023-07-20 08:15:23', '', 0, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-cropped-almasthemeslogo-blacklight.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2023-07-20 08:15:25', '2023-07-20 08:15:25', '{\n    \"site_icon\": {\n        \"value\": 42,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-20 08:15:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bfa23737-1e71-4094-8bfb-4ea5f3240224', '', '', '2023-07-20 08:15:25', '2023-07-20 08:15:25', '', 0, 'http://localhost/wp-shopx/2023/07/20/bfa23737-1e71-4094-8bfb-4ea5f3240224/', 0, 'customize_changeset', '', 0),
(44, 1, '2023-07-21 07:03:07', '2023-07-21 07:03:07', '{\n    \"shopx::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-21 07:03:07\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2bd3cf66-ef66-4130-95cb-71b361d21810', '', '', '2023-07-21 07:03:07', '2023-07-21 07:03:07', '', 0, 'http://localhost/wp-shopx/2023/07/21/2bd3cf66-ef66-4130-95cb-71b361d21810/', 0, 'customize_changeset', '', 0),
(45, 1, '2023-07-21 07:03:52', '2023-07-21 07:03:52', 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight-1-2.png', 'almasthemeslogo-blacklight', '', 'inherit', 'open', 'closed', '', 'almasthemeslogo-blacklight-5', '', '', '2023-07-21 07:03:52', '2023-07-21 07:03:52', '', 0, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight-1-2.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2023-07-21 07:03:56', '2023-07-21 07:03:56', '{\n    \"shopx::custom_logo\": {\n        \"value\": 45,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-21 07:03:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2caa0895-2b48-4054-9115-68b0ce4e161b', '', '', '2023-07-21 07:03:56', '2023-07-21 07:03:56', '', 0, 'http://localhost/wp-shopx/2023/07/21/2caa0895-2b48-4054-9115-68b0ce4e161b/', 0, 'customize_changeset', '', 0),
(47, 1, '2023-07-21 07:07:40', '2023-07-21 07:07:40', '{\n    \"shopx::custom_logo\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-21 07:07:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a713e7ee-0fbc-4081-830e-14df6bbc671d', '', '', '2023-07-21 07:07:40', '2023-07-21 07:07:40', '', 0, 'http://localhost/wp-shopx/2023/07/21/a713e7ee-0fbc-4081-830e-14df6bbc671d/', 0, 'customize_changeset', '', 0),
(48, 1, '2023-07-21 07:08:17', '2023-07-21 07:08:17', 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight-1-3.png', 'almasthemeslogo-blacklight', '', 'inherit', 'open', 'closed', '', 'almasthemeslogo-blacklight-6', '', '', '2023-07-21 07:08:17', '2023-07-21 07:08:17', '', 0, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/cropped-almasthemeslogo-blacklight-1-3.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2023-07-21 07:08:21', '2023-07-21 07:08:21', '{\n    \"shopx::custom_logo\": {\n        \"value\": 48,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2023-07-21 07:08:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8575336f-ae5e-47f2-bfc2-1f0ff11037d6', '', '', '2023-07-21 07:08:21', '2023-07-21 07:08:21', '', 0, 'http://localhost/wp-shopx/2023/07/21/8575336f-ae5e-47f2-bfc2-1f0ff11037d6/', 0, 'customize_changeset', '', 0),
(50, 1, '2023-07-21 10:21:32', '2023-07-21 10:21:32', '<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <almasicareco@gmail.com>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <almasicareco@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2023-07-21 10:21:32', '2023-07-21 10:21:32', '', 0, 'http://localhost/wp-shopx/?post_type=wpcf7_contact_form&p=50', 0, 'wpcf7_contact_form', '', 0),
(51, 1, '2023-07-21 10:22:14', '2023-07-21 10:22:14', '[email* your-email autocomplete:email]\r\n\r\n[submit \"Submit\"]\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <almasicareco@gmail.com>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <almasicareco@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Email Subscribe', '', 'publish', 'closed', 'closed', '', 'email-subscribe', '', '', '2023-07-21 14:40:48', '2023-07-21 14:40:48', '', 0, 'http://localhost/wp-shopx/?post_type=wpcf7_contact_form&#038;p=51', 0, 'wpcf7_contact_form', '', 0),
(52, 1, '2023-07-24 14:10:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:10:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=52', 0, 'category_slider', '', 0),
(53, 1, '2023-07-24 14:11:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:11:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=53', 0, 'category_slider', '', 0),
(54, 1, '2023-07-24 14:11:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:11:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=54', 0, 'category_slider', '', 0),
(55, 1, '2023-07-24 14:12:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:12:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=55', 0, 'category_slider', '', 0),
(56, 1, '2023-07-24 14:13:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:13:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=56', 0, 'category_slider', '', 0),
(57, 1, '2023-07-24 14:14:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:14:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=57', 0, 'category_slider', '', 0),
(58, 1, '2023-07-24 14:16:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:16:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=58', 0, 'category_slider', '', 0),
(59, 1, '2023-07-24 14:17:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:17:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=59', 0, 'category_slider', '', 0),
(60, 1, '2023-07-24 14:19:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:19:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=60', 0, 'category_slider', '', 0),
(61, 1, '2023-07-24 14:22:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:22:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=61', 0, 'category_slider', '', 0),
(62, 1, '2023-07-24 14:22:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:22:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=62', 0, 'category_slider', '', 0),
(63, 1, '2023-07-24 14:23:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:23:02', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=63', 0, 'category_slider', '', 0),
(64, 1, '2023-07-24 14:23:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 14:23:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=64', 0, 'category_slider', '', 0),
(65, 1, '2023-07-24 15:26:14', '2023-07-24 15:26:14', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"category_slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Category Slider Info', 'category-slider-info', 'trash', 'closed', 'closed', '', 'group_64be97c617b61__trashed', '', '', '2023-07-24 15:28:33', '2023-07-24 15:28:33', '', 0, 'http://localhost/wp-shopx/?post_type=acf-field-group&#038;p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2023-07-24 15:26:13', '2023-07-24 15:26:13', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Heading', 'Heading', 'trash', 'closed', 'closed', '', 'field_64be97c696cdd__trashed', '', '', '2023-07-24 15:28:34', '2023-07-24 15:28:34', '', 65, 'http://localhost/wp-shopx/?post_type=acf-field&#038;p=66', 0, 'acf-field', '', 0),
(67, 1, '2023-07-24 15:26:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:26:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=67', 0, 'category_slider', '', 0),
(68, 1, '2023-07-24 15:28:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:28:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=68', 0, 'category_slider', '', 0),
(69, 1, '2023-07-24 15:28:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:28:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=69', 0, 'category_slider', '', 0),
(70, 1, '2023-07-24 15:31:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:31:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=70', 0, 'category_slider', '', 0),
(71, 1, '2023-07-24 15:32:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:32:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=71', 0, 'category_slider', '', 0),
(72, 1, '2023-07-24 15:32:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:32:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=72', 0, 'category_slider', '', 0),
(73, 1, '2023-07-24 15:32:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:32:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=73', 0, 'category_slider', '', 0),
(74, 1, '2023-07-24 15:33:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:33:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=74', 0, 'category_slider', '', 0),
(75, 1, '2023-07-24 15:33:47', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:33:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=75', 0, 'category_slider', '', 0),
(76, 1, '2023-07-24 15:33:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:33:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=76', 0, 'category_slider', '', 0),
(77, 1, '2023-07-24 15:34:03', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:34:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=77', 0, 'category_slider', '', 0),
(78, 1, '2023-07-24 15:34:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:34:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=78', 0, 'category_slider', '', 0),
(79, 1, '2023-07-24 15:34:56', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:34:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=79', 0, 'category_slider', '', 0),
(80, 1, '2023-07-24 15:36:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-24 15:36:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=80', 0, 'category_slider', '', 0),
(81, 1, '2023-07-25 13:05:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-07-25 13:05:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?p=81', 0, 'post', '', 0),
(82, 1, '2023-07-25 13:08:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:08:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=82', 0, 'category_slider', '', 0),
(83, 1, '2023-07-25 13:08:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:08:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=83', 0, 'category_slider', '', 0),
(84, 1, '2023-07-25 13:08:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:08:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=84', 0, 'category_slider', '', 0),
(85, 1, '2023-07-25 13:09:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:09:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=85', 0, 'category_slider', '', 0),
(86, 1, '2023-07-25 13:12:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:12:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=86', 0, 'category_slider', '', 0),
(87, 1, '2023-07-25 13:12:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:12:32', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=87', 0, 'category_slider', '', 0),
(88, 1, '2023-07-25 13:14:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:14:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=88', 0, 'category_slider', '', 0),
(89, 1, '2023-07-25 13:36:42', '2023-07-25 13:36:42', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"category_slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Slider Info', 'slider-info', 'trash', 'closed', 'closed', '', 'group_64bfcf3013ce6__trashed', '', '', '2023-07-25 13:38:45', '2023-07-25 13:38:45', '', 0, 'http://localhost/wp-shopx/?post_type=acf-field-group&#038;p=89', 0, 'acf-field-group', '', 0),
(90, 1, '2023-07-25 13:36:41', '2023-07-25 13:36:41', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Slide Heading', 'slide_heading', 'trash', 'closed', 'closed', '', 'field_64bfcf31817b6__trashed', '', '', '2023-07-25 13:38:46', '2023-07-25 13:38:46', '', 89, 'http://localhost/wp-shopx/?post_type=acf-field&#038;p=90', 0, 'acf-field', '', 0),
(91, 1, '2023-07-25 13:36:42', '2023-07-25 13:36:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Slide More Link', 'slide_more_link', 'trash', 'closed', 'closed', '', 'field_64bfcf5e817b8__trashed', '', '', '2023-07-25 13:38:46', '2023-07-25 13:38:46', '', 89, 'http://localhost/wp-shopx/?post_type=acf-field&#038;p=91', 1, 'acf-field', '', 0),
(92, 1, '2023-07-25 13:36:42', '2023-07-25 13:36:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"group\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:6:\"layout\";s:5:\"block\";s:10:\"sub_fields\";a:0:{}}', 'Slide Box 1', 'slide_box_1', 'trash', 'closed', 'closed', '', 'field_64bfcf7c817b9__trashed', '', '', '2023-07-25 13:38:46', '2023-07-25 13:38:46', '', 89, 'http://localhost/wp-shopx/?post_type=acf-field&#038;p=92', 2, 'acf-field', '', 0),
(93, 1, '2023-07-25 13:36:42', '2023-07-25 13:36:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Label', 'label', 'publish', 'closed', 'closed', '', 'field_64bfcf92817ba', '', '', '2023-07-25 13:36:42', '2023-07-25 13:36:42', '', 92, 'http://localhost/wp-shopx/?post_type=acf-field&p=93', 0, 'acf-field', '', 0),
(94, 1, '2023-07-25 13:36:42', '2023-07-25 13:36:42', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:12:\"preview_size\";s:6:\"medium\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_64bfcfa4817bb', '', '', '2023-07-25 13:36:42', '2023-07-25 13:36:42', '', 92, 'http://localhost/wp-shopx/?post_type=acf-field&p=94', 1, 'acf-field', '', 0),
(95, 1, '2023-07-25 13:36:42', '2023-07-25 13:36:42', 'a:8:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_64bfcfb9817bc', '', '', '2023-07-25 13:36:42', '2023-07-25 13:36:42', '', 92, 'http://localhost/wp-shopx/?post_type=acf-field&p=95', 2, 'acf-field', '', 0),
(96, 1, '2023-07-25 13:37:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:37:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=96', 0, 'category_slider', '', 0),
(97, 1, '2023-07-25 13:38:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:38:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=97', 0, 'category_slider', '', 0),
(98, 1, '2023-07-25 13:38:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:38:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=98', 0, 'category_slider', '', 0),
(99, 1, '2023-07-25 13:39:13', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:39:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=99', 0, 'category_slider', '', 0),
(100, 1, '2023-07-25 13:39:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:39:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=100', 0, 'category_slider', '', 0),
(101, 1, '2023-07-25 13:45:35', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:45:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=101', 0, 'category_slider', '', 0),
(102, 1, '2023-07-25 13:46:27', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:46:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=102', 0, 'category_slider', '', 0),
(103, 1, '2023-07-25 13:48:05', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:48:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=103', 0, 'category_slider', '', 0),
(104, 1, '2023-07-25 13:49:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-07-25 13:49:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&p=104', 0, 'category_slider', '', 0),
(105, 1, '2023-07-26 10:34:19', '2023-07-26 10:34:19', '', 'Front Page', '', 'publish', 'closed', 'closed', '', 'front-page', '', '', '2023-07-26 10:34:19', '2023-07-26 10:34:19', '', 0, 'http://localhost/wp-shopx/?page_id=105', 0, 'page', '', 0),
(106, 1, '2023-07-26 10:34:19', '2023-07-26 10:34:19', '', 'Front Page', '', 'inherit', 'closed', 'closed', '', '105-revision-v1', '', '', '2023-07-26 10:34:19', '2023-07-26 10:34:19', '', 105, 'http://localhost/wp-shopx/?p=106', 0, 'revision', '', 0),
(107, 1, '2023-07-26 10:43:58', '2023-07-26 10:43:58', '', 'Slider 1', '', 'publish', 'closed', 'closed', '', 'slider-1', '', '', '2023-07-30 10:43:00', '2023-07-30 10:43:00', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&#038;p=107', 0, 'category_slider', '', 0),
(108, 1, '2023-07-26 10:43:58', '2023-07-26 10:43:58', '', 'Slider 1', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2023-07-26 10:43:58', '2023-07-26 10:43:58', '', 107, 'http://localhost/wp-shopx/?p=108', 0, 'revision', '', 0),
(109, 1, '2023-07-26 10:54:27', '2023-07-26 10:54:27', '', 'tops', '', 'inherit', 'open', 'closed', '', 'tops', '', '', '2023-07-26 10:54:27', '2023-07-26 10:54:27', '', 107, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/tops.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2023-07-26 10:54:35', '2023-07-26 10:54:35', '', 'Slider 1', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2023-07-26 10:54:35', '2023-07-26 10:54:35', '', 107, 'http://localhost/wp-shopx/?p=110', 0, 'revision', '', 0),
(111, 1, '2023-07-26 10:55:09', '2023-07-26 10:55:09', '', 'Slider 1', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2023-07-26 10:55:09', '2023-07-26 10:55:09', '', 107, 'http://localhost/wp-shopx/?p=111', 0, 'revision', '', 0),
(112, 1, '2023-07-26 11:04:39', '2023-07-26 11:04:39', '', 'Product design template of with no graphic', 'Product design template of with no graphic  illustration', 'inherit', 'open', 'closed', '', 'product-design-template-of-with-no-graphic', '', '', '2023-07-26 11:04:39', '2023-07-26 11:04:39', '', 107, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/33035.jpg', 0, 'attachment', 'image/jpeg', 0),
(113, 1, '2023-07-26 11:04:45', '2023-07-26 11:04:45', '', 'Slider 1', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2023-07-26 11:04:45', '2023-07-26 11:04:45', '', 107, 'http://localhost/wp-shopx/?p=113', 0, 'revision', '', 0),
(114, 1, '2023-07-26 11:20:00', '2023-07-26 11:20:00', '', 'Slider 1', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2023-07-26 11:20:00', '2023-07-26 11:20:00', '', 107, 'http://localhost/wp-shopx/?p=114', 0, 'revision', '', 0),
(116, 1, '2023-07-29 11:34:36', '2023-07-29 11:34:36', '', 'Template Trace', 'Pink dress vector vintage illustration, remixed from the artwork by Doris Beer.', 'inherit', 'open', 'closed', '', 'template-trace', '', '', '2023-07-29 11:37:26', '2023-07-29 11:37:26', '', 107, 'http://localhost/wp-shopx/wp-content/uploads/2023/07/pd109-pdvintagecloth00032-image.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2023-07-29 11:37:26', '2023-07-29 11:37:26', '', 'Slider 1', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2023-07-29 11:37:26', '2023-07-29 11:37:26', '', 107, 'http://localhost/wp-shopx/?p=117', 0, 'revision', '', 0),
(118, 1, '2023-07-29 11:41:51', '2023-07-29 11:41:51', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:15:\"category_slider\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'TEST', 'test', 'trash', 'closed', 'closed', '', 'group_64c4faf0f25fb__trashed', '', '', '2023-07-30 10:28:21', '2023-07-30 10:28:21', '', 0, 'http://localhost/wp-shopx/?post_type=acf-field-group&#038;p=118', 0, 'acf-field-group', '', 0),
(119, 1, '2023-07-29 11:41:50', '2023-07-29 11:41:50', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Name', 'name', 'trash', 'closed', 'closed', '', 'field_64c4faf145811__trashed', '', '', '2023-07-30 10:28:21', '2023-07-30 10:28:21', '', 118, 'http://localhost/wp-shopx/?post_type=acf-field&#038;p=119', 0, 'acf-field', '', 0),
(120, 1, '2023-07-29 11:42:42', '2023-07-29 11:42:42', '', '', '', 'trash', 'closed', 'closed', '', '120-2__trashed', '', '', '2023-07-30 10:06:43', '2023-07-30 10:06:43', '', 0, 'http://localhost/wp-shopx/?post_type=category_slider&#038;p=120', 0, 'category_slider', '', 0),
(121, 1, '2023-07-29 11:42:42', '2023-07-29 11:42:42', '', '', '', 'inherit', 'closed', 'closed', '', '120-revision-v1', '', '', '2023-07-29 11:42:42', '2023-07-29 11:42:42', '', 120, 'http://localhost/wp-shopx/?p=121', 0, 'revision', '', 0),
(123, 1, '2023-07-30 10:43:00', '2023-07-30 10:43:00', '', 'Slider 1', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2023-07-30 10:43:00', '2023-07-30 10:43:00', '', 107, 'http://localhost/wp-shopx/?p=123', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Small Top Nav', 'small-top-nav', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 2, 0),
(7, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'almas'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'false'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"2b80f69dc4f1ef02c4a79004723163bef635b03660f590f556857cab909548eb\";a:4:{s:10:\"expiration\";i:1690803064;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36\";s:5:\"login\";i:1690630264;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '81'),
(18, 1, 'wp_persisted_preferences', 'a:3:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:28:\"taxonomy-panel-property_type\";i:2;s:23:\"taxonomy-panel-location\";i:3;s:15:\"page-attributes\";}}s:9:\"_modified\";s:24:\"2023-07-18T04:24:31.970Z\";s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1689837203'),
(23, 1, 'wp_media_library_mode', 'grid'),
(24, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(25, 1, 'acf_user_settings', 'a:1:{s:19:\"post-type-first-run\";b:1;}'),
(26, 1, 'closedpostboxes_category_slider', 'a:0:{}'),
(27, 1, 'metaboxhidden_category_slider', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'meta-box-order_category_slider', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:22:\"submitdiv,postimagediv\";s:6:\"normal\";s:65:\"acf-group_64bfcf3013ce6,slugdiv,acf-group_64c4faf0f25fb,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_category_slider', '2'),
(30, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(31, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'almas', '$P$BSPAEgRtH2S7XZ2zN2UAxiE6f2lGde/', 'almas', 'almasicareco@gmail.com', 'http://localhost/wp-shopx', '2023-07-18 03:59:23', '', 0, 'almas');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=372;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
