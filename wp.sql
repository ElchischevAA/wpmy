-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 29 2018 г., 10:54
-- Версия сервера: 5.6.38
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wp`
--

-- --------------------------------------------------------

--
-- Структура таблицы `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_comments`
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
-- Дамп данных таблицы `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Автор комментария', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-10-12 05:44:37', '2018-10-12 02:44:37', 'Привет! Это комментарий.\nЧтобы начать модерировать, редактировать и удалять комментарии, перейдите на экран «Комментарии» в консоли.\nАватары авторов комментариев загружаются с сервиса <a href=\"https://ru.gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 125, 'WooCommerce', '', '', '', '2018-10-17 10:41:09', '2018-10-17 01:41:09', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 125, 'admin', 'ipsum378@mail.ru', '', '', '2018-10-17 10:43:54', '2018-10-17 01:43:54', 'Статус заказа изменен с Обработка на В ожидании оплаты.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 125, 'admin', 'ipsum378@mail.ru', '', '', '2018-10-17 10:44:23', '2018-10-17 01:44:23', 'Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(5, 147, 'WooCommerce', '', '', '', '2018-10-29 15:37:48', '2018-10-29 06:37:48', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(6, 149, 'WooCommerce', '', '', '', '2018-10-29 15:47:27', '2018-10-29 06:47:27', 'Оплата по факту доставки. Статус заказа изменен с В ожидании оплаты на Обработка.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(7, 149, 'WooCommerce', '', '', '', '2018-10-29 15:47:28', '2018-10-29 06:47:28', 'Запасы Триптих \"Центр\" (20100216) уменьшены с 1 до 0.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_links`
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
-- Структура таблицы `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost', 'yes'),
(2, 'home', 'http://localhost', 'yes'),
(3, 'blogname', 'Мой сайт', 'yes'),
(4, 'blogdescription', 'Изучаем и копаем', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ipsum378@mail.ru', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd.m.Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'd.m.Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:155:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=84&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:1;s:23:\"loco-translate/loco.php\";i:2;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '9', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:59:\"G:\\OSPanel\\domains\\wp/wp-content/themes/phlox/functions.php\";i:1;s:55:\"G:\\OSPanel\\domains\\wp/wp-content/themes/phlox/style.css\";i:2;s:60:\"G:\\OSPanel\\domains\\wp/wp-content/themes/storefront/style.css\";i:3;s:59:\"G:\\OSPanel\\domains\\wp/wp-content/themes/storefront/loop.php\";i:4;s:83:\"G:\\OSPanel\\domains\\wp/wp-content/plugins/woocommerce/includes/wc-core-functions.php\";}', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
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
(79, 'widget_text', 'a:9:{i:2;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:4;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:5;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:6;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:7;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:8;a:4:{s:5:\"title\";s:21:\"Найдите нас\";s:4:\"text\";s:226:\"<strong>Адрес</strong>\n123 Мейн стрит\nНью Йорк, NY 10001\n\n<strong>Часы</strong>\nПонедельник&mdash;пятница: 9:00&ndash;17:00\nСуббота и воскресенье: 11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:9;a:4:{s:5:\"title\";s:13:\"О сайте\";s:4:\"text\";s:205:\"Здесь может быть отличное место для того, чтобы представить себя, свой сайт или выразить какие-то благодарности.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '2', 'yes'),
(84, 'page_on_front', '84', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '0', 'yes'),
(93, 'initial_db_version', '38590', 'yes'),
(94, 'wp_user_roles', 'a:8:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:115:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;s:10:\"loco_admin\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:10:\"translator\";a:2:{s:4:\"name\";s:10:\"Translator\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:10:\"loco_admin\";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'ru_RU', 'yes'),
(97, 'widget_search', 'a:4:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:3;a:1:{s:5:\"title\";s:10:\"Поиск\";}i:4;a:1:{s:5:\"title\";s:10:\"Поиск\";}}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:12:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";i:6;s:6:\"text-2\";i:7;s:6:\"text-3\";i:8;s:6:\"text-4\";i:9;s:6:\"text-5\";i:10;s:6:\"text-9\";i:11;s:8:\"search-4\";}s:9:\"sidebar-1\";a:4:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";i:3;s:6:\"text-8\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'nonce_key', '-oKdHf=U5>nUC9i!:a7S59%`.5w#-?ta}*wGAs#2sbjh398+_L _p0w9:be=$dsz', 'no'),
(110, 'nonce_salt', 'jwBEYESaQ?{ Z}r4c+eu_GhNPrFQ-z9~%qr<|?0P/_P(Lia8HkiED6)8[N4>PhaD', 'no'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'cron', 'a:12:{i:1540799101;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1540799700;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1540799985;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540799995;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540810785;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540821585;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1540824301;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1540825200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540867611;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1540867911;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1541462400;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2678400;}}}s:7:\"version\";i:2;}', 'yes'),
(115, 'theme_mods_twentyseventeen', 'a:9:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539735778;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:3:{i:0;s:6:\"text-6\";i:1;s:8:\"search-3\";i:2;s:6:\"text-7\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-8\";}s:9:\"sidebar-3\";a:2:{i:0;s:6:\"text-9\";i:1;s:8:\"search-4\";}}}s:18:\"nav_menu_locations\";a:2:{s:3:\"top\";i:2;s:6:\"social\";i:3;}s:7:\"panel_1\";i:60;s:7:\"panel_2\";i:57;s:7:\"panel_3\";i:59;s:7:\"panel_4\";i:58;s:11:\"custom_logo\";i:63;s:16:\"header_textcolor\";s:0:\"\";}', 'yes'),
(124, 'category_children', 'a:0:{}', 'yes'),
(125, 'auth_key', '~?g]Dyy<@pgXvHj3[4ueR[7o>kPVA<_l=?Mpt_p=4KU4DW=>J4~r; 2V8:9w.H*/', 'no'),
(126, 'auth_salt', '@X1x(L0l7~2fko2= hf6bGcHW@b*k#}dksa&!73K&o+spH)%EgN7{q;xIQ`?&gv7', 'no'),
(127, 'logged_in_key', ')lSfH3)uU,q3))NfmV%O&RY]k.DtLPn]f<p5#?`d-e#_oQ$9osXz]#I)nk.W[jU{', 'no'),
(128, 'logged_in_salt', 'stC{,u;5UVgxq3d/r~(7[Pz=F8:mqDh!7gqK[<W7-:x8VP-><R]f5auL*#i5z(8.', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(140, 'theme_mods_twentyfifteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539569722;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(146, 'current_theme', 'Storefront', 'yes'),
(147, 'theme_mods_phlox', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:20:\"last_checked_version\";s:6:\"5.2.10\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539569706;s:4:\"data\";a:12:{s:19:\"wp_inactive_widgets\";a:4:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";i:2;s:6:\"text-4\";i:3;s:6:\"text-5\";}s:40:\"auxin-global-primary-sidebar-widget-area\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:42:\"auxin-global-secondary-sidebar-widget-area\";a:0:{}s:39:\"auxin-pages-primary-sidebar-widget-area\";a:0:{}s:41:\"auxin-pages-secondary-sidebar-widget-area\";a:0:{}s:38:\"auxin-blog-primary-sidebar-widget-area\";a:0:{}s:40:\"auxin-blog-secondary-sidebar-widget-area\";a:0:{}s:32:\"auxin-search-sidebar-widget-area\";a:0:{}s:31:\"auxin-subfooter-bar-widget-area\";a:0:{}s:33:\"auxin-footer1-sidebar-widget-area\";a:0:{}s:33:\"auxin-footer2-sidebar-widget-area\";a:0:{}s:33:\"auxin-footer3-sidebar-widget-area\";a:0:{}}}}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(154, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(168, 'recently_activated', 'a:0:{}', 'yes'),
(175, 'woocommerce_store_address', 'Чита', 'yes'),
(176, 'woocommerce_store_address_2', '', 'yes'),
(177, 'woocommerce_store_city', 'Чита', 'yes'),
(178, 'woocommerce_default_country', 'RU:*', 'yes'),
(179, 'woocommerce_store_postcode', '672000', 'yes'),
(180, 'woocommerce_allowed_countries', 'all', 'yes'),
(181, 'woocommerce_all_except_countries', '', 'yes'),
(182, 'woocommerce_specific_allowed_countries', '', 'yes'),
(183, 'woocommerce_ship_to_countries', '', 'yes'),
(184, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(185, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(186, 'woocommerce_calc_taxes', 'no', 'yes'),
(187, 'woocommerce_enable_coupons', 'yes', 'yes'),
(188, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(189, 'woocommerce_currency', 'RUB', 'yes'),
(190, 'woocommerce_currency_pos', 'left', 'yes'),
(191, 'woocommerce_price_thousand_sep', ',', 'yes'),
(192, 'woocommerce_price_decimal_sep', '.', 'yes'),
(193, 'woocommerce_price_num_decimals', '2', 'yes'),
(194, 'woocommerce_shop_page_id', '84', 'yes'),
(195, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(196, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(197, 'woocommerce_weight_unit', 'kg', 'yes'),
(198, 'woocommerce_dimension_unit', 'cm', 'yes'),
(199, 'woocommerce_enable_reviews', 'yes', 'yes'),
(200, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(201, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(202, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(203, 'woocommerce_review_rating_required', 'yes', 'no'),
(204, 'woocommerce_manage_stock', 'yes', 'yes'),
(205, 'woocommerce_hold_stock_minutes', '60', 'no'),
(206, 'woocommerce_notify_low_stock', 'yes', 'no'),
(207, 'woocommerce_notify_no_stock', 'yes', 'no'),
(208, 'woocommerce_stock_email_recipient', 'ipsum378@mail.ru', 'no'),
(209, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(210, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(211, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(212, 'woocommerce_stock_format', '', 'yes'),
(213, 'woocommerce_file_download_method', 'force', 'no'),
(214, 'woocommerce_downloads_require_login', 'no', 'no'),
(215, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(216, 'woocommerce_prices_include_tax', 'no', 'yes'),
(217, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(218, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(219, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(220, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(221, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(222, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(223, 'woocommerce_price_display_suffix', '', 'yes'),
(224, 'woocommerce_tax_total_display', 'itemized', 'no'),
(225, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(226, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(227, 'woocommerce_ship_to_destination', 'billing', 'no'),
(228, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(229, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(230, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(231, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(232, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(233, 'woocommerce_registration_generate_username', 'yes', 'no'),
(234, 'woocommerce_registration_generate_password', 'yes', 'no'),
(235, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(236, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(237, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(238, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(239, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(240, 'woocommerce_trash_pending_orders', '', 'no'),
(241, 'woocommerce_trash_failed_orders', '', 'no'),
(242, 'woocommerce_trash_cancelled_orders', '', 'no'),
(243, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(244, 'woocommerce_email_from_name', 'Мой сайт', 'no'),
(245, 'woocommerce_email_from_address', 'ipsum378@mail.ru', 'no'),
(246, 'woocommerce_email_header_image', '', 'no'),
(247, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(248, 'woocommerce_email_base_color', '#96588a', 'no'),
(249, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(250, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(251, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(252, 'woocommerce_cart_page_id', '85', 'yes'),
(253, 'woocommerce_checkout_page_id', '86', 'yes'),
(254, 'woocommerce_myaccount_page_id', '87', 'yes'),
(255, 'woocommerce_terms_page_id', '', 'no'),
(256, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(257, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(258, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(259, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(260, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(261, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(262, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(263, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(264, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(265, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(266, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(267, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(268, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(269, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(270, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(271, 'woocommerce_api_enabled', 'no', 'yes'),
(272, 'woocommerce_single_image_width', '600', 'yes'),
(273, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(274, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(275, 'woocommerce_demo_store', 'no', 'no'),
(276, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(277, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(278, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(279, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(281, 'default_product_cat', '17', 'yes'),
(286, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(289, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(290, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(300, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(301, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(313, 'woocommerce_product_type', 'physical', 'yes'),
(314, 'woocommerce_allow_tracking', 'yes', 'yes'),
(317, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:16:\"ipsum378@mail.ru\";}', 'yes'),
(318, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(319, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(320, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:36:\"Оплата при доставке\";s:11:\"description\";s:69:\"Оплата наличными при доставке заказа.\";s:12:\"instructions\";s:69:\"Оплата наличными при доставке заказа.\";s:18:\"enable_for_methods\";s:0:\"\";s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(321, 'woocommerce_admin_notice_ppec_paypal_install_error', 'WooCommerce PayPal Express Checkout Gateway could not be installed (Произошла непредвиденная ошибка. Возможно, что-то не так с сайтом WordPress.org или с настройками вашего сервера. Если проблема не решится, обратитесь на <a href=\"https://ru.forums.wordpress.org/\">форумы поддержки</a>.). <a href=\"http://localhost/wp-admin/index.php?wc-install-plugin-redirect=woocommerce-gateway-paypal-express-checkout\">Please install it manually by clicking here.</a>', 'yes'),
(322, 'woocommerce_tracker_last_send', '1540192910', 'yes'),
(324, '_transient_shipping-transient-version', '1539586116', 'yes'),
(325, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:3:\"200\";}', 'yes'),
(326, 'mailchimp_woocommerce_plugin_do_activation_redirect', '', 'yes'),
(328, 'woocommerce_admin_notice_storefront_install_error', 'storefront could not be installed (Unable to connect to the filesystem. Please confirm your credentials.). <a href=\"http://localhost/wp-admin/update.php?action=install-theme&#038;theme=storefront&#038;_wpnonce=f40e05cd49\">Please install it manually by clicking here.</a>', 'yes'),
(329, 'woocommerce_admin_notice_mailchimp-for-woocommerce_install_error', 'MailChimp for WooCommerce could not be installed (Произошла непредвиденная ошибка. Возможно, что-то не так с сайтом WordPress.org или с настройками вашего сервера. Если проблема не решится, обратитесь на <a href=\"https://ru.forums.wordpress.org/\">форумы поддержки</a>.). <a href=\"http://localhost/wp-admin/index.php?wc-install-plugin-redirect=mailchimp-for-woocommerce\">Please install it manually by clicking here.</a>', 'yes'),
(332, '_transient_product_query-transient-version', '1540795648', 'yes'),
(334, '_transient_product-transient-version', '1540795648', 'yes'),
(349, '_transient_timeout_wc_shipping_method_count_1_1539586116', '1542178737', 'no'),
(350, '_transient_wc_shipping_method_count_1_1539586116', '2', 'no'),
(365, 'loco_settings', 'a:3:{s:1:\"c\";s:18:\"Loco_data_Settings\";s:1:\"v\";i:0;s:1:\"d\";a:11:{s:7:\"version\";s:5:\"2.1.5\";s:8:\"gen_hash\";b:0;s:9:\"use_fuzzy\";b:1;s:11:\"num_backups\";i:1;s:9:\"pot_alias\";a:3:{i:0;s:10:\"default.po\";i:1;s:8:\"en_US.po\";i:2;s:5:\"en.po\";}s:9:\"php_alias\";a:2:{i:0;s:3:\"php\";i:1;s:4:\"twig\";}s:10:\"fs_persist\";b:0;s:10:\"fs_protect\";i:1;s:12:\"max_php_size\";s:4:\"100K\";s:11:\"po_utf8_bom\";b:0;s:8:\"po_width\";s:2:\"79\";}}', 'yes'),
(366, '_transient_loco_po_5f89f4a1b28d76a9c25e34a6b0daf33c', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:50:\"plugins/woocommerce/i18n/languages/woocommerce.pot\";s:5:\"bytes\";i:715071;s:5:\"mtime\";i:1540281452;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:5411;s:1:\"p\";i:0;s:1:\"f\";i:0;}}}', 'yes'),
(367, '_transient_loco_po_20d72aba9d671bf44e820c51e2fc8eb1', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:38:\"languages/plugins/woocommerce-ru_RU.po\";s:5:\"bytes\";i:1028786;s:5:\"mtime\";i:1540348884;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:5411;s:1:\"p\";i:5411;s:1:\"f\";i:0;}}}', 'yes'),
(368, '_transient_loco_po_8f968f9525b0181de5e897c4c3723670', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:18:\"languages/ru_RU.po\";s:5:\"bytes\";i:511651;s:5:\"mtime\";i:1538312424;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:2668;s:1:\"p\";i:2668;s:1:\"f\";i:0;}}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(369, '_transient_loco_po_5973001a557951011268d829214d2c54', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:24:\"languages/admin-ru_RU.po\";s:5:\"bytes\";i:670734;s:5:\"mtime\";i:1538312424;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:2645;s:1:\"p\";i:2645;s:1:\"f\";i:0;}}}', 'yes'),
(370, '_transient_loco_po_7ba0b7c240116b3d88c92a920828d4b5', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:32:\"languages/admin-network-ru_RU.po\";s:5:\"bytes\";i:74799;s:5:\"mtime\";i:1538312424;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:311;s:1:\"p\";i:311;s:1:\"f\";i:0;}}}', 'yes'),
(371, '_transient_loco_po_062314e34865007fef3d08eef45e54a6', 'a:3:{s:1:\"c\";s:21:\"Loco_gettext_Metadata\";s:1:\"v\";i:0;s:1:\"d\";a:5:{s:5:\"rpath\";s:36:\"languages/continents-cities-ru_RU.po\";s:5:\"bytes\";i:47517;s:5:\"mtime\";i:1538312426;s:5:\"valid\";b:1;s:5:\"stats\";a:3:{s:1:\"t\";i:524;s:1:\"p\";i:524;s:1:\"f\";i:0;}}}', 'yes'),
(373, 'loco_recent', 'a:3:{s:1:\"c\";s:21:\"Loco_data_RecentItems\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:6:\"bundle\";a:1:{s:34:\"plugin.woocommerce/woocommerce.php\";i:1540280756;}}}', 'no'),
(388, 'ai1wm_secret_key', '52PhJBN7yBWb', 'yes'),
(389, 'ai1wm_status', 'a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:187:\"<a href=\"http://localhost/wp-content/ai1wm-backups/localhost-20181016-054839-597.wpress\" class=\"ai1wm-button-green ai1wm-emphasize\"><span>Download localhost</span><em>Size: 52 MB</em></a>\";}', 'yes'),
(408, 'new_admin_email', 'ipsum378@mail.ru', 'yes'),
(436, 'ai1wm_updater', 'a:0:{}', 'yes'),
(470, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:26;s:8:\"handheld\";i:26;s:9:\"secondary\";i:27;}s:18:\"custom_css_post_id\";i:-1;s:17:\"storefront_layout\";s:5:\"right\";}', 'yes'),
(471, 'storefront_nux_fresh_site', '0', 'yes'),
(472, 'woocommerce_catalog_rows', '4', 'yes'),
(473, 'woocommerce_catalog_columns', '3', 'yes'),
(474, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(491, 'storefront_nux_guided_tour', '1', 'yes'),
(517, '_transient_timeout_wc_product_loop6f691539674373', '1542332093', 'no'),
(518, '_transient_wc_product_loop6f691539674373', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(521, '_transient_timeout_wc_product_loop7ce71539674373', '1542332093', 'no'),
(522, '_transient_wc_product_loop7ce71539674373', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:0:{}s:5:\"total\";i:0;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(523, 'woocommerce_tracker_ua', 'a:2:{i:0;s:110:\"mozilla/5.0 (windows nt 10.0; wow64) applewebkit/537.36 (khtml, like gecko) chrome/49.0.2623.112 safari/537.36\";i:1;s:73:\"mozilla/5.0 (windows nt 10.0; wow64; rv:62.0) gecko/20100101 firefox/62.0\";}', 'yes'),
(530, 'storefront_nux_dismissed', '1', 'yes'),
(567, 'woocommerce_gateway_order', 'a:4:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;}', 'yes'),
(568, '_transient_orders-transient-version', '1540795642', 'yes'),
(580, '_transient_timeout_wc_product_loopf43c1539740211', '1542332690', 'no'),
(581, '_transient_wc_product_loopf43c1539740211', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:123;i:1;i:122;i:2;i:121;i:3;i:120;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(582, '_transient_timeout_wc_product_loopb5a71539740211', '1542332690', 'no'),
(583, '_transient_wc_product_loopb5a71539740211', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:119;i:1;i:118;i:2;i:117;i:3;i:115;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(584, '_transient_timeout_wc_product_loop42c61539740211', '1542332690', 'no'),
(585, '_transient_wc_product_loop42c61539740211', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:112;i:1;i:113;i:2;i:114;i:3;i:115;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(586, '_transient_timeout_wc_product_loopb9181539740211', '1542332690', 'no'),
(587, '_transient_wc_product_loopb9181539740211', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:119;i:1;i:117;i:2;i:114;i:3;i:113;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(588, '_transient_timeout_wc_product_loop3f321539740211', '1542332690', 'no'),
(589, '_transient_wc_product_loop3f321539740211', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:115;i:1;i:122;i:2;i:123;i:3;i:121;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(596, '_transient_timeout_wc_shipping_method_count_0_1539586116', '1542333239', 'no'),
(597, '_transient_wc_shipping_method_count_0_1539586116', '2', 'no'),
(605, 'woocommerce_shop_page_display', 'subcategories', 'yes'),
(606, 'woocommerce_category_archive_display', 'subcategories', 'yes'),
(607, 'woocommerce_checkout_company_field', 'hidden', 'yes'),
(611, 'product_cat_children', 'a:2:{i:22;a:1:{i:0;i:23;}i:23;a:1:{i:0;i:24;}}', 'yes'),
(623, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(651, '_transient_timeout_wc_product_loopf43c1539743759', '1542336154', 'no'),
(652, '_transient_wc_product_loopf43c1539743759', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:128;i:1;i:123;i:2;i:122;i:3;i:121;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(653, '_transient_timeout_wc_product_loopb5a71539743759', '1542336154', 'no'),
(654, '_transient_wc_product_loopb5a71539743759', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:119;i:1;i:118;i:2;i:117;i:3;i:115;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(655, '_transient_timeout_wc_product_loop42c61539743759', '1542336154', 'no'),
(656, '_transient_wc_product_loop42c61539743759', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:112;i:1;i:113;i:2;i:114;i:3;i:115;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(659, '_transient_timeout_wc_product_loopb9181539743759', '1542336154', 'no'),
(660, '_transient_wc_product_loopb9181539743759', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:119;i:1;i:117;i:2;i:114;i:3;i:113;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(661, '_transient_timeout_wc_product_loop3f321539743759', '1542336154', 'no'),
(662, '_transient_wc_product_loop3f321539743759', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:115;i:1;i:128;i:2;i:122;i:3;i:123;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(681, '_transient_timeout_wc_product_loopf43c1539744849', '1542773207', 'no'),
(682, '_transient_wc_product_loopf43c1539744849', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:128;i:1;i:123;i:2;i:122;i:3;i:121;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(683, '_transient_timeout_wc_product_loopb5a71539744849', '1542773208', 'no'),
(684, '_transient_wc_product_loopb5a71539744849', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:119;i:1;i:118;i:2;i:117;i:3;i:115;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(687, '_transient_timeout_wc_product_loop42c61539744849', '1542773209', 'no'),
(688, '_transient_wc_product_loop42c61539744849', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:112;i:1;i:113;i:2;i:114;i:3;i:115;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(691, '_transient_timeout_wc_product_loopb9181539744849', '1542773209', 'no'),
(692, '_transient_wc_product_loopb9181539744849', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:119;i:1;i:117;i:2;i:114;i:3;i:113;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(693, '_transient_timeout_wc_product_loop3f321539744849', '1542773209', 'no'),
(694, '_transient_wc_product_loop3f321539744849', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:115;i:1;i:128;i:2;i:122;i:3;i:123;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(733, '_transient_timeout_external_ip_address_127.0.0.1', '1540797706', 'no'),
(734, '_transient_external_ip_address_127.0.0.1', '195.39.228.154', 'no'),
(738, '_transient_timeout_wc_product_loopb2901539744849', '1542784909', 'no'),
(739, '_transient_wc_product_loopb2901539744849', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:119;i:1;i:118;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(741, '_transient_timeout_wc_product_loop7ce71539744849', '1542784909', 'no'),
(742, '_transient_wc_product_loop7ce71539744849', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:115;i:1;i:128;i:2;i:112;i:3;i:113;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(785, 'woocommerce_version', '3.4.7', 'yes'),
(786, 'woocommerce_db_version', '3.4.7', 'yes'),
(856, '_site_transient_timeout_theme_roots', '1540794233', 'no'),
(857, '_site_transient_theme_roots', 'a:5:{s:5:\"phlox\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(860, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"ru_RU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/ru_RU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1540792444;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(861, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1540792445;s:7:\"checked\";a:5:{s:5:\"phlox\";s:6:\"5.2.10\";s:10:\"storefront\";s:5:\"2.3.4\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.7\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:10:\"storefront\";a:4:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.3.5\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.3.5.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(862, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1540792447;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"6.77\";s:9:\"hello.php\";s:3:\"1.7\";s:23:\"loco-translate/loco.php\";s:5:\"2.1.5\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.7\";}s:8:\"response\";a:2:{s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"6.78\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.6.78.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=1956035\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=1956035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=1956035\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=1956035\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:6:\"5.2.17\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:23:\"loco-translate/loco.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/loco-translate\";s:4:\"slug\";s:14:\"loco-translate\";s:6:\"plugin\";s:23:\"loco-translate/loco.php\";s:11:\"new_version\";s:5:\"2.1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/loco-translate/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/loco-translate.2.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-256x256.png?rev=1000676\";s:2:\"1x\";s:67:\"https://ps.w.org/loco-translate/assets/icon-128x128.png?rev=1000676\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/loco-translate/assets/banner-772x250.jpg?rev=745046\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(864, '_transient_timeout_wc_order_147_needs_processing', '1540881461', 'no'),
(865, '_transient_wc_order_147_needs_processing', '1', 'no'),
(868, '_site_transient_timeout_browser_61971d483a90f528315f03c42336244b', '1541399901', 'no'),
(869, '_site_transient_browser_61971d483a90f528315f03c42336244b', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"63.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(874, '_site_transient_timeout_community-events-1aecf33ab8525ff212ebdffbb438372e', '1540838308', 'no'),
(875, '_site_transient_community-events-1aecf33ab8525ff212ebdffbb438372e', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}s:6:\"events\";a:0:{}}', 'no'),
(878, '_transient_timeout_wc_order_149_needs_processing', '1540882042', 'no'),
(879, '_transient_wc_order_149_needs_processing', '1', 'no'),
(880, '_transient_is_multi_author', '0', 'yes'),
(881, '_transient_timeout_wc_term_counts', '1543387668', 'no'),
(882, '_transient_wc_term_counts', 'a:9:{i:22;s:1:\"1\";i:24;s:1:\"1\";i:23;s:1:\"1\";i:25;s:1:\"1\";i:17;s:1:\"0\";i:19;s:1:\"4\";i:20;s:1:\"4\";i:21;s:1:\"4\";i:18;s:1:\"0\";}', 'no'),
(883, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(886, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1540806933', 'no'),
(887, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4513;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3088;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2597;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2455;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1887;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1687;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1679;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1461;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1409;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1406;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1406;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1338;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1285;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1254;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1119;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1080;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1053;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1041;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:942;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:899;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:836;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:819;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:812;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:741;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:711;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:699;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:692;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:689;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:686;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:670;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:670;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:661;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:651;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:646;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:624;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:622;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:618;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:608;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:602;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:601;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:574;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:556;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:548;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:545;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:534;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:526;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:526;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:518;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:517;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:514;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:510;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:500;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:493;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:490;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:485;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:482;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:464;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:462;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:457;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:452;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:445;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:437;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:431;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:426;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:422;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:421;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:418;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:418;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:411;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:392;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:389;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:384;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:374;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:372;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:370;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:370;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:367;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:363;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:355;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:354;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:351;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:350;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:345;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:342;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:340;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:338;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:334;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:332;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:315;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:312;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:310;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:309;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:306;}s:3:\"tag\";a:3:{s:4:\"name\";s:3:\"tag\";s:4:\"slug\";s:3:\"tag\";s:5:\"count\";i:305;}s:7:\"adsense\";a:3:{s:4:\"name\";s:7:\"adsense\";s:4:\"slug\";s:7:\"adsense\";s:5:\"count\";i:303;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:303;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:303;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:301;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:301;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:299;}}', 'no');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(29, 2, '_edit_lock', '1539312569:1'),
(131, 53, '_wp_attached_file', '2018/10/espresso-4.jpg'),
(132, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/10/espresso-4.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"espresso-4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"espresso-4-416x250.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"espresso-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"espresso-4-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"espresso-4-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"espresso-4-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"espresso-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(133, 53, '_starter_content_theme', 'twentyseventeen'),
(135, 54, '_wp_attached_file', '2018/10/sandwich-4.jpg'),
(136, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:22:\"2018/10/sandwich-4.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"sandwich-4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"sandwich-4-416x250.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sandwich-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sandwich-4-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sandwich-4-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"sandwich-4-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:22:\"sandwich-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 54, '_starter_content_theme', 'twentyseventeen'),
(139, 55, '_wp_attached_file', '2018/10/coffee-4.jpg'),
(140, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:1200;s:4:\"file\";s:20:\"2018/10/coffee-4.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"coffee-4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:20:\"coffee-4-416x250.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"coffee-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"coffee-4-300x180.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"coffee-4-768x461.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:461;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"coffee-4-1024x614.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:614;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:20:\"coffee-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 55, '_starter_content_theme', 'twentyseventeen'),
(144, 56, '_customize_changeset_uuid', 'db017daa-fdc8-4d48-8e3a-96e6143e76ca'),
(145, 57, '_thumbnail_id', '54'),
(147, 57, '_customize_changeset_uuid', 'db017daa-fdc8-4d48-8e3a-96e6143e76ca'),
(148, 58, '_thumbnail_id', '53'),
(150, 58, '_customize_changeset_uuid', 'db017daa-fdc8-4d48-8e3a-96e6143e76ca'),
(151, 59, '_thumbnail_id', '55'),
(153, 59, '_customize_changeset_uuid', 'db017daa-fdc8-4d48-8e3a-96e6143e76ca'),
(154, 60, '_thumbnail_id', '53'),
(156, 60, '_customize_changeset_uuid', 'db017daa-fdc8-4d48-8e3a-96e6143e76ca'),
(157, 62, '_wp_attached_file', '2018/10/gen473_2904946.jpg'),
(158, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:473;s:6:\"height\";i:315;s:4:\"file\";s:26:\"2018/10/gen473_2904946.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"gen473_2904946-324x315.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:315;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"gen473_2904946-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"gen473_2904946-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"gen473_2904946-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"gen473_2904946-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:26:\"gen473_2904946-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 63, '_wp_attached_file', '2018/10/cropped-gen473_2904946.jpg'),
(160, 63, '_wp_attachment_context', 'custom-logo'),
(161, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:250;s:4:\"file\";s:34:\"2018/10/cropped-gen473_2904946.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-gen473_2904946-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"cropped-gen473_2904946-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:32:\"twentyseventeen-thumbnail-avatar\";a:4:{s:4:\"file\";s:34:\"cropped-gen473_2904946-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 61, '_edit_lock', '1539569978:1'),
(163, 69, '_menu_item_type', 'custom'),
(164, 69, '_menu_item_menu_item_parent', '0'),
(165, 69, '_menu_item_object_id', '69'),
(166, 69, '_menu_item_object', 'custom'),
(167, 69, '_menu_item_target', ''),
(168, 69, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 69, '_menu_item_xfn', ''),
(170, 69, '_menu_item_url', 'http://localhost/'),
(171, 70, '_menu_item_type', 'post_type'),
(172, 70, '_menu_item_menu_item_parent', '0'),
(173, 70, '_menu_item_object_id', '57'),
(174, 70, '_menu_item_object', 'page'),
(175, 70, '_menu_item_target', ''),
(176, 70, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 70, '_menu_item_xfn', ''),
(178, 70, '_menu_item_url', ''),
(179, 71, '_menu_item_type', 'post_type'),
(180, 71, '_menu_item_menu_item_parent', '0'),
(181, 71, '_menu_item_object_id', '59'),
(182, 71, '_menu_item_object', 'page'),
(183, 71, '_menu_item_target', ''),
(184, 71, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 71, '_menu_item_xfn', ''),
(186, 71, '_menu_item_url', ''),
(187, 72, '_menu_item_type', 'post_type'),
(188, 72, '_menu_item_menu_item_parent', '0'),
(189, 72, '_menu_item_object_id', '58'),
(190, 72, '_menu_item_object', 'page'),
(191, 72, '_menu_item_target', ''),
(192, 72, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(193, 72, '_menu_item_xfn', ''),
(194, 72, '_menu_item_url', ''),
(195, 73, '_menu_item_type', 'custom'),
(196, 73, '_menu_item_menu_item_parent', '0'),
(197, 73, '_menu_item_object_id', '73'),
(198, 73, '_menu_item_object', 'custom'),
(199, 73, '_menu_item_target', ''),
(200, 73, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(201, 73, '_menu_item_xfn', ''),
(202, 73, '_menu_item_url', 'https://www.yelp.com'),
(203, 74, '_menu_item_type', 'custom'),
(204, 74, '_menu_item_menu_item_parent', '0'),
(205, 74, '_menu_item_object_id', '74'),
(206, 74, '_menu_item_object', 'custom'),
(207, 74, '_menu_item_target', ''),
(208, 74, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(209, 74, '_menu_item_xfn', ''),
(210, 74, '_menu_item_url', 'https://www.facebook.com/wordpress'),
(211, 75, '_menu_item_type', 'custom'),
(212, 75, '_menu_item_menu_item_parent', '0'),
(213, 75, '_menu_item_object_id', '75'),
(214, 75, '_menu_item_object', 'custom'),
(215, 75, '_menu_item_target', ''),
(216, 75, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(217, 75, '_menu_item_xfn', ''),
(218, 75, '_menu_item_url', 'https://twitter.com/wordpress'),
(219, 76, '_menu_item_type', 'custom'),
(220, 76, '_menu_item_menu_item_parent', '0'),
(221, 76, '_menu_item_object_id', '76'),
(222, 76, '_menu_item_object', 'custom'),
(223, 76, '_menu_item_target', ''),
(224, 76, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(225, 76, '_menu_item_xfn', ''),
(226, 76, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(227, 77, '_menu_item_type', 'custom'),
(228, 77, '_menu_item_menu_item_parent', '0'),
(229, 77, '_menu_item_object_id', '77'),
(230, 77, '_menu_item_object', 'custom'),
(231, 77, '_menu_item_target', ''),
(232, 77, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(233, 77, '_menu_item_xfn', ''),
(234, 77, '_menu_item_url', 'mailto:wordpress@example.com'),
(235, 61, '_wp_trash_meta_status', 'publish'),
(236, 61, '_wp_trash_meta_time', '1539569988'),
(240, 79, '_edit_last', '1'),
(241, 79, '_edit_lock', '1539584434:1'),
(242, 79, '_oembed_e6c45c830b613b4dbde6f567d8e76728', '{{unknown}}'),
(243, 82, '_menu_item_type', 'post_type'),
(244, 82, '_menu_item_menu_item_parent', '0'),
(245, 82, '_menu_item_object_id', '79'),
(246, 82, '_menu_item_object', 'page'),
(247, 82, '_menu_item_target', ''),
(248, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(249, 82, '_menu_item_xfn', ''),
(250, 82, '_menu_item_url', ''),
(251, 81, '_wp_trash_meta_status', 'publish'),
(252, 81, '_wp_trash_meta_time', '1539571442'),
(255, 88, '_wc_review_count', '0'),
(256, 88, '_wc_rating_count', 'a:0:{}'),
(257, 88, '_wc_average_rating', '0'),
(258, 88, '_edit_last', '1'),
(259, 88, '_edit_lock', '1539586533:1'),
(260, 88, '_sku', ''),
(261, 88, '_regular_price', '100'),
(262, 88, '_sale_price', ''),
(263, 88, '_sale_price_dates_from', ''),
(264, 88, '_sale_price_dates_to', ''),
(265, 88, 'total_sales', '0'),
(266, 88, '_tax_status', 'taxable'),
(267, 88, '_tax_class', ''),
(268, 88, '_manage_stock', 'no'),
(269, 88, '_backorders', 'no'),
(270, 88, '_sold_individually', 'no'),
(271, 88, '_weight', ''),
(272, 88, '_length', ''),
(273, 88, '_width', ''),
(274, 88, '_height', ''),
(275, 88, '_upsell_ids', 'a:0:{}'),
(276, 88, '_crosssell_ids', 'a:0:{}'),
(277, 88, '_purchase_note', ''),
(278, 88, '_default_attributes', 'a:0:{}'),
(279, 88, '_virtual', 'no'),
(280, 88, '_downloadable', 'no'),
(281, 88, '_product_image_gallery', ''),
(282, 88, '_download_limit', '-1'),
(283, 88, '_download_expiry', '-1'),
(284, 88, '_stock', NULL),
(285, 88, '_stock_status', 'instock'),
(286, 88, '_product_version', '3.4.6'),
(287, 88, '_price', '100'),
(288, 56, '_edit_lock', '1539742139:1'),
(289, 89, '_menu_item_type', 'post_type'),
(290, 89, '_menu_item_menu_item_parent', '0'),
(291, 89, '_menu_item_object_id', '84'),
(292, 89, '_menu_item_object', 'page'),
(293, 89, '_menu_item_target', ''),
(294, 89, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(295, 89, '_menu_item_xfn', ''),
(296, 89, '_menu_item_url', ''),
(297, 85, '_edit_lock', '1540529309:1'),
(298, 84, '_edit_lock', '1540529124:1'),
(299, 60, '_edit_lock', '1539742750:1'),
(305, 88, '_wp_trash_meta_status', 'publish'),
(306, 88, '_wp_trash_meta_time', '1539669828'),
(307, 88, '_wp_desired_post_slug', '%d0%bc%d1%8b%d0%bb%d0%be'),
(308, 92, '_wp_attached_file', '2018/10/2017-06-12_15-29-41_4kwKkx28.csv'),
(309, 92, '_wp_attachment_context', 'import'),
(313, 94, '_wp_attached_file', '2018/10/2017-06-12_15-29-41_4kwKkx28-1.csv'),
(314, 94, '_wp_attachment_context', 'import'),
(316, 56, '_wp_page_template', 'template-homepage.php'),
(317, 96, '_wp_attached_file', '2018/10/beanie.jpg'),
(318, 96, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/10/beanie.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"beanie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"beanie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"beanie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"beanie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 96, '_starter_content_theme', 'storefront'),
(321, 97, '_wp_attached_file', '2018/10/belt.jpg'),
(322, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:16:\"2018/10/belt.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"belt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"belt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"belt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:16:\"belt-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(323, 97, '_starter_content_theme', 'storefront'),
(325, 98, '_wp_attached_file', '2018/10/cap.jpg'),
(326, 98, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:15:\"2018/10/cap.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"cap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"cap-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"cap-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:15:\"cap-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(327, 98, '_starter_content_theme', 'storefront'),
(329, 99, '_wp_attached_file', '2018/10/hoodie-with-logo.jpg'),
(330, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:28:\"2018/10/hoodie-with-logo.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(331, 99, '_starter_content_theme', 'storefront'),
(333, 100, '_wp_attached_file', '2018/10/hoodie-with-pocket.jpg'),
(334, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2018/10/hoodie-with-pocket.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(335, 100, '_starter_content_theme', 'storefront'),
(337, 101, '_wp_attached_file', '2018/10/hoodie-with-zipper.jpg'),
(338, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2018/10/hoodie-with-zipper.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(339, 101, '_starter_content_theme', 'storefront'),
(341, 102, '_wp_attached_file', '2018/10/hoodie.jpg'),
(342, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/10/hoodie.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hoodie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hoodie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hoodie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"hoodie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(343, 102, '_starter_content_theme', 'storefront'),
(345, 103, '_wp_attached_file', '2018/10/long-sleeve-tee.jpg'),
(346, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:27:\"2018/10/long-sleeve-tee.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(347, 103, '_starter_content_theme', 'storefront'),
(349, 104, '_wp_attached_file', '2018/10/polo.jpg'),
(350, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2018/10/polo.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"polo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"polo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"polo-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:16:\"polo-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(351, 104, '_starter_content_theme', 'storefront'),
(353, 105, '_wp_attached_file', '2018/10/sunglasses.jpg'),
(354, 105, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2018/10/sunglasses.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sunglasses-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sunglasses-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sunglasses-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:22:\"sunglasses-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(355, 105, '_starter_content_theme', 'storefront'),
(357, 106, '_wp_attached_file', '2018/10/tshirt.jpg'),
(358, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/10/tshirt.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tshirt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tshirt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tshirt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"tshirt-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(359, 106, '_starter_content_theme', 'storefront'),
(361, 107, '_wp_attached_file', '2018/10/vneck-tee.jpg'),
(362, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/10/vneck-tee.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vneck-tee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vneck-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"vneck-tee-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:21:\"vneck-tee-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(363, 107, '_starter_content_theme', 'storefront'),
(365, 108, '_wp_attached_file', '2018/10/hero.jpg'),
(366, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:16:\"2018/10/hero.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(367, 108, '_starter_content_theme', 'storefront'),
(369, 109, '_wp_attached_file', '2018/10/accessories.jpg'),
(370, 109, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:23:\"2018/10/accessories.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"accessories-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"accessories-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"accessories-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:23:\"accessories-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(371, 109, '_starter_content_theme', 'storefront'),
(373, 110, '_wp_attached_file', '2018/10/tshirts.jpg'),
(374, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:19:\"2018/10/tshirts.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"tshirts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"tshirts-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"tshirts-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:19:\"tshirts-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(375, 110, '_starter_content_theme', 'storefront'),
(377, 111, '_wp_attached_file', '2018/10/hoodies.jpg'),
(378, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2018/10/hoodies.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"hoodies-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"hoodies-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"hoodies-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:19:\"hoodies-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(379, 111, '_starter_content_theme', 'storefront'),
(381, 112, '_thumbnail_id', '96'),
(383, 112, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(384, 113, '_thumbnail_id', '97'),
(386, 113, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(387, 114, '_thumbnail_id', '98'),
(389, 114, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(390, 115, '_thumbnail_id', '105'),
(392, 115, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(393, 116, '_thumbnail_id', '99'),
(395, 116, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(396, 117, '_thumbnail_id', '100'),
(398, 117, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(399, 118, '_thumbnail_id', '101'),
(401, 118, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(402, 119, '_thumbnail_id', '102'),
(404, 119, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(405, 120, '_thumbnail_id', '103'),
(407, 120, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(408, 121, '_thumbnail_id', '104'),
(410, 121, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(411, 122, '_thumbnail_id', '106'),
(413, 122, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(414, 123, '_thumbnail_id', '107'),
(416, 123, '_customize_changeset_uuid', '617e10c0-b7ef-45a6-9860-46407447be31'),
(417, 112, '_wc_review_count', '0'),
(418, 112, '_wc_rating_count', 'a:0:{}'),
(419, 112, '_wc_average_rating', '0'),
(420, 112, '_sku', ''),
(421, 112, '_regular_price', '20'),
(422, 112, '_sale_price', '18'),
(423, 112, '_sale_price_dates_from', ''),
(424, 112, '_sale_price_dates_to', ''),
(425, 112, 'total_sales', '0'),
(426, 112, '_tax_status', 'taxable'),
(427, 112, '_tax_class', ''),
(428, 112, '_manage_stock', 'no'),
(429, 112, '_backorders', 'no'),
(430, 112, '_sold_individually', 'no'),
(431, 112, '_weight', ''),
(432, 112, '_length', ''),
(433, 112, '_width', ''),
(434, 112, '_height', ''),
(435, 112, '_upsell_ids', 'a:0:{}'),
(436, 112, '_crosssell_ids', 'a:0:{}'),
(437, 112, '_purchase_note', ''),
(438, 112, '_default_attributes', 'a:0:{}'),
(439, 112, '_virtual', 'no'),
(440, 112, '_downloadable', 'no'),
(441, 112, '_product_image_gallery', ''),
(442, 112, '_download_limit', '-1'),
(443, 112, '_download_expiry', '-1'),
(444, 112, '_stock', NULL),
(445, 112, '_stock_status', 'instock'),
(446, 112, '_product_version', '3.4.6'),
(447, 112, '_price', '18'),
(448, 113, '_wc_review_count', '0'),
(449, 113, '_wc_rating_count', 'a:0:{}'),
(450, 113, '_wc_average_rating', '0'),
(451, 113, '_sku', ''),
(452, 113, '_regular_price', '65'),
(453, 113, '_sale_price', '55'),
(454, 113, '_sale_price_dates_from', ''),
(455, 113, '_sale_price_dates_to', ''),
(456, 113, 'total_sales', '0'),
(457, 113, '_tax_status', 'taxable'),
(458, 113, '_tax_class', ''),
(459, 113, '_manage_stock', 'no'),
(460, 113, '_backorders', 'no'),
(461, 113, '_sold_individually', 'no'),
(462, 113, '_weight', ''),
(463, 113, '_length', ''),
(464, 113, '_width', ''),
(465, 113, '_height', ''),
(466, 113, '_upsell_ids', 'a:0:{}'),
(467, 113, '_crosssell_ids', 'a:0:{}'),
(468, 113, '_purchase_note', ''),
(469, 113, '_default_attributes', 'a:0:{}'),
(470, 113, '_virtual', 'no'),
(471, 113, '_downloadable', 'no'),
(472, 113, '_product_image_gallery', ''),
(473, 113, '_download_limit', '-1'),
(474, 113, '_download_expiry', '-1'),
(475, 113, '_stock', NULL),
(476, 113, '_stock_status', 'instock'),
(477, 113, '_product_version', '3.4.6'),
(478, 113, '_price', '55'),
(479, 114, '_wc_review_count', '0'),
(480, 114, '_wc_rating_count', 'a:0:{}'),
(481, 114, '_wc_average_rating', '0'),
(482, 114, '_sku', ''),
(483, 114, '_regular_price', '18'),
(484, 114, '_sale_price', '16'),
(485, 114, '_sale_price_dates_from', ''),
(486, 114, '_sale_price_dates_to', ''),
(487, 114, 'total_sales', '0'),
(488, 114, '_tax_status', 'taxable'),
(489, 114, '_tax_class', ''),
(490, 114, '_manage_stock', 'no'),
(491, 114, '_backorders', 'no'),
(492, 114, '_sold_individually', 'no'),
(493, 114, '_weight', ''),
(494, 114, '_length', ''),
(495, 114, '_width', ''),
(496, 114, '_height', ''),
(497, 114, '_upsell_ids', 'a:0:{}'),
(498, 114, '_crosssell_ids', 'a:0:{}'),
(499, 114, '_purchase_note', ''),
(500, 114, '_default_attributes', 'a:0:{}'),
(501, 114, '_virtual', 'no'),
(502, 114, '_downloadable', 'no'),
(503, 114, '_product_image_gallery', ''),
(504, 114, '_download_limit', '-1'),
(505, 114, '_download_expiry', '-1'),
(506, 114, '_stock', NULL),
(507, 114, '_stock_status', 'instock'),
(508, 114, '_product_version', '3.4.6'),
(509, 114, '_price', '16'),
(510, 115, '_wc_review_count', '0'),
(511, 115, '_wc_rating_count', 'a:0:{}'),
(512, 115, '_wc_average_rating', '0'),
(513, 115, '_sku', ''),
(514, 115, '_regular_price', '90'),
(515, 115, '_sale_price', ''),
(516, 115, '_sale_price_dates_from', ''),
(517, 115, '_sale_price_dates_to', ''),
(518, 115, 'total_sales', '1'),
(519, 115, '_tax_status', 'taxable'),
(520, 115, '_tax_class', ''),
(521, 115, '_manage_stock', 'no'),
(522, 115, '_backorders', 'no'),
(523, 115, '_sold_individually', 'no'),
(524, 115, '_weight', ''),
(525, 115, '_length', ''),
(526, 115, '_width', ''),
(527, 115, '_height', ''),
(528, 115, '_upsell_ids', 'a:0:{}'),
(529, 115, '_crosssell_ids', 'a:0:{}'),
(530, 115, '_purchase_note', ''),
(531, 115, '_default_attributes', 'a:0:{}'),
(532, 115, '_virtual', 'no'),
(533, 115, '_downloadable', 'no'),
(534, 115, '_product_image_gallery', ''),
(535, 115, '_download_limit', '-1'),
(536, 115, '_download_expiry', '-1'),
(537, 115, '_stock', NULL),
(538, 115, '_stock_status', 'instock'),
(539, 115, '_product_version', '3.4.6'),
(540, 115, '_price', '90'),
(541, 116, '_wc_review_count', '0'),
(542, 116, '_wc_rating_count', 'a:0:{}'),
(543, 116, '_wc_average_rating', '0'),
(544, 116, '_sku', ''),
(545, 116, '_regular_price', '45'),
(546, 116, '_sale_price', ''),
(547, 116, '_sale_price_dates_from', ''),
(548, 116, '_sale_price_dates_to', ''),
(549, 116, 'total_sales', '0'),
(550, 116, '_tax_status', 'taxable'),
(551, 116, '_tax_class', ''),
(552, 116, '_manage_stock', 'no'),
(553, 116, '_backorders', 'no'),
(554, 116, '_sold_individually', 'no'),
(555, 116, '_weight', ''),
(556, 116, '_length', ''),
(557, 116, '_width', ''),
(558, 116, '_height', ''),
(559, 116, '_upsell_ids', 'a:0:{}'),
(560, 116, '_crosssell_ids', 'a:0:{}'),
(561, 116, '_purchase_note', ''),
(562, 116, '_default_attributes', 'a:0:{}'),
(563, 116, '_virtual', 'no'),
(564, 116, '_downloadable', 'no'),
(565, 116, '_product_image_gallery', ''),
(566, 116, '_download_limit', '-1'),
(567, 116, '_download_expiry', '-1'),
(568, 116, '_stock', NULL),
(569, 116, '_stock_status', 'instock'),
(570, 116, '_product_version', '3.4.6'),
(571, 116, '_price', '45'),
(572, 117, '_wc_review_count', '0'),
(573, 117, '_wc_rating_count', 'a:0:{}'),
(574, 117, '_wc_average_rating', '0'),
(575, 117, '_sku', ''),
(576, 117, '_regular_price', '45'),
(577, 117, '_sale_price', '35'),
(578, 117, '_sale_price_dates_from', ''),
(579, 117, '_sale_price_dates_to', ''),
(580, 117, 'total_sales', '0'),
(581, 117, '_tax_status', 'taxable'),
(582, 117, '_tax_class', ''),
(583, 117, '_manage_stock', 'no'),
(584, 117, '_backorders', 'no'),
(585, 117, '_sold_individually', 'no'),
(586, 117, '_weight', ''),
(587, 117, '_length', ''),
(588, 117, '_width', ''),
(589, 117, '_height', ''),
(590, 117, '_upsell_ids', 'a:0:{}'),
(591, 117, '_crosssell_ids', 'a:0:{}'),
(592, 117, '_purchase_note', ''),
(593, 117, '_default_attributes', 'a:0:{}'),
(594, 117, '_virtual', 'no'),
(595, 117, '_downloadable', 'no'),
(596, 117, '_product_image_gallery', ''),
(597, 117, '_download_limit', '-1'),
(598, 117, '_download_expiry', '-1'),
(599, 117, '_stock', NULL),
(600, 117, '_stock_status', 'instock'),
(601, 117, '_product_version', '3.4.6'),
(602, 117, '_price', '35'),
(603, 118, '_wc_review_count', '0'),
(604, 118, '_wc_rating_count', 'a:0:{}'),
(605, 118, '_wc_average_rating', '0'),
(606, 118, '_sku', ''),
(607, 118, '_regular_price', '45'),
(608, 118, '_sale_price', ''),
(609, 118, '_sale_price_dates_from', ''),
(610, 118, '_sale_price_dates_to', ''),
(611, 118, 'total_sales', '0'),
(612, 118, '_tax_status', 'taxable'),
(613, 118, '_tax_class', ''),
(614, 118, '_manage_stock', 'no'),
(615, 118, '_backorders', 'no'),
(616, 118, '_sold_individually', 'no'),
(617, 118, '_weight', ''),
(618, 118, '_length', ''),
(619, 118, '_width', ''),
(620, 118, '_height', ''),
(621, 118, '_upsell_ids', 'a:0:{}'),
(622, 118, '_crosssell_ids', 'a:0:{}'),
(623, 118, '_purchase_note', ''),
(624, 118, '_default_attributes', 'a:0:{}'),
(625, 118, '_virtual', 'no'),
(626, 118, '_downloadable', 'no'),
(627, 118, '_product_image_gallery', ''),
(628, 118, '_download_limit', '-1'),
(629, 118, '_download_expiry', '-1'),
(630, 118, '_stock', NULL),
(631, 118, '_stock_status', 'instock'),
(632, 118, '_product_version', '3.4.6'),
(633, 118, '_price', '45'),
(634, 119, '_wc_review_count', '0'),
(635, 119, '_wc_rating_count', 'a:0:{}'),
(636, 119, '_wc_average_rating', '0'),
(637, 119, '_sku', ''),
(638, 119, '_regular_price', '45'),
(639, 119, '_sale_price', '42'),
(640, 119, '_sale_price_dates_from', ''),
(641, 119, '_sale_price_dates_to', ''),
(642, 119, 'total_sales', '0'),
(643, 119, '_tax_status', 'taxable'),
(644, 119, '_tax_class', ''),
(645, 119, '_manage_stock', 'no'),
(646, 119, '_backorders', 'no'),
(647, 119, '_sold_individually', 'no'),
(648, 119, '_weight', ''),
(649, 119, '_length', ''),
(650, 119, '_width', ''),
(651, 119, '_height', ''),
(652, 119, '_upsell_ids', 'a:0:{}'),
(653, 119, '_crosssell_ids', 'a:0:{}'),
(654, 119, '_purchase_note', ''),
(655, 119, '_default_attributes', 'a:0:{}'),
(656, 119, '_virtual', 'no'),
(657, 119, '_downloadable', 'no'),
(658, 119, '_product_image_gallery', ''),
(659, 119, '_download_limit', '-1'),
(660, 119, '_download_expiry', '-1'),
(661, 119, '_stock', NULL),
(662, 119, '_stock_status', 'instock'),
(663, 119, '_product_version', '3.4.6'),
(664, 119, '_price', '42'),
(665, 120, '_wc_review_count', '0'),
(666, 120, '_wc_rating_count', 'a:0:{}'),
(667, 120, '_wc_average_rating', '0'),
(668, 120, '_sku', ''),
(669, 120, '_regular_price', '25'),
(670, 120, '_sale_price', ''),
(671, 120, '_sale_price_dates_from', ''),
(672, 120, '_sale_price_dates_to', ''),
(673, 120, 'total_sales', '0'),
(674, 120, '_tax_status', 'taxable'),
(675, 120, '_tax_class', ''),
(676, 120, '_manage_stock', 'no'),
(677, 120, '_backorders', 'no'),
(678, 120, '_sold_individually', 'no'),
(679, 120, '_weight', ''),
(680, 120, '_length', ''),
(681, 120, '_width', ''),
(682, 120, '_height', ''),
(683, 120, '_upsell_ids', 'a:0:{}'),
(684, 120, '_crosssell_ids', 'a:0:{}'),
(685, 120, '_purchase_note', ''),
(686, 120, '_default_attributes', 'a:0:{}'),
(687, 120, '_virtual', 'no'),
(688, 120, '_downloadable', 'no'),
(689, 120, '_product_image_gallery', ''),
(690, 120, '_download_limit', '-1'),
(691, 120, '_download_expiry', '-1'),
(692, 120, '_stock', NULL),
(693, 120, '_stock_status', 'instock'),
(694, 120, '_product_version', '3.4.6'),
(695, 120, '_price', '25'),
(696, 121, '_wc_review_count', '0'),
(697, 121, '_wc_rating_count', 'a:0:{}'),
(698, 121, '_wc_average_rating', '0'),
(699, 121, '_sku', ''),
(700, 121, '_regular_price', '20'),
(701, 121, '_sale_price', ''),
(702, 121, '_sale_price_dates_from', ''),
(703, 121, '_sale_price_dates_to', ''),
(704, 121, 'total_sales', '0'),
(705, 121, '_tax_status', 'taxable'),
(706, 121, '_tax_class', ''),
(707, 121, '_manage_stock', 'no'),
(708, 121, '_backorders', 'no'),
(709, 121, '_sold_individually', 'no'),
(710, 121, '_weight', ''),
(711, 121, '_length', ''),
(712, 121, '_width', ''),
(713, 121, '_height', ''),
(714, 121, '_upsell_ids', 'a:0:{}'),
(715, 121, '_crosssell_ids', 'a:0:{}'),
(716, 121, '_purchase_note', ''),
(717, 121, '_default_attributes', 'a:0:{}'),
(718, 121, '_virtual', 'no'),
(719, 121, '_downloadable', 'no'),
(720, 121, '_product_image_gallery', ''),
(721, 121, '_download_limit', '-1'),
(722, 121, '_download_expiry', '-1'),
(723, 121, '_stock', NULL),
(724, 121, '_stock_status', 'instock'),
(725, 121, '_product_version', '3.4.6'),
(726, 121, '_price', '20'),
(727, 122, '_wc_review_count', '0'),
(728, 122, '_wc_rating_count', 'a:0:{}'),
(729, 122, '_wc_average_rating', '0'),
(730, 122, '_sku', ''),
(731, 122, '_regular_price', '18'),
(732, 122, '_sale_price', ''),
(733, 122, '_sale_price_dates_from', ''),
(734, 122, '_sale_price_dates_to', ''),
(735, 122, 'total_sales', '1'),
(736, 122, '_tax_status', 'taxable'),
(737, 122, '_tax_class', ''),
(738, 122, '_manage_stock', 'no'),
(739, 122, '_backorders', 'no'),
(740, 122, '_sold_individually', 'no'),
(741, 122, '_weight', ''),
(742, 122, '_length', ''),
(743, 122, '_width', ''),
(744, 122, '_height', ''),
(745, 122, '_upsell_ids', 'a:0:{}'),
(746, 122, '_crosssell_ids', 'a:0:{}'),
(747, 122, '_purchase_note', ''),
(748, 122, '_default_attributes', 'a:0:{}'),
(749, 122, '_virtual', 'no'),
(750, 122, '_downloadable', 'no'),
(751, 122, '_product_image_gallery', ''),
(752, 122, '_download_limit', '-1'),
(753, 122, '_download_expiry', '-1'),
(754, 122, '_stock', NULL),
(755, 122, '_stock_status', 'instock'),
(756, 122, '_product_version', '3.4.6'),
(757, 122, '_price', '18'),
(758, 123, '_wc_review_count', '0'),
(759, 123, '_wc_rating_count', 'a:0:{}'),
(760, 123, '_wc_average_rating', '0'),
(761, 123, '_sku', ''),
(762, 123, '_regular_price', '18'),
(763, 123, '_sale_price', ''),
(764, 123, '_sale_price_dates_from', ''),
(765, 123, '_sale_price_dates_to', ''),
(766, 123, 'total_sales', '0'),
(767, 123, '_tax_status', 'taxable'),
(768, 123, '_tax_class', ''),
(769, 123, '_manage_stock', 'no'),
(770, 123, '_backorders', 'no'),
(771, 123, '_sold_individually', 'no'),
(772, 123, '_weight', ''),
(773, 123, '_length', ''),
(774, 123, '_width', ''),
(775, 123, '_height', ''),
(776, 123, '_upsell_ids', 'a:0:{}'),
(777, 123, '_crosssell_ids', 'a:0:{}'),
(778, 123, '_purchase_note', ''),
(779, 123, '_default_attributes', 'a:0:{}'),
(780, 123, '_virtual', 'no'),
(781, 123, '_downloadable', 'no'),
(782, 123, '_product_image_gallery', ''),
(783, 123, '_download_limit', '-1'),
(784, 123, '_download_expiry', '-1'),
(785, 123, '_stock', NULL),
(786, 123, '_stock_status', 'instock'),
(787, 123, '_product_version', '3.4.6'),
(788, 123, '_price', '18'),
(789, 124, '_wp_trash_meta_status', 'publish'),
(790, 124, '_wp_trash_meta_time', '1539740211'),
(792, 125, '_order_key', 'wc_order_5bc6932d56930'),
(793, 125, '_customer_user', '1'),
(794, 125, '_payment_method', 'cod'),
(795, 125, '_payment_method_title', 'Оплата при доставке'),
(796, 125, '_transaction_id', ''),
(797, 125, '_customer_ip_address', '127.0.0.1'),
(798, 125, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; wow64) applewebkit/537.36 (khtml, like gecko) chrome/49.0.2623.112 safari/537.36'),
(799, 125, '_created_via', 'checkout'),
(800, 125, '_date_completed', ''),
(801, 125, '_completed_date', ''),
(802, 125, '_date_paid', ''),
(803, 125, '_paid_date', ''),
(804, 125, '_cart_hash', '49aeb2cf0f63babbd9435357fcd9aec3'),
(805, 125, '_billing_first_name', 'Alex'),
(806, 125, '_billing_last_name', 'El'),
(807, 125, '_billing_company', ''),
(808, 125, '_billing_address_1', 'sdasdasdasd'),
(809, 125, '_billing_address_2', ''),
(810, 125, '_billing_city', 'cgita'),
(811, 125, '_billing_state', 'Zab'),
(812, 125, '_billing_postcode', '670200'),
(813, 125, '_billing_country', 'RU'),
(814, 125, '_billing_email', 'ipsum378@mail.ru'),
(815, 125, '_billing_phone', '9240242424'),
(816, 125, '_shipping_first_name', 'Alex'),
(817, 125, '_shipping_last_name', 'El'),
(818, 125, '_shipping_company', ''),
(819, 125, '_shipping_address_1', 'sdasdasdasd'),
(820, 125, '_shipping_address_2', ''),
(821, 125, '_shipping_city', 'cgita'),
(822, 125, '_shipping_state', 'Zab'),
(823, 125, '_shipping_postcode', '670200'),
(824, 125, '_shipping_country', 'RU'),
(825, 125, '_order_currency', 'RUB'),
(826, 125, '_cart_discount', '0'),
(827, 125, '_cart_discount_tax', '0'),
(828, 125, '_order_shipping', '0'),
(829, 125, '_order_shipping_tax', '0'),
(830, 125, '_order_tax', '0'),
(831, 125, '_order_total', '90.00'),
(832, 125, '_order_version', '3.4.6'),
(833, 125, '_prices_include_tax', 'no'),
(834, 125, '_billing_address_index', 'Alex El  sdasdasdasd  cgita Zab 670200 RU ipsum378@mail.ru 9240242424'),
(835, 125, '_shipping_address_index', 'Alex El  sdasdasdasd  cgita Zab 670200 RU'),
(836, 125, '_download_permissions_granted', 'yes'),
(837, 125, '_recorded_sales', 'yes');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(838, 125, '_recorded_coupon_usage_counts', 'yes'),
(839, 125, '_order_stock_reduced', 'yes'),
(840, 125, '_edit_lock', '1539740766:1'),
(841, 115, '_edit_lock', '1539740377:1'),
(842, 125, '_edit_last', '1'),
(843, 127, '_edit_lock', '1539742687:1'),
(844, 127, '_wp_trash_meta_status', 'publish'),
(845, 127, '_wp_trash_meta_time', '1539742689'),
(846, 128, '_wc_review_count', '0'),
(847, 128, '_wc_rating_count', 'a:0:{}'),
(848, 128, '_wc_average_rating', '0'),
(849, 128, '_edit_last', '1'),
(850, 128, '_edit_lock', '1539744851:1'),
(851, 128, '_sku', '20100216'),
(852, 128, '_regular_price', '1490'),
(853, 128, '_sale_price', ''),
(854, 128, '_sale_price_dates_from', ''),
(855, 128, '_sale_price_dates_to', ''),
(856, 128, 'total_sales', '1'),
(857, 128, '_tax_status', 'taxable'),
(858, 128, '_tax_class', ''),
(859, 128, '_manage_stock', 'yes'),
(860, 128, '_backorders', 'no'),
(861, 128, '_sold_individually', 'no'),
(862, 128, '_weight', ''),
(863, 128, '_length', '53'),
(864, 128, '_width', '40'),
(865, 128, '_height', ''),
(866, 128, '_upsell_ids', 'a:0:{}'),
(867, 128, '_crosssell_ids', 'a:0:{}'),
(868, 128, '_purchase_note', ''),
(869, 128, '_default_attributes', 'a:0:{}'),
(870, 128, '_virtual', 'no'),
(871, 128, '_downloadable', 'no'),
(872, 128, '_product_image_gallery', '130'),
(873, 128, '_download_limit', '-1'),
(874, 128, '_download_expiry', '-1'),
(875, 128, '_stock', '0'),
(876, 128, '_stock_status', 'outofstock'),
(877, 128, '_product_attributes', 'a:1:{s:36:\"%d1%80%d0%b0%d0%b7%d0%bc%d0%b5%d1%80\";a:6:{s:4:\"name\";s:12:\"Размер\";s:5:\"value\";s:5:\"53*40\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:0;}}'),
(878, 128, '_product_version', '3.4.7'),
(879, 128, '_price', '1490'),
(880, 129, '_wp_attached_file', '2018/10/20100216-1000x1000.jpg'),
(881, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:30:\"2018/10/20100216-1000x1000.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"20100216-1000x1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"20100216-1000x1000-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"20100216-1000x1000-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"20100216-1000x1000-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"20100216-1000x1000-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"20100216-1000x1000-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"20100216-1000x1000-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"20100216-1000x1000-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"20100216-1000x1000-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(882, 130, '_wp_attached_file', '2018/10/20100216_2-1000x1000.jpg'),
(883, 130, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1000;s:6:\"height\";i:1000;s:4:\"file\";s:32:\"2018/10/20100216_2-1000x1000.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"20100216_2-1000x1000-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"20100216_2-1000x1000-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"20100216_2-1000x1000-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:32:\"20100216_2-1000x1000-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:32:\"20100216_2-1000x1000-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:32:\"20100216_2-1000x1000-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:32:\"20100216_2-1000x1000-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:32:\"20100216_2-1000x1000-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:32:\"20100216_2-1000x1000-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(884, 128, '_thumbnail_id', '129'),
(886, 134, '_menu_item_type', 'post_type'),
(887, 134, '_menu_item_menu_item_parent', '0'),
(888, 134, '_menu_item_object_id', '86'),
(889, 134, '_menu_item_object', 'page'),
(890, 134, '_menu_item_target', ''),
(891, 134, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(892, 134, '_menu_item_xfn', ''),
(893, 134, '_menu_item_url', ''),
(894, 134, '_menu_item_orphaned', '1540184498'),
(895, 135, '_menu_item_type', 'post_type'),
(896, 135, '_menu_item_menu_item_parent', '0'),
(897, 135, '_menu_item_object_id', '87'),
(898, 135, '_menu_item_object', 'page'),
(899, 135, '_menu_item_target', ''),
(900, 135, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(901, 135, '_menu_item_xfn', ''),
(902, 135, '_menu_item_url', ''),
(903, 135, '_menu_item_orphaned', '1540184520'),
(904, 136, '_menu_item_type', 'post_type'),
(905, 136, '_menu_item_menu_item_parent', '0'),
(906, 136, '_menu_item_object_id', '87'),
(907, 136, '_menu_item_object', 'page'),
(908, 136, '_menu_item_target', ''),
(909, 136, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(910, 136, '_menu_item_xfn', ''),
(911, 136, '_menu_item_url', ''),
(913, 137, '_menu_item_type', 'post_type'),
(914, 137, '_menu_item_menu_item_parent', '0'),
(915, 137, '_menu_item_object_id', '86'),
(916, 137, '_menu_item_object', 'page'),
(917, 137, '_menu_item_target', ''),
(918, 137, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(919, 137, '_menu_item_xfn', ''),
(920, 137, '_menu_item_url', ''),
(922, 138, '_menu_item_type', 'custom'),
(923, 138, '_menu_item_menu_item_parent', '0'),
(924, 138, '_menu_item_object_id', '138'),
(925, 138, '_menu_item_object', 'custom'),
(926, 138, '_menu_item_target', ''),
(927, 138, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(928, 138, '_menu_item_xfn', ''),
(929, 138, '_menu_item_url', 'http://localhost/my-account/customer-logout/?_wpnonce=04ff12fa14'),
(931, 139, '_menu_item_type', 'post_type'),
(932, 139, '_menu_item_menu_item_parent', '0'),
(933, 139, '_menu_item_object_id', '84'),
(934, 139, '_menu_item_object', 'page'),
(935, 139, '_menu_item_target', ''),
(936, 139, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(937, 139, '_menu_item_xfn', ''),
(938, 139, '_menu_item_url', ''),
(940, 140, '_menu_item_type', 'post_type'),
(941, 140, '_menu_item_menu_item_parent', '0'),
(942, 140, '_menu_item_object_id', '59'),
(943, 140, '_menu_item_object', 'page'),
(944, 140, '_menu_item_target', ''),
(945, 140, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(946, 140, '_menu_item_xfn', ''),
(947, 140, '_menu_item_url', ''),
(949, 141, '_menu_item_type', 'post_type'),
(950, 141, '_menu_item_menu_item_parent', '0'),
(951, 141, '_menu_item_object_id', '58'),
(952, 141, '_menu_item_object', 'page'),
(953, 141, '_menu_item_target', ''),
(954, 141, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(955, 141, '_menu_item_xfn', ''),
(956, 141, '_menu_item_url', ''),
(958, 142, '_menu_item_type', 'post_type'),
(959, 142, '_menu_item_menu_item_parent', '0'),
(960, 142, '_menu_item_object_id', '57'),
(961, 142, '_menu_item_object', 'page'),
(962, 142, '_menu_item_target', ''),
(963, 142, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(964, 142, '_menu_item_xfn', ''),
(965, 142, '_menu_item_url', ''),
(968, 86, '_edit_lock', '1540529104:1'),
(969, 86, '_edit_last', '1'),
(970, 86, '_wp_page_template', 'default'),
(971, 84, '_edit_last', '1'),
(972, 87, '_edit_lock', '1540529150:1'),
(973, 87, '_edit_last', '1'),
(974, 87, '_wp_page_template', 'default'),
(975, 85, '_edit_last', '1'),
(976, 85, '_wp_page_template', 'default'),
(977, 147, '_order_key', 'wc_order_5bd6aab44945b'),
(978, 147, '_customer_user', '1'),
(979, 147, '_payment_method', 'cod'),
(980, 147, '_payment_method_title', 'Оплата при доставке'),
(981, 147, '_transaction_id', ''),
(982, 147, '_customer_ip_address', '127.0.0.1'),
(983, 147, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; wow64; rv:63.0) gecko/20100101 firefox/63.0'),
(984, 147, '_created_via', 'checkout'),
(985, 147, '_date_completed', ''),
(986, 147, '_completed_date', ''),
(987, 147, '_date_paid', ''),
(988, 147, '_paid_date', ''),
(989, 147, '_cart_hash', '841c1ccf49f1b134fa1e3038e336e721'),
(990, 147, '_billing_first_name', 'Alex'),
(991, 147, '_billing_last_name', ''),
(992, 147, '_billing_company', ''),
(993, 147, '_billing_address_1', 'sdasdasdasd'),
(994, 147, '_billing_address_2', ''),
(995, 147, '_billing_city', ''),
(996, 147, '_billing_state', ''),
(997, 147, '_billing_postcode', ''),
(998, 147, '_billing_country', ''),
(999, 147, '_billing_email', 'ipsum378@mail.ru'),
(1000, 147, '_billing_phone', ''),
(1001, 147, '_shipping_first_name', 'Alex'),
(1002, 147, '_shipping_last_name', ''),
(1003, 147, '_shipping_company', ''),
(1004, 147, '_shipping_address_1', 'sdasdasdasd'),
(1005, 147, '_shipping_address_2', ''),
(1006, 147, '_shipping_city', ''),
(1007, 147, '_shipping_state', ''),
(1008, 147, '_shipping_postcode', ''),
(1009, 147, '_shipping_country', ''),
(1010, 147, '_order_currency', 'RUB'),
(1011, 147, '_cart_discount', '0'),
(1012, 147, '_cart_discount_tax', '0'),
(1013, 147, '_order_shipping', '0.00'),
(1014, 147, '_order_shipping_tax', '0'),
(1015, 147, '_order_tax', '0'),
(1016, 147, '_order_total', '18.00'),
(1017, 147, '_order_version', '3.4.7'),
(1018, 147, '_prices_include_tax', 'no'),
(1019, 147, '_billing_address_index', 'Alex   sdasdasdasd      ipsum378@mail.ru '),
(1020, 147, '_shipping_address_index', 'Alex   sdasdasdasd     '),
(1021, 147, '_download_permissions_granted', 'yes'),
(1022, 147, '_recorded_sales', 'yes'),
(1023, 147, '_recorded_coupon_usage_counts', 'yes'),
(1024, 147, '_order_stock_reduced', 'yes'),
(1025, 149, '_order_key', 'wc_order_5bd6acf9acafc'),
(1026, 149, '_customer_user', '1'),
(1027, 149, '_payment_method', 'cod'),
(1028, 149, '_payment_method_title', 'Оплата при доставке'),
(1029, 149, '_transaction_id', ''),
(1030, 149, '_customer_ip_address', '127.0.0.1'),
(1031, 149, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; wow64; rv:63.0) gecko/20100101 firefox/63.0'),
(1032, 149, '_created_via', 'checkout'),
(1033, 149, '_date_completed', ''),
(1034, 149, '_completed_date', ''),
(1035, 149, '_date_paid', ''),
(1036, 149, '_paid_date', ''),
(1037, 149, '_cart_hash', 'f4909b4ee2023674012692cbb68ffe61'),
(1038, 149, '_billing_first_name', 'Alex'),
(1039, 149, '_billing_last_name', ''),
(1040, 149, '_billing_company', ''),
(1041, 149, '_billing_address_1', 'sdasdasdasd'),
(1042, 149, '_billing_address_2', ''),
(1043, 149, '_billing_city', ''),
(1044, 149, '_billing_state', ''),
(1045, 149, '_billing_postcode', ''),
(1046, 149, '_billing_country', ''),
(1047, 149, '_billing_email', 'ipsum378@mail.ru'),
(1048, 149, '_billing_phone', ''),
(1049, 149, '_shipping_first_name', 'Alex'),
(1050, 149, '_shipping_last_name', ''),
(1051, 149, '_shipping_company', ''),
(1052, 149, '_shipping_address_1', 'sdasdasdasd'),
(1053, 149, '_shipping_address_2', ''),
(1054, 149, '_shipping_city', ''),
(1055, 149, '_shipping_state', ''),
(1056, 149, '_shipping_postcode', ''),
(1057, 149, '_shipping_country', ''),
(1058, 149, '_order_currency', 'RUB'),
(1059, 149, '_cart_discount', '0'),
(1060, 149, '_cart_discount_tax', '0'),
(1061, 149, '_order_shipping', '200.00'),
(1062, 149, '_order_shipping_tax', '0'),
(1063, 149, '_order_tax', '0'),
(1064, 149, '_order_total', '1690.00'),
(1065, 149, '_order_version', '3.4.7'),
(1066, 149, '_prices_include_tax', 'no'),
(1067, 149, '_billing_address_index', 'Alex   sdasdasdasd      ipsum378@mail.ru '),
(1068, 149, '_shipping_address_index', 'Alex   sdasdasdasd     '),
(1069, 149, '_download_permissions_granted', 'yes'),
(1070, 149, '_recorded_sales', 'yes'),
(1071, 149, '_recorded_coupon_usage_counts', 'yes'),
(1072, 149, '_order_stock_reduced', 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_posts`
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
-- Дамп данных таблицы `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-12 05:44:37', '2018-10-12 02:44:37', 'Добро пожаловать в WordPress. Это ваша первая запись. Отредактируйте или удалите её, затем пишите!', 'Привет, мир!', '', 'publish', 'open', 'open', '', '%d0%bf%d1%80%d0%b8%d0%b2%d0%b5%d1%82-%d0%bc%d0%b8%d1%80', '', '', '2018-10-12 05:44:37', '2018-10-12 02:44:37', '', 0, 'http://localhost/?p=1', 0, 'post', '', 1),
(2, 1, '2018-10-12 05:44:37', '2018-10-12 02:44:37', 'Это пример страницы. От записей в блоге она отличается тем, что остаётся на одном месте и отображается в меню сайта (в большинстве тем). На странице &laquo;Детали&raquo; владельцы сайтов обычно рассказывают о себе потенциальным посетителям. Например, так:\n\n<blockquote>Привет! Днём я курьер, а вечером &#8212; подающий надежды актёр. Это мой блог. Я живу в Ростове-на-Дону, люблю своего пса Джека и пинаколаду. (И ещё попадать под дождь.)</blockquote>\n\n...или так:\n\n<blockquote>Компания &laquo;Штучки XYZ&raquo; была основана в 1971 году и с тех пор производит качественные штучки. Компания находится в Готэм-сити, имеет штат из более чем 2000 сотрудников и приносит много пользы жителям Готэма.</blockquote>\n\nПерейдите <a href=\"http://localhost/wp-admin/\">в консоль</a>, чтобы удалить эту страницу и создать новые. Успехов!', 'Пример страницы', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-10-12 05:44:37', '2018-10-12 02:44:37', '', 0, 'http://localhost/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-12 05:44:37', '2018-10-12 02:44:37', '<h2>Кто мы</h2><p>Наш адрес сайта: http://localhost.</p><h2>Какие персональные данные мы собираем и с какой целью</h2><h3>Комментарии</h3><p>Если посетитель оставляет комментарий на сайте, мы собираем данные указанные в форме комментария, а также IP адрес посетителя и данные user-agent браузера с целью определения спама.</p><p>Анонимизированная строка создаваемая из вашего адреса email (\"хеш\") может предоставляться сервису Gravatar, чтобы определить используете ли вы его. Политика конфиденциальности Gravatar доступна здесь: https://automattic.com/privacy/ . После одобрения комментария ваше изображение профиля будет видимым публично в контексте вашего комментария.</p><h3>Медиафайлы</h3><p>Если вы зарегистрированный пользователь и загружаете фотографии на сайт, вам возможно следует избегать загрузки изображений с метаданными EXIF, так как они могут содержать данные вашего месторасположения по GPS. Посетители могут извлечь эту информацию скачав изображения с сайта.</p><h3>Формы контактов</h3><h3>Куки</h3><p>Если вы оставляете комментарий на нашем сайте, вы можете включить сохранение вашего имени, адреса email и вебсайта в куки. Это делается для вашего удобства, чтобы не заполнять данные снова при повторном комментировании. Эти куки хранятся в течение одного года.</p><p>Если у вас есть учетная запись на сайте и вы войдете в неё, мы установим временный куки для определения поддержки куки вашим браузером, куки не содержит никакой личной информации и удаляется при закрытии вашего браузера.</p><p>При входе в учетную запись мы также устанавливаем несколько куки с данными входа и настройками экрана. Куки входа хранятся в течение двух дней, куки с настройками экрана - год. Если вы выберете возможность \"Запомнить меня\", данные о входе будут сохраняться в течение двух недель. При выходе из учетной записи куки входа будут удалены.</p><p>При редактировании или публикации статьи в браузере будет сохранен дополнительный куки, он не содержит персональных данных и содержит только ID записи отредактированной вами, истекает через 1 день.</p><h3>Встраиваемое содержимое других вебсайтов</h3><p>Статьи на этом сайте могут включать встраиваемое содержимое (например видео, изображения, статьи и др.), подобное содержимое ведет себя так же, как если бы посетитель зашел на другой сайт.</p><p>Эти сайты могут собирать данные о вас, использовать куки, внедрять дополнительное отслеживание третьей стороной и следить за вашим взаимодействием с внедренным содержимым, включая отслеживание взаимодействия, если у вас есть учетная запись и вы авторизовались на том сайте.</p><h3>Веб-аналитика</h3><h2>С кем мы делимся вашими данными</h2><h2>Как долго мы храним ваши данные</h2><p>Если вы оставляете комментарий, то сам комментарий и его метаданные сохраняются неопределенно долго. Это делается для того, чтобы определять и одобрять последующие комментарии автоматически, вместо помещения их в очередь на одобрение.</p><p>Для пользователей с регистрацией на нашем сайте мы храним ту личную информацию, которую они указывают в своем профиле. Все пользователи могут видеть, редактировать или удалить свою информацию из профиля в любое время (кроме имени пользователя). Администрация вебсайта также может видеть и изменять эту информацию.</p><h2>Какие у вас права на ваши данные</h2><p>При наличии учетной записи на сайте или если вы оставляли комментарии, то вы можете запросить файл экспорта персональных данных, которые мы сохранили о вас, включая предоставленные вами данные. Вы также можете запросить удаление этих данных, это не включает данные, которые мы обязаны хранить в административных целях, по закону или целях безопасности.</p><h2>Куда мы отправляем ваши данные</h2><p>Комментарии пользователей могут проверяться автоматическим сервисом определения спама.</p><h2>Ваша контактная информация</h2><h2>Дополнительная информация</h2><h3>Как мы защищаем ваши данные</h3><h3>Какие принимаются процедуры против взлома данных</h3><h3>От каких третьих сторон мы получаем данные</h3><h3>Какие автоматические решения принимаются на основе данных пользователей</h3><h3>Требования к раскрытию отраслевых нормативных требований</h3>', 'Политика конфиденциальности', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-10-12 05:44:37', '2018-10-12 02:44:37', '', 0, 'http://localhost/?page_id=3', 0, 'page', '', 0),
(53, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 'Эспрессо', '', 'inherit', 'open', 'closed', '', '%d1%8d%d1%81%d0%bf%d1%80%d0%b5%d1%81%d1%81%d0%be', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 0, 'http://localhost/wp-content/uploads/2018/10/espresso-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 'Сэндвич', '', 'inherit', 'open', 'closed', '', '%d1%81%d1%8d%d0%bd%d0%b4%d0%b2%d0%b8%d1%87', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 0, 'http://localhost/wp-content/uploads/2018/10/sandwich-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 'Кофе', '', 'inherit', 'open', 'closed', '', '%d0%ba%d0%be%d1%84%d0%b5', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 0, 'http://localhost/wp-content/uploads/2018/10/coffee-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 0, 'http://localhost/?page_id=56', 0, 'page', '', 0),
(57, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', 'Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.', 'О нас', '', 'publish', 'closed', 'closed', '', '%d0%be-%d0%bd%d0%b0%d1%81', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 0, 'http://localhost/?page_id=57', 0, 'page', '', 0),
(58, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', 'Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.', 'Контакты', '', 'publish', 'closed', 'closed', '', '%d0%ba%d0%be%d0%bd%d1%82%d0%b0%d0%ba%d1%82%d1%8b', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 0, 'http://localhost/?page_id=58', 0, 'page', '', 0),
(59, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 'Блог', '', 'publish', 'closed', 'closed', '', '%d0%b1%d0%bb%d0%be%d0%b3', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 0, 'http://localhost/?page_id=59', 0, 'page', '', 0),
(60, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', 'Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.', 'Раздел главной страницы', '', 'publish', 'closed', 'closed', '', '%d1%80%d0%b0%d0%b7%d0%b4%d0%b5%d0%bb-%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%be%d0%b9-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d1%8b', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 0, 'http://localhost/?page_id=60', 0, 'page', '', 0),
(61, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', '{\n    \"widget_text[6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"16fec2f03791a098f302ae9e2a15f1b2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"widget_search[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1bf60213df24fe586d06c98ff0ca9718\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"widget_text[7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9c2cdebce3f077e32af34e70732b3964\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-6\",\n            \"search-3\",\n            \"text-7\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"widget_text[8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIxOiLQndCw0LnQtNC40YLQtSDQvdCw0YEiO3M6NDoidGV4dCI7czoyMjY6IjxzdHJvbmc+0JDQtNGA0LXRgTwvc3Ryb25nPgoxMjMg0JzQtdC50L0g0YHRgtGA0LjRggrQndGM0Y4g0JnQvtGA0LosIE5ZIDEwMDAxCgo8c3Ryb25nPtCn0LDRgdGLPC9zdHJvbmc+CtCf0L7QvdC10LTQtdC70YzQvdC40LombWRhc2g70L/Rj9GC0L3QuNGG0LA6IDk6MDAmbmRhc2g7MTc6MDAK0KHRg9Cx0LHQvtGC0LAg0Lgg0LLQvtGB0LrRgNC10YHQtdC90YzQtTogMTE6MDAmbmRhc2g7MTU6MDAiO3M6NjoiZmlsdGVyIjtiOjE7czo2OiJ2aXN1YWwiO2I6MTt9\",\n            \"title\": \"\\u041d\\u0430\\u0439\\u0434\\u0438\\u0442\\u0435 \\u043d\\u0430\\u0441\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"16fec2f03791a098f302ae9e2a15f1b2\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-8\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"widget_text[9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiLQniDRgdCw0LnRgtC1IjtzOjQ6InRleHQiO3M6MjA1OiLQl9C00LXRgdGMINC80L7QttC10YIg0LHRi9GC0Ywg0L7RgtC70LjRh9C90L7QtSDQvNC10YHRgtC+INC00LvRjyDRgtC+0LPQviwg0YfRgtC+0LHRiyDQv9GA0LXQtNGB0YLQsNCy0LjRgtGMINGB0LXQsdGPLCDRgdCy0L7QuSDRgdCw0LnRgiDQuNC70Lgg0LLRi9GA0LDQt9C40YLRjCDQutCw0LrQuNC1LdGC0L4g0LHQu9Cw0LPQvtC00LDRgNC90L7RgdGC0LguIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"\\u041e \\u0441\\u0430\\u0439\\u0442\\u0435\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"9c2cdebce3f077e32af34e70732b3964\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"widget_search[4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YToxOntzOjU6InRpdGxlIjtzOjEwOiLQn9C+0LjRgdC6Ijt9\",\n            \"title\": \"\\u041f\\u043e\\u0438\\u0441\\u043a\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"1bf60213df24fe586d06c98ff0ca9718\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"sidebars_widgets[sidebar-3]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-9\",\n            \"search-4\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            53,\n            54,\n            55,\n            56,\n            57,\n            58,\n            59,\n            60\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"\\u0412\\u0435\\u0440\\u0445\\u043d\\u0435\\u0435 \\u043c\\u0435\\u043d\\u044e\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://localhost/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 57,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041e \\u043d\\u0430\\u0441\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 59,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u0411\\u043b\\u043e\\u0433\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 58,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u041a\\u043e\\u043d\\u0442\\u0430\\u043a\\u0442\\u044b\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"twentyseventeen::nav_menu_locations[top]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"\\u041c\\u0435\\u043d\\u044e \\u0441\\u043e\\u0446\\u0438\\u0430\\u043b\\u044c\\u043d\\u044b\\u0445 \\u0441\\u0441\\u044b\\u043b\\u043e\\u043a\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"E-mail\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u041f\\u0440\\u043e\\u0438\\u0437\\u0432\\u043e\\u043b\\u044c\\u043d\\u0430\\u044f \\u0441\\u0441\\u044b\\u043b\\u043a\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:47\"\n    },\n    \"twentyseventeen::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 56,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 59,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"twentyseventeen::panel_1\": {\n        \"starter_content\": true,\n        \"value\": 60,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"twentyseventeen::panel_2\": {\n        \"starter_content\": true,\n        \"value\": 57,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"twentyseventeen::panel_3\": {\n        \"starter_content\": true,\n        \"value\": 59,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"twentyseventeen::panel_4\": {\n        \"starter_content\": true,\n        \"value\": 58,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:16:04\"\n    },\n    \"blogname\": {\n        \"value\": \"\\u041c\\u043e\\u0439 \\u0441\\u0430\\u0439\\u0442\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:38\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\\u0418\\u0437\\u0443\\u0447\\u0430\\u0435\\u043c \\u0438 \\u043a\\u043e\\u043f\\u0430\\u0435\\u043c\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:38\"\n    },\n    \"twentyseventeen::custom_logo\": {\n        \"value\": 63,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:38\"\n    },\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:19:38\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'db017daa-fdc8-4d48-8e3a-96e6143e76ca', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 0, 'http://localhost/?p=61', 0, 'customize_changeset', '', 0),
(62, 1, '2018-10-15 05:18:22', '2018-10-15 02:18:22', '', 'gen473_2904946', '', 'inherit', 'open', 'closed', '', 'gen473_2904946', '', '', '2018-10-15 05:18:22', '2018-10-15 02:18:22', '', 0, 'http://localhost/wp-content/uploads/2018/10/gen473_2904946.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 1, '2018-10-15 05:18:36', '2018-10-15 02:18:36', 'http://localhost/wp-content/uploads/2018/10/cropped-gen473_2904946.jpg', 'cropped-gen473_2904946.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-gen473_2904946-jpg', '', '', '2018-10-15 05:18:36', '2018-10-15 02:18:36', '', 0, 'http://localhost/wp-content/uploads/2018/10/cropped-gen473_2904946.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', 'Добро пожаловать на сайт! Это ваша главная страница, которую большинство посетителей увидят, впервые зайдя на ваш сайт.', 'Главная страница', '', 'inherit', 'closed', 'closed', '', '56-revision-v1', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 56, 'http://localhost/?p=64', 0, 'revision', '', 0),
(65, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', 'Вы можете быть художником, который желает здесь представить себя и свои работы или представителем бизнеса с описанием миссии.', 'О нас', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 57, 'http://localhost/?p=65', 0, 'revision', '', 0),
(66, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', 'Это страница с основной контактной информацией, такой как адрес и номер телефона. Вы также можете попробовать добавить форму контактов с помощью плагина.', 'Контакты', '', 'inherit', 'closed', 'closed', '', '58-revision-v1', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 58, 'http://localhost/?p=66', 0, 'revision', '', 0),
(67, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 'Блог', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 59, 'http://localhost/?p=67', 0, 'revision', '', 0),
(68, 1, '2018-10-15 05:19:47', '2018-10-15 02:19:47', 'Это пример раздела главной страницы. Разделы домашней страницы могут быть любыми страницами кроме самой главной страницы, включая страницу последних записей блога.', 'Раздел главной страницы', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-10-15 05:19:47', '2018-10-15 02:19:47', '', 60, 'http://localhost/?p=68', 0, 'revision', '', 0),
(69, 1, '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 'Главная страница', '', 'publish', 'closed', 'closed', '', '%d0%b3%d0%bb%d0%b0%d0%b2%d0%bd%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2018-10-22 13:18:21', '2018-10-22 04:18:21', '', 0, 'http://localhost/?p=69', 1, 'nav_menu_item', '', 0),
(70, 1, '2018-10-15 05:19:48', '2018-10-15 02:19:48', ' ', '', '', 'publish', 'closed', 'closed', '', '70', '', '', '2018-10-22 13:18:21', '2018-10-22 04:18:21', '', 0, 'http://localhost/?p=70', 2, 'nav_menu_item', '', 0),
(71, 1, '2018-10-15 05:19:48', '2018-10-15 02:19:48', ' ', '', '', 'publish', 'closed', 'closed', '', '71', '', '', '2018-10-22 13:18:22', '2018-10-22 04:18:22', '', 0, 'http://localhost/?p=71', 3, 'nav_menu_item', '', 0),
(72, 1, '2018-10-15 05:19:48', '2018-10-15 02:19:48', ' ', '', '', 'publish', 'closed', 'closed', '', '72', '', '', '2018-10-22 13:18:22', '2018-10-22 04:18:22', '', 0, 'http://localhost/?p=72', 4, 'nav_menu_item', '', 0),
(73, 1, '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 0, 'http://localhost/?p=73', 0, 'nav_menu_item', '', 0),
(74, 1, '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 0, 'http://localhost/?p=74', 1, 'nav_menu_item', '', 0),
(75, 1, '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 0, 'http://localhost/?p=75', 2, 'nav_menu_item', '', 0),
(76, 1, '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 0, 'http://localhost/?p=76', 3, 'nav_menu_item', '', 0),
(77, 1, '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 'E-mail', '', 'publish', 'closed', 'closed', '', 'e-mail', '', '', '2018-10-15 05:19:48', '2018-10-15 02:19:48', '', 0, 'http://localhost/?p=77', 4, 'nav_menu_item', '', 0),
(79, 1, '2018-10-15 05:41:15', '2018-10-15 02:41:15', '<a href=\"https://s.drom.ru/i24226/pubs/4483/64154/2903325.jpg\" data-image-id=\"2903325\" data-drom-gallery=\"travel-images\" data-size=\"900x600\" data-image-hash=\"photo2903325\"><img class=\"lasyImage\" src=\"https://s.drom.ru/i24226/pubs/4483/64154/2903326.jpg\" width=\"640\" height=\"427\" /></a>\r\n\r\nЛетний сезон у нас получился куцым. Хотя и прошли очень интересный и сложный маршрут по Хакасии, Туве, Монголии, Бурятии, но путешествие получилось самым непродолжительным с 2013 года. Поэтому добираем километраж и адреналин за счет вылазок по округе, которые можно назвать поездками выходного дня. В частности, мы все той же компанией, которой выезжали в Монголию на зимнюю рыбалку (<a href=\"https://travel.drom.ru/5933\">travel.drom.ru/5933</a>), решили половить рыбку в Байкале на его бурятском берегу.\r\n\r\nКонечно, не на полном серьезе, а в чисто развлекательных целях, совместив удовольствие от рыбалки со знакомством с озером и ближайшими окрестностями. Но мы-то здесь уже бывали не раз, а вот наши друзья из Братска видели Байкал только из окна поезда.\r\nПлан был такой: стартуем на своих автомобилях из Иркутска, пару дней отдыхаем на турбазе в Култушной, затем совершаем набег на столицу Бурятии — Улан-Удэ. Ну, а потом едем осматривать Большой Куналей: эта деревенька попала в число самых красивых населенных пунктов России.\r\n\r\nТурбаза в Култушной принадлежит железной дороге, но сюда пускают и тех, кто к ней не имеет никакого отношения, нужно просто заранее об этом побеспокоиться. База существует давно и обросла инфраструктурой: кроме домиков здесь есть гостиница, развлекательный и оздоровительный центры, столовая, магазинчики, плавучие бани и прочее. Обустроена и набережная.', 'Это моя новая страница', '', 'publish', 'closed', 'closed', '', '%d1%8d%d1%82%d0%be-%d0%bc%d0%be%d1%8f-%d0%bd%d0%be%d0%b2%d0%b0%d1%8f-%d1%81%d1%82%d1%80%d0%b0%d0%bd%d0%b8%d1%86%d0%b0', '', '', '2018-10-15 05:41:15', '2018-10-15 02:41:15', '', 0, 'http://localhost/?page_id=79', 0, 'page', '', 0),
(80, 1, '2018-10-15 05:38:47', '2018-10-15 02:38:47', '<a href=\"https://s.drom.ru/i24226/pubs/4483/64154/2903325.jpg\" data-image-id=\"2903325\" data-drom-gallery=\"travel-images\" data-size=\"900x600\" data-image-hash=\"photo2903325\"><img class=\"lasyImage\" src=\"https://s.drom.ru/i24226/pubs/4483/64154/2903326.jpg\" width=\"640\" height=\"427\" /></a>\r\n\r\nЛетний сезон у нас получился куцым. Хотя и прошли очень интересный и сложный маршрут по Хакасии, Туве, Монголии, Бурятии, но путешествие получилось самым непродолжительным с 2013 года. Поэтому добираем километраж и адреналин за счет вылазок по округе, которые можно назвать поездками выходного дня. В частности, мы все той же компанией, которой выезжали в Монголию на зимнюю рыбалку (<a href=\"https://travel.drom.ru/5933\">travel.drom.ru/5933</a>), решили половить рыбку в Байкале на его бурятском берегу.\r\n\r\nКонечно, не на полном серьезе, а в чисто развлекательных целях, совместив удовольствие от рыбалки со знакомством с озером и ближайшими окрестностями. Но мы-то здесь уже бывали не раз, а вот наши друзья из Братска видели Байкал только из окна поезда.\r\nПлан был такой: стартуем на своих автомобилях из Иркутска, пару дней отдыхаем на турбазе в Култушной, затем совершаем набег на столицу Бурятии — Улан-Удэ. Ну, а потом едем осматривать Большой Куналей: эта деревенька попала в число самых красивых населенных пунктов России.\r\n\r\nТурбаза в Култушной принадлежит железной дороге, но сюда пускают и тех, кто к ней не имеет никакого отношения, нужно просто заранее об этом побеспокоиться. База существует давно и обросла инфраструктурой: кроме домиков здесь есть гостиница, развлекательный и оздоровительный центры, столовая, магазинчики, плавучие бани и прочее. Обустроена и набережная.', 'Это моя новая страница', '', 'inherit', 'closed', 'closed', '', '79-revision-v1', '', '', '2018-10-15 05:38:47', '2018-10-15 02:38:47', '', 79, 'http://localhost/?p=80', 0, 'revision', '', 0),
(81, 1, '2018-10-15 05:44:01', '2018-10-15 02:44:01', '{\n    \"nav_menu_item[-462050641]\": {\n        \"value\": {\n            \"object_id\": 79,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"\\u042d\\u0442\\u043e \\u043c\\u043e\\u044f \\u043d\\u043e\\u0432\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"url\": \"http://localhost/?page_id=79\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u042d\\u0442\\u043e \\u043c\\u043e\\u044f \\u043d\\u043e\\u0432\\u0430\\u044f \\u0441\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\",\n            \"nav_menu_term_id\": 2,\n            \"_invalid\": false,\n            \"type_label\": \"\\u0421\\u0442\\u0440\\u0430\\u043d\\u0438\\u0446\\u0430\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-15 02:44:01\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c1e1cea-80e7-4744-beeb-fbf172f81c76', '', '', '2018-10-15 05:44:01', '2018-10-15 02:44:01', '', 0, 'http://localhost/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2018-10-15 05:44:02', '2018-10-15 02:44:02', ' ', '', '', 'publish', 'closed', 'closed', '', '82', '', '', '2018-10-22 13:18:22', '2018-10-22 04:18:22', '', 0, 'http://localhost/?p=82', 5, 'nav_menu_item', '', 0),
(84, 1, '2018-10-15 09:47:39', '2018-10-15 06:47:39', '', 'Магазин', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-10-26 13:47:42', '2018-10-26 04:47:42', '', 0, 'http://localhost/shop/', 0, 'page', '', 0),
(85, 1, '2018-10-15 09:47:39', '2018-10-15 06:47:39', '[woocommerce_cart]', 'Корзина', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-10-26 13:48:27', '2018-10-26 04:48:27', '', 0, 'http://localhost/cart/', 0, 'page', '', 0),
(86, 1, '2018-10-15 09:47:39', '2018-10-15 06:47:39', '[woocommerce_checkout]', 'Заказ', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-10-26 13:47:00', '2018-10-26 04:47:00', '', 0, 'http://localhost/checkout/', 0, 'page', '', 0),
(87, 1, '2018-10-15 09:47:39', '2018-10-15 06:47:39', '[woocommerce_my_account]', 'Личный кабинет', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-10-26 13:48:07', '2018-10-26 04:48:07', '', 0, 'http://localhost/my-account/', 0, 'page', '', 0),
(88, 1, '2018-10-15 09:57:15', '2018-10-15 06:57:15', 'Продам отличное мыло', 'Мыло', '', 'trash', 'open', 'closed', '', '%d0%bc%d1%8b%d0%bb%d0%be__trashed', '', '', '2018-10-16 09:03:48', '2018-10-16 06:03:48', '', 0, 'http://localhost/?post_type=product&#038;p=88', 0, 'product', '', 0),
(89, 1, '2018-10-15 10:02:06', '2018-10-15 07:02:06', '', 'Магазин', '', 'publish', 'closed', 'closed', '', '%d0%bc%d0%b0%d0%b3%d0%b0%d0%b7%d0%b8%d0%bd', '', '', '2018-10-22 13:18:22', '2018-10-22 04:18:22', '', 0, 'http://localhost/?p=89', 6, 'nav_menu_item', '', 0),
(92, 1, '2018-10-16 09:04:23', '2018-10-16 06:04:23', 'http://localhost/wp-content/uploads/2018/10/2017-06-12_15-29-41_4kwKkx28.csv', '2017-06-12_15-29-41_4kwKkx28.csv', '', 'private', 'open', 'closed', '', '2017-06-12_15-29-41_4kwkkx28-csv', '', '', '2018-10-16 09:04:23', '2018-10-16 06:04:23', '', 0, 'http://localhost/wp-content/uploads/2018/10/2017-06-12_15-29-41_4kwKkx28.csv', 0, 'attachment', 'text/csv', 0),
(94, 1, '2018-10-16 10:20:05', '2018-10-16 07:20:05', 'http://localhost/wp-content/uploads/2018/10/2017-06-12_15-29-41_4kwKkx28-1.csv', '2017-06-12_15-29-41_4kwKkx28-1.csv', '', 'private', 'open', 'closed', '', '2017-06-12_15-29-41_4kwkkx28-1-csv', '', '', '2018-10-16 10:20:05', '2018-10-16 07:20:05', '', 0, 'http://localhost/wp-content/uploads/2018/10/2017-06-12_15-29-41_4kwKkx28-1.csv', 0, 'attachment', 'text/csv', 0),
(96, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Beanie', '', 'inherit', 'open', 'closed', '', 'beanie-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/beanie.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Belt', '', 'inherit', 'open', 'closed', '', 'belt-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/belt.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Cap', '', 'inherit', 'open', 'closed', '', 'cap-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/cap.jpg', 0, 'attachment', 'image/jpeg', 0),
(99, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Hoodie with Logo', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/hoodie-with-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(100, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Hoodie with Pocket', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/hoodie-with-pocket.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Hoodie with Zipper', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/hoodie-with-zipper.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Hoodie', '', 'inherit', 'open', 'closed', '', 'hoodie-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/hoodie.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Long Sleeve Tee', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/long-sleeve-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(104, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Polo', '', 'inherit', 'open', 'closed', '', 'polo-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/polo.jpg', 0, 'attachment', 'image/jpeg', 0),
(105, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Sunglasses', '', 'inherit', 'open', 'closed', '', 'sunglasses-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/sunglasses.jpg', 0, 'attachment', 'image/jpeg', 0),
(106, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Tshirt', '', 'inherit', 'open', 'closed', '', 'tshirt-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(107, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Vneck Tshirt', '', 'inherit', 'open', 'closed', '', 'vneck-tee-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/vneck-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Hero', '', 'inherit', 'open', 'closed', '', 'hero-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(109, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Accessories', '', 'inherit', 'open', 'closed', '', 'accessories-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/accessories.jpg', 0, 'attachment', 'image/jpeg', 0),
(110, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'T-shirts', '', 'inherit', 'open', 'closed', '', 'tshirts-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/tshirts.jpg', 0, 'attachment', 'image/jpeg', 0),
(111, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 'Hoodies', '', 'inherit', 'open', 'closed', '', 'hoodies-image', '', '', '2018-10-17 10:36:41', '2018-10-17 01:36:41', '', 0, 'http://localhost/wp-content/uploads/2018/10/hoodies.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2018-10-17 10:36:41', '2018-10-17 01:36:41', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Вязаная шапочка', '', 'publish', 'open', 'closed', '', 'beanie', '', '', '2018-10-17 10:36:42', '2018-10-17 01:36:42', '', 0, 'http://localhost/?p=112', 0, 'product', '', 0),
(113, 1, '2018-10-17 10:36:42', '2018-10-17 01:36:42', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Ремень', '', 'publish', 'open', 'closed', '', 'belt', '', '', '2018-10-17 10:36:42', '2018-10-17 01:36:42', '', 0, 'http://localhost/?p=113', 0, 'product', '', 0),
(114, 1, '2018-10-17 10:36:42', '2018-10-17 01:36:42', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Шапка', '', 'publish', 'open', 'closed', '', 'cap', '', '', '2018-10-17 10:36:44', '2018-10-17 01:36:44', '', 0, 'http://localhost/?p=114', 0, 'product', '', 0),
(115, 1, '2018-10-17 10:36:44', '2018-10-17 01:36:44', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Очки', '', 'publish', 'open', 'closed', '', 'sunglasses', '', '', '2018-10-17 10:36:44', '2018-10-17 01:36:44', '', 0, 'http://localhost/?p=115', 0, 'product', '', 0),
(116, 1, '2018-10-17 10:36:44', '2018-10-17 01:36:44', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Толстовка с логотипом', '', 'publish', 'open', 'closed', '', 'hoodie-with-logo', '', '', '2018-10-17 10:36:45', '2018-10-17 01:36:45', '', 0, 'http://localhost/?p=116', 0, 'product', '', 0),
(117, 1, '2018-10-17 10:36:46', '2018-10-17 01:36:46', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Толстовка с карманами', '', 'publish', 'open', 'closed', '', 'hoodie-with-pocket', '', '', '2018-10-17 10:36:46', '2018-10-17 01:36:46', '', 0, 'http://localhost/?p=117', 0, 'product', '', 0),
(118, 1, '2018-10-17 10:36:46', '2018-10-17 01:36:46', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Толстовка на молнии', '', 'publish', 'open', 'closed', '', 'hoodie-with-zipper', '', '', '2018-10-17 10:36:47', '2018-10-17 01:36:47', '', 0, 'http://localhost/?p=118', 0, 'product', '', 0),
(119, 1, '2018-10-17 10:36:47', '2018-10-17 01:36:47', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Толстовка', '', 'publish', 'open', 'closed', '', 'hoodie', '', '', '2018-10-17 10:36:48', '2018-10-17 01:36:48', '', 0, 'http://localhost/?p=119', 0, 'product', '', 0),
(120, 1, '2018-10-17 10:36:48', '2018-10-17 01:36:48', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Реглан', '', 'publish', 'open', 'closed', '', 'long-sleeve-tee', '', '', '2018-10-17 10:36:49', '2018-10-17 01:36:49', '', 0, 'http://localhost/?p=120', 0, 'product', '', 0),
(121, 1, '2018-10-17 10:36:49', '2018-10-17 01:36:49', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Тенниска', '', 'publish', 'open', 'closed', '', 'polo', '', '', '2018-10-17 10:36:49', '2018-10-17 01:36:49', '', 0, 'http://localhost/?p=121', 0, 'product', '', 0),
(122, 1, '2018-10-17 10:36:50', '2018-10-17 01:36:50', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Футболка', '', 'publish', 'open', 'closed', '', 'tshirt', '', '', '2018-10-17 10:36:50', '2018-10-17 01:36:50', '', 0, 'http://localhost/?p=122', 0, 'product', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(123, 1, '2018-10-17 10:36:50', '2018-10-17 01:36:50', 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.', 'Футболка с треугольным вырезом', '', 'publish', 'open', 'closed', '', 'vneck-tee', '', '', '2018-10-17 10:36:51', '2018-10-17 01:36:51', '', 0, 'http://localhost/?p=123', 0, 'product', '', 0),
(124, 1, '2018-10-17 10:36:40', '2018-10-17 01:36:40', '{\n    \"nav_menus_created_posts\": {\n        \"value\": [\n            96,\n            97,\n            98,\n            99,\n            100,\n            101,\n            102,\n            103,\n            104,\n            105,\n            106,\n            107,\n            108,\n            109,\n            110,\n            111,\n            112,\n            113,\n            114,\n            115,\n            116,\n            117,\n            118,\n            119,\n            120,\n            121,\n            122,\n            123\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-17 01:36:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '617e10c0-b7ef-45a6-9860-46407447be31', '', '', '2018-10-17 10:36:40', '2018-10-17 01:36:40', '', 0, 'http://localhost/?p=124', 0, 'customize_changeset', '', 0),
(125, 1, '2018-10-17 10:41:01', '2018-10-17 01:41:01', '', 'Order &ndash; Октябрь 17, 2018 @ 10:41 ДП', '', 'wc-processing', 'closed', 'closed', 'order_5bc6932d59809', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-17-oct-2018-%d0%b2-0141', '', '', '2018-10-17 10:44:21', '2018-10-17 01:44:21', '', 0, 'http://localhost/?post_type=shop_order&#038;p=125', 0, 'shop_order', '', 3),
(127, 1, '2018-10-17 11:18:09', '2018-10-17 02:18:09', '{\n    \"storefront::storefront_layout\": {\n        \"value\": \"right\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-17 02:15:06\"\n    },\n    \"woocommerce_shop_page_display\": {\n        \"value\": \"subcategories\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-17 02:16:06\"\n    },\n    \"woocommerce_category_archive_display\": {\n        \"value\": \"subcategories\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-17 02:17:06\"\n    },\n    \"woocommerce_checkout_company_field\": {\n        \"value\": \"hidden\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-10-17 02:18:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd3fe14e1-a8c1-4414-ba4e-a438234f2359', '', '', '2018-10-17 11:18:09', '2018-10-17 02:18:09', '', 0, 'http://localhost/?p=127', 0, 'customize_changeset', '', 0),
(128, 1, '2018-10-17 11:31:52', '2018-10-17 02:31:52', 'Стены оклеены обоями или покрашены, но по-прежнему выглядят безжизненно? Интерьер выглядит каким-то незавершенным. Вы не чувствуете что окружающая обстановка выражает Вашу индивидуальность? Тогда обратите внимание на картины. Этот тот элемент, который поможет вам выразить себя, обновить интерьер квартиры, подарит радость и хорошее настроение. Триптих ручной работы \"Центр\", выполненный красками на холсте, подойдет для интерьера как в спокойных, так и в ярких тонах. Картина натянута на подрамник, поэтому не стоит волноваться о том, что рамка не подойдет под интерьер. Размер 53х40 см.', 'Триптих \"Центр\"', '', 'publish', 'open', 'closed', '', '%d1%82%d1%80%d0%b8%d0%bf%d1%82%d0%b8%d1%85-%d1%86%d0%b5%d0%bd%d1%82%d1%80', '', '', '2018-10-29 15:47:27', '2018-10-29 06:47:27', '', 0, 'http://localhost/?post_type=product&#038;p=128', 0, 'product', '', 0),
(129, 1, '2018-10-17 11:29:20', '2018-10-17 02:29:20', '', '20100216-1000x1000', '', 'inherit', 'open', 'closed', '', '20100216-1000x1000', '', '', '2018-10-17 11:29:20', '2018-10-17 02:29:20', '', 128, 'http://localhost/wp-content/uploads/2018/10/20100216-1000x1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2018-10-17 11:29:33', '2018-10-17 02:29:33', '', '20100216_2-1000x1000', '', 'inherit', 'open', 'closed', '', '20100216_2-1000x1000', '', '', '2018-10-17 11:29:33', '2018-10-17 02:29:33', '', 128, 'http://localhost/wp-content/uploads/2018/10/20100216_2-1000x1000.jpg', 0, 'attachment', 'image/jpeg', 0),
(131, 1, '2018-10-17 11:44:07', '2018-10-17 02:44:07', 'Стены оклеены обоями или покрашены, но по-прежнему выглядят безжизненно? Интерьер выглядит каким-то незавершенным. Вы не чувствуете что окружающая обстановка выражает Вашу индивидуальность? Тогда обратите внимание на картины. Этот тот элемент, который поможет вам выразить себя, обновить интерьер квартиры, подарит радость и хорошее настроение. Триптих ручной работы \"Центр\", выполненный красками на холсте, подойдет для интерьера как в спокойных, так и в ярких тонах. Картина натянута на подрамник, поэтому не стоит волноваться о том, что рамка не подойдет под интерьер. Размер 53х40 см.', 'Триптих \"Центр\"', 'Стены оклеены обоями или покрашены, но по-прежнему выглядят безжизненно? Интерьер выглядит каким-то незавершенным. Вы не чувствуете что окружающая обстановка выражает Вашу индивидуальность? Тогда обратите внимание на картины. Этот тот элемент, который поможет вам выразить себя, обновить интерьер квартиры, подарит радость и хорошее настроение. Триптих ручной работы \"Центр\", выполненный красками на холсте, подойдет для интерьера как в спокойных, так и в ярких тонах. Картина натянута на подрамник, поэтому не стоит волноваться о том, что рамка не подойдет под интерьер. Размер 53х40 см.', 'inherit', 'closed', 'closed', '', '128-autosave-v1', '', '', '2018-10-17 11:44:07', '2018-10-17 02:44:07', '', 128, 'http://localhost/128-autosave-v1/', 0, 'revision', '', 0),
(134, 1, '2018-10-22 14:01:38', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-22 14:01:38', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=134', 1, 'nav_menu_item', '', 0),
(135, 1, '2018-10-22 14:01:59', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-10-22 14:01:59', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=135', 1, 'nav_menu_item', '', 0),
(136, 1, '2018-10-22 14:59:07', '2018-10-22 05:59:07', ' ', '', '', 'publish', 'closed', 'closed', '', '136', '', '', '2018-10-22 15:00:44', '2018-10-22 06:00:44', '', 0, 'http://localhost/?p=136', 1, 'nav_menu_item', '', 0),
(137, 1, '2018-10-22 14:59:07', '2018-10-22 05:59:07', ' ', '', '', 'publish', 'closed', 'closed', '', '137', '', '', '2018-10-22 15:00:44', '2018-10-22 06:00:44', '', 0, 'http://localhost/?p=137', 2, 'nav_menu_item', '', 0),
(138, 1, '2018-10-22 14:59:07', '2018-10-22 05:59:07', '', 'Выйти', '', 'publish', 'closed', 'closed', '', '%d0%b2%d1%8b%d0%b9%d1%82%d0%b8', '', '', '2018-10-22 15:00:44', '2018-10-22 06:00:44', '', 0, 'http://localhost/?p=138', 3, 'nav_menu_item', '', 0),
(139, 1, '2018-10-22 15:02:18', '2018-10-22 06:02:18', ' ', '', '', 'publish', 'closed', 'closed', '', '139', '', '', '2018-10-22 15:02:18', '2018-10-22 06:02:18', '', 0, 'http://localhost/?p=139', 1, 'nav_menu_item', '', 0),
(140, 1, '2018-10-22 15:02:18', '2018-10-22 06:02:18', ' ', '', '', 'publish', 'closed', 'closed', '', '140', '', '', '2018-10-22 15:02:18', '2018-10-22 06:02:18', '', 0, 'http://localhost/?p=140', 2, 'nav_menu_item', '', 0),
(141, 1, '2018-10-22 15:02:18', '2018-10-22 06:02:18', ' ', '', '', 'publish', 'closed', 'closed', '', '141', '', '', '2018-10-22 15:02:18', '2018-10-22 06:02:18', '', 0, 'http://localhost/?p=141', 3, 'nav_menu_item', '', 0),
(142, 1, '2018-10-22 15:02:18', '2018-10-22 06:02:18', ' ', '', '', 'publish', 'closed', 'closed', '', '142', '', '', '2018-10-22 15:02:18', '2018-10-22 06:02:18', '', 0, 'http://localhost/?p=142', 4, 'nav_menu_item', '', 0),
(143, 1, '2018-10-26 13:47:00', '2018-10-26 04:47:00', '[woocommerce_checkout]', 'Заказ', '', 'inherit', 'closed', 'closed', '', '86-revision-v1', '', '', '2018-10-26 13:47:00', '2018-10-26 04:47:00', '', 86, 'http://localhost/86-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-10-26 13:47:42', '2018-10-26 04:47:42', '', 'Магазин', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-10-26 13:47:42', '2018-10-26 04:47:42', '', 84, 'http://localhost/84-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-10-26 13:48:07', '2018-10-26 04:48:07', '[woocommerce_my_account]', 'Личный кабинет', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-10-26 13:48:07', '2018-10-26 04:48:07', '', 87, 'http://localhost/87-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-10-26 13:48:27', '2018-10-26 04:48:27', '[woocommerce_cart]', 'Корзина', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-10-26 13:48:27', '2018-10-26 04:48:27', '', 85, 'http://localhost/85-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2018-10-29 15:37:40', '2018-10-29 06:37:40', '', 'Order &ndash; Октябрь 29, 2018 @ 03:37 ПП', '', 'wc-processing', 'open', 'closed', 'order_5bd6aab44b1f6', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-29-oct-2018-%d0%b2-0637', '', '', '2018-10-29 15:37:41', '2018-10-29 06:37:41', '', 0, 'http://localhost/?post_type=shop_order&#038;p=147', 0, 'shop_order', '', 1),
(148, 1, '2018-10-29 15:38:22', '0000-00-00 00:00:00', '', 'Черновик', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-29 15:38:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/?p=148', 0, 'post', '', 0),
(149, 1, '2018-10-29 15:47:21', '2018-10-29 06:47:21', '', 'Order &ndash; Октябрь 29, 2018 @ 03:47 ПП', '', 'wc-processing', 'open', 'closed', 'order_5bd6acf9acc59', '%d0%b7%d0%b0%d0%ba%d0%b0%d0%b7-29-oct-2018-%d0%b2-0647', '', '', '2018-10-29 15:47:22', '2018-10-29 06:47:22', '', 0, 'http://localhost/?post_type=shop_order&#038;p=149', 0, 'shop_order', '', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'product_count_product_cat', '0'),
(2, 18, 'order', '0'),
(3, 18, 'display_type', ''),
(4, 18, 'thumbnail_id', '62'),
(5, 18, 'product_count_product_cat', '0'),
(6, 19, 'thumbnail_id', '109'),
(7, 19, 'product_count_product_cat', '4'),
(8, 20, 'thumbnail_id', '111'),
(9, 20, 'product_count_product_cat', '4'),
(10, 21, 'thumbnail_id', '110'),
(11, 21, 'product_count_product_cat', '4'),
(12, 22, 'order', '0'),
(13, 22, 'display_type', ''),
(14, 22, 'thumbnail_id', '0'),
(15, 23, 'order', '0'),
(16, 23, 'display_type', ''),
(17, 23, 'thumbnail_id', '0'),
(18, 24, 'order', '0'),
(19, 24, 'display_type', ''),
(20, 24, 'thumbnail_id', '0'),
(21, 22, 'product_count_product_cat', '1'),
(22, 23, 'product_count_product_cat', '1'),
(23, 24, 'product_count_product_cat', '1'),
(24, 25, 'product_count_product_tag', '1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Без рубрики', '%d0%b1%d0%b5%d0%b7-%d1%80%d1%83%d0%b1%d1%80%d0%b8%d0%ba%d0%b8', 0),
(2, 'Верхнее меню', '%d0%b2%d0%b5%d1%80%d1%85%d0%bd%d0%b5%d0%b5-%d0%bc%d0%b5%d0%bd%d1%8e', 0),
(3, 'Меню социальных ссылок', '%d0%bc%d0%b5%d0%bd%d1%8e-%d1%81%d0%be%d1%86%d0%b8%d0%b0%d0%bb%d1%8c%d0%bd%d1%8b%d1%85-%d1%81%d1%81%d1%8b%d0%bb%d0%be%d0%ba', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Uncategorized', 'uncategorized', 0),
(18, 'Хоз товары', 'hoztov', 0),
(19, 'Аксессуары', 'accessories', 0),
(20, 'Толстовки', 'hoodies', 0),
(21, 'Футболки', 'tshirts', 0),
(22, 'Гостиная', 'gostinaya', 0),
(23, 'Настенный декор', 'nastenny-dekor', 0),
(24, 'Картины', 'kartiny', 0),
(25, 'картины', '%d0%ba%d0%b0%d1%80%d1%82%d0%b8%d0%bd%d1%8b', 0),
(26, 'Меню1', '%d0%bc%d0%b5%d0%bd%d1%8e1', 0),
(27, 'Меню2', '%d0%bc%d0%b5%d0%bd%d1%8e2', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(69, 2, 0),
(70, 2, 0),
(71, 2, 0),
(72, 2, 0),
(73, 3, 0),
(74, 3, 0),
(75, 3, 0),
(76, 3, 0),
(77, 3, 0),
(82, 2, 0),
(88, 4, 0),
(88, 18, 0),
(89, 2, 0),
(112, 4, 0),
(112, 19, 0),
(113, 4, 0),
(113, 19, 0),
(114, 4, 0),
(114, 19, 0),
(115, 4, 0),
(115, 10, 0),
(115, 19, 0),
(116, 4, 0),
(116, 20, 0),
(117, 4, 0),
(117, 10, 0),
(117, 20, 0),
(118, 4, 0),
(118, 10, 0),
(118, 20, 0),
(119, 4, 0),
(119, 10, 0),
(119, 20, 0),
(120, 4, 0),
(120, 21, 0),
(121, 4, 0),
(121, 21, 0),
(122, 4, 0),
(122, 21, 0),
(123, 4, 0),
(123, 21, 0),
(128, 4, 0),
(128, 11, 0),
(128, 22, 0),
(128, 23, 0),
(128, 24, 0),
(128, 25, 0),
(136, 26, 0),
(137, 26, 0),
(138, 26, 0),
(139, 27, 0),
(140, 27, 0),
(141, 27, 0),
(142, 27, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_term_taxonomy`
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
-- Дамп данных таблицы `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'product_type', '', 0, 13),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 4),
(11, 11, 'product_visibility', '', 0, 1),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 0),
(18, 18, 'product_cat', 'категория для хозтоваров', 0, 0),
(19, 19, 'product_cat', 'Краткое описание категории', 0, 4),
(20, 20, 'product_cat', 'Краткое описание категории', 0, 4),
(21, 21, 'product_cat', 'Краткое описание категории', 0, 4),
(22, 22, 'product_cat', '', 0, 1),
(23, 23, 'product_cat', '', 22, 1),
(24, 24, 'product_cat', '', 23, 1),
(25, 25, 'product_tag', '', 0, 1),
(26, 26, 'nav_menu', '', 0, 3),
(27, 27, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', 'Alex'),
(3, 1, 'last_name', 'El'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,text_widget_custom_html,plugin_editor_notice,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"5b7dfd6d9c0fa45c6fc75430594d0192fcaa7bac084979bcbb14d29324845faa\";a:4:{s:10:\"expiration\";i:1541390913;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:5:\"login\";i:1540181313;}s:64:\"2591c99a637304f7dbd26a3c93812d105ee02dfd516475c47188203fd21c2441\";a:4:{s:10:\"expiration\";i:1540357113;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:110:\"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.112 Safari/537.36\";s:5:\"login\";i:1540184313;}s:64:\"5f058d54225163e63c4e951b0d9b2ae09524aabcaf0de7353708bb089d87c4a1\";a:5:{s:10:\"expiration\";i:1541394858;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:62.0) Gecko/20100101 Firefox/62.0\";s:5:\"login\";i:1540185258;s:4:\"loco\";a:3:{s:1:\"c\";s:17:\"Loco_data_Session\";s:1:\"v\";i:0;s:1:\"d\";a:1:{s:7:\"success\";a:0:{}}}}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '148'),
(18, 1, 'closedpostboxes_dashboard', 'a:1:{i:0;s:17:\"dashboard_primary\";}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(21, 1, 'wp_user-settings', 'editor=tinymce&libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1539743511'),
(23, 1, 'show_try_gutenberg_panel', '0'),
(25, 1, 'wc_last_active', '1540771200'),
(26, 1, 'nav_menu_recently_edited', '27'),
(27, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(28, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-post_format\";i:3;s:15:\"add-product_cat\";i:4;s:15:\"add-product_tag\";}'),
(29, 1, 'last_update', '1540795641'),
(30, 1, 'billing_first_name', 'Alex'),
(31, 1, 'billing_last_name', 'El'),
(32, 1, 'billing_address_1', 'sdasdasdasd'),
(33, 1, 'billing_city', 'cgita'),
(34, 1, 'billing_state', 'Zab'),
(35, 1, 'billing_postcode', '670200'),
(36, 1, 'billing_country', 'RU'),
(37, 1, 'billing_email', 'ipsum378@mail.ru'),
(38, 1, 'billing_phone', '9240242424'),
(39, 1, 'shipping_first_name', 'Alex'),
(40, 1, 'shipping_last_name', 'El'),
(41, 1, 'shipping_address_1', 'sdasdasdasd'),
(42, 1, 'shipping_city', 'cgita'),
(43, 1, 'shipping_state', 'Zab'),
(44, 1, 'shipping_postcode', '670200'),
(45, 1, 'shipping_country', 'RU'),
(49, 1, 'wp_media_library_mode', 'list'),
(50, 1, 'closedpostboxes_product', 'a:0:{}'),
(51, 1, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(52, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(56, 1, 'shipping_method', 'a:1:{i:0;s:11:\"flat_rate:2\";}'),
(58, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"2b44928ae11fb9384c4cf38708677c48\";a:11:{s:3:\"key\";s:32:\"2b44928ae11fb9384c4cf38708677c48\";s:10:\"product_id\";i:115;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:90;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:90;s:8:\"line_tax\";i:0;}}}');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_users`
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
-- Дамп данных таблицы `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bgw6PtjSCmqo0709TlEwWYwmMbARGz1', 'admin', 'ipsum378@mail.ru', '', '2018-10-12 02:44:37', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '115'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '90'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '90'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, 'method_id', 'free_shipping'),
(11, 2, 'instance_id', '1'),
(12, 2, 'cost', '0.00'),
(13, 2, 'total_tax', '0'),
(14, 2, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(15, 2, 'Позиции', 'Очки &times; 1'),
(16, 3, '_product_id', '122'),
(17, 3, '_variation_id', '0'),
(18, 3, '_qty', '1'),
(19, 3, '_tax_class', ''),
(20, 3, '_line_subtotal', '18'),
(21, 3, '_line_subtotal_tax', '0'),
(22, 3, '_line_total', '18'),
(23, 3, '_line_tax', '0'),
(24, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(25, 4, 'method_id', 'free_shipping'),
(26, 4, 'instance_id', '1'),
(27, 4, 'cost', '0.00'),
(28, 4, 'total_tax', '0'),
(29, 4, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(30, 4, 'Позиции', 'Футболка &times; 1'),
(31, 5, '_product_id', '128'),
(32, 5, '_variation_id', '0'),
(33, 5, '_qty', '1'),
(34, 5, '_tax_class', ''),
(35, 5, '_line_subtotal', '1490'),
(36, 5, '_line_subtotal_tax', '0'),
(37, 5, '_line_total', '1490'),
(38, 5, '_line_tax', '0'),
(39, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(40, 6, 'method_id', 'flat_rate'),
(41, 6, 'instance_id', '2'),
(42, 6, 'cost', '200.00'),
(43, 6, 'total_tax', '0'),
(44, 6, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(45, 6, 'Позиции', 'Триптих \"Центр\" &times; 1');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Очки', 'line_item', 125),
(2, 'Бесплатная доставка', 'shipping', 125),
(3, 'Футболка', 'line_item', 147),
(4, 'Бесплатная доставка', 'shipping', 147),
(5, 'Триптих \"Центр\"', 'line_item', 149),
(6, 'Flat rate', 'shipping', 149);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(36, '1', 'a:14:{s:4:\"cart\";s:411:\"a:1:{s:32:\"2b44928ae11fb9384c4cf38708677c48\";a:11:{s:3:\"key\";s:32:\"2b44928ae11fb9384c4cf38708677c48\";s:10:\"product_id\";i:115;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:90;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:90;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:405:\"a:15:{s:8:\"subtotal\";s:5:\"90.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"90.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"90.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_0\";s:426:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_39c4b93904cd418dcc575fd0668ae0a4\";s:5:\"rates\";a:1:{s:15:\"free_shipping:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:15:\"free_shipping:1\";s:9:\"method_id\";s:13:\"free_shipping\";s:11:\"instance_id\";i:1;s:5:\"label\";s:37:\"Бесплатная доставка\";s:4:\"cost\";s:4:\"0.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:14:\"Позиции\";s:18:\"Очки &times; 1\";}}}}\";s:25:\"previous_shipping_methods\";s:43:\"a:1:{i:0;a:1:{i:0;s:15:\"free_shipping:1\";}}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:8:\"customer\";s:829:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-10-29T06:47:21+00:00\";s:8:\"postcode\";s:6:\"670200\";s:4:\"city\";s:5:\"cgita\";s:9:\"address_1\";s:11:\"sdasdasdasd\";s:7:\"address\";s:11:\"sdasdasdasd\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:3:\"Zab\";s:7:\"country\";s:2:\"RU\";s:17:\"shipping_postcode\";s:6:\"670200\";s:13:\"shipping_city\";s:5:\"cgita\";s:18:\"shipping_address_1\";s:11:\"sdasdasdasd\";s:16:\"shipping_address\";s:11:\"sdasdasdasd\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:3:\"Zab\";s:16:\"shipping_country\";s:2:\"RU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:4:\"Alex\";s:9:\"last_name\";s:2:\"El\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:10:\"9240242424\";s:5:\"email\";s:16:\"ipsum378@mail.ru\";s:19:\"shipping_first_name\";s:4:\"Alex\";s:18:\"shipping_last_name\";s:2:\"El\";s:16:\"shipping_company\";s:0:\"\";}\";s:21:\"chosen_payment_method\";s:3:\"cod\";s:22:\"order_awaiting_payment\";N;s:10:\"wc_notices\";N;s:23:\"chosen_shipping_methods\";s:33:\"a:1:{i:0;s:15:\"free_shipping:1\";}\";}', 1540965221);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Russia', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'RU', 'country');

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Индексы таблицы `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Индексы таблицы `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Индексы таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Индексы таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Индексы таблицы `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Индексы таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Индексы таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Индексы таблицы `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Индексы таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Индексы таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Индексы таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Индексы таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Индексы таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Индексы таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Индексы таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Индексы таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Индексы таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Индексы таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Индексы таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=888;

--
-- AUTO_INCREMENT для таблицы `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1073;

--
-- AUTO_INCREMENT для таблицы `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT для таблицы `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT для таблицы `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
