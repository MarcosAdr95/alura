-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 07/08/2025 às 19:39
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wp_alura_002`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
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
-- Despejando dados para a tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://br.wordpress.org/', '', '2025-08-04 10:56:16', '2025-08-04 13:56:16', 'Oi, isto é um comentário.\nPara iniciar a moderar, editar e excluir comentários, visite a tela Comentários no painel.\nOs avatares dos comentaristas vêm do <a href=\"https://br.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
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
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1754589376;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1754618188;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1754621776;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1754623576;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1754625376;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1754661376;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1754661388;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1754661391;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1755000586;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1755006976;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'http://alura.test', 'on'),
(3, 'home', 'http://alura.test', 'on'),
(4, 'blogname', 'Carbonando', 'on'),
(5, 'blogdescription', 'Conteúdos de Química explicados de forma clara', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'carbonando@gmail.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'j \\d\\e F \\d\\e Y', 'on'),
(25, 'time_format', 'H:i', 'on'),
(26, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:24:\"index.php??sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:0:{}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'twentytwenty', 'on'),
(42, 'stylesheet', 'twentytwenty', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', 'America/Sao_Paulo', 'on'),
(82, 'page_for_posts', '12', 'on'),
(83, 'page_on_front', '10', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1769867776', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '60421', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'WPLANG', 'pt_BR', 'auto'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.8.2\";s:5:\"files\";a:536:{i:0;s:19:\"archives/editor.css\";i:1;s:23:\"archives/editor.min.css\";i:2;s:23:\"archives/editor-rtl.css\";i:3;s:27:\"archives/editor-rtl.min.css\";i:4;s:18:\"archives/style.css\";i:5;s:22:\"archives/style.min.css\";i:6;s:22:\"archives/style-rtl.css\";i:7;s:26:\"archives/style-rtl.min.css\";i:8;s:16:\"audio/editor.css\";i:9;s:20:\"audio/editor.min.css\";i:10;s:20:\"audio/editor-rtl.css\";i:11;s:24:\"audio/editor-rtl.min.css\";i:12;s:15:\"audio/style.css\";i:13;s:19:\"audio/style.min.css\";i:14;s:19:\"audio/style-rtl.css\";i:15;s:23:\"audio/style-rtl.min.css\";i:16;s:15:\"audio/theme.css\";i:17;s:19:\"audio/theme.min.css\";i:18;s:19:\"audio/theme-rtl.css\";i:19;s:23:\"audio/theme-rtl.min.css\";i:20;s:17:\"avatar/editor.css\";i:21;s:21:\"avatar/editor.min.css\";i:22;s:21:\"avatar/editor-rtl.css\";i:23;s:25:\"avatar/editor-rtl.min.css\";i:24;s:16:\"avatar/style.css\";i:25;s:20:\"avatar/style.min.css\";i:26;s:20:\"avatar/style-rtl.css\";i:27;s:24:\"avatar/style-rtl.min.css\";i:28;s:17:\"button/editor.css\";i:29;s:21:\"button/editor.min.css\";i:30;s:21:\"button/editor-rtl.css\";i:31;s:25:\"button/editor-rtl.min.css\";i:32;s:18:\"buttons/editor.css\";i:33;s:22:\"buttons/editor.min.css\";i:34;s:22:\"buttons/editor-rtl.css\";i:35;s:26:\"buttons/editor-rtl.min.css\";i:36;s:17:\"buttons/style.css\";i:37;s:21:\"buttons/style.min.css\";i:38;s:21:\"buttons/style-rtl.css\";i:39;s:25:\"buttons/style-rtl.min.css\";i:40;s:16:\"button/style.css\";i:41;s:20:\"button/style.min.css\";i:42;s:20:\"button/style-rtl.css\";i:43;s:24:\"button/style-rtl.min.css\";i:44;s:18:\"calendar/style.css\";i:45;s:22:\"calendar/style.min.css\";i:46;s:22:\"calendar/style-rtl.css\";i:47;s:26:\"calendar/style-rtl.min.css\";i:48;s:21:\"categories/editor.css\";i:49;s:25:\"categories/editor.min.css\";i:50;s:25:\"categories/editor-rtl.css\";i:51;s:29:\"categories/editor-rtl.min.css\";i:52;s:20:\"categories/style.css\";i:53;s:24:\"categories/style.min.css\";i:54;s:24:\"categories/style-rtl.css\";i:55;s:28:\"categories/style-rtl.min.css\";i:56;s:15:\"code/editor.css\";i:57;s:19:\"code/editor.min.css\";i:58;s:19:\"code/editor-rtl.css\";i:59;s:23:\"code/editor-rtl.min.css\";i:60;s:14:\"code/style.css\";i:61;s:18:\"code/style.min.css\";i:62;s:18:\"code/style-rtl.css\";i:63;s:22:\"code/style-rtl.min.css\";i:64;s:14:\"code/theme.css\";i:65;s:18:\"code/theme.min.css\";i:66;s:18:\"code/theme-rtl.css\";i:67;s:22:\"code/theme-rtl.min.css\";i:68;s:18:\"columns/editor.css\";i:69;s:22:\"columns/editor.min.css\";i:70;s:22:\"columns/editor-rtl.css\";i:71;s:26:\"columns/editor-rtl.min.css\";i:72;s:17:\"columns/style.css\";i:73;s:21:\"columns/style.min.css\";i:74;s:21:\"columns/style-rtl.css\";i:75;s:25:\"columns/style-rtl.min.css\";i:76;s:29:\"comment-author-name/style.css\";i:77;s:33:\"comment-author-name/style.min.css\";i:78;s:33:\"comment-author-name/style-rtl.css\";i:79;s:37:\"comment-author-name/style-rtl.min.css\";i:80;s:25:\"comment-content/style.css\";i:81;s:29:\"comment-content/style.min.css\";i:82;s:29:\"comment-content/style-rtl.css\";i:83;s:33:\"comment-content/style-rtl.min.css\";i:84;s:22:\"comment-date/style.css\";i:85;s:26:\"comment-date/style.min.css\";i:86;s:26:\"comment-date/style-rtl.css\";i:87;s:30:\"comment-date/style-rtl.min.css\";i:88;s:27:\"comment-edit-link/style.css\";i:89;s:31:\"comment-edit-link/style.min.css\";i:90;s:31:\"comment-edit-link/style-rtl.css\";i:91;s:35:\"comment-edit-link/style-rtl.min.css\";i:92;s:28:\"comment-reply-link/style.css\";i:93;s:32:\"comment-reply-link/style.min.css\";i:94;s:32:\"comment-reply-link/style-rtl.css\";i:95;s:36:\"comment-reply-link/style-rtl.min.css\";i:96;s:19:\"comments/editor.css\";i:97;s:23:\"comments/editor.min.css\";i:98;s:23:\"comments/editor-rtl.css\";i:99;s:27:\"comments/editor-rtl.min.css\";i:100;s:30:\"comments-pagination/editor.css\";i:101;s:34:\"comments-pagination/editor.min.css\";i:102;s:34:\"comments-pagination/editor-rtl.css\";i:103;s:38:\"comments-pagination/editor-rtl.min.css\";i:104;s:38:\"comments-pagination-numbers/editor.css\";i:105;s:42:\"comments-pagination-numbers/editor.min.css\";i:106;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:107;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:108;s:29:\"comments-pagination/style.css\";i:109;s:33:\"comments-pagination/style.min.css\";i:110;s:33:\"comments-pagination/style-rtl.css\";i:111;s:37:\"comments-pagination/style-rtl.min.css\";i:112;s:18:\"comments/style.css\";i:113;s:22:\"comments/style.min.css\";i:114;s:22:\"comments/style-rtl.css\";i:115;s:26:\"comments/style-rtl.min.css\";i:116;s:25:\"comments-title/editor.css\";i:117;s:29:\"comments-title/editor.min.css\";i:118;s:29:\"comments-title/editor-rtl.css\";i:119;s:33:\"comments-title/editor-rtl.min.css\";i:120;s:26:\"comment-template/style.css\";i:121;s:30:\"comment-template/style.min.css\";i:122;s:30:\"comment-template/style-rtl.css\";i:123;s:34:\"comment-template/style-rtl.min.css\";i:124;s:16:\"cover/editor.css\";i:125;s:20:\"cover/editor.min.css\";i:126;s:20:\"cover/editor-rtl.css\";i:127;s:24:\"cover/editor-rtl.min.css\";i:128;s:15:\"cover/style.css\";i:129;s:19:\"cover/style.min.css\";i:130;s:19:\"cover/style-rtl.css\";i:131;s:23:\"cover/style-rtl.min.css\";i:132;s:18:\"details/editor.css\";i:133;s:22:\"details/editor.min.css\";i:134;s:22:\"details/editor-rtl.css\";i:135;s:26:\"details/editor-rtl.min.css\";i:136;s:17:\"details/style.css\";i:137;s:21:\"details/style.min.css\";i:138;s:21:\"details/style-rtl.css\";i:139;s:25:\"details/style-rtl.min.css\";i:140;s:16:\"embed/editor.css\";i:141;s:20:\"embed/editor.min.css\";i:142;s:20:\"embed/editor-rtl.css\";i:143;s:24:\"embed/editor-rtl.min.css\";i:144;s:15:\"embed/style.css\";i:145;s:19:\"embed/style.min.css\";i:146;s:19:\"embed/style-rtl.css\";i:147;s:23:\"embed/style-rtl.min.css\";i:148;s:15:\"embed/theme.css\";i:149;s:19:\"embed/theme.min.css\";i:150;s:19:\"embed/theme-rtl.css\";i:151;s:23:\"embed/theme-rtl.min.css\";i:152;s:15:\"file/editor.css\";i:153;s:19:\"file/editor.min.css\";i:154;s:19:\"file/editor-rtl.css\";i:155;s:23:\"file/editor-rtl.min.css\";i:156;s:14:\"file/style.css\";i:157;s:18:\"file/style.min.css\";i:158;s:18:\"file/style-rtl.css\";i:159;s:22:\"file/style-rtl.min.css\";i:160;s:19:\"footnotes/style.css\";i:161;s:23:\"footnotes/style.min.css\";i:162;s:23:\"footnotes/style-rtl.css\";i:163;s:27:\"footnotes/style-rtl.min.css\";i:164;s:19:\"freeform/editor.css\";i:165;s:23:\"freeform/editor.min.css\";i:166;s:23:\"freeform/editor-rtl.css\";i:167;s:27:\"freeform/editor-rtl.min.css\";i:168;s:18:\"gallery/editor.css\";i:169;s:22:\"gallery/editor.min.css\";i:170;s:22:\"gallery/editor-rtl.css\";i:171;s:26:\"gallery/editor-rtl.min.css\";i:172;s:17:\"gallery/style.css\";i:173;s:21:\"gallery/style.min.css\";i:174;s:21:\"gallery/style-rtl.css\";i:175;s:25:\"gallery/style-rtl.min.css\";i:176;s:17:\"gallery/theme.css\";i:177;s:21:\"gallery/theme.min.css\";i:178;s:21:\"gallery/theme-rtl.css\";i:179;s:25:\"gallery/theme-rtl.min.css\";i:180;s:16:\"group/editor.css\";i:181;s:20:\"group/editor.min.css\";i:182;s:20:\"group/editor-rtl.css\";i:183;s:24:\"group/editor-rtl.min.css\";i:184;s:15:\"group/style.css\";i:185;s:19:\"group/style.min.css\";i:186;s:19:\"group/style-rtl.css\";i:187;s:23:\"group/style-rtl.min.css\";i:188;s:15:\"group/theme.css\";i:189;s:19:\"group/theme.min.css\";i:190;s:19:\"group/theme-rtl.css\";i:191;s:23:\"group/theme-rtl.min.css\";i:192;s:17:\"heading/style.css\";i:193;s:21:\"heading/style.min.css\";i:194;s:21:\"heading/style-rtl.css\";i:195;s:25:\"heading/style-rtl.min.css\";i:196;s:15:\"html/editor.css\";i:197;s:19:\"html/editor.min.css\";i:198;s:19:\"html/editor-rtl.css\";i:199;s:23:\"html/editor-rtl.min.css\";i:200;s:16:\"image/editor.css\";i:201;s:20:\"image/editor.min.css\";i:202;s:20:\"image/editor-rtl.css\";i:203;s:24:\"image/editor-rtl.min.css\";i:204;s:15:\"image/style.css\";i:205;s:19:\"image/style.min.css\";i:206;s:19:\"image/style-rtl.css\";i:207;s:23:\"image/style-rtl.min.css\";i:208;s:15:\"image/theme.css\";i:209;s:19:\"image/theme.min.css\";i:210;s:19:\"image/theme-rtl.css\";i:211;s:23:\"image/theme-rtl.min.css\";i:212;s:25:\"latest-comments/style.css\";i:213;s:29:\"latest-comments/style.min.css\";i:214;s:29:\"latest-comments/style-rtl.css\";i:215;s:33:\"latest-comments/style-rtl.min.css\";i:216;s:23:\"latest-posts/editor.css\";i:217;s:27:\"latest-posts/editor.min.css\";i:218;s:27:\"latest-posts/editor-rtl.css\";i:219;s:31:\"latest-posts/editor-rtl.min.css\";i:220;s:22:\"latest-posts/style.css\";i:221;s:26:\"latest-posts/style.min.css\";i:222;s:26:\"latest-posts/style-rtl.css\";i:223;s:30:\"latest-posts/style-rtl.min.css\";i:224;s:14:\"list/style.css\";i:225;s:18:\"list/style.min.css\";i:226;s:18:\"list/style-rtl.css\";i:227;s:22:\"list/style-rtl.min.css\";i:228;s:18:\"loginout/style.css\";i:229;s:22:\"loginout/style.min.css\";i:230;s:22:\"loginout/style-rtl.css\";i:231;s:26:\"loginout/style-rtl.min.css\";i:232;s:21:\"media-text/editor.css\";i:233;s:25:\"media-text/editor.min.css\";i:234;s:25:\"media-text/editor-rtl.css\";i:235;s:29:\"media-text/editor-rtl.min.css\";i:236;s:20:\"media-text/style.css\";i:237;s:24:\"media-text/style.min.css\";i:238;s:24:\"media-text/style-rtl.css\";i:239;s:28:\"media-text/style-rtl.min.css\";i:240;s:15:\"more/editor.css\";i:241;s:19:\"more/editor.min.css\";i:242;s:19:\"more/editor-rtl.css\";i:243;s:23:\"more/editor-rtl.min.css\";i:244;s:21:\"navigation/editor.css\";i:245;s:25:\"navigation/editor.min.css\";i:246;s:25:\"navigation/editor-rtl.css\";i:247;s:29:\"navigation/editor-rtl.min.css\";i:248;s:26:\"navigation-link/editor.css\";i:249;s:30:\"navigation-link/editor.min.css\";i:250;s:30:\"navigation-link/editor-rtl.css\";i:251;s:34:\"navigation-link/editor-rtl.min.css\";i:252;s:25:\"navigation-link/style.css\";i:253;s:29:\"navigation-link/style.min.css\";i:254;s:29:\"navigation-link/style-rtl.css\";i:255;s:33:\"navigation-link/style-rtl.min.css\";i:256;s:20:\"navigation/style.css\";i:257;s:24:\"navigation/style.min.css\";i:258;s:24:\"navigation/style-rtl.css\";i:259;s:28:\"navigation/style-rtl.min.css\";i:260;s:29:\"navigation-submenu/editor.css\";i:261;s:33:\"navigation-submenu/editor.min.css\";i:262;s:33:\"navigation-submenu/editor-rtl.css\";i:263;s:37:\"navigation-submenu/editor-rtl.min.css\";i:264;s:19:\"nextpage/editor.css\";i:265;s:23:\"nextpage/editor.min.css\";i:266;s:23:\"nextpage/editor-rtl.css\";i:267;s:27:\"nextpage/editor-rtl.min.css\";i:268;s:20:\"page-list/editor.css\";i:269;s:24:\"page-list/editor.min.css\";i:270;s:24:\"page-list/editor-rtl.css\";i:271;s:28:\"page-list/editor-rtl.min.css\";i:272;s:19:\"page-list/style.css\";i:273;s:23:\"page-list/style.min.css\";i:274;s:23:\"page-list/style-rtl.css\";i:275;s:27:\"page-list/style-rtl.min.css\";i:276;s:20:\"paragraph/editor.css\";i:277;s:24:\"paragraph/editor.min.css\";i:278;s:24:\"paragraph/editor-rtl.css\";i:279;s:28:\"paragraph/editor-rtl.min.css\";i:280;s:19:\"paragraph/style.css\";i:281;s:23:\"paragraph/style.min.css\";i:282;s:23:\"paragraph/style-rtl.css\";i:283;s:27:\"paragraph/style-rtl.min.css\";i:284;s:31:\"post-author-biography/style.css\";i:285;s:35:\"post-author-biography/style.min.css\";i:286;s:35:\"post-author-biography/style-rtl.css\";i:287;s:39:\"post-author-biography/style-rtl.min.css\";i:288;s:22:\"post-author/editor.css\";i:289;s:26:\"post-author/editor.min.css\";i:290;s:26:\"post-author/editor-rtl.css\";i:291;s:30:\"post-author/editor-rtl.min.css\";i:292;s:26:\"post-author-name/style.css\";i:293;s:30:\"post-author-name/style.min.css\";i:294;s:30:\"post-author-name/style-rtl.css\";i:295;s:34:\"post-author-name/style-rtl.min.css\";i:296;s:21:\"post-author/style.css\";i:297;s:25:\"post-author/style.min.css\";i:298;s:25:\"post-author/style-rtl.css\";i:299;s:29:\"post-author/style-rtl.min.css\";i:300;s:29:\"post-comments-form/editor.css\";i:301;s:33:\"post-comments-form/editor.min.css\";i:302;s:33:\"post-comments-form/editor-rtl.css\";i:303;s:37:\"post-comments-form/editor-rtl.min.css\";i:304;s:28:\"post-comments-form/style.css\";i:305;s:32:\"post-comments-form/style.min.css\";i:306;s:32:\"post-comments-form/style-rtl.css\";i:307;s:36:\"post-comments-form/style-rtl.min.css\";i:308;s:22:\"post-content/style.css\";i:309;s:26:\"post-content/style.min.css\";i:310;s:26:\"post-content/style-rtl.css\";i:311;s:30:\"post-content/style-rtl.min.css\";i:312;s:19:\"post-date/style.css\";i:313;s:23:\"post-date/style.min.css\";i:314;s:23:\"post-date/style-rtl.css\";i:315;s:27:\"post-date/style-rtl.min.css\";i:316;s:23:\"post-excerpt/editor.css\";i:317;s:27:\"post-excerpt/editor.min.css\";i:318;s:27:\"post-excerpt/editor-rtl.css\";i:319;s:31:\"post-excerpt/editor-rtl.min.css\";i:320;s:22:\"post-excerpt/style.css\";i:321;s:26:\"post-excerpt/style.min.css\";i:322;s:26:\"post-excerpt/style-rtl.css\";i:323;s:30:\"post-excerpt/style-rtl.min.css\";i:324;s:30:\"post-featured-image/editor.css\";i:325;s:34:\"post-featured-image/editor.min.css\";i:326;s:34:\"post-featured-image/editor-rtl.css\";i:327;s:38:\"post-featured-image/editor-rtl.min.css\";i:328;s:29:\"post-featured-image/style.css\";i:329;s:33:\"post-featured-image/style.min.css\";i:330;s:33:\"post-featured-image/style-rtl.css\";i:331;s:37:\"post-featured-image/style-rtl.min.css\";i:332;s:30:\"post-navigation-link/style.css\";i:333;s:34:\"post-navigation-link/style.min.css\";i:334;s:34:\"post-navigation-link/style-rtl.css\";i:335;s:38:\"post-navigation-link/style-rtl.min.css\";i:336;s:23:\"post-template/style.css\";i:337;s:27:\"post-template/style.min.css\";i:338;s:27:\"post-template/style-rtl.css\";i:339;s:31:\"post-template/style-rtl.min.css\";i:340;s:20:\"post-terms/style.css\";i:341;s:24:\"post-terms/style.min.css\";i:342;s:24:\"post-terms/style-rtl.css\";i:343;s:28:\"post-terms/style-rtl.min.css\";i:344;s:20:\"post-title/style.css\";i:345;s:24:\"post-title/style.min.css\";i:346;s:24:\"post-title/style-rtl.css\";i:347;s:28:\"post-title/style-rtl.min.css\";i:348;s:22:\"preformatted/style.css\";i:349;s:26:\"preformatted/style.min.css\";i:350;s:26:\"preformatted/style-rtl.css\";i:351;s:30:\"preformatted/style-rtl.min.css\";i:352;s:20:\"pullquote/editor.css\";i:353;s:24:\"pullquote/editor.min.css\";i:354;s:24:\"pullquote/editor-rtl.css\";i:355;s:28:\"pullquote/editor-rtl.min.css\";i:356;s:19:\"pullquote/style.css\";i:357;s:23:\"pullquote/style.min.css\";i:358;s:23:\"pullquote/style-rtl.css\";i:359;s:27:\"pullquote/style-rtl.min.css\";i:360;s:19:\"pullquote/theme.css\";i:361;s:23:\"pullquote/theme.min.css\";i:362;s:23:\"pullquote/theme-rtl.css\";i:363;s:27:\"pullquote/theme-rtl.min.css\";i:364;s:16:\"query/editor.css\";i:365;s:20:\"query/editor.min.css\";i:366;s:20:\"query/editor-rtl.css\";i:367;s:24:\"query/editor-rtl.min.css\";i:368;s:27:\"query-pagination/editor.css\";i:369;s:31:\"query-pagination/editor.min.css\";i:370;s:31:\"query-pagination/editor-rtl.css\";i:371;s:35:\"query-pagination/editor-rtl.min.css\";i:372;s:35:\"query-pagination-numbers/editor.css\";i:373;s:39:\"query-pagination-numbers/editor.min.css\";i:374;s:39:\"query-pagination-numbers/editor-rtl.css\";i:375;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:376;s:26:\"query-pagination/style.css\";i:377;s:30:\"query-pagination/style.min.css\";i:378;s:30:\"query-pagination/style-rtl.css\";i:379;s:34:\"query-pagination/style-rtl.min.css\";i:380;s:21:\"query-title/style.css\";i:381;s:25:\"query-title/style.min.css\";i:382;s:25:\"query-title/style-rtl.css\";i:383;s:29:\"query-title/style-rtl.min.css\";i:384;s:21:\"query-total/style.css\";i:385;s:25:\"query-total/style.min.css\";i:386;s:25:\"query-total/style-rtl.css\";i:387;s:29:\"query-total/style-rtl.min.css\";i:388;s:15:\"quote/style.css\";i:389;s:19:\"quote/style.min.css\";i:390;s:19:\"quote/style-rtl.css\";i:391;s:23:\"quote/style-rtl.min.css\";i:392;s:15:\"quote/theme.css\";i:393;s:19:\"quote/theme.min.css\";i:394;s:19:\"quote/theme-rtl.css\";i:395;s:23:\"quote/theme-rtl.min.css\";i:396;s:19:\"read-more/style.css\";i:397;s:23:\"read-more/style.min.css\";i:398;s:23:\"read-more/style-rtl.css\";i:399;s:27:\"read-more/style-rtl.min.css\";i:400;s:14:\"rss/editor.css\";i:401;s:18:\"rss/editor.min.css\";i:402;s:18:\"rss/editor-rtl.css\";i:403;s:22:\"rss/editor-rtl.min.css\";i:404;s:13:\"rss/style.css\";i:405;s:17:\"rss/style.min.css\";i:406;s:17:\"rss/style-rtl.css\";i:407;s:21:\"rss/style-rtl.min.css\";i:408;s:17:\"search/editor.css\";i:409;s:21:\"search/editor.min.css\";i:410;s:21:\"search/editor-rtl.css\";i:411;s:25:\"search/editor-rtl.min.css\";i:412;s:16:\"search/style.css\";i:413;s:20:\"search/style.min.css\";i:414;s:20:\"search/style-rtl.css\";i:415;s:24:\"search/style-rtl.min.css\";i:416;s:16:\"search/theme.css\";i:417;s:20:\"search/theme.min.css\";i:418;s:20:\"search/theme-rtl.css\";i:419;s:24:\"search/theme-rtl.min.css\";i:420;s:20:\"separator/editor.css\";i:421;s:24:\"separator/editor.min.css\";i:422;s:24:\"separator/editor-rtl.css\";i:423;s:28:\"separator/editor-rtl.min.css\";i:424;s:19:\"separator/style.css\";i:425;s:23:\"separator/style.min.css\";i:426;s:23:\"separator/style-rtl.css\";i:427;s:27:\"separator/style-rtl.min.css\";i:428;s:19:\"separator/theme.css\";i:429;s:23:\"separator/theme.min.css\";i:430;s:23:\"separator/theme-rtl.css\";i:431;s:27:\"separator/theme-rtl.min.css\";i:432;s:20:\"shortcode/editor.css\";i:433;s:24:\"shortcode/editor.min.css\";i:434;s:24:\"shortcode/editor-rtl.css\";i:435;s:28:\"shortcode/editor-rtl.min.css\";i:436;s:20:\"site-logo/editor.css\";i:437;s:24:\"site-logo/editor.min.css\";i:438;s:24:\"site-logo/editor-rtl.css\";i:439;s:28:\"site-logo/editor-rtl.min.css\";i:440;s:19:\"site-logo/style.css\";i:441;s:23:\"site-logo/style.min.css\";i:442;s:23:\"site-logo/style-rtl.css\";i:443;s:27:\"site-logo/style-rtl.min.css\";i:444;s:23:\"site-tagline/editor.css\";i:445;s:27:\"site-tagline/editor.min.css\";i:446;s:27:\"site-tagline/editor-rtl.css\";i:447;s:31:\"site-tagline/editor-rtl.min.css\";i:448;s:22:\"site-tagline/style.css\";i:449;s:26:\"site-tagline/style.min.css\";i:450;s:26:\"site-tagline/style-rtl.css\";i:451;s:30:\"site-tagline/style-rtl.min.css\";i:452;s:21:\"site-title/editor.css\";i:453;s:25:\"site-title/editor.min.css\";i:454;s:25:\"site-title/editor-rtl.css\";i:455;s:29:\"site-title/editor-rtl.min.css\";i:456;s:20:\"site-title/style.css\";i:457;s:24:\"site-title/style.min.css\";i:458;s:24:\"site-title/style-rtl.css\";i:459;s:28:\"site-title/style-rtl.min.css\";i:460;s:22:\"social-link/editor.css\";i:461;s:26:\"social-link/editor.min.css\";i:462;s:26:\"social-link/editor-rtl.css\";i:463;s:30:\"social-link/editor-rtl.min.css\";i:464;s:23:\"social-links/editor.css\";i:465;s:27:\"social-links/editor.min.css\";i:466;s:27:\"social-links/editor-rtl.css\";i:467;s:31:\"social-links/editor-rtl.min.css\";i:468;s:22:\"social-links/style.css\";i:469;s:26:\"social-links/style.min.css\";i:470;s:26:\"social-links/style-rtl.css\";i:471;s:30:\"social-links/style-rtl.min.css\";i:472;s:17:\"spacer/editor.css\";i:473;s:21:\"spacer/editor.min.css\";i:474;s:21:\"spacer/editor-rtl.css\";i:475;s:25:\"spacer/editor-rtl.min.css\";i:476;s:16:\"spacer/style.css\";i:477;s:20:\"spacer/style.min.css\";i:478;s:20:\"spacer/style-rtl.css\";i:479;s:24:\"spacer/style-rtl.min.css\";i:480;s:16:\"table/editor.css\";i:481;s:20:\"table/editor.min.css\";i:482;s:20:\"table/editor-rtl.css\";i:483;s:24:\"table/editor-rtl.min.css\";i:484;s:15:\"table/style.css\";i:485;s:19:\"table/style.min.css\";i:486;s:19:\"table/style-rtl.css\";i:487;s:23:\"table/style-rtl.min.css\";i:488;s:15:\"table/theme.css\";i:489;s:19:\"table/theme.min.css\";i:490;s:19:\"table/theme-rtl.css\";i:491;s:23:\"table/theme-rtl.min.css\";i:492;s:20:\"tag-cloud/editor.css\";i:493;s:24:\"tag-cloud/editor.min.css\";i:494;s:24:\"tag-cloud/editor-rtl.css\";i:495;s:28:\"tag-cloud/editor-rtl.min.css\";i:496;s:19:\"tag-cloud/style.css\";i:497;s:23:\"tag-cloud/style.min.css\";i:498;s:23:\"tag-cloud/style-rtl.css\";i:499;s:27:\"tag-cloud/style-rtl.min.css\";i:500;s:24:\"template-part/editor.css\";i:501;s:28:\"template-part/editor.min.css\";i:502;s:28:\"template-part/editor-rtl.css\";i:503;s:32:\"template-part/editor-rtl.min.css\";i:504;s:23:\"template-part/theme.css\";i:505;s:27:\"template-part/theme.min.css\";i:506;s:27:\"template-part/theme-rtl.css\";i:507;s:31:\"template-part/theme-rtl.min.css\";i:508;s:26:\"term-description/style.css\";i:509;s:30:\"term-description/style.min.css\";i:510;s:30:\"term-description/style-rtl.css\";i:511;s:34:\"term-description/style-rtl.min.css\";i:512;s:23:\"text-columns/editor.css\";i:513;s:27:\"text-columns/editor.min.css\";i:514;s:27:\"text-columns/editor-rtl.css\";i:515;s:31:\"text-columns/editor-rtl.min.css\";i:516;s:22:\"text-columns/style.css\";i:517;s:26:\"text-columns/style.min.css\";i:518;s:26:\"text-columns/style-rtl.css\";i:519;s:30:\"text-columns/style-rtl.min.css\";i:520;s:15:\"verse/style.css\";i:521;s:19:\"verse/style.min.css\";i:522;s:19:\"verse/style-rtl.css\";i:523;s:23:\"verse/style-rtl.min.css\";i:524;s:16:\"video/editor.css\";i:525;s:20:\"video/editor.min.css\";i:526;s:20:\"video/editor-rtl.css\";i:527;s:24:\"video/editor-rtl.min.css\";i:528;s:15:\"video/style.css\";i:529;s:19:\"video/style.min.css\";i:530;s:19:\"video/style-rtl.css\";i:531;s:23:\"video/style-rtl.min.css\";i:532;s:15:\"video/theme.css\";i:533;s:19:\"video/theme.min.css\";i:534;s:19:\"video/theme-rtl.css\";i:535;s:23:\"video/theme-rtl.min.css\";}}', 'on'),
(126, 'recovery_keys', 'a:0:{}', 'off'),
(127, 'nonce_key', 'NCQ.G0@;VlWRQZb>MNs0W.I-}>v#5}OvE`4L?Op,:!U+#-`zdJCics-Jf>8d?w.K', 'off'),
(128, 'nonce_salt', '$j%S<$]fgTY*9R2 !*v7*CmK~Hb{12wn<McLHa-!{]*[bMNuGIx1u:nem#Ighap}', 'off'),
(129, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1754396973;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off'),
(130, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"78931683c1cbb602b95c85fdc68f9422\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(133, 'auth_key', 'FHFx&?xo2!u2+JG R^=S~o-C:<7wwhioPW3w@-a!Fh>K*CQU^^zjI=em0rXVA88s', 'off'),
(134, 'auth_salt', '*#CCr0sB/VK692$u-dk13/v*QyK!tt}.??Fot:5-|O)[s}|v{k8k#,+v]8!)!Jyk', 'off'),
(135, 'logged_in_key', 'Z%{$sm(ui{rG+2@~s=lJfOpq!i_ zO/0t@D{<4|c?OBN%seE+AU0IzrLCY,x3r|$', 'off'),
(136, 'logged_in_salt', '~gx^/GW?J]*S9J__Qr}6mh$?aX/%O*cpHq_JKF s8$#c^Nv=@nKf-`SK|<#CeZes', 'off'),
(142, '_site_transient_timeout_browser_6ffa570f521e87e65c529e15a5aaac67', '1754920590', 'off'),
(143, '_site_transient_browser_6ffa570f521e87e65c529e15a5aaac67', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"138.0.0.0\";s:8:\"platform\";s:5:\"Linux\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(144, '_site_transient_timeout_php_check_da775d00ae55849f14f81cf79fc50d46', '1754920591', 'off'),
(145, '_site_transient_php_check_da775d00ae55849f14f81cf79fc50d46', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(147, 'can_compress_scripts', '1', 'on'),
(162, 'finished_updating_comment_type', '1', 'auto'),
(192, 'current_theme', 'Twenty Twenty', 'auto'),
(193, 'theme_mods_twentytwentyfour', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:0:{}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1754397746;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'off'),
(194, 'theme_switched', '', 'auto'),
(204, 'theme_mods_twentytwenty', 'a:8:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:6:\"eeffe5\";s:24:\"accent_accessible_colors\";a:2:{s:7:\"content\";a:5:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#897119\";s:10:\"background\";s:7:\"#eeffe5\";s:7:\"borders\";s:7:\"#a6ea84\";s:9:\"secondary\";s:7:\"#3b6b23\";}s:13:\"header-footer\";a:5:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#8b7217\";s:10:\"background\";s:7:\"#f5fff2\";s:7:\"borders\";s:7:\"#9eec8c\";s:9:\"secondary\";s:7:\"#326e24\";}}s:30:\"header_footer_background_color\";s:7:\"#f5fff2\";s:17:\"accent_hue_active\";s:6:\"custom\";s:10:\"accent_hue\";i:47;}', 'on'),
(208, 'wp_calendar_block_has_published_posts', '1', 'auto'),
(210, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(218, 'category_children', 'a:0:{}', 'auto'),
(231, '_transient_health-check-site-status-result', '{\"good\":14,\"recommended\":8,\"critical\":1}', 'on'),
(239, 'new_admin_email', 'carbonando@gmail.com', 'auto'),
(261, '_site_transient_timeout_theme_roots', '1754589167', 'off'),
(262, '_site_transient_theme_roots', 'a:5:{s:12:\"twentytwenty\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'off'),
(264, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.8.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.8.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.2\";s:7:\"version\";s:5:\"6.8.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1754587370;s:15:\"version_checked\";s:5:\"6.8.2\";s:12:\"translations\";a:0:{}}', 'off'),
(265, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1754587371;s:7:\"checked\";a:5:{s:12:\"twentytwenty\";s:3:\"2.9\";s:16:\"twentytwentyfive\";s:3:\"1.3\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:5:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.3.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.2.0.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwenty\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"2.9\";s:7:\"updated\";s:19:\"2021-09-18 18:44:06\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwenty/2.9/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}}', 'off');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(266, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1754587371;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.8.2\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:3:\"5.4\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'off'),
(267, '_site_transient_timeout_wp_theme_files_patterns-932dbb7bd37c00ac15a8a0ef302f4f8c', '1754589172', 'off'),
(268, '_site_transient_wp_theme_files_patterns-932dbb7bd37c00ac15a8a0ef302f4f8c', 'a:2:{s:7:\"version\";s:3:\"2.9\";s:8:\"patterns\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1754395746'),
(5, 3, '_wp_desired_post_slug', 'politica-de-privacidade'),
(6, 2, '_wp_trash_meta_status', 'publish'),
(7, 2, '_wp_trash_meta_time', '1754395748'),
(8, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(9, 8, '_edit_lock', '1754395611:1'),
(10, 10, '_edit_lock', '1754566301:1'),
(11, 12, '_edit_lock', '1754397618:1'),
(12, 14, '_edit_lock', '1754396214:1'),
(13, 16, '_edit_lock', '1754396085:1'),
(14, 17, '_edit_lock', '1754396275:1'),
(15, 19, '_edit_lock', '1754566400:1'),
(16, 21, '_edit_lock', '1754396883:1'),
(17, 23, '_edit_lock', '1754397850:1'),
(20, 25, '_menu_item_type', 'post_type'),
(21, 25, '_menu_item_menu_item_parent', '28'),
(22, 25, '_menu_item_object_id', '21'),
(23, 25, '_menu_item_object', 'page'),
(24, 25, '_menu_item_target', ''),
(25, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(26, 25, '_menu_item_xfn', ''),
(27, 25, '_menu_item_url', ''),
(29, 26, '_menu_item_type', 'post_type'),
(30, 26, '_menu_item_menu_item_parent', '28'),
(31, 26, '_menu_item_object_id', '19'),
(32, 26, '_menu_item_object', 'page'),
(33, 26, '_menu_item_target', ''),
(34, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 26, '_menu_item_xfn', ''),
(36, 26, '_menu_item_url', ''),
(38, 27, '_menu_item_type', 'post_type'),
(39, 27, '_menu_item_menu_item_parent', '0'),
(40, 27, '_menu_item_object_id', '17'),
(41, 27, '_menu_item_object', 'page'),
(42, 27, '_menu_item_target', ''),
(43, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(44, 27, '_menu_item_xfn', ''),
(45, 27, '_menu_item_url', ''),
(47, 28, '_menu_item_type', 'post_type'),
(48, 28, '_menu_item_menu_item_parent', '0'),
(49, 28, '_menu_item_object_id', '14'),
(50, 28, '_menu_item_object', 'page'),
(51, 28, '_menu_item_target', ''),
(52, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(53, 28, '_menu_item_xfn', ''),
(54, 28, '_menu_item_url', ''),
(56, 29, '_menu_item_type', 'post_type'),
(57, 29, '_menu_item_menu_item_parent', '0'),
(58, 29, '_menu_item_object_id', '10'),
(59, 29, '_menu_item_object', 'page'),
(60, 29, '_menu_item_target', ''),
(61, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(62, 29, '_menu_item_xfn', ''),
(63, 29, '_menu_item_url', ''),
(65, 30, '_menu_item_type', 'post_type'),
(66, 30, '_menu_item_menu_item_parent', '0'),
(67, 30, '_menu_item_object_id', '12'),
(68, 30, '_menu_item_object', 'page'),
(69, 30, '_menu_item_target', ''),
(70, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(71, 30, '_menu_item_xfn', ''),
(72, 30, '_menu_item_url', ''),
(74, 31, '_edit_lock', '1754398201:1'),
(79, 33, '_menu_item_type', 'taxonomy'),
(80, 33, '_menu_item_menu_item_parent', '30'),
(81, 33, '_menu_item_object_id', '3'),
(82, 33, '_menu_item_object', 'category'),
(83, 33, '_menu_item_target', ''),
(84, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 33, '_menu_item_xfn', ''),
(86, 33, '_menu_item_url', ''),
(88, 34, '_menu_item_type', 'taxonomy'),
(89, 34, '_menu_item_menu_item_parent', '30'),
(90, 34, '_menu_item_object_id', '5'),
(91, 34, '_menu_item_object', 'category'),
(92, 34, '_menu_item_target', ''),
(93, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 34, '_menu_item_xfn', ''),
(95, 34, '_menu_item_url', ''),
(98, 35, '_customize_restore_dismissed', '1'),
(99, 36, '_edit_lock', '1754562899:1'),
(100, 36, '_customize_restore_dismissed', '1'),
(101, 37, '_edit_lock', '1754563871:1'),
(102, 37, '_wp_trash_meta_status', 'publish'),
(103, 37, '_wp_trash_meta_time', '1754563881'),
(104, 38, '_edit_lock', '1754563941:1'),
(105, 38, '_wp_trash_meta_status', 'publish'),
(106, 38, '_wp_trash_meta_time', '1754563952'),
(107, 29, '_wp_old_date', '2025-08-05'),
(108, 30, '_wp_old_date', '2025-08-05'),
(109, 33, '_wp_old_date', '2025-08-05'),
(110, 34, '_wp_old_date', '2025-08-05'),
(111, 27, '_wp_old_date', '2025-08-05'),
(112, 28, '_wp_old_date', '2025-08-05'),
(113, 25, '_wp_old_date', '2025-08-05'),
(114, 26, '_wp_old_date', '2025-08-05'),
(116, 42, '_wp_attached_file', '2025/08/download.png'),
(117, 42, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2025/08/download.png\";s:8:\"filesize\";i:196350;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"download-300x240.png\";s:5:\"width\";i:300;s:6:\"height\";i:240;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84152;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"download-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:31290;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 44, '_wp_attached_file', '2025/08/download-1.png'),
(119, 44, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:400;s:4:\"file\";s:22:\"2025/08/download-1.png\";s:8:\"filesize\";i:416685;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"download-1-300x133.png\";s:5:\"width\";i:300;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:72758;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"download-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42703;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"download-1-768x341.png\";s:5:\"width\";i:768;s:6:\"height\";i:341;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:325282;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
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
-- Despejando dados para a tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-08-04 10:56:16', '2025-08-04 13:56:16', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2025-08-04 10:56:16', '2025-08-04 13:56:16', '', 0, 'http://alura.test/?p=1', 0, 'post', '', 1),
(2, 1, '2025-08-04 10:56:16', '2025-08-04 13:56:16', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://alura.test/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2025-08-05 09:09:08', '2025-08-05 12:09:08', '', 0, 'http://alura.test/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-08-04 10:56:16', '2025-08-04 13:56:16', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quem somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://alura.test.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentários</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Mídia</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Mídia incorporada de outros sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Com quem compartilhamos seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Por quanto tempo mantemos os seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quais os seus direitos sobre seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Para onde seus dados são enviados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidade', '', 'trash', 'closed', 'open', '', 'politica-de-privacidade__trashed', '', '', '2025-08-05 09:09:06', '2025-08-05 12:09:06', '', 0, 'http://alura.test/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-08-04 10:56:16', '2025-08-04 13:56:16', '<!-- wp:page-list /-->', 'Navegação', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-08-04 10:56:16', '2025-08-04 13:56:16', '', 0, 'http://alura.test/index.php/2025/08/04/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2025-08-04 10:56:31', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-08-04 10:56:31', '0000-00-00 00:00:00', '', 0, 'http://alura.test/?p=5', 0, 'post', '', 0),
(6, 1, '2025-08-05 09:09:06', '2025-08-05 12:09:06', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quem somos</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://alura.test.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comentários</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Mídia</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Mídia incorporada de outros sites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Com quem compartilhamos seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Por quanto tempo mantemos os seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Quais os seus direitos sobre seus dados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Para onde seus dados são enviados</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p>\n<!-- /wp:paragraph -->\n', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-08-05 09:09:06', '2025-08-05 12:09:06', '', 3, 'http://alura.test/?p=6', 0, 'revision', '', 0),
(7, 1, '2025-08-05 09:09:08', '2025-08-05 12:09:08', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://alura.test/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-08-05 09:09:08', '2025-08-05 12:09:08', '', 2, 'http://alura.test/?p=7', 0, 'revision', '', 0),
(8, 1, '2025-08-05 09:09:10', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-08-05 09:09:10', '0000-00-00 00:00:00', '', 0, 'http://alura.test/?page_id=8', 0, 'page', '', 0),
(9, 1, '2025-08-05 09:09:10', '2025-08-05 12:09:10', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-twentytwentyfive', '', '', '2025-08-05 09:09:10', '2025-08-05 12:09:10', '', 0, 'http://alura.test/index.php/2025/08/05/wp-global-styles-twentytwentyfive/', 0, 'wp_global_styles', '', 0),
(10, 1, '2025-08-05 09:09:29', '2025-08-05 12:09:29', '<!-- wp:cover {\"url\":\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\",\"id\":590,\"dimRatio\":50,\"customOverlayColor\":\"#121c1c\",\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#fffdc7\"}}} -->\n<div class=\"wp-block-cover alignfull has-text-color\" style=\"color:#fffdc7\"><img class=\"wp-block-cover__image-background wp-image-590\" alt=\"\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" data-object-fit=\"cover\"/><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim\" style=\"background-color:#121c1c\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\",\"fontStyle\":\"normal\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-style:normal;font-weight:700;line-height:1.15\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:media-text {\"mediaId\":42,\"mediaLink\":\"http://alura.test/index.php/inicial/download/\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download.png\" alt=\"\" class=\"wp-image-42 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Conteúdo...\"} -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:spacer {\"height\":\"46px\"} -->\n<div style=\"height:46px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download-1.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://alura.test/index.php/exercicios/\">Exercícios</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://alura.test/index.php/glossario/\">Glossário</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Carbonando', '', 'publish', 'closed', 'closed', '', 'inicial', '', '', '2025-08-07 08:29:48', '2025-08-07 11:29:48', '', 0, 'http://alura.test/?page_id=10', 0, 'page', '', 0),
(11, 1, '2025-08-05 09:09:29', '2025-08-05 12:09:29', '', 'Inicial', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-08-05 09:09:29', '2025-08-05 12:09:29', '', 10, 'http://alura.test/?p=11', 0, 'revision', '', 0),
(12, 1, '2025-08-05 09:09:41', '2025-08-05 12:09:41', '', 'Mapa', '', 'publish', 'closed', 'closed', '', 'mapa', '', '', '2025-08-05 09:09:41', '2025-08-05 12:09:41', '', 0, 'http://alura.test/?page_id=12', 0, 'page', '', 0),
(13, 1, '2025-08-05 09:09:41', '2025-08-05 12:09:41', '', 'Mapa', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2025-08-05 09:09:41', '2025-08-05 12:09:41', '', 12, 'http://alura.test/?p=13', 0, 'revision', '', 0),
(14, 1, '2025-08-05 09:16:59', '2025-08-05 12:16:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis eros ac nibh malesuada pulvinar. Proin imperdiet porttitor tellus et vestibulum. Quisque ac libero ante. Aenean placerat at velit et elementum. Etiam a elementum leo. Vestibulum pellentesque eros non aliquam iaculis. Nam porttitor sem tellus, sed aliquam nunc feugiat sed. Maecenas in mi fringilla, aliquam enim non, luctus lorem. Quisque convallis sapien id velit efficitur facilisis. Mauris accumsan tellus vitae metus ullamcorper, id tristique diam pellentesque. Donec tincidunt massa suscipit diam finibus molestie. Morbi vestibulum nulla vel sagittis lobortis. Pellentesque lacus urna, efficitur vitae arcu at, vulputate rutrum felis. Quisque vel tempus mi. Nulla vehicula, magna a lacinia euismod, ipsum sem vulputate ipsum, id tempor tortor lorem vitae lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2025-08-05 09:16:59', '2025-08-05 12:16:59', '', 0, 'http://alura.test/?page_id=14', 0, 'page', '', 0),
(15, 1, '2025-08-05 09:16:59', '2025-08-05 12:16:59', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mollis eros ac nibh malesuada pulvinar. Proin imperdiet porttitor tellus et vestibulum. Quisque ac libero ante. Aenean placerat at velit et elementum. Etiam a elementum leo. Vestibulum pellentesque eros non aliquam iaculis. Nam porttitor sem tellus, sed aliquam nunc feugiat sed. Maecenas in mi fringilla, aliquam enim non, luctus lorem. Quisque convallis sapien id velit efficitur facilisis. Mauris accumsan tellus vitae metus ullamcorper, id tristique diam pellentesque. Donec tincidunt massa suscipit diam finibus molestie. Morbi vestibulum nulla vel sagittis lobortis. Pellentesque lacus urna, efficitur vitae arcu at, vulputate rutrum felis. Quisque vel tempus mi. Nulla vehicula, magna a lacinia euismod, ipsum sem vulputate ipsum, id tempor tortor lorem vitae lorem. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae;</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2025-08-05 09:16:59', '2025-08-05 12:16:59', '', 14, 'http://alura.test/?p=15', 0, 'revision', '', 0),
(16, 1, '2025-08-05 09:17:07', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-08-05 09:17:07', '0000-00-00 00:00:00', '', 0, 'http://alura.test/?page_id=16', 0, 'page', '', 0),
(17, 1, '2025-08-05 09:17:52', '2025-08-05 12:17:52', '<!-- wp:paragraph -->\n<p>Caso tenha dúvidas entre em contato com <a href=\"mailto:carbonando@gmail.com\">carbonando@gmail.com</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2025-08-05 09:17:52', '2025-08-05 12:17:52', '', 0, 'http://alura.test/?page_id=17', 0, 'page', '', 0),
(18, 1, '2025-08-05 09:17:52', '2025-08-05 12:17:52', '<!-- wp:paragraph -->\n<p>Caso tenha dúvidas entre em contato com <a href=\"mailto:carbonando@gmail.com\">carbonando@gmail.com</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-08-05 09:17:52', '2025-08-05 12:17:52', '', 17, 'http://alura.test/?p=18', 0, 'revision', '', 0),
(19, 1, '2025-08-05 09:27:47', '2025-08-05 12:27:47', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac nisl mi. Ut non arcu pretium, auctor odio vel, iaculis tellus. Pellentesque eleifend enim at lectus congue ultricies. Integer vitae sem mauris. Nullam ac auctor diam, sit amet scelerisque nulla. Pellentesque aliquet ultrices euismod. Aenean leo mauris, luctus ut nibh ut, tincidunt sollicitudin risus. Fusce aliquam egestas magna sed facilisis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id tortor ac nibh fermentum ultricies venenatis a sapien. Aenean ac leo lorem. Quisque egestas leo arcu. Vivamus et mi et magna elementum tincidunt vitae quis augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In vitae quam ut neque mattis mattis. Nulla dapibus blandit pretium. Cras placerat felis a aliquam tincidunt. Phasellus ornare neque urna, id feugiat erat scelerisque eget. Mauris at tellus id felis accumsan vulputate. Etiam vitae purus quis justo euismod bibendum. Fusce ornare risus eu orci egestas, id dictum nunc faucibus. Vivamus fringilla eget nunc in hendrerit. Duis quis laoreet quam. Aenean congue mi lorem, sit amet iaculis magna efficitur vitae. Proin porttitor sodales maximus. Integer sit amet cursus lacus. Nullam dignissim eu nisi sed consectetur. Quisque molestie, nunc quis efficitur feugiat, metus nisi feugiat ex, quis pellentesque libero massa quis nulla.</p>\n<!-- /wp:paragraph -->', 'Glossário', '', 'publish', 'closed', 'closed', '', 'glossario', '', '', '2025-08-05 09:27:47', '2025-08-05 12:27:47', '', 0, 'http://alura.test/?page_id=19', 0, 'page', '', 0),
(20, 1, '2025-08-05 09:27:47', '2025-08-05 12:27:47', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac nisl mi. Ut non arcu pretium, auctor odio vel, iaculis tellus. Pellentesque eleifend enim at lectus congue ultricies. Integer vitae sem mauris. Nullam ac auctor diam, sit amet scelerisque nulla. Pellentesque aliquet ultrices euismod. Aenean leo mauris, luctus ut nibh ut, tincidunt sollicitudin risus. Fusce aliquam egestas magna sed facilisis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id tortor ac nibh fermentum ultricies venenatis a sapien. Aenean ac leo lorem. Quisque egestas leo arcu. Vivamus et mi et magna elementum tincidunt vitae quis augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In vitae quam ut neque mattis mattis. Nulla dapibus blandit pretium. Cras placerat felis a aliquam tincidunt. Phasellus ornare neque urna, id feugiat erat scelerisque eget. Mauris at tellus id felis accumsan vulputate. Etiam vitae purus quis justo euismod bibendum. Fusce ornare risus eu orci egestas, id dictum nunc faucibus. Vivamus fringilla eget nunc in hendrerit. Duis quis laoreet quam. Aenean congue mi lorem, sit amet iaculis magna efficitur vitae. Proin porttitor sodales maximus. Integer sit amet cursus lacus. Nullam dignissim eu nisi sed consectetur. Quisque molestie, nunc quis efficitur feugiat, metus nisi feugiat ex, quis pellentesque libero massa quis nulla.</p>\n<!-- /wp:paragraph -->', 'Glossário', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2025-08-05 09:27:47', '2025-08-05 12:27:47', '', 19, 'http://alura.test/?p=20', 0, 'revision', '', 0),
(21, 1, '2025-08-05 09:28:08', '2025-08-05 12:28:08', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac nisl mi. Ut non arcu pretium, auctor odio vel, iaculis tellus. Pellentesque eleifend enim at lectus congue ultricies. Integer vitae sem mauris. Nullam ac auctor diam, sit amet scelerisque nulla. Pellentesque aliquet ultrices euismod. Aenean leo mauris, luctus ut nibh ut, tincidunt sollicitudin risus. Fusce aliquam egestas magna sed facilisis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id tortor ac nibh fermentum ultricies venenatis a sapien. Aenean ac leo lorem. Quisque egestas leo arcu. Vivamus et mi et magna elementum tincidunt vitae quis augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In vitae quam ut neque mattis mattis. Nulla dapibus blandit pretium. Cras placerat felis a aliquam tincidunt. Phasellus ornare neque urna, id feugiat erat scelerisque eget. Mauris at tellus id felis accumsan vulputate. Etiam vitae purus quis justo euismod bibendum. Fusce ornare risus eu orci egestas, id dictum nunc faucibus. Vivamus fringilla eget nunc in hendrerit. Duis quis laoreet quam. Aenean congue mi lorem, sit amet iaculis magna efficitur vitae. Proin porttitor sodales maximus. Integer sit amet cursus lacus. Nullam dignissim eu nisi sed consectetur. Quisque molestie, nunc quis efficitur feugiat, metus nisi feugiat ex, quis pellentesque libero massa quis nulla.</p>\n<!-- /wp:paragraph -->', 'Exercícios', '', 'publish', 'closed', 'closed', '', 'exercicios', '', '', '2025-08-05 09:28:08', '2025-08-05 12:28:08', '', 0, 'http://alura.test/?page_id=21', 0, 'page', '', 0),
(22, 1, '2025-08-05 09:28:08', '2025-08-05 12:28:08', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac nisl mi. Ut non arcu pretium, auctor odio vel, iaculis tellus. Pellentesque eleifend enim at lectus congue ultricies. Integer vitae sem mauris. Nullam ac auctor diam, sit amet scelerisque nulla. Pellentesque aliquet ultrices euismod. Aenean leo mauris, luctus ut nibh ut, tincidunt sollicitudin risus. Fusce aliquam egestas magna sed facilisis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec id tortor ac nibh fermentum ultricies venenatis a sapien. Aenean ac leo lorem. Quisque egestas leo arcu. Vivamus et mi et magna elementum tincidunt vitae quis augue.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In vitae quam ut neque mattis mattis. Nulla dapibus blandit pretium. Cras placerat felis a aliquam tincidunt. Phasellus ornare neque urna, id feugiat erat scelerisque eget. Mauris at tellus id felis accumsan vulputate. Etiam vitae purus quis justo euismod bibendum. Fusce ornare risus eu orci egestas, id dictum nunc faucibus. Vivamus fringilla eget nunc in hendrerit. Duis quis laoreet quam. Aenean congue mi lorem, sit amet iaculis magna efficitur vitae. Proin porttitor sodales maximus. Integer sit amet cursus lacus. Nullam dignissim eu nisi sed consectetur. Quisque molestie, nunc quis efficitur feugiat, metus nisi feugiat ex, quis pellentesque libero massa quis nulla.</p>\n<!-- /wp:paragraph -->', 'Exercícios', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2025-08-05 09:28:08', '2025-08-05 12:28:08', '', 21, 'http://alura.test/?p=22', 0, 'revision', '', 0),
(23, 1, '2025-08-05 09:44:05', '2025-08-05 12:44:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis ligula diam, sit amet feugiat turpis egestas quis. Praesent venenatis varius tempor. In vulputate quis nunc at sollicitudin. Cras in odio odio. Phasellus sit amet mi aliquam, posuere sapien ac, accumsan nunc. Nunc vitae ultrices ex. Nam tellus orci, accumsan id aliquam a, posuere a odio. Pellentesque vel gravida sapien.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse eleifend elit quis nunc elementum posuere. In vel ex id justo imperdiet pellentesque id vel lectus. Morbi quis facilisis ipsum. Nam suscipit rhoncus fringilla. Fusce semper dui eget mi aliquet sagittis. Sed hendrerit elit dolor. Mauris congue ut eros in porttitor. Suspendisse congue commodo velit eget posuere. Vestibulum nec scelerisque mauris. Nam accumsan felis nisl, vel convallis erat eleifend a. Mauris id leo nec arcu porta venenatis. Aenean efficitur nunc at erat tincidunt consequat. Phasellus tincidunt, quam et condimentum pulvinar, metus velit lobortis sapien, vel tincidunt neque velit eget arcu. Praesent mollis luctus diam vel lobortis. Donec eu varius nulla. Praesent tincidunt consectetur efficitur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus placerat ultrices euismod. Vestibulum nibh urna, pretium non placerat a, volutpat a libero. Vestibulum auctor ac tellus a mollis. Nam at nisl faucibus, placerat purus nec, vestibulum risus. Quisque et hendrerit elit. Nullam eget purus rhoncus, mattis justo in, rutrum ex. Sed a nibh auctor quam blandit faucibus. Vestibulum ac nisl turpis. Nulla facilisi. Vivamus laoreet massa sed dictum sollicitudin. Cras auctor gravida nulla ac lobortis. Vivamus pulvinar volutpat quam, vitae hendrerit lorem dictum id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis arcu justo, venenatis eu dui eu, porttitor viverra metus. Pellentesque varius turpis velit, non convallis dui accumsan et. Donec sed ligula eu neque volutpat gravida. Nunc tempus bibendum facilisis. Phasellus tincidunt, nibh ut facilisis blandit, felis tellus dignissim velit, non porta enim risus quis lectus. Nullam vel elementum risus. Nam eros magna, elementum in gravida quis, venenatis at dolor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In efficitur, risus ullamcorper imperdiet elementum, mauris turpis tempus magna, eu efficitur odio elit vel ligula. Pellentesque dictum diam dolor, non sodales ante aliquam quis. Fusce facilisis, lectus sed sollicitudin porta, sapien velit porttitor dolor, id ullamcorper diam libero et sem. Donec lacus sem, suscipit nec justo sed, dictum malesuada odio. Pellentesque pellentesque velit at sem dictum blandit. Sed blandit odio a scelerisque consectetur. Praesent a fermentum nunc.</p>\n<!-- /wp:paragraph -->', 'O que é Química orgânica?', '', 'publish', 'open', 'open', '', 'o-que-e-quimica-organica', '', '', '2025-08-05 09:44:05', '2025-08-05 12:44:05', '', 0, 'http://alura.test/?p=23', 0, 'post', '', 0),
(24, 1, '2025-08-05 09:44:05', '2025-08-05 12:44:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec mollis ligula diam, sit amet feugiat turpis egestas quis. Praesent venenatis varius tempor. In vulputate quis nunc at sollicitudin. Cras in odio odio. Phasellus sit amet mi aliquam, posuere sapien ac, accumsan nunc. Nunc vitae ultrices ex. Nam tellus orci, accumsan id aliquam a, posuere a odio. Pellentesque vel gravida sapien.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Suspendisse eleifend elit quis nunc elementum posuere. In vel ex id justo imperdiet pellentesque id vel lectus. Morbi quis facilisis ipsum. Nam suscipit rhoncus fringilla. Fusce semper dui eget mi aliquet sagittis. Sed hendrerit elit dolor. Mauris congue ut eros in porttitor. Suspendisse congue commodo velit eget posuere. Vestibulum nec scelerisque mauris. Nam accumsan felis nisl, vel convallis erat eleifend a. Mauris id leo nec arcu porta venenatis. Aenean efficitur nunc at erat tincidunt consequat. Phasellus tincidunt, quam et condimentum pulvinar, metus velit lobortis sapien, vel tincidunt neque velit eget arcu. Praesent mollis luctus diam vel lobortis. Donec eu varius nulla. Praesent tincidunt consectetur efficitur.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus placerat ultrices euismod. Vestibulum nibh urna, pretium non placerat a, volutpat a libero. Vestibulum auctor ac tellus a mollis. Nam at nisl faucibus, placerat purus nec, vestibulum risus. Quisque et hendrerit elit. Nullam eget purus rhoncus, mattis justo in, rutrum ex. Sed a nibh auctor quam blandit faucibus. Vestibulum ac nisl turpis. Nulla facilisi. Vivamus laoreet massa sed dictum sollicitudin. Cras auctor gravida nulla ac lobortis. Vivamus pulvinar volutpat quam, vitae hendrerit lorem dictum id.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Duis arcu justo, venenatis eu dui eu, porttitor viverra metus. Pellentesque varius turpis velit, non convallis dui accumsan et. Donec sed ligula eu neque volutpat gravida. Nunc tempus bibendum facilisis. Phasellus tincidunt, nibh ut facilisis blandit, felis tellus dignissim velit, non porta enim risus quis lectus. Nullam vel elementum risus. Nam eros magna, elementum in gravida quis, venenatis at dolor.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>In efficitur, risus ullamcorper imperdiet elementum, mauris turpis tempus magna, eu efficitur odio elit vel ligula. Pellentesque dictum diam dolor, non sodales ante aliquam quis. Fusce facilisis, lectus sed sollicitudin porta, sapien velit porttitor dolor, id ullamcorper diam libero et sem. Donec lacus sem, suscipit nec justo sed, dictum malesuada odio. Pellentesque pellentesque velit at sem dictum blandit. Sed blandit odio a scelerisque consectetur. Praesent a fermentum nunc.</p>\n<!-- /wp:paragraph -->', 'O que é Química orgânica?', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2025-08-05 09:44:05', '2025-08-05 12:44:05', '', 23, 'http://alura.test/?p=24', 0, 'revision', '', 0),
(25, 1, '2025-08-07 07:53:25', '2025-08-05 12:46:38', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2025-08-07 07:53:25', '2025-08-07 10:53:25', '', 0, 'http://alura.test/?p=25', 7, 'nav_menu_item', '', 0),
(26, 1, '2025-08-07 07:53:25', '2025-08-05 12:46:38', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2025-08-07 07:53:25', '2025-08-07 10:53:25', '', 0, 'http://alura.test/?p=26', 8, 'nav_menu_item', '', 0),
(27, 1, '2025-08-07 07:53:25', '2025-08-05 12:46:38', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2025-08-07 07:53:25', '2025-08-07 10:53:25', '', 0, 'http://alura.test/?p=27', 5, 'nav_menu_item', '', 0),
(28, 1, '2025-08-07 07:53:25', '2025-08-05 12:46:38', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2025-08-07 07:53:25', '2025-08-07 10:53:25', '', 0, 'http://alura.test/?p=28', 6, 'nav_menu_item', '', 0),
(29, 1, '2025-08-07 07:53:25', '2025-08-05 12:46:38', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2025-08-07 07:53:25', '2025-08-07 10:53:25', '', 0, 'http://alura.test/?p=29', 1, 'nav_menu_item', '', 0),
(30, 1, '2025-08-07 07:53:25', '2025-08-05 12:46:38', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2025-08-07 07:53:25', '2025-08-07 10:53:25', '', 0, 'http://alura.test/?p=30', 2, 'nav_menu_item', '', 0),
(31, 1, '2025-08-05 09:48:55', '2025-08-05 12:48:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis porta nisl, in laoreet massa. Aliquam mauris massa, facilisis a est id, egestas posuere purus. Duis ut nisl dictum odio imperdiet scelerisque. Etiam dignissim fermentum felis ut dignissim. Praesent consequat tincidunt scelerisque. Phasellus porta tortor mauris, at cursus dolor venenatis a. Mauris dictum posuere dolor, ornare fermentum ipsum elementum laoreet. Cras non metus nec dui sagittis imperdiet. Suspendisse non arcu ac arcu venenatis ullamcorper vel ut sem. Etiam blandit, velit nec placerat suscipit, velit dolor congue eros, at rhoncus odio orci a urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non nisi sapien.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam quis vestibulum nulla, eu posuere massa. Vestibulum vel eros interdum turpis fringilla commodo. Sed massa ex, finibus vitae est sit amet, viverra aliquam lectus. Mauris eget ante id lacus fringilla laoreet eget id libero. Suspendisse ac vestibulum risus. Donec blandit tincidunt sem, non euismod nisl molestie ac. Duis tellus dolor, pretium et diam non, ornare fermentum libero. Mauris sed urna ac lacus semper vestibulum. Praesent at laoreet dolor. Praesent ac mollis ligula. Pellentesque nec imperdiet felis, efficitur porta tortor. Pellentesque elementum magna ac enim volutpat, pellentesque luctus elit cursus. Phasellus id dignissim dui, id ullamcorper tellus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus interdum ac enim at faucibus. Nulla nec sapien nibh. Ut suscipit convallis mi ac lobortis. Cras ut massa sed sem laoreet posuere a eget ante. Cras interdum massa vitae lacus convallis, quis congue lacus vulputate. Fusce nec volutpat sapien. Integer ullamcorper orci ut orci sollicitudin, ornare posuere nisl gravida. Phasellus pulvinar eros tortor, non tempor felis maximus sit amet. Phasellus tincidunt est in urna suscipit aliquet. Donec efficitur vehicula lacinia. Sed finibus tortor sed porttitor viverra. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut lobortis tempus nisl. Maecenas lobortis auctor massa, in fermentum tellus pulvinar a. Proin tempor enim eu porttitor condimentum. Sed non tincidunt tortor, vel euismod sem. Pellentesque hendrerit venenatis lectus viverra porttitor. Nulla suscipit, ante non malesuada aliquet, nunc massa venenatis quam, in tincidunt turpis nisl sed ipsum. Fusce lacinia ex et rhoncus egestas. Praesent a ultricies sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam id neque rhoncus, pretium ex sit amet, egestas nunc. Sed ullamcorper pretium dui, quis elementum nisi vehicula ac. Quisque luctus augue nec faucibus finibus. Donec commodo leo in nisl suscipit placerat. Fusce faucibus, ante ac posuere congue, massa turpis sollicitudin nisi, at sagittis tortor quam vitae ipsum. In ultrices turpis sed elit dapibus pulvinar. Vestibulum ut congue nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec urna magna, mattis a erat at, faucibus malesuada augue. Mauris interdum dignissim leo nec viverra. Fusce sed ultricies augue. Nulla facilisi. Maecenas semper ex suscipit est egestas ullamcorper. Vivamus laoreet ipsum ante, eu finibus eros tristique a.</p>\n<!-- /wp:paragraph -->', 'Estudos', '', 'publish', 'open', 'open', '', 'estudos', '', '', '2025-08-05 09:49:31', '2025-08-05 12:49:31', '', 0, 'http://alura.test/?p=31', 0, 'post', '', 0),
(32, 1, '2025-08-05 09:48:55', '2025-08-05 12:48:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis porta nisl, in laoreet massa. Aliquam mauris massa, facilisis a est id, egestas posuere purus. Duis ut nisl dictum odio imperdiet scelerisque. Etiam dignissim fermentum felis ut dignissim. Praesent consequat tincidunt scelerisque. Phasellus porta tortor mauris, at cursus dolor venenatis a. Mauris dictum posuere dolor, ornare fermentum ipsum elementum laoreet. Cras non metus nec dui sagittis imperdiet. Suspendisse non arcu ac arcu venenatis ullamcorper vel ut sem. Etiam blandit, velit nec placerat suscipit, velit dolor congue eros, at rhoncus odio orci a urna. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non nisi sapien.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam quis vestibulum nulla, eu posuere massa. Vestibulum vel eros interdum turpis fringilla commodo. Sed massa ex, finibus vitae est sit amet, viverra aliquam lectus. Mauris eget ante id lacus fringilla laoreet eget id libero. Suspendisse ac vestibulum risus. Donec blandit tincidunt sem, non euismod nisl molestie ac. Duis tellus dolor, pretium et diam non, ornare fermentum libero. Mauris sed urna ac lacus semper vestibulum. Praesent at laoreet dolor. Praesent ac mollis ligula. Pellentesque nec imperdiet felis, efficitur porta tortor. Pellentesque elementum magna ac enim volutpat, pellentesque luctus elit cursus. Phasellus id dignissim dui, id ullamcorper tellus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Phasellus interdum ac enim at faucibus. Nulla nec sapien nibh. Ut suscipit convallis mi ac lobortis. Cras ut massa sed sem laoreet posuere a eget ante. Cras interdum massa vitae lacus convallis, quis congue lacus vulputate. Fusce nec volutpat sapien. Integer ullamcorper orci ut orci sollicitudin, ornare posuere nisl gravida. Phasellus pulvinar eros tortor, non tempor felis maximus sit amet. Phasellus tincidunt est in urna suscipit aliquet. Donec efficitur vehicula lacinia. Sed finibus tortor sed porttitor viverra. Interdum et malesuada fames ac ante ipsum primis in faucibus.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut lobortis tempus nisl. Maecenas lobortis auctor massa, in fermentum tellus pulvinar a. Proin tempor enim eu porttitor condimentum. Sed non tincidunt tortor, vel euismod sem. Pellentesque hendrerit venenatis lectus viverra porttitor. Nulla suscipit, ante non malesuada aliquet, nunc massa venenatis quam, in tincidunt turpis nisl sed ipsum. Fusce lacinia ex et rhoncus egestas. Praesent a ultricies sem.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam id neque rhoncus, pretium ex sit amet, egestas nunc. Sed ullamcorper pretium dui, quis elementum nisi vehicula ac. Quisque luctus augue nec faucibus finibus. Donec commodo leo in nisl suscipit placerat. Fusce faucibus, ante ac posuere congue, massa turpis sollicitudin nisi, at sagittis tortor quam vitae ipsum. In ultrices turpis sed elit dapibus pulvinar. Vestibulum ut congue nisl. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec urna magna, mattis a erat at, faucibus malesuada augue. Mauris interdum dignissim leo nec viverra. Fusce sed ultricies augue. Nulla facilisi. Maecenas semper ex suscipit est egestas ullamcorper. Vivamus laoreet ipsum ante, eu finibus eros tristique a.</p>\n<!-- /wp:paragraph -->', 'Estudos', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2025-08-05 09:48:55', '2025-08-05 12:48:55', '', 31, 'http://alura.test/?p=32', 0, 'revision', '', 0),
(33, 1, '2025-08-07 07:53:25', '2025-08-05 12:50:25', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2025-08-07 07:53:25', '2025-08-07 10:53:25', '', 0, 'http://alura.test/?p=33', 3, 'nav_menu_item', '', 0),
(34, 1, '2025-08-07 07:53:25', '2025-08-05 12:50:25', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2025-08-07 07:53:25', '2025-08-07 10:53:25', '', 0, 'http://alura.test/?p=34', 4, 'nav_menu_item', '', 0),
(35, 1, '2025-08-05 09:56:37', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[sidebar-2]\": {\n        \"value\": [\n            \"block-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-08-05 12:56:37\"\n    },\n    \"widget_block[8]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:paragraph -->\\n<p>aaaa</p>\\n<!-- /wp:paragraph -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-08-05 12:56:37\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '9191c1e1-ac25-44d8-afb7-3aecc7d6b52b', '', '', '2025-08-05 09:56:37', '0000-00-00 00:00:00', '', 0, 'http://alura.test/?p=35', 0, 'customize_changeset', '', 0),
(36, 1, '2025-08-07 07:34:59', '0000-00-00 00:00:00', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"block-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-08-07 10:34:47\"\n    },\n    \"widget_block[8]\": {\n        \"value\": {\n            \"raw_instance\": {\n                \"content\": \"<!-- wp:paragraph -->\\n<p></p>\\n<!-- /wp:paragraph -->\"\n            }\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-08-07 10:34:59\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '26924857-c408-4a2e-bac2-76f3779c0f44', '', '', '2025-08-07 07:34:59', '2025-08-07 10:34:59', '', 0, 'http://alura.test/?p=36', 0, 'customize_changeset', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(37, 1, '2025-08-07 07:51:21', '2025-08-07 10:51:21', '{\n    \"twentytwenty::background_color\": {\n        \"value\": \"#eeffe5\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-08-07 10:50:29\"\n    },\n    \"twentytwenty::accent_accessible_colors\": {\n        \"value\": {\n            \"content\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#df1f52\",\n                \"background\": \"#eeffe5\",\n                \"borders\": \"#a6ea84\",\n                \"secondary\": \"#3b6b23\"\n            },\n            \"header-footer\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#e70d47\",\n                \"background\": \"#f5fff2\",\n                \"borders\": \"#9eec8c\",\n                \"secondary\": \"#326e24\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-08-07 10:51:21\"\n    },\n    \"twentytwenty::header_footer_background_color\": {\n        \"value\": \"#f5fff2\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-08-07 10:50:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd05eab2c-f0c6-49c3-818a-a3dfb5ef7685', '', '', '2025-08-07 07:51:21', '2025-08-07 10:51:21', '', 0, 'http://alura.test/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2025-08-07 07:52:32', '2025-08-07 10:52:32', '{\n    \"twentytwenty::accent_hue_active\": {\n        \"value\": \"custom\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-08-07 10:52:21\"\n    },\n    \"twentytwenty::accent_hue\": {\n        \"value\": 47,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-08-07 10:52:32\"\n    },\n    \"twentytwenty::accent_accessible_colors\": {\n        \"value\": {\n            \"content\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#897119\",\n                \"background\": \"#eeffe5\",\n                \"borders\": \"#a6ea84\",\n                \"secondary\": \"#3b6b23\"\n            },\n            \"header-footer\": {\n                \"text\": \"#000000\",\n                \"accent\": \"#8b7217\",\n                \"background\": \"#f5fff2\",\n                \"borders\": \"#9eec8c\",\n                \"secondary\": \"#326e24\"\n            }\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-08-07 10:52:32\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4d8e97d0-cba6-437f-8601-1637025a7599', '', '', '2025-08-07 07:52:32', '2025-08-07 10:52:32', '', 0, 'http://alura.test/?p=38', 0, 'customize_changeset', '', 0),
(39, 1, '2025-08-07 08:10:00', '2025-08-07 11:10:00', '', 'Carbonando', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-08-07 08:10:00', '2025-08-07 11:10:00', '', 10, 'http://alura.test/?p=39', 0, 'revision', '', 0),
(40, 1, '2025-08-07 08:13:35', '2025-08-07 11:13:35', '<!-- wp:cover {\"url\":\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\",\"id\":590,\"dimRatio\":50,\"customOverlayColor\":\"#121c1c\",\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#fffdc7\"}}} -->\n<div class=\"wp-block-cover alignfull has-text-color\" style=\"color:#fffdc7\"><img class=\"wp-block-cover__image-background wp-image-590\" alt=\"\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" data-object-fit=\"cover\"/><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim\" style=\"background-color:#121c1c\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\",\"fontStyle\":\"normal\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-style:normal;font-weight:700;line-height:1.15\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->', 'Carbonando', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-08-07 08:13:35', '2025-08-07 11:13:35', '', 10, 'http://alura.test/?p=40', 0, 'revision', '', 0),
(42, 1, '2025-08-07 08:17:44', '2025-08-07 11:17:44', '', 'download', '', 'inherit', 'open', 'closed', '', 'download', '', '', '2025-08-07 08:17:44', '2025-08-07 11:17:44', '', 10, 'http://alura.test/wp-content/uploads/2025/08/download.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2025-08-07 08:18:04', '2025-08-07 11:18:04', '<!-- wp:cover {\"url\":\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\",\"id\":590,\"dimRatio\":50,\"customOverlayColor\":\"#121c1c\",\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#fffdc7\"}}} -->\n<div class=\"wp-block-cover alignfull has-text-color\" style=\"color:#fffdc7\"><img class=\"wp-block-cover__image-background wp-image-590\" alt=\"\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" data-object-fit=\"cover\"/><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim\" style=\"background-color:#121c1c\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\",\"fontStyle\":\"normal\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-style:normal;font-weight:700;line-height:1.15\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:media-text {\"mediaId\":42,\"mediaLink\":\"http://alura.test/index.php/inicial/download/\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download.png\" alt=\"\" class=\"wp-image-42 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Conteúdo...\"} -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->', 'Carbonando', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-08-07 08:18:04', '2025-08-07 11:18:04', '', 10, 'http://alura.test/?p=43', 0, 'revision', '', 0),
(44, 1, '2025-08-07 08:19:44', '2025-08-07 11:19:44', '', 'download', '', 'inherit', 'open', 'closed', '', 'download-2', '', '', '2025-08-07 08:19:44', '2025-08-07 11:19:44', '', 10, 'http://alura.test/wp-content/uploads/2025/08/download-1.png', 0, 'attachment', 'image/png', 0),
(45, 1, '2025-08-07 08:21:00', '2025-08-07 11:21:00', '<!-- wp:cover {\"url\":\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\",\"id\":590,\"dimRatio\":50,\"customOverlayColor\":\"#121c1c\",\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#fffdc7\"}}} -->\n<div class=\"wp-block-cover alignfull has-text-color\" style=\"color:#fffdc7\"><img class=\"wp-block-cover__image-background wp-image-590\" alt=\"\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" data-object-fit=\"cover\"/><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim\" style=\"background-color:#121c1c\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\",\"fontStyle\":\"normal\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-style:normal;font-weight:700;line-height:1.15\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:media-text {\"mediaId\":42,\"mediaLink\":\"http://alura.test/index.php/inicial/download/\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download.png\" alt=\"\" class=\"wp-image-42 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Conteúdo...\"} -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download-1.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->', 'Carbonando', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-08-07 08:21:00', '2025-08-07 11:21:00', '', 10, 'http://alura.test/?p=45', 0, 'revision', '', 0),
(46, 1, '2025-08-07 08:23:24', '2025-08-07 11:23:24', '<!-- wp:cover {\"url\":\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\",\"id\":590,\"dimRatio\":50,\"customOverlayColor\":\"#121c1c\",\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#fffdc7\"}}} -->\n<div class=\"wp-block-cover alignfull has-text-color\" style=\"color:#fffdc7\"><img class=\"wp-block-cover__image-background wp-image-590\" alt=\"\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" data-object-fit=\"cover\"/><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim\" style=\"background-color:#121c1c\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\",\"fontStyle\":\"normal\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-style:normal;font-weight:700;line-height:1.15\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:spacer {\"height\":\"56px\"} -->\n<div style=\"height:56px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:media-text {\"mediaId\":42,\"mediaLink\":\"http://alura.test/index.php/inicial/download/\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download.png\" alt=\"\" class=\"wp-image-42 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Conteúdo...\"} -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:spacer {\"height\":\"46px\"} -->\n<div style=\"height:46px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download-1.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->', 'Carbonando', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-08-07 08:23:24', '2025-08-07 11:23:24', '', 10, 'http://alura.test/?p=46', 0, 'revision', '', 0),
(47, 1, '2025-08-07 08:23:32', '2025-08-07 11:23:32', '<!-- wp:cover {\"url\":\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\",\"id\":590,\"dimRatio\":50,\"customOverlayColor\":\"#121c1c\",\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#fffdc7\"}}} -->\n<div class=\"wp-block-cover alignfull has-text-color\" style=\"color:#fffdc7\"><img class=\"wp-block-cover__image-background wp-image-590\" alt=\"\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" data-object-fit=\"cover\"/><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim\" style=\"background-color:#121c1c\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\",\"fontStyle\":\"normal\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-style:normal;font-weight:700;line-height:1.15\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:media-text {\"mediaId\":42,\"mediaLink\":\"http://alura.test/index.php/inicial/download/\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download.png\" alt=\"\" class=\"wp-image-42 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Conteúdo...\"} -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:spacer {\"height\":\"46px\"} -->\n<div style=\"height:46px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download-1.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->', 'Carbonando', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-08-07 08:23:32', '2025-08-07 11:23:32', '', 10, 'http://alura.test/?p=47', 0, 'revision', '', 0),
(48, 1, '2025-08-07 08:29:09', '2025-08-07 11:29:09', '<!-- wp:cover {\"url\":\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\",\"id\":590,\"dimRatio\":50,\"customOverlayColor\":\"#121c1c\",\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#fffdc7\"}}} -->\n<div class=\"wp-block-cover alignfull has-text-color\" style=\"color:#fffdc7\"><img class=\"wp-block-cover__image-background wp-image-590\" alt=\"\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" data-object-fit=\"cover\"/><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim\" style=\"background-color:#121c1c\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\",\"fontStyle\":\"normal\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-style:normal;font-weight:700;line-height:1.15\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:media-text {\"mediaId\":42,\"mediaLink\":\"http://alura.test/index.php/inicial/download/\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download.png\" alt=\"\" class=\"wp-image-42 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Conteúdo...\"} -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:spacer {\"height\":\"46px\"} -->\n<div style=\"height:46px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download-1.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link wp-element-button\">Exercícios</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link wp-element-button\">Glossário</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Carbonando', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-08-07 08:29:09', '2025-08-07 11:29:09', '', 10, 'http://alura.test/?p=48', 0, 'revision', '', 0),
(49, 1, '2025-08-07 08:29:48', '2025-08-07 11:29:48', '<!-- wp:cover {\"url\":\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\",\"id\":590,\"dimRatio\":50,\"customOverlayColor\":\"#121c1c\",\"align\":\"full\",\"style\":{\"color\":{\"text\":\"#fffdc7\"}}} -->\n<div class=\"wp-block-cover alignfull has-text-color\" style=\"color:#fffdc7\"><img class=\"wp-block-cover__image-background wp-image-590\" alt=\"\" src=\"https://s.w.org/patterns/files/2021/06/image-from-rawpixel-id-430289-jpeg-1-1024x1024.jpg\" data-object-fit=\"cover\"/><span aria-hidden=\"true\" class=\"wp-block-cover__background has-background-dim\" style=\"background-color:#121c1c\"></span><div class=\"wp-block-cover__inner-container\"><!-- wp:group {\"style\":{\"spacing\":{\"padding\":{\"top\":\"2em\",\"right\":\"2em\",\"bottom\":\"2em\",\"left\":\"2em\"}},\"elements\":{\"link\":{\"color\":{\"text\":\"#fffdc7\"}}}}} -->\n<div class=\"wp-block-group has-link-color\" style=\"padding-top:2em;padding-right:2em;padding-bottom:2em;padding-left:2em\"><!-- wp:heading {\"style\":{\"typography\":{\"fontWeight\":\"700\",\"fontSize\":\"48px\",\"lineHeight\":\"1.15\",\"fontStyle\":\"normal\"}}} -->\n<h2 class=\"wp-block-heading\" style=\"font-size:48px;font-style:normal;font-weight:700;line-height:1.15\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </h2>\n<!-- /wp:heading --></div>\n<!-- /wp:group --></div></div>\n<!-- /wp:cover -->\n\n<!-- wp:media-text {\"mediaId\":42,\"mediaLink\":\"http://alura.test/index.php/inicial/download/\",\"mediaType\":\"image\"} -->\n<div class=\"wp-block-media-text is-stacked-on-mobile\"><figure class=\"wp-block-media-text__media\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download.png\" alt=\"\" class=\"wp-image-42 size-full\"/></figure><div class=\"wp-block-media-text__content\"><!-- wp:paragraph {\"placeholder\":\"Conteúdo...\"} -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. </p>\n<!-- /wp:paragraph --></div></div>\n<!-- /wp:media-text -->\n\n<!-- wp:spacer {\"height\":\"46px\"} -->\n<div style=\"height:46px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:image {\"id\":44,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://alura.test/wp-content/uploads/2025/08/download-1.png\" alt=\"\" class=\"wp-image-44\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:buttons {\"layout\":{\"type\":\"flex\",\"justifyContent\":\"center\"}} -->\n<div class=\"wp-block-buttons\"><!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://alura.test/index.php/exercicios/\">Exercícios</a></div>\n<!-- /wp:button -->\n\n<!-- wp:button {\"className\":\"is-style-outline\"} -->\n<div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link wp-element-button\" href=\"http://alura.test/index.php/glossario/\">Glossário</a></div>\n<!-- /wp:button --></div>\n<!-- /wp:buttons -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Carbonando', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-08-07 08:29:48', '2025-08-07 11:29:48', '', 10, 'http://alura.test/?p=49', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'twentytwentyfive', 'twentytwentyfive', 0),
(3, 'Orgânica', 'organica', 0),
(4, 'header', 'header', 0),
(5, 'Estudos', 'estudos', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(23, 3, 0),
(25, 4, 0),
(26, 4, 0),
(27, 4, 0),
(28, 4, 0),
(29, 4, 0),
(30, 4, 0),
(31, 5, 0),
(33, 4, 0),
(34, 4, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
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
-- Despejando dados para a tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'category', '', 0, 1),
(4, 4, 'nav_menu', '', 0, 8),
(5, 5, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Despejando dados para a tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Marcos'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:\"c589f5ada7f4e59a541bcbaed79db4a98997853686dfa983a956d73b108cc25b\";a:4:{s:10:\"expiration\";i:1754735408;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36\";s:5:\"login\";i:1754562608;}s:64:\"4153e4a17400db934f48a570e24a3f0abc2affa101bf97dddf992cbafa01471e\";a:4:{s:10:\"expiration\";i:1754735414;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:101:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/138.0.0.0 Safari/537.36\";s:5:\"login\";i:1754562614;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, 'wp_persisted_preferences', 'a:5:{s:4:\"core\";a:3:{s:26:\"isComplementaryAreaVisible\";b:0;s:24:\"enableChoosePatternModal\";b:1;s:10:\"openPanels\";a:2:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";}}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-08-07T11:13:05.627Z\";s:22:\"core/customize-widgets\";a:1:{s:12:\"welcomeGuide\";b:0;}s:17:\"core/edit-widgets\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;}}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '4');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
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
-- Despejando dados para a tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Marcos', '$wp$2y$10$Wz6tKeUJxnuSrkGexO5zDe9ndYKpLgJ2vuBngWEcXN6k8OiQIydYe', 'marcos', 'carbonando@gmail.com', 'http://alura.test', '2025-08-04 13:56:16', '', 0, 'Marcos');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
