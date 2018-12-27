-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 27, 2018 at 06:48 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mfm`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-11-24 19:57:45', '2018-11-24 19:57:45', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/wordpress', 'yes'),
(2, 'home', 'http://localhost:8888/wordpress', 'yes'),
(3, 'blogname', 'MFM Studio [Music For Media]', 'yes'),
(4, 'blogdescription', 'You Tell The Story We Set The Tone', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'seda1094@gmail.com', 'yes'),
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
(29, 'rewrite_rules', 'a:89:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:43:\"featured-video-plus/featured-video-plus.php\";i:1;s:41:\"soundcloud-is-gold/soundcloud-is-gold.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'html5up-forty', 'yes'),
(41, 'stylesheet', 'html5up-forty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '100', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:41:\"soundcloud-is-gold/soundcloud-is-gold.php\";s:40:\"soundcloud_is_gold_delete_plugin_options\";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:6:{s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:19:\"wp_inactive_widgets\";a:0:{}s:8:\"sidebar1\";a:2:{i:0;s:10:\"nav_menu-2\";i:1;s:13:\"media_audio-2\";}s:7:\"footer1\";a:0:{}s:7:\"footer2\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:2:{i:2;a:10:{s:13:\"attachment_id\";i:30;s:3:\"url\";s:68:\"http://localhost:8888/wordpress/wp-content/uploads/2018/11/birds.mp3\";s:5:\"title\";s:11:\"Recent Work\";s:7:\"preload\";s:4:\"none\";s:4:\"loop\";b:0;s:3:\"mp3\";s:68:\"http://localhost:8888/wordpress/wp-content/uploads/2018/11/birds.mp3\";s:3:\"ogg\";s:0:\"\";s:4:\"flac\";s:0:\"\";s:3:\"m4a\";s:0:\"\";s:3:\"wav\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:2:{i:2;a:2:{s:5:\"title\";s:4:\"MENU\";s:8:\"nav_menu\";i:8;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1543651066;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543694361;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543694998;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1545937066;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1545940666;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1543089575;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(123, '_site_transient_timeout_browser_a98fe95c6c157140252b7f921f02fb5d', '1543694362', 'no'),
(124, '_site_transient_browser_a98fe95c6c157140252b7f921f02fb5d', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"12.0.1\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(135, 'theme_mods_html5up-forty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"poghos\";i:8;}}', 'yes'),
(143, 'current_theme', 'mm', 'yes'),
(144, 'theme_switched', '', 'yes'),
(145, 'theme_switched_via_customizer', '', 'yes'),
(146, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(157, 'category_children', 'a:0:{}', 'yes'),
(158, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(165, 'recently_activated', 'a:2:{s:33:\"karma-by-kadar/karma-by-kadar.php\";i:1543344852;s:47:\"embed-video-thumbnail/embed-video-thumbnail.php\";i:1543344843;}', 'yes'),
(170, 'soundcloud_is_gold_options', 'a:7:{s:24:\"soundcloud_is_gold_users\";a:1:{i:130643;a:3:{i:0;i:130643;i:1;s:3:\"mfm\";i:2;s:59:\"https://i1.sndcdn.com/avatars-000003707939-q7sqcu-large.jpg\";}}s:30:\"soundcloud_is_gold_active_user\";N;s:27:\"soundcloud_is_gold_settings\";a:2:{i:1;s:4:\"true\";i:2;s:4:\"true\";}s:33:\"soundcloud_is_gold_width_settings\";a:3:{s:2:\"wp\";s:5:\"300px\";s:4:\"type\";s:6:\"custom\";s:6:\"custom\";s:4:\"100%\";}s:34:\"soundcloud_is_gold_height_settings\";a:1:{s:8:\"playlist\";s:0:\"\";}s:24:\"soundcloud_is_gold_color\";s:7:\"#ff7700\";s:26:\"soundcloud_is_gold_classes\";s:0:\"\";}', 'yes'),
(171, 'widget_soundcloud_is_gold_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(202, 'widget_karma_by_kadar__simple_player__widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(213, '_site_transient_timeout_browser_2b65bcd416b69043351960bca44acbff', '1543947182', 'no'),
(214, '_site_transient_browser_2b65bcd416b69043351960bca44acbff', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.110\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(224, 'fs_active_plugins', 'O:8:\"stdClass\":0:{}', 'yes'),
(225, 'fs_debug_mode', '', 'yes'),
(226, 'fs_accounts', 'a:12:{s:21:\"id_slug_type_path_map\";a:1:{i:2276;a:2:{s:4:\"slug\";s:21:\"embed-video-thumbnail\";s:4:\"type\";s:6:\"plugin\";}}s:11:\"plugin_data\";a:1:{s:21:\"embed-video-thumbnail\";a:18:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:9:\"prev_path\";s:47:\"embed-video-thumbnail/embed-video-thumbnail.php\";}s:17:\"install_timestamp\";i:1543344517;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.1.1\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"1.3.0\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:21:\"is_plugin_new_install\";b:1;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"localhost:8888\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1543344517;s:7:\"version\";s:5:\"1.3.0\";}s:17:\"was_plugin_loaded\";b:1;s:15:\"prev_is_premium\";b:0;s:14:\"has_trial_plan\";b:1;s:22:\"install_sync_timestamp\";i:1543344841;s:20:\"activation_timestamp\";i:1543344549;s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"11\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:1:{s:47:\"embed-video-thumbnail/embed-video-thumbnail.php\";s:21:\"embed-video-thumbnail\";}s:7:\"plugins\";a:1:{s:21:\"embed-video-thumbnail\";O:9:\"FS_Plugin\":18:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:21:\"Embed Video Thumbnail\";s:4:\"slug\";s:21:\"embed-video-thumbnail\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:4:\"file\";s:47:\"embed-video-thumbnail/embed-video-thumbnail.php\";s:7:\"version\";s:5:\"1.3.0\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:7:\"is_live\";b:1;s:10:\"public_key\";s:32:\"pk_7664cc8356bf229417a38b063fb9e\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"2276\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"a758d07239d1a967922f2948645fa3b9\";s:5:\"plans\";a:1:{s:21:\"embed-video-thumbnail\";a:1:{i:0;O:14:\"FS_Plugin_Plan\":21:{s:9:\"plugin_id\";s:8:\"MjI3Ng==\";s:4:\"name\";s:8:\"ZnJlZQ==\";s:5:\"title\";s:8:\"RnJlZQ==\";s:11:\"description\";N;s:17:\"is_free_localhost\";s:4:\"MQ==\";s:17:\"is_block_features\";s:4:\"MQ==\";s:12:\"license_type\";s:4:\"MA==\";s:16:\"is_https_support\";s:0:\"\";s:12:\"trial_period\";N;s:23:\"is_require_subscription\";s:0:\"\";s:10:\"support_kb\";N;s:13:\"support_forum\";N;s:13:\"support_email\";N;s:13:\"support_phone\";N;s:13:\"support_skype\";N;s:18:\"is_success_manager\";s:0:\"\";s:11:\"is_featured\";s:0:\"\";s:2:\"id\";s:8:\"MzQ2OQ==\";s:7:\"updated\";N;s:7:\"created\";s:28:\"MjAxOC0wNy0wMyAxNToxMzo1OA==\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}}s:14:\"active_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1543344554;s:3:\"md5\";s:32:\"f5e73ebf8b8303d02364c41412eec071\";s:7:\"plugins\";a:3:{s:47:\"embed-video-thumbnail/embed-video-thumbnail.php\";a:5:{s:4:\"slug\";s:21:\"embed-video-thumbnail\";s:7:\"version\";s:5:\"1.3.0\";s:5:\"title\";s:21:\"Embed Video Thumbnail\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:33:\"karma-by-kadar/karma-by-kadar.php\";a:5:{s:4:\"slug\";s:14:\"karma-by-kadar\";s:7:\"version\";s:5:\"1.1.2\";s:5:\"title\";s:27:\"Karma Music Player by Kadar\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:41:\"soundcloud-is-gold/soundcloud-is-gold.php\";a:5:{s:4:\"slug\";s:18:\"soundcloud-is-gold\";s:7:\"version\";s:5:\"2.5.1\";s:5:\"title\";s:18:\"Soundcloud is Gold\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}}}s:11:\"all_plugins\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1543344554;s:3:\"md5\";s:32:\"8e2bba8ad2f8ebdaa9e7295e67d17d0b\";s:7:\"plugins\";a:5:{s:19:\"akismet/akismet.php\";a:5:{s:4:\"slug\";s:7:\"akismet\";s:7:\"version\";s:5:\"4.0.8\";s:5:\"title\";s:17:\"Akismet Anti-Spam\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:47:\"embed-video-thumbnail/embed-video-thumbnail.php\";a:5:{s:4:\"slug\";s:21:\"embed-video-thumbnail\";s:7:\"version\";s:5:\"1.3.0\";s:5:\"title\";s:21:\"Embed Video Thumbnail\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:9:\"hello.php\";a:5:{s:4:\"slug\";s:11:\"hello-dolly\";s:7:\"version\";s:3:\"1.7\";s:5:\"title\";s:11:\"Hello Dolly\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:33:\"karma-by-kadar/karma-by-kadar.php\";a:5:{s:4:\"slug\";s:14:\"karma-by-kadar\";s:7:\"version\";s:5:\"1.1.2\";s:5:\"title\";s:27:\"Karma Music Player by Kadar\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:41:\"soundcloud-is-gold/soundcloud-is-gold.php\";a:5:{s:4:\"slug\";s:18:\"soundcloud-is-gold\";s:7:\"version\";s:5:\"2.5.1\";s:5:\"title\";s:18:\"Soundcloud is Gold\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:10:\"all_themes\";O:8:\"stdClass\":3:{s:9:\"timestamp\";i:1543344554;s:3:\"md5\";s:32:\"9c467d02843c890ce189f5c5c604eceb\";s:6:\"themes\";a:4:{s:13:\"html5up-forty\";a:5:{s:4:\"slug\";s:13:\"html5up-forty\";s:7:\"version\";s:0:\"\";s:5:\"title\";s:2:\"mm\";s:9:\"is_active\";b:1;s:14:\"is_uninstalled\";b:0;}s:13:\"twentyfifteen\";a:5:{s:4:\"slug\";s:13:\"twentyfifteen\";s:7:\"version\";s:3:\"2.0\";s:5:\"title\";s:14:\"Twenty Fifteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:15:\"twentyseventeen\";a:5:{s:4:\"slug\";s:15:\"twentyseventeen\";s:7:\"version\";s:3:\"1.7\";s:5:\"title\";s:16:\"Twenty Seventeen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}s:13:\"twentysixteen\";a:5:{s:4:\"slug\";s:13:\"twentysixteen\";s:7:\"version\";s:3:\"1.5\";s:5:\"title\";s:14:\"Twenty Sixteen\";s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;}}}s:5:\"sites\";a:1:{s:21:\"embed-video-thumbnail\";O:7:\"FS_Site\":25:{s:7:\"site_id\";s:7:\"5846182\";s:9:\"plugin_id\";s:4:\"2276\";s:7:\"user_id\";s:7:\"1574684\";s:5:\"title\";s:28:\"MFM Studio [Music For Media]\";s:3:\"url\";s:31:\"http://localhost:8888/wordpress\";s:7:\"version\";s:5:\"1.3.0\";s:8:\"language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:16:\"platform_version\";s:5:\"4.9.8\";s:11:\"sdk_version\";s:5:\"2.1.1\";s:28:\"programming_language_version\";s:5:\"7.2.8\";s:7:\"plan_id\";s:4:\"3469\";s:10:\"license_id\";N;s:13:\"trial_plan_id\";N;s:10:\"trial_ends\";N;s:10:\"is_premium\";b:0;s:15:\"is_disconnected\";b:0;s:9:\"is_active\";b:0;s:14:\"is_uninstalled\";b:0;s:10:\"public_key\";s:32:\"pk_545fe6f40a3152c32087b9f58c4c4\";s:10:\"secret_key\";s:32:\"sk_[{Je;[ySZ;VF8wPyG6eeL.&%Qcxoe\";s:2:\"id\";s:7:\"2159215\";s:7:\"updated\";s:19:\"2018-11-27 18:54:03\";s:7:\"created\";s:19:\"2018-11-27 18:49:08\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:5:\"users\";a:1:{i:1574684;O:7:\"FS_User\":12:{s:5:\"email\";s:18:\"seda1094@gmail.com\";s:5:\"first\";s:5:\"admin\";s:4:\"last\";s:0:\"\";s:11:\"is_verified\";b:0;s:11:\"customer_id\";N;s:5:\"gross\";i:0;s:10:\"public_key\";s:32:\"pk_680ece5856eec23df23fe827eee02\";s:10:\"secret_key\";s:32:\"sk_:Fp.E?#hAJz_d-7Y+5pK~*_nt~D1P\";s:2:\"id\";s:7:\"1574684\";s:7:\"updated\";N;s:7:\"created\";s:19:\"2018-11-27 18:49:08\";s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:13:\"admin_notices\";a:1:{s:21:\"embed-video-thumbnail\";a:0:{}}}', 'yes'),
(227, 'redux_version_upgraded_from', '3.6.5', 'yes'),
(230, 'fs_api_cache', 'a:0:{}', 'yes'),
(231, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:2:{s:8:\"required\";b:0;s:18:\"show_opt_in_notice\";b:0;}}', 'yes'),
(234, 'ikanaweb_evt', 'a:36:{s:8:\"last_tab\";s:0:\"\";s:14:\"global--enable\";s:1:\"1\";s:17:\"global--post_type\";a:3:{s:10:\"attachment\";s:0:\"\";s:4:\"page\";s:1:\"0\";s:4:\"post\";s:1:\"1\";}s:21:\"global--exclude_posts\";s:0:\"\";s:15:\"youtube--enable\";s:1:\"1\";s:17:\"youtube--api--key\";s:0:\"\";s:27:\"youtube--api--display_title\";s:1:\"1\";s:27:\"youtube--api--display_thumb\";s:1:\"1\";s:24:\"youtube--api--thumb_copy\";s:0:\"\";s:26:\"youtube--embed--playbutton\";a:5:{s:3:\"url\";s:104:\"http://localhost:8888/wordpress/wp-content/plugins/embed-video-thumbnail/assets/images/youtube-72-72.png\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:24:\"youtube--embed--autoplay\";s:1:\"1\";s:19:\"youtube--embed--rel\";s:1:\"1\";s:30:\"youtube--embed--modestbranding\";s:0:\"\";s:24:\"youtube--embed--controls\";s:1:\"1\";s:25:\"youtube--embed--no_cookie\";s:1:\"1\";s:13:\"vimeo--enable\";s:1:\"1\";s:25:\"vimeo--api--display_title\";s:1:\"1\";s:25:\"vimeo--api--display_thumb\";s:1:\"1\";s:22:\"vimeo--api--thumb_copy\";s:0:\"\";s:24:\"vimeo--embed--playbutton\";a:5:{s:3:\"url\";s:103:\"http://localhost:8888/wordpress/wp-content/plugins/embed-video-thumbnail/assets/images/play-default.png\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:22:\"vimeo--embed--autoplay\";s:1:\"1\";s:18:\"vimeo--embed--loop\";s:1:\"1\";s:19:\"dailymotion--enable\";s:1:\"1\";s:31:\"dailymotion--api--display_title\";s:0:\"\";s:31:\"dailymotion--api--display_thumb\";s:1:\"1\";s:28:\"dailymotion--api--thumb_copy\";s:0:\"\";s:30:\"dailymotion--embed--playbutton\";a:5:{s:3:\"url\";s:103:\"http://localhost:8888/wordpress/wp-content/plugins/embed-video-thumbnail/assets/images/play-default.png\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:28:\"dailymotion--embed--autoplay\";s:1:\"1\";s:16:\"facebook--enable\";s:1:\"1\";s:28:\"facebook--api--display_title\";s:1:\"1\";s:28:\"facebook--api--display_thumb\";s:1:\"1\";s:27:\"facebook--embed--playbutton\";a:5:{s:3:\"url\";s:103:\"http://localhost:8888/wordpress/wp-content/plugins/embed-video-thumbnail/assets/images/play-default.png\";s:2:\"id\";s:0:\"\";s:6:\"height\";s:0:\"\";s:5:\"width\";s:0:\"\";s:9:\"thumbnail\";s:0:\"\";}s:23:\"device--desktop--enable\";s:1:\"1\";s:22:\"device--tablet--enable\";s:1:\"1\";s:22:\"device--mobile--enable\";s:1:\"1\";s:19:\"device--amp--enable\";s:0:\"\";}', 'yes'),
(235, 'ikanaweb_evt-transients', 'a:2:{s:14:\"changed_values\";a:1:{s:22:\"device--mobile--enable\";s:0:\"\";}s:9:\"last_save\";i:1543344579;}', 'yes'),
(236, 'embed-video-thumbnail-activation-date', '1543344520', 'no'),
(241, '_site_transient_timeout_locked_1', '1858704553', 'no'),
(242, '_site_transient_locked_1', '1', 'no'),
(247, 'fvp-settings', 'a:4:{s:4:\"mode\";s:7:\"replace\";s:6:\"sizing\";a:2:{s:10:\"responsive\";b:1;s:5:\"width\";s:3:\"640\";}s:9:\"alignment\";s:6:\"center\";s:8:\"autoplay\";a:1:{s:6:\"always\";b:0;}}', 'yes'),
(248, 'fvp-version', '2.3.3', 'yes'),
(272, '_transient_doing_cron', '1545936402.8506619930267333984375', 'yes'),
(273, 'auto_updater.lock', '1545936407', 'no'),
(274, '_site_transient_timeout_theme_roots', '1545938209', 'no'),
(275, '_site_transient_theme_roots', 'a:5:{s:13:\"html5up-forty\";s:7:\"/themes\";s:6:\"images\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(277, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.2\";s:7:\"version\";s:5:\"5.0.2\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1545936423;s:15:\"version_checked\";s:5:\"4.9.9\";s:12:\"translations\";a:0:{}}', 'no'),
(278, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1545936424;s:7:\"checked\";a:4:{s:13:\"html5up-forty\";s:0:\"\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:3:{s:13:\"twentyfifteen\";a:4:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.2.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.9.zip\";}s:13:\"twentysixteen\";a:4:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(279, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1545936425;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"4.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.4.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.0.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:43:\"featured-video-plus/featured-video-plus.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/featured-video-plus\";s:4:\"slug\";s:19:\"featured-video-plus\";s:6:\"plugin\";s:43:\"featured-video-plus/featured-video-plus.php\";s:11:\"new_version\";s:5:\"2.3.3\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/featured-video-plus/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/featured-video-plus.2.3.3.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:72:\"https://ps.w.org/featured-video-plus/assets/icon-256x256.png?rev=1170997\";s:2:\"1x\";s:64:\"https://ps.w.org/featured-video-plus/assets/icon.svg?rev=1170997\";s:3:\"svg\";s:64:\"https://ps.w.org/featured-video-plus/assets/icon.svg?rev=1170997\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/featured-video-plus/assets/banner-1544x500.jpg?rev=1170997\";s:2:\"1x\";s:74:\"https://ps.w.org/featured-video-plus/assets/banner-772x250.jpg?rev=1170997\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"soundcloud-is-gold/soundcloud-is-gold.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/soundcloud-is-gold\";s:4:\"slug\";s:18:\"soundcloud-is-gold\";s:6:\"plugin\";s:41:\"soundcloud-is-gold/soundcloud-is-gold.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/soundcloud-is-gold/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/soundcloud-is-gold.2.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/soundcloud-is-gold/assets/icon-256x256.png?rev=1562964\";s:2:\"1x\";s:71:\"https://ps.w.org/soundcloud-is-gold/assets/icon-256x256.png?rev=1562964\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/soundcloud-is-gold/assets/banner-772x250.png?rev=514877\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(280, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"seda1094@gmail.com\";s:7:\"version\";s:5:\"4.9.9\";s:9:\"timestamp\";i:1545936426;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_trash_meta_status', 'publish'),
(4, 5, '_wp_trash_meta_time', '1543089575'),
(5, 6, '_menu_item_type', 'taxonomy'),
(6, 6, '_menu_item_menu_item_parent', '0'),
(7, 6, '_menu_item_object_id', '1'),
(8, 6, '_menu_item_object', 'category'),
(9, 6, '_menu_item_target', ''),
(10, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(11, 6, '_menu_item_xfn', ''),
(12, 6, '_menu_item_url', ''),
(14, 7, '_menu_item_type', 'taxonomy'),
(15, 7, '_menu_item_menu_item_parent', '0'),
(16, 7, '_menu_item_object_id', '4'),
(17, 7, '_menu_item_object', 'category'),
(18, 7, '_menu_item_target', ''),
(19, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 7, '_menu_item_xfn', ''),
(21, 7, '_menu_item_url', ''),
(23, 8, '_menu_item_type', 'taxonomy'),
(24, 8, '_menu_item_menu_item_parent', '0'),
(25, 8, '_menu_item_object_id', '3'),
(26, 8, '_menu_item_object', 'category'),
(27, 8, '_menu_item_target', ''),
(28, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 8, '_menu_item_xfn', ''),
(30, 8, '_menu_item_url', ''),
(32, 9, '_menu_item_type', 'taxonomy'),
(33, 9, '_menu_item_menu_item_parent', '0'),
(34, 9, '_menu_item_object_id', '2'),
(35, 9, '_menu_item_object', 'category'),
(36, 9, '_menu_item_target', ''),
(37, 9, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(38, 9, '_menu_item_xfn', ''),
(39, 9, '_menu_item_url', ''),
(41, 10, '_menu_item_type', 'taxonomy'),
(42, 10, '_menu_item_menu_item_parent', '0'),
(43, 10, '_menu_item_object_id', '7'),
(44, 10, '_menu_item_object', 'category'),
(45, 10, '_menu_item_target', ''),
(46, 10, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(47, 10, '_menu_item_xfn', ''),
(48, 10, '_menu_item_url', ''),
(50, 11, '_menu_item_type', 'taxonomy'),
(51, 11, '_menu_item_menu_item_parent', '0'),
(52, 11, '_menu_item_object_id', '5'),
(53, 11, '_menu_item_object', 'category'),
(54, 11, '_menu_item_target', ''),
(55, 11, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(56, 11, '_menu_item_xfn', ''),
(57, 11, '_menu_item_url', ''),
(59, 1, '_wp_trash_meta_status', 'publish'),
(60, 1, '_wp_trash_meta_time', '1543090196'),
(61, 1, '_wp_desired_post_slug', 'hello-world'),
(62, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(63, 13, '_edit_last', '1'),
(64, 13, '_edit_lock', '1543342245:1'),
(65, 14, '_wp_attached_file', '2018/11/06plr5ExxBs.jpg'),
(66, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:807;s:6:\"height\";i:538;s:4:\"file\";s:23:\"2018/11/06plr5ExxBs.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"06plr5ExxBs-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"06plr5ExxBs-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"06plr5ExxBs-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"small\";a:4:{s:4:\"file\";s:23:\"06plr5ExxBs-300x160.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"cover\";a:4:{s:4:\"file\";s:23:\"06plr5ExxBs-807x200.jpg\";s:5:\"width\";i:807;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 13, '_thumbnail_id', '14'),
(69, 16, '_edit_last', '1'),
(70, 16, '_edit_lock', '1543345889:1'),
(71, 16, '_thumbnail_id', '14'),
(74, 16, '_oembed_8a77bd3f00e4c7996388299d5d2e3a60', '<iframe width=\"500\" height=\"400\" scrolling=\"no\" frameborder=\"no\" src=\"https://w.soundcloud.com/player/?visual=true&url=https%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F274994524&show_artwork=true&maxwidth=500&maxheight=750&dnt=1\"></iframe>'),
(75, 16, '_oembed_time_8a77bd3f00e4c7996388299d5d2e3a60', '1543091154'),
(76, 16, '_oembed_36afa7948cae581b4c5fbdc9ab03cbba', '<iframe width=\"752\" height=\"400\" scrolling=\"no\" frameborder=\"no\" src=\"https://w.soundcloud.com/player/?visual=true&url=https%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F274994524&show_artwork=true&maxwidth=752&maxheight=1000&dnt=1\"></iframe>'),
(77, 16, '_oembed_time_36afa7948cae581b4c5fbdc9ab03cbba', '1543091155'),
(79, 16, '_oembed_1be422464663185e7650c4767ecef3ad', '<iframe width=\"756\" height=\"400\" scrolling=\"no\" frameborder=\"no\" src=\"https://w.soundcloud.com/player/?visual=true&url=https%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F274994524&show_artwork=true&maxwidth=756&maxheight=1000&dnt=1\"></iframe>'),
(80, 16, '_oembed_time_1be422464663185e7650c4767ecef3ad', '1543091170'),
(81, 24, '_wp_attached_file', '2018/11/labaratory.mp3'),
(82, 24, '_wp_attachment_metadata', 'a:18:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:160000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR160\";s:17:\"compression_ratio\";d:0.11337868480725624;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:2021271;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:101;s:16:\"length_formatted\";s:4:\"1:41\";s:16:\"encoder_settings\";s:18:\"Logic Pro X 10.2.3\";s:7:\"comment\";s:90:\" 000003EA 0000043B 00003481 00003828 00004D72 00004D72 00008FB1 00008775 0000001A 00004B1A\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(89, 30, '_wp_attached_file', '2018/11/birds.mp3'),
(90, 30, '_wp_attachment_metadata', 'a:14:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";i:320000;s:11:\"channelmode\";s:12:\"joint stereo\";s:12:\"bitrate_mode\";s:3:\"cbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:6:\"CBR320\";s:17:\"compression_ratio\";d:0.22675736961451248;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:3118428;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:78;s:16:\"length_formatted\";s:4:\"1:18\";}'),
(95, 35, '_wp_attached_file', '2018/11/How-to-Add-Featured-Video-Thumbnails-in-WordPress.jpeg'),
(96, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:720;s:4:\"file\";s:62:\"2018/11/How-to-Add-Featured-Video-Thumbnails-in-WordPress.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:62:\"How-to-Add-Featured-Video-Thumbnails-in-WordPress-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:62:\"How-to-Add-Featured-Video-Thumbnails-in-WordPress-300x169.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:62:\"How-to-Add-Featured-Video-Thumbnails-in-WordPress-768x432.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:63:\"How-to-Add-Featured-Video-Thumbnails-in-WordPress-1024x576.jpeg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 35, '_fvp_image_url', 'https://i.ytimg.com/vi/2wuP723zCdE/hqdefault.jpg'),
(98, 16, '_fvp_video', 'a:12:{s:5:\"valid\";b:1;s:3:\"img\";i:35;s:2:\"id\";N;s:8:\"provider\";s:7:\"youtube\";s:5:\"title\";s:49:\"How to Add Featured Video Thumbnails in WordPress\";s:6:\"author\";s:32:\"WPBeginner - WordPress Tutorials\";s:11:\"description\";N;s:7:\"img_url\";s:48:\"https://i.ytimg.com/vi/2wuP723zCdE/hqdefault.jpg\";s:8:\"filename\";s:49:\"How to Add Featured Video Thumbnails in WordPress\";s:4:\"full\";s:43:\"https://www.youtube.com/watch?v=2wuP723zCdE\";s:10:\"parameters\";a:0:{}s:5:\"noimg\";b:0;}'),
(99, 36, '_edit_last', '1'),
(101, 36, '_edit_lock', '1543345090:1'),
(102, 36, '_wp_trash_meta_status', 'publish'),
(103, 36, '_wp_trash_meta_time', '1543345239'),
(104, 36, '_wp_desired_post_slug', '36'),
(108, 40, '_wp_trash_meta_status', 'publish'),
(109, 40, '_wp_trash_meta_time', '1543348204');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-11-24 19:57:45', '2018-11-24 19:57:45', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2018-11-24 20:09:56', '2018-11-24 20:09:56', '', 0, 'http://localhost:8888/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2018-11-24 19:57:45', '2018-11-24 19:57:45', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost:8888/wordpress/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-11-24 19:57:45', '2018-11-24 19:57:45', '', 0, 'http://localhost:8888/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-11-24 19:57:45', '2018-11-24 19:57:45', '<h2>Who we are</h2><p>Our website address is: http://localhost:8888/wordpress.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-11-24 19:57:45', '2018-11-24 19:57:45', '', 0, 'http://localhost:8888/wordpress/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-11-24 19:59:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-24 19:59:22', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/wordpress/?p=4', 0, 'post', '', 0),
(5, 1, '2018-11-24 19:59:35', '2018-11-24 19:59:35', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [],\n            \"sidebar-1\": [\n                \"search-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"archives-2\",\n                \"categories-2\",\n                \"meta-2\"\n            ],\n            \"sidebar-2\": [],\n            \"sidebar-3\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-24 19:59:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4fb5a362-8b2f-47de-8af7-8271771a51a9', '', '', '2018-11-24 19:59:35', '2018-11-24 19:59:35', '', 0, 'http://localhost:8888/wordpress/2018/11/24/4fb5a362-8b2f-47de-8af7-8271771a51a9/', 0, 'customize_changeset', '', 0),
(6, 1, '2018-11-24 20:03:35', '2018-11-24 20:03:35', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2018-11-24 20:03:35', '2018-11-24 20:03:35', '', 0, 'http://localhost:8888/wordpress/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2018-11-24 20:03:35', '2018-11-24 20:03:35', ' ', '', '', 'publish', 'closed', 'closed', '', '7', '', '', '2018-11-24 20:03:35', '2018-11-24 20:03:35', '', 0, 'http://localhost:8888/wordpress/?p=7', 2, 'nav_menu_item', '', 0),
(8, 1, '2018-11-24 20:03:35', '2018-11-24 20:03:35', ' ', '', '', 'publish', 'closed', 'closed', '', '8', '', '', '2018-11-24 20:03:35', '2018-11-24 20:03:35', '', 0, 'http://localhost:8888/wordpress/?p=8', 3, 'nav_menu_item', '', 0),
(9, 1, '2018-11-24 20:03:35', '2018-11-24 20:03:35', ' ', '', '', 'publish', 'closed', 'closed', '', '9', '', '', '2018-11-24 20:03:35', '2018-11-24 20:03:35', '', 0, 'http://localhost:8888/wordpress/?p=9', 4, 'nav_menu_item', '', 0),
(10, 1, '2018-11-24 20:03:35', '2018-11-24 20:03:35', ' ', '', '', 'publish', 'closed', 'closed', '', '10', '', '', '2018-11-24 20:03:35', '2018-11-24 20:03:35', '', 0, 'http://localhost:8888/wordpress/?p=10', 5, 'nav_menu_item', '', 0),
(11, 1, '2018-11-24 20:03:35', '2018-11-24 20:03:35', ' ', '', '', 'publish', 'closed', 'closed', '', '11', '', '', '2018-11-24 20:03:35', '2018-11-24 20:03:35', '', 0, 'http://localhost:8888/wordpress/?p=11', 6, 'nav_menu_item', '', 0),
(12, 1, '2018-11-24 20:09:56', '2018-11-24 20:09:56', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-11-24 20:09:56', '2018-11-24 20:09:56', '', 1, 'http://localhost:8888/wordpress/2018/11/24/1-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-11-24 20:11:01', '2018-11-24 20:11:01', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n\r\n[playlist ids=\"24\"]\r\n\r\n</div>', 'Choppy Fish', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'open', '', 'choppy-fish', '', '', '2018-11-27 17:46:49', '2018-11-27 17:46:49', '', 0, 'http://localhost:8888/wordpress/?p=13', 0, 'post', '', 0),
(14, 1, '2018-11-24 20:10:54', '2018-11-24 20:10:54', '', '06plr5ExxBs', '', 'inherit', 'open', 'closed', '', '06plr5exxbs', '', '', '2018-11-24 20:10:54', '2018-11-24 20:10:54', '', 13, 'http://localhost:8888/wordpress/wp-content/uploads/2018/11/06plr5ExxBs.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-11-24 20:11:01', '2018-11-24 20:11:01', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>', 'Choppy Fish', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-11-24 20:11:01', '2018-11-24 20:11:01', '', 13, 'http://localhost:8888/wordpress/2018/11/24/13-revision-v1/', 0, 'revision', '', 0),
(16, 1, '2018-11-24 20:11:22', '2018-11-24 20:11:22', '<hr />\r\n\r\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div><img class=\"alignright\" src=\"https://lh3.googleusercontent.com/4177jzllTkiNlJzbTeSK-a5GNbtWAHI2N6-0aQpt51hyrMo1b_S9zPsD5vr5XRFhumIt\" width=\"108\" height=\"108\" /></div>\r\n<div></div>\r\n<div>\r\n\r\n<hr />\r\n\r\n\r\n\r\n<hr />\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'publish', 'open', 'open', '', 'lorem', '', '', '2018-11-27 19:05:05', '2018-11-27 19:05:05', '', 0, 'http://localhost:8888/wordpress/?p=16', 0, 'post', '', 0),
(17, 1, '2018-11-24 20:11:22', '2018-11-24 20:11:22', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-24 20:11:22', '2018-11-24 20:11:22', '', 16, 'http://localhost:8888/wordpress/2018/11/24/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2018-11-27 19:02:43', '2018-11-27 19:02:43', '<hr />\n\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\n<div><img class=\"alignnone size-medium\" src=\"https://lh3.googleusercontent.com/4177jzllTkiNlJzbTeSK-a5GNbtWAHI2N6-0aQpt51hyrMo1b_S9zPsD5vr5XRFhumIt\" width=\"512\" height=\"512\" /></div>\n<div></div>\n<div>\n\n<hr />\n\n\n\n<hr />\n\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\n\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\n\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\n\n&nbsp;\n\n&nbsp;\n\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-autosave-v1', '', '', '2018-11-27 19:02:43', '2018-11-27 19:02:43', '', 16, 'http://localhost:8888/wordpress/2018/11/24/16-autosave-v1/', 0, 'revision', '', 0),
(19, 1, '2018-11-24 20:26:07', '2018-11-24 20:26:07', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div>\r\n\r\n[embed]https://soundcloud.com/user-219614634/choppy-fish-gameplay-1[/embed]\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-24 20:26:07', '2018-11-24 20:26:07', '', 16, 'http://localhost:8888/wordpress/2018/11/24/16-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2018-11-24 20:27:19', '2018-11-24 20:27:19', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div>\r\n\r\n<iframe width=\"100%\" height=\"166\" scrolling=\"no\" frameborder=\"no\" allow=\"autoplay\" src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&color=%23ff5500&auto_play=false&hide_related=false&show_comments=true&show_user=true&show_reposts=false&show_teaser=true\"></iframe>\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-24 20:27:19', '2018-11-24 20:27:19', '', 16, 'http://localhost:8888/wordpress/2018/11/24/16-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-11-24 20:29:07', '2018-11-24 20:29:07', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" height=\"66\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-24 20:29:07', '2018-11-24 20:29:07', '', 16, 'http://localhost:8888/wordpress/2018/11/24/16-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-11-24 20:30:43', '2018-11-24 20:30:43', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div>\r\n<br>\r\n<br>\r\n<br>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" style=\"background: violet;\" width=\"100%\" height=\"66\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-24 20:30:43', '2018-11-24 20:30:43', '', 16, 'http://localhost:8888/wordpress/2018/11/24/16-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2018-11-24 20:40:55', '2018-11-24 20:40:55', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div>\r\n<br>\r\n<br>\r\n<br>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" height=\"76\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<br>\r\n<br>\r\n<br>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" height=\"76\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<br>\r\n<br>\r\n<br>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" height=\"76\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-24 20:40:55', '2018-11-24 20:40:55', '', 16, 'http://localhost:8888/wordpress/2018/11/24/16-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-11-27 17:46:34', '2018-11-27 17:46:34', '\"labaratory\".', 'labaratory', '', 'inherit', 'open', 'closed', '', 'labaratory', '', '', '2018-11-27 18:30:31', '2018-11-27 18:30:31', '', 13, 'http://localhost:8888/wordpress/wp-content/uploads/2018/11/labaratory.mp3', 0, 'attachment', 'audio/mpeg', 0),
(25, 1, '2018-11-27 17:46:49', '2018-11-27 17:46:49', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n\r\n[playlist ids=\"24\"]\r\n\r\n</div>', 'Choppy Fish', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-11-27 17:46:49', '2018-11-27 17:46:49', '', 13, 'http://localhost:8888/wordpress/2018/11/27/13-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2018-11-27 17:57:36', '2018-11-27 17:57:36', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div>[karma_by_kadar__simple_player src=\"http://localhost:8888/wordpress/wp-content/uploads/2018/11/labaratory.mp3\"]</div>\r\n<div>\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" height=\"76\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" height=\"76\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" height=\"76\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-27 17:57:36', '2018-11-27 17:57:36', '', 16, 'http://localhost:8888/wordpress/2018/11/27/16-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2018-11-27 18:01:17', '2018-11-27 18:01:17', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div></div>\r\n<div>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" height=\"76\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" height=\"76\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-27 18:01:17', '2018-11-27 18:01:17', '', 16, 'http://localhost:8888/wordpress/2018/11/27/16-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-11-27 18:02:05', '2018-11-27 18:02:05', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div></div>\r\n<div>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" frameborder=\"no\" scrolling=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"50%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-27 18:02:05', '2018-11-27 18:02:05', '', 16, 'http://localhost:8888/wordpress/2018/11/27/16-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-11-27 18:14:03', '2018-11-27 18:14:03', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div></div>\r\n<div>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-27 18:14:03', '2018-11-27 18:14:03', '', 16, 'http://localhost:8888/wordpress/2018/11/27/16-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2018-11-27 18:31:59', '2018-11-27 18:31:59', '\"birds\".', 'birds', '', 'inherit', 'open', 'closed', '', 'birds', '', '', '2018-11-27 18:31:59', '2018-11-27 18:31:59', '', 0, 'http://localhost:8888/wordpress/wp-content/uploads/2018/11/birds.mp3', 0, 'attachment', 'audio/mpeg', 0),
(31, 1, '2018-11-27 18:34:05', '2018-11-27 18:34:05', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div></div>\r\n<div>\r\n<br>\r\n<br>\r\n<br>\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-27 18:34:05', '2018-11-27 18:34:05', '', 16, 'http://localhost:8888/wordpress/2018/11/27/16-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2018-11-27 18:44:44', '2018-11-27 18:44:44', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n\r\n\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe><iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-27 18:44:44', '2018-11-27 18:44:44', '', 16, 'http://localhost:8888/wordpress/2018/11/27/16-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-11-27 18:46:04', '2018-11-27 18:46:04', '<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<hr>\r\n<hr>\r\n<hr>\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-27 18:46:04', '2018-11-27 18:46:04', '', 16, 'http://localhost:8888/wordpress/2018/11/27/16-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-11-27 18:46:27', '2018-11-27 18:46:27', '<hr>\r\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div></div>\r\n<div></div>\r\n<div>\r\n<hr>\r\n<hr>\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-27 18:46:27', '2018-11-27 18:46:27', '', 16, 'http://localhost:8888/wordpress/2018/11/27/16-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-11-27 18:55:19', '2018-11-27 18:55:19', '', 'How-to-Add-Featured-Video-Thumbnails-in-WordPress', '', 'inherit', 'open', 'closed', '', 'how-to-add-featured-video-thumbnails-in-wordpress', '', '', '2018-11-27 18:55:19', '2018-11-27 18:55:19', '', 16, 'http://localhost:8888/wordpress/wp-content/uploads/2018/11/How-to-Add-Featured-Video-Thumbnails-in-WordPress.jpeg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-11-27 18:58:41', '2018-11-27 18:58:41', 'jhjhkh', '', '', 'trash', 'open', 'open', '', '36__trashed', '', '', '2018-11-27 19:00:39', '2018-11-27 19:00:39', '', 0, 'http://localhost:8888/wordpress/?p=36', 0, 'post', '', 0),
(37, 1, '2018-11-27 18:58:41', '2018-11-27 18:58:41', 'jhjhkh', '', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2018-11-27 18:58:41', '2018-11-27 18:58:41', '', 36, 'http://localhost:8888/wordpress/2018/11/27/36-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(38, 1, '2018-11-27 19:02:59', '2018-11-27 19:02:59', '<hr />\r\n\r\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div><img class=\"alignnone size-medium\" src=\"https://lh3.googleusercontent.com/4177jzllTkiNlJzbTeSK-a5GNbtWAHI2N6-0aQpt51hyrMo1b_S9zPsD5vr5XRFhumIt\" width=\"512\" height=\"512\" /></div>\r\n<div></div>\r\n<div>\r\n\r\n<hr />\r\n\r\n\r\n\r\n<hr />\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-27 19:02:59', '2018-11-27 19:02:59', '', 16, 'http://localhost:8888/wordpress/2018/11/27/16-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2018-11-27 19:04:40', '2018-11-27 19:04:40', '<hr />\r\n\r\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n<div><img class=\"alignright\" src=\"https://lh3.googleusercontent.com/4177jzllTkiNlJzbTeSK-a5GNbtWAHI2N6-0aQpt51hyrMo1b_S9zPsD5vr5XRFhumIt\" width=\"108\" height=\"108\" /></div>\r\n<div></div>\r\n<div>\r\n\r\n<hr />\r\n\r\n\r\n\r\n<hr />\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"><span data-mce-type=\"bookmark\" style=\"display: inline-block; width: 0px; overflow: hidden; line-height: 0;\" class=\"mce_SELRES_start\">﻿</span></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n<iframe src=\"https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/274994524&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;show_teaser=true\" width=\"100%\" frameborder=\"no\" scrolling=\"no\"></iframe>\r\n\r\n&nbsp;\r\n\r\n&nbsp;\r\n\r\n</div>', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\n							tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\n							quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\n							consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\n							cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\n							proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2018-11-27 19:04:40', '2018-11-27 19:04:40', '', 16, 'http://localhost:8888/wordpress/2018/11/27/16-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-11-27 19:50:04', '2018-11-27 19:50:04', '{\n    \"blogdescription\": {\n        \"value\": \"You Tell The Story We Set The Tone\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-11-27 19:50:04\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e3454b71-ad4c-4f0f-aee7-bf57eefb521d', '', '', '2018-11-27 19:50:04', '2018-11-27 19:50:04', '', 0, 'http://localhost:8888/wordpress/2018/11/27/e3454b71-ad4c-4f0f-aee7-bf57eefb521d/', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'MD [Demo Music]', 'uncategorized', 0),
(2, 'MFG [Music For Games]', 'mfg', 0),
(3, 'MFF [Music For Films]', 'mff', 0),
(4, 'MFA [Music For Animations]', 'mfa', 0),
(5, 'MSFX [Sound Effects]', 'msfx', 0),
(7, 'MRT [Music RingTones]', 'mrt', 0),
(8, 'menu', 'menu', 0),
(9, 'post-format-link', 'post-format-link', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 8, 0),
(7, 8, 0),
(8, 8, 0),
(9, 8, 0),
(10, 8, 0),
(11, 8, 0),
(13, 2, 0),
(16, 2, 0),
(36, 1, 0),
(36, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'category', '', 0, 2),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0),
(8, 8, 'nav_menu', '', 0, 6),
(9, 9, 'post_format', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,fvp-post-box'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"d19d8b4644f2bbedf5bdad5e0244405206cbb2f13626216862cf7dfcb04aaef2\";a:4:{s:10:\"expiration\";i:1543513551;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0.1 Safari/605.1.15\";s:5:\"login\";i:1543340751;}s:64:\"17a072751abe3849730b4314579a25fe87a4a2b8b3c22149250624157db7a8cd\";a:4:{s:10:\"expiration\";i:1543515180;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1543342380;}}'),
(17, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce&mfold=o&advImgDetails=show'),
(18, 1, 'wp_user-settings-time', '1543344673'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(21, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(22, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:5:{i:0;s:13:\"trackbacksdiv\";i:1;s:10:\"postcustom\";i:2;s:16:\"commentstatusdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";}'),
(25, 1, 'karma_by_kadar__rating_dismissed', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BTQVHQf6dv9UyKPVZK3jkS1QW7F3C01', 'admin', 'seda1094@gmail.com', '', '2018-11-24 19:57:45', '', 0, 'admin');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
