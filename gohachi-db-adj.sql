-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: gohachi
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-01-18 18:42:44','2019-01-18 18:42:44','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://gohachi.jp','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://gohachi.jp','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Gohachi Website','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','gohachi.jp built with WordPress','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','0','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','k-nishimoto@outcome.tokyo.jp','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','10','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/archives/%post_id%','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:56:\"archives/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:44:\"archives/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:53:\"archives/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:48:\"archives/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:29:\"archives/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:41:\"archives/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:23:\"archives/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:54:\"archives/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:49:\"archives/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:30:\"archives/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:42:\"archives/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:24:\"archives/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=5&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:56:\"archives/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:51:\"archives/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:32:\"archives/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:44:\"archives/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:26:\"archives/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:83:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:78:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:59:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:71:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:53:\"archives/date/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:70:\"archives/date/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:65:\"archives/date/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:46:\"archives/date/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:58:\"archives/date/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:40:\"archives/date/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:57:\"archives/date/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:52:\"archives/date/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:33:\"archives/date/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:45:\"archives/date/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:27:\"archives/date/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:37:\"archives/[0-9]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"archives/[0-9]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"archives/[0-9]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"archives/[0-9]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"archives/[0-9]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"archives/([0-9]+)/embed/?$\";s:34:\"index.php?p=$matches[1]&embed=true\";s:30:\"archives/([0-9]+)/trackback/?$\";s:28:\"index.php?p=$matches[1]&tb=1\";s:50:\"archives/([0-9]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:45:\"archives/([0-9]+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?p=$matches[1]&feed=$matches[2]\";s:38:\"archives/([0-9]+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&paged=$matches[2]\";s:45:\"archives/([0-9]+)/comment-page-([0-9]{1,})/?$\";s:41:\"index.php?p=$matches[1]&cpage=$matches[2]\";s:34:\"archives/([0-9]+)(?:/([0-9]+))?/?$\";s:40:\"index.php?p=$matches[1]&page=$matches[2]\";s:26:\"archives/[0-9]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"archives/[0-9]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"archives/[0-9]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"archives/[0-9]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"archives/[0-9]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:4:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:2;s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";i:3;s:41:\"wp-session-manager/wp-session-manager.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:5:{i:0;s:70:\"/home/wwwdev/ocsunup/public_html/wp-content/themes/sunup/p_Privacy.php\";i:1;s:67:\"/home/wwwdev/ocsunup/public_html/wp-content/themes/sunup/header.php\";i:2;s:66:\"/home/wwwdev/ocsunup/public_html/wp-content/themes/sunup/style.css\";i:3;s:67:\"/home/wwwdev/ocsunup/public_html/wp-content/themes/sunup/footer.php\";i:4;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','octheme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','octheme','yes');
INSERT INTO `wp_options` VALUES (44,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (45,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (46,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (47,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (48,'db_version','49752','yes');
INSERT INTO `wp_options` VALUES (49,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (50,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (51,'blog_public','0','yes');
INSERT INTO `wp_options` VALUES (52,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (53,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (54,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (55,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (56,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (57,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (59,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (60,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (61,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (62,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (63,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (64,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (65,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (67,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (68,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (69,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (70,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (71,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (72,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (73,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (74,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (75,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (76,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (77,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (81,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (82,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (83,'page_for_posts','0','yes');
INSERT INTO `wp_options` VALUES (84,'page_on_front','5','yes');
INSERT INTO `wp_options` VALUES (85,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (86,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (87,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (88,'site_icon','125','yes');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (90,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (91,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (92,'show_comments_cookies_opt_in','0','yes');
INSERT INTO `wp_options` VALUES (93,'initial_db_version','43764','yes');
INSERT INTO `wp_options` VALUES (94,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (95,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (104,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'cron','a:7:{i:1611200564;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1611201096;a:1:{s:22:\"wp_session_database_gc\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1611208606;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611211364;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1611221080;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1611254576;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (112,'theme_mods_twentynineteen','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1548136602;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (163,'current_theme','OCTheme','yes');
INSERT INTO `wp_options` VALUES (164,'theme_mods_sunup','a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:7;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1553340418;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (165,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (219,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (451,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (452,'new_admin_email','k-nishimoto@outcome.tokyo.jp','yes');
INSERT INTO `wp_options` VALUES (455,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (487,'recently_activated','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (494,'acf_version','5.9.3','yes');
INSERT INTO `wp_options` VALUES (499,'acf_pro_license','YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5TnpnNE9UbDhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMkxUQTBMVEExSURFeE9qQXhPakUwIjtzOjM6InVybCI7czoyNToiaHR0cDovL2dvaGFjaGkub2NkZXYuc2l0ZSI7fQ==','yes');
INSERT INTO `wp_options` VALUES (506,'options_email','josue@outcome.tokyo.jp','no');
INSERT INTO `wp_options` VALUES (507,'_options_email','field_5c444f5a498ca','no');
INSERT INTO `wp_options` VALUES (508,'options_contact_subject_template','[WEBSITE] Contact from {{fld_email}}','no');
INSERT INTO `wp_options` VALUES (509,'_options_contact_subject_template','field_5c444f71498cb','no');
INSERT INTO `wp_options` VALUES (510,'options_contact_email_template','<h1>Contact from website.</h1>\r\nE-mail address: {{fld_email}}\r\n\r\nName: {{fld_name}} {{fld_lastname}}\r\n\r\nF Name: {{fld_f_name}} {{fld_f_lastname}}\r\n\r\nPhone number: {{fld_phone}}\r\n\r\nInquiry: {{fld_inquiry}}\r\n\r\nMessage: {{fld_message}}','no');
INSERT INTO `wp_options` VALUES (511,'_options_contact_email_template','field_5c444f88498cc','no');
INSERT INTO `wp_options` VALUES (512,'options_email_problem_message','There was a problem sending the contact information. Please try again.','no');
INSERT INTO `wp_options` VALUES (513,'_options_email_problem_message','field_5c444fa0498cd','no');
INSERT INTO `wp_options` VALUES (514,'options_email_recaptcha_message','The contact form did not pass the reCaptcha test. Please try again.','no');
INSERT INTO `wp_options` VALUES (515,'_options_email_recaptcha_message','field_5c444fb4498ce','no');
INSERT INTO `wp_options` VALUES (516,'options_email_success_message','Thank you for contacting us.','no');
INSERT INTO `wp_options` VALUES (517,'_options_email_success_message','field_5c444fd5498cf','no');
INSERT INTO `wp_options` VALUES (518,'options_google_recaptcha_sitekey','','no');
INSERT INTO `wp_options` VALUES (519,'_options_google_recaptcha_sitekey','field_5c444ff8498d1','no');
INSERT INTO `wp_options` VALUES (520,'options_google_recaptcha_secret','','no');
INSERT INTO `wp_options` VALUES (521,'_options_google_recaptcha_secret','field_5c445011498d2','no');
INSERT INTO `wp_options` VALUES (522,'options_email_confirm_message','Your email address did not match the confirmation address.','no');
INSERT INTO `wp_options` VALUES (523,'_options_email_confirm_message','field_5c85569fa92db','no');
INSERT INTO `wp_options` VALUES (576,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:28:\"k-nishimoto@outcome.tokyo.jp\";s:7:\"version\";s:5:\"5.5.3\";s:9:\"timestamp\";i:1607418597;}','no');
INSERT INTO `wp_options` VALUES (724,'db_upgraded','','yes');
INSERT INTO `wp_options` VALUES (734,'theme_mods_octheme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:7:\"primary\";i:2;s:9:\"secondary\";i:7;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (735,'options_is_production','0','no');
INSERT INTO `wp_options` VALUES (736,'_options_is_production','field_5c96182e15908','no');
INSERT INTO `wp_options` VALUES (737,'options_page_title_prefix','Website Name | ','no');
INSERT INTO `wp_options` VALUES (738,'_options_page_title_prefix','field_5c9619aee978b','no');
INSERT INTO `wp_options` VALUES (739,'options_ie_include_shiv','0','no');
INSERT INTO `wp_options` VALUES (740,'_options_ie_include_shiv','field_5c96779b8b244','no');
INSERT INTO `wp_options` VALUES (757,'nonce_key',')Dg{!xP?jp=V,XmhiC*hsvhq<2?vbN4y0YEwd6hc`,eRa>@#~Pt#YNX/^m6iP)YR','no');
INSERT INTO `wp_options` VALUES (758,'nonce_salt','/cZHh,*L#n @]ozlK7lZk8ygY2)j6*N<N7R0K27Zg_#n46Lyy,&)>kj$rfk}&5A6','no');
INSERT INTO `wp_options` VALUES (774,'auth_key','t[v/gV&YCkcmgb?|12z>pv_nI`-4RN^ B$*3E7d$eZiWm 5[@NBc1df:_uEbezq5','no');
INSERT INTO `wp_options` VALUES (775,'auth_salt','FC-EsRl0zs cB|(z$|g;%V4.~B=6XE(=%j`4ucb2FD#3:4<5<JQG5pZT[+w}$qlZ','no');
INSERT INTO `wp_options` VALUES (776,'logged_in_key','^s_%Ap1yv`k6Jv{x%t}kQJX<6E05/i*$9~_)~?y! `O]fN1&Ee:SJ15DpMe~Y>}u','no');
INSERT INTO `wp_options` VALUES (777,'logged_in_salt','N<+TA5D*H @Z>#I1=gbl}SY+NVI#mB2LLuL-*J`w#ta!bY~Z$dU[<a{}TmfE7?Uy','no');
INSERT INTO `wp_options` VALUES (795,'admin_email_lifespan','1622970604','yes');
INSERT INTO `wp_options` VALUES (799,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (820,'_transient_health-check-site-status-result','{\"good\":\"11\",\"recommended\":\"9\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (908,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (909,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (910,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (911,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (933,'sm_session_db_version','0.2','no');
INSERT INTO `wp_options` VALUES (1034,'options_asset_version','','no');
INSERT INTO `wp_options` VALUES (1035,'_options_asset_version','field_5ffee4bd71033','no');
INSERT INTO `wp_options` VALUES (1054,'sgr_version','','yes');
INSERT INTO `wp_options` VALUES (1055,'sgr_login_disable','','yes');
INSERT INTO `wp_options` VALUES (1056,'sgr_badge_hide','','yes');
INSERT INTO `wp_options` VALUES (1057,'sgr_site_key','6LfWGSsaAAAAAJRODuFPPytg-EyCPdFvuKQpHBcG','yes');
INSERT INTO `wp_options` VALUES (1058,'sgr_secret_key','6LfWGSsaAAAAACLU08xDNkOmrD4lgJ7gSmwCHVXU','yes');
INSERT INTO `wp_options` VALUES (1065,'cptui_new_install','false','yes');
INSERT INTO `wp_options` VALUES (1074,'_site_transient_timeout_browser_de14ee22d23b1fe6b294c649cea2f043','1611300079','no');
INSERT INTO `wp_options` VALUES (1075,'_site_transient_browser_de14ee22d23b1fe6b294c649cea2f043','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"87.0.4280.141\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1093,'auto_update_core_dev','enabled','yes');
INSERT INTO `wp_options` VALUES (1094,'auto_update_core_minor','enabled','yes');
INSERT INTO `wp_options` VALUES (1095,'auto_update_core_major','unset','yes');
INSERT INTO `wp_options` VALUES (1097,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.6.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.6-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.6-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.6\";s:7:\"version\";s:3:\"5.6\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1611199213;s:15:\"version_checked\";s:3:\"5.6\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1098,'can_compress_scripts','0','no');
INSERT INTO `wp_options` VALUES (1139,'_site_transient_timeout_browser_5a8d988adf1e44418a746656030e8fa1','1611645749','no');
INSERT INTO `wp_options` VALUES (1140,'_site_transient_browser_5a8d988adf1e44418a746656030e8fa1','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"87.0.4280.141\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (1161,'_transient_timeout_acf_plugin_updates','1611275230','no');
INSERT INTO `wp_options` VALUES (1162,'_transient_acf_plugin_updates','a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:239:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU56ZzRPVGw4ZEhsd1pUMWtaWFpsYkc5d1pYSjhaR0YwWlQweU1ERTJMVEEwTFRBMUlERXhPakF4T2pFMCIsIndwX3VybCI6Imh0dHA6XC9cL2dvaGFjaGkub2NkZXYuc2l0ZSJ9\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";}}','no');
INSERT INTO `wp_options` VALUES (1171,'_site_transient_timeout_theme_roots','1611201014','no');
INSERT INTO `wp_options` VALUES (1172,'_site_transient_theme_roots','a:3:{s:7:\"octheme\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}','no');
INSERT INTO `wp_options` VALUES (1173,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1611199215;s:7:\"checked\";a:3:{s:7:\"octheme\";s:3:\"1.1\";s:12:\"twentytwenty\";s:3:\"1.6\";s:15:\"twentytwentyone\";s:3:\"1.0\";}s:8:\"response\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.1.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:1:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.6.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (1174,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1611199216;s:7:\"checked\";a:5:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.9.3\";s:19:\"akismet/akismet.php\";s:5:\"4.1.8\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.8.2\";s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";s:3:\"3.7\";s:41:\"wp-session-manager/wp-session-manager.php\";s:5:\"4.2.0\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.4\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:239:\"https://connect.advancedcustomfields.com/v2/plugins/download?token=eyJwIjoicHJvIiwiayI6ImIzSmtaWEpmYVdROU56ZzRPVGw4ZEhsd1pUMWtaWFpsYkc5d1pYSjhaR0YwWlQweU1ERTJMVEEwTFRBMUlERXhPakF4T2pFMCIsIndwX3VybCI6Imh0dHA6XC9cL2dvaGFjaGkub2NkZXYuc2l0ZSJ9\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.2\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}}s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:37:\"w.org/plugins/simple-google-recaptcha\";s:4:\"slug\";s:23:\"simple-google-recaptcha\";s:6:\"plugin\";s:51:\"simple-google-recaptcha/simple-google-recaptcha.php\";s:11:\"new_version\";s:3:\"3.7\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/simple-google-recaptcha/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/simple-google-recaptcha.3.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/simple-google-recaptcha/assets/icon-128x128.png?rev=1466520\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:78:\"https://ps.w.org/simple-google-recaptcha/assets/banner-772x250.png?rev=1725176\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"wp-session-manager/wp-session-manager.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/wp-session-manager\";s:4:\"slug\";s:18:\"wp-session-manager\";s:6:\"plugin\";s:41:\"wp-session-manager/wp-session-manager.php\";s:11:\"new_version\";s:5:\"4.2.0\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/wp-session-manager/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/wp-session-manager.4.2.0.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:69:\"https://s.w.org/plugins/geopattern-icon/wp-session-manager_272e38.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/wp-session-manager/assets/banner-772x250.png?rev=632899\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (3,5,'_edit_lock','1548136476:1');
INSERT INTO `wp_postmeta` VALUES (5,8,'_edit_lock','1550142573:1');
INSERT INTO `wp_postmeta` VALUES (6,8,'_wp_page_template','p_About.php');
INSERT INTO `wp_postmeta` VALUES (7,10,'_edit_lock','1550142461:1');
INSERT INTO `wp_postmeta` VALUES (8,10,'_wp_page_template','p_Services.php');
INSERT INTO `wp_postmeta` VALUES (9,12,'_edit_lock','1550142515:1');
INSERT INTO `wp_postmeta` VALUES (10,12,'_wp_page_template','p_Company.php');
INSERT INTO `wp_postmeta` VALUES (11,14,'_edit_lock','1550142527:1');
INSERT INTO `wp_postmeta` VALUES (12,14,'_wp_page_template','p_Contact.php');
INSERT INTO `wp_postmeta` VALUES (15,18,'_edit_lock','1552320054:1');
INSERT INTO `wp_postmeta` VALUES (16,18,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (110,18,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (207,75,'_edit_lock','1610541426:1');
INSERT INTO `wp_postmeta` VALUES (208,75,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (254,1,'_wp_old_slug','hello-world__trashed');
INSERT INTO `wp_postmeta` VALUES (255,18,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (256,18,'_wp_trash_meta_time','1610697933');
INSERT INTO `wp_postmeta` VALUES (257,18,'_wp_desired_post_slug','blog');
INSERT INTO `wp_postmeta` VALUES (258,8,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (259,8,'_wp_trash_meta_time','1610697937');
INSERT INTO `wp_postmeta` VALUES (260,8,'_wp_desired_post_slug','about');
INSERT INTO `wp_postmeta` VALUES (261,12,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (262,12,'_wp_trash_meta_time','1610697941');
INSERT INTO `wp_postmeta` VALUES (263,12,'_wp_desired_post_slug','company');
INSERT INTO `wp_postmeta` VALUES (264,10,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (265,10,'_wp_trash_meta_time','1610697944');
INSERT INTO `wp_postmeta` VALUES (266,10,'_wp_desired_post_slug','services');
INSERT INTO `wp_postmeta` VALUES (267,106,'_edit_lock','1610697962:1');
INSERT INTO `wp_postmeta` VALUES (268,106,'_wp_page_template','p_Privacy.php');
INSERT INTO `wp_postmeta` VALUES (269,108,'_edit_lock','1610703891:1');
INSERT INTO `wp_postmeta` VALUES (270,108,'_wp_page_template','p_Thanks.php');
INSERT INTO `wp_postmeta` VALUES (271,110,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (272,110,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (273,110,'_menu_item_object_id','110');
INSERT INTO `wp_postmeta` VALUES (274,110,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (275,110,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (276,110,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (277,110,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (278,110,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (280,111,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (281,111,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (282,111,'_menu_item_object_id','111');
INSERT INTO `wp_postmeta` VALUES (283,111,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (284,111,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (285,111,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (286,111,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (287,111,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (289,112,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (290,112,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (291,112,'_menu_item_object_id','112');
INSERT INTO `wp_postmeta` VALUES (292,112,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (293,112,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (294,112,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (295,112,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (296,112,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (298,113,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (299,113,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (300,113,'_menu_item_object_id','113');
INSERT INTO `wp_postmeta` VALUES (301,113,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (302,113,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (303,113,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (304,113,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (305,113,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (307,114,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (308,114,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (309,114,'_menu_item_object_id','114');
INSERT INTO `wp_postmeta` VALUES (310,114,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (311,114,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (312,114,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (313,114,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (314,114,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (316,115,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (317,115,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (318,115,'_menu_item_object_id','115');
INSERT INTO `wp_postmeta` VALUES (319,115,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (320,115,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (321,115,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (322,115,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (323,115,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (325,116,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (326,116,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (327,116,'_menu_item_object_id','116');
INSERT INTO `wp_postmeta` VALUES (328,116,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (329,116,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (330,116,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (331,116,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (332,116,'_menu_item_url','#');
INSERT INTO `wp_postmeta` VALUES (334,108,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (335,117,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (336,117,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (337,117,'_menu_item_object_id','117');
INSERT INTO `wp_postmeta` VALUES (338,117,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (339,117,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (340,117,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (341,117,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (342,117,'_menu_item_url','/#about');
INSERT INTO `wp_postmeta` VALUES (344,118,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (345,118,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (346,118,'_menu_item_object_id','118');
INSERT INTO `wp_postmeta` VALUES (347,118,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (348,118,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (349,118,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (350,118,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (351,118,'_menu_item_url','/#service');
INSERT INTO `wp_postmeta` VALUES (353,119,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (354,119,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (355,119,'_menu_item_object_id','119');
INSERT INTO `wp_postmeta` VALUES (356,119,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (357,119,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (358,119,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (359,119,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (360,119,'_menu_item_url','/#works');
INSERT INTO `wp_postmeta` VALUES (362,120,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (363,120,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (364,120,'_menu_item_object_id','120');
INSERT INTO `wp_postmeta` VALUES (365,120,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (366,120,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (367,120,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (368,120,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (369,120,'_menu_item_url','/#features');
INSERT INTO `wp_postmeta` VALUES (371,121,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (372,121,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (373,121,'_menu_item_object_id','121');
INSERT INTO `wp_postmeta` VALUES (374,121,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (375,121,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (376,121,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (377,121,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (378,121,'_menu_item_url','/#recruit');
INSERT INTO `wp_postmeta` VALUES (380,122,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (381,122,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (382,122,'_menu_item_object_id','122');
INSERT INTO `wp_postmeta` VALUES (383,122,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (384,122,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (385,122,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (386,122,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (387,122,'_menu_item_url','/#faq');
INSERT INTO `wp_postmeta` VALUES (389,123,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (390,123,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (391,123,'_menu_item_object_id','123');
INSERT INTO `wp_postmeta` VALUES (392,123,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (393,123,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (394,123,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (395,123,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (396,123,'_menu_item_url','/#news');
INSERT INTO `wp_postmeta` VALUES (398,124,'_wp_attached_file','2021/01/icon.png');
INSERT INTO `wp_postmeta` VALUES (399,124,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:16:\"2021/01/icon.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"icon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (400,125,'_wp_attached_file','2021/01/cropped-icon.png');
INSERT INTO `wp_postmeta` VALUES (401,125,'_wp_attachment_context','site-icon');
INSERT INTO `wp_postmeta` VALUES (402,125,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2021/01/cropped-icon.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-icon-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-icon-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-icon-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-icon-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-icon-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-icon-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (403,126,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (404,126,'_wp_trash_meta_time','1611041323');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-01-18 18:42:44','2019-01-18 18:42:44','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','publish','open','open','','hello-world','','','2019-03-23 10:42:50','2019-03-23 10:42:50','',0,'http://gohachi.jp/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (5,1,'2019-01-22 05:56:59','2019-01-22 05:56:59','','Front Page','','publish','closed','closed','','front-page','','','2019-01-22 05:56:59','2019-01-22 05:56:59','',0,'http://gohachi.jp/?page_id=5',0,'page','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2019-01-22 05:56:59','2019-01-22 05:56:59','','Front Page','','inherit','closed','closed','','5-revision-v1','','','2019-01-22 05:56:59','2019-01-22 05:56:59','',5,'http://gohachi.jp/2019/01/22/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2019-02-14 11:09:48','2019-02-14 11:09:48','','About','','trash','closed','closed','','about__trashed','','','2021-01-15 08:05:37','2021-01-15 08:05:37','',0,'http://gohachi.jp/?page_id=8',0,'page','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2019-02-14 11:09:48','2019-02-14 11:09:48','','About','','inherit','closed','closed','','8-revision-v1','','','2019-02-14 11:09:48','2019-02-14 11:09:48','',8,'http://gohachi.jp/8-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2019-02-14 11:10:00','2019-02-14 11:10:00','','Services','','trash','closed','closed','','services__trashed','','','2021-01-15 08:05:44','2021-01-15 08:05:44','',0,'http://gohachi.jp/?page_id=10',0,'page','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2019-02-14 11:10:00','2019-02-14 11:10:00','','Services','','inherit','closed','closed','','10-revision-v1','','','2019-02-14 11:10:00','2019-02-14 11:10:00','',10,'http://gohachi.jp/10-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2019-02-14 11:10:57','2019-02-14 11:10:57','','Company','','trash','closed','closed','','company__trashed','','','2021-01-15 08:05:41','2021-01-15 08:05:41','',0,'http://gohachi.jp/?page_id=12',0,'page','',0);
INSERT INTO `wp_posts` VALUES (13,1,'2019-02-14 11:10:57','2019-02-14 11:10:57','','Company','','inherit','closed','closed','','12-revision-v1','','','2019-02-14 11:10:57','2019-02-14 11:10:57','',12,'http://gohachi.jp/12-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2019-02-14 11:11:08','2019-02-14 11:11:08','','Contact','','publish','closed','closed','','contact','','','2019-02-14 11:11:08','2019-02-14 11:11:08','',0,'http://gohachi.jp/?page_id=14',0,'page','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2019-02-14 11:11:08','2019-02-14 11:11:08','','Contact','','inherit','closed','closed','','14-revision-v1','','','2019-02-14 11:11:08','2019-02-14 11:11:08','',14,'http://gohachi.jp/14-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2019-02-14 11:11:34','2019-02-14 11:11:34','','Blog List','','trash','closed','closed','','blog__trashed','','','2021-01-15 08:05:33','2021-01-15 08:05:33','',0,'http://gohachi.jp/?page_id=18',0,'page','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2019-02-14 11:11:34','2019-02-14 11:11:34','','Blog List','','inherit','closed','closed','','18-revision-v1','','','2019-02-14 11:11:34','2019-02-14 11:11:34','',18,'http://gohachi.jp/18-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2019-02-14 11:11:46','2019-02-14 11:11:46','','About','','inherit','closed','closed','','8-autosave-v1','','','2019-02-14 11:11:46','2019-02-14 11:11:46','',8,'http://gohachi.jp/8-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"oc-configuration\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Configuration','configuration','publish','closed','closed','','group_5c444f3cacc98','','','2021-01-13 12:39:27','2021-01-13 12:39:27','',0,'http://gohachi.jp/?p=75',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Email','','publish','closed','closed','','field_5c444f47498c9','','','2019-03-10 17:52:01','2019-03-10 17:52:01','',75,'http://gohachi.jp/?post_type=acf-field&p=76',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','Email Address','email','publish','closed','closed','','field_5c444f5a498ca','','','2019-03-10 17:52:01','2019-03-10 17:52:01','',75,'http://gohachi.jp/?post_type=acf-field&p=77',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Contact Subject Template','contact_subject_template','publish','closed','closed','','field_5c444f71498cb','','','2019-03-10 17:52:01','2019-03-10 17:52:01','',75,'http://gohachi.jp/?post_type=acf-field&p=78',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:10:{s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}','Contact Email Template','contact_email_template','publish','closed','closed','','field_5c444f88498cc','','','2019-03-10 17:52:01','2019-03-10 17:52:01','',75,'http://gohachi.jp/?post_type=acf-field&p=79',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Email Problem Message','email_problem_message','publish','closed','closed','','field_5c444fa0498cd','','','2019-03-10 17:52:01','2019-03-10 17:52:01','',75,'http://gohachi.jp/?post_type=acf-field&p=80',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Email reCaptcha Message','email_recaptcha_message','publish','closed','closed','','field_5c444fb4498ce','','','2019-03-23 10:46:14','2019-03-23 10:46:14','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=81',5,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Email Success Message','email_success_message','publish','closed','closed','','field_5c444fd5498cf','','','2019-03-23 10:46:14','2019-03-23 10:46:14','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=82',6,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Google reCAPTCHA','','publish','closed','closed','','field_5c444fe9498d0','','','2019-03-23 10:46:14','2019-03-23 10:46:14','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=83',7,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Site Key','google_recaptcha_sitekey','publish','closed','closed','','field_5c444ff8498d1','','','2019-03-23 10:46:14','2019-03-23 10:46:14','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=84',8,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2019-03-10 17:52:01','2019-03-10 17:52:01','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Secret Key','google_recaptcha_secret','publish','closed','closed','','field_5c445011498d2','','','2019-03-23 10:46:14','2019-03-23 10:46:14','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=85',9,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2019-03-23 10:42:41','2019-03-23 10:42:41','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2019-03-23 10:42:41','2019-03-23 10:42:41','',1,'http://gohachi.jp/archives/92',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2019-03-23 11:29:28','2019-03-23 11:29:28','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Global','global','publish','closed','closed','','field_5c96181915907','','','2019-03-23 11:29:28','2019-03-23 11:29:28','',75,'http://gohachi.jp/?post_type=acf-field&p=95',10,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2019-03-23 11:29:28','2019-03-23 11:29:28','a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:57:\"Controls enqueued CSS and JS scripts, and admin controls.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:23:\"Use Production Settings\";s:11:\"ui_off_text\";s:24:\"Use Development Settings\";}','Production','is_production','publish','closed','closed','','field_5c96182e15908','','','2021-01-13 12:34:04','2021-01-13 12:34:04','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=96',14,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2019-03-23 11:34:46','2019-03-23 11:34:46','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:44:\"This will be the prefix for all page titles.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Page Title Prefix','page_title_prefix','publish','closed','closed','','field_5c9619aee978b','','','2021-01-13 12:34:04','2021-01-13 12:34:04','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=97',11,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2019-03-23 18:16:00','2019-03-23 18:16:00','a:10:{s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:65:\"Controls whether or not to include the standard IE \"shiv\" scripts\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:1;s:10:\"ui_on_text\";s:15:\"Include IE Shiv\";s:11:\"ui_off_text\";s:22:\"Do Not Include IE Shiv\";}','Include IE Shiv','ie_include_shiv','publish','closed','closed','','field_5c96779b8b244','','','2021-01-13 12:34:04','2021-01-13 12:34:04','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=98',15,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (102,1,'2021-01-13 12:16:39','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2021-01-13 12:16:39','0000-00-00 00:00:00','',0,'http://gohachi.jp/?p=102',0,'post','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2021-01-13 12:18:27','2021-01-13 12:18:27','a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:259:\"This is appended to the OC javascript and css file links to control cache busting. If you set this to a new value, it will bust the current browser cached files. If this is left empty, it will be set to the timestamp of the most recent css or javascript file.\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}','Asset Version','asset_version','publish','closed','closed','','field_5ffee4bd71033','','','2021-01-13 12:34:04','2021-01-13 12:34:04','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=103',16,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2021-01-13 12:33:20','2021-01-13 12:33:20','a:7:{s:4:\"type\";s:3:\"tab\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"placement\";s:3:\"top\";s:8:\"endpoint\";i:0;}','Developer','_copy','publish','closed','closed','','field_5ffee83a5464a','','','2021-01-13 12:34:04','2021-01-13 12:34:04','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=104',12,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2021-01-13 12:33:21','2021-01-13 12:33:21','a:8:{s:4:\"type\";s:7:\"message\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:19:\"acf-caution-message\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:78:\"これらの設定は、開発者のみが変更する必要があります。\";s:9:\"new_lines\";s:7:\"wpautop\";s:8:\"esc_html\";i:0;}','注意 !','','publish','closed','closed','','field_5ffee85a5464b','','','2021-01-13 12:39:27','2021-01-13 12:39:27','',75,'http://gohachi.jp/?post_type=acf-field&#038;p=105',13,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2021-01-15 08:08:18','2021-01-15 08:08:18','','Privacy','','publish','closed','closed','','privacy','','','2021-01-15 08:08:18','2021-01-15 08:08:18','',0,'http://gohachi.jp/?page_id=106',0,'page','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2021-01-15 08:08:18','2021-01-15 08:08:18','','Privacy','','inherit','closed','closed','','106-revision-v1','','','2021-01-15 08:08:18','2021-01-15 08:08:18','',106,'http://gohachi.jp/archives/107',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2021-01-15 09:36:39','2021-01-15 09:36:39','','Thankyou','','publish','closed','closed','','thanks','','','2021-01-15 09:44:51','2021-01-15 09:44:51','',0,'http://gohachi.jp/?page_id=108',0,'page','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2021-01-15 09:36:39','2021-01-15 09:36:39','','Thankyou','','inherit','closed','closed','','108-revision-v1','','','2021-01-15 09:36:39','2021-01-15 09:36:39','',108,'http://gohachi.jp/archives/109',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2021-01-15 09:41:12','2021-01-15 09:41:12','','会社概要','','publish','closed','closed','','%e4%bc%9a%e7%a4%be%e6%a6%82%e8%a6%81-2','','','2021-01-15 09:41:12','2021-01-15 09:41:12','',0,'http://gohachi.jp/?p=110',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (111,1,'2021-01-15 09:41:12','2021-01-15 09:41:12','','事業内容','','publish','closed','closed','','%e4%ba%8b%e6%a5%ad%e5%86%85%e5%ae%b9','','','2021-01-15 09:41:12','2021-01-15 09:41:12','',0,'http://gohachi.jp/?p=111',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (112,1,'2021-01-15 09:41:12','2021-01-15 09:41:12','','事例紹介','','publish','closed','closed','','%e4%ba%8b%e4%be%8b%e7%b4%b9%e4%bb%8b','','','2021-01-15 09:41:12','2021-01-15 09:41:12','',0,'http://gohachi.jp/?p=112',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2021-01-15 09:41:12','2021-01-15 09:41:12','','特徴','','publish','closed','closed','','%e7%89%b9%e5%be%b4','','','2021-01-15 09:41:12','2021-01-15 09:41:12','',0,'http://gohachi.jp/?p=113',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2021-01-15 09:41:12','2021-01-15 09:41:12','','採用','','publish','closed','closed','','%e6%8e%a1%e7%94%a8','','','2021-01-15 09:41:12','2021-01-15 09:41:12','',0,'http://gohachi.jp/?p=114',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2021-01-15 09:41:12','2021-01-15 09:41:12','','よくある質問','','publish','closed','closed','','%e3%82%88%e3%81%8f%e3%81%82%e3%82%8b%e8%b3%aa%e5%95%8f','','','2021-01-15 09:41:12','2021-01-15 09:41:12','',0,'http://gohachi.jp/?p=115',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (116,1,'2021-01-15 09:41:12','2021-01-15 09:41:12','','お知らせ','','publish','closed','closed','','%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b','','','2021-01-15 09:41:12','2021-01-15 09:41:12','',0,'http://gohachi.jp/?p=116',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (117,1,'2021-01-18 14:18:36','2021-01-18 14:18:36','','<span class=\"lang-jp\">会社概要</span><span class=\"lang-eng\">ABOUT</span>','','publish','closed','closed','','%e4%bc%9a%e7%a4%be%e6%a6%82%e8%a6%81about','','','2021-01-18 14:25:21','2021-01-18 14:25:21','',0,'http://gohachi.jp/?p=117',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2021-01-18 14:25:21','2021-01-18 14:25:21','','<span class=\"lang-jp\">事業内容</span><span class=\"lang-eng\">SERVICE</span>','','publish','closed','closed','','%e4%ba%8b%e6%a5%ad%e5%86%85%e5%ae%b9service','','','2021-01-18 14:25:21','2021-01-18 14:25:21','',0,'http://gohachi.jp/?p=118',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2021-01-18 14:25:21','2021-01-18 14:25:21','','<span class=\"lang-jp\">事例紹介</span><span class=\"lang-eng\">WORKS</span>','','publish','closed','closed','','%e4%ba%8b%e4%be%8b%e7%b4%b9%e4%bb%8bworks','','','2021-01-18 14:25:21','2021-01-18 14:25:21','',0,'http://gohachi.jp/?p=119',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2021-01-18 14:25:21','2021-01-18 14:25:21','','<span class=\"lang-jp\">特徴</span><span class=\"lang-eng\">FEATURE</span>','','publish','closed','closed','','%e7%89%b9%e5%be%b4feature','','','2021-01-18 14:25:21','2021-01-18 14:25:21','',0,'http://gohachi.jp/?p=120',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (121,1,'2021-01-18 14:25:21','2021-01-18 14:25:21','','<span class=\"lang-jp\">採用</span><span class=\"lang-eng\">RECRUIT</span>','','publish','closed','closed','','%e6%8e%a1%e7%94%a8recruit','','','2021-01-18 14:25:21','2021-01-18 14:25:21','',0,'http://gohachi.jp/?p=121',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2021-01-18 14:25:21','2021-01-18 14:25:21','','<span class=\"lang-jp\">よくある質問</span class=\"lang-eng\"><span>Q & A</span>','','publish','closed','closed','','%e3%82%88%e3%81%8f%e3%81%82%e3%82%8b%e8%b3%aa%e5%95%8fq-a','','','2021-01-18 14:25:21','2021-01-18 14:25:21','',0,'http://gohachi.jp/?p=122',6,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (123,1,'2021-01-18 14:25:21','2021-01-18 14:25:21','','<span class=\"lang-jp\">お知らせ</span><span class=\"lang-eng\">NEWS</span>','','publish','closed','closed','','%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9bnews','','','2021-01-18 14:25:21','2021-01-18 14:25:21','',0,'http://gohachi.jp/?p=123',7,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2021-01-19 07:28:23','2021-01-19 07:28:23','','icon','','inherit','open','closed','','icon','','','2021-01-19 07:28:23','2021-01-19 07:28:23','',0,'http://gohachi.jp/wp-content/uploads/2021/01/icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (125,1,'2021-01-19 07:28:25','2021-01-19 07:28:25','http://gohachi.jp/wp-content/uploads/2021/01/cropped-icon.png','cropped-icon.png','','inherit','open','closed','','cropped-icon-png','','','2021-01-19 07:28:25','2021-01-19 07:28:25','',0,'http://gohachi.jp/wp-content/uploads/2021/01/cropped-icon.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (126,1,'2021-01-19 07:28:43','2021-01-19 07:28:43','{\n    \"site_icon\": {\n        \"value\": 125,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-01-19 07:28:43\"\n    }\n}','','','trash','closed','closed','','95e82fda-dd28-437d-a6c0-ca64151357b7','','','2021-01-19 07:28:43','2021-01-19 07:28:43','',0,'http://gohachi.jp/archives/126',0,'customize_changeset','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_sm_sessions`
--

DROP TABLE IF EXISTS `wp_sm_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_sm_sessions` (
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_sm_sessions`
--

LOCK TABLES `wp_sm_sessions` WRITE;
/*!40000 ALTER TABLE `wp_sm_sessions` DISABLE KEYS */;
INSERT INTO `wp_sm_sessions` VALUES ('hsri21b6t0avhmup62v6o6v81b','form|a:0:{}',1611201274);
/*!40000 ALTER TABLE `wp_sm_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (75,1,0);
INSERT INTO `wp_term_relationships` VALUES (110,2,0);
INSERT INTO `wp_term_relationships` VALUES (111,2,0);
INSERT INTO `wp_term_relationships` VALUES (112,2,0);
INSERT INTO `wp_term_relationships` VALUES (113,2,0);
INSERT INTO `wp_term_relationships` VALUES (114,2,0);
INSERT INTO `wp_term_relationships` VALUES (115,2,0);
INSERT INTO `wp_term_relationships` VALUES (116,2,0);
INSERT INTO `wp_term_relationships` VALUES (117,7,0);
INSERT INTO `wp_term_relationships` VALUES (118,7,0);
INSERT INTO `wp_term_relationships` VALUES (119,7,0);
INSERT INTO `wp_term_relationships` VALUES (120,7,0);
INSERT INTO `wp_term_relationships` VALUES (121,7,0);
INSERT INTO `wp_term_relationships` VALUES (122,7,0);
INSERT INTO `wp_term_relationships` VALUES (123,7,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,7);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'post_tag','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'nav_menu','',0,7);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Main Menu','main-menu',0);
INSERT INTO `wp_terms` VALUES (3,'MyCat','mycat',0);
INSERT INTO `wp_terms` VALUES (4,'Cat3','cat3',0);
INSERT INTO `wp_terms` VALUES (5,'お知らせ','%e3%81%8a%e7%9f%a5%e3%82%89%e3%81%9b',0);
INSERT INTO `wp_terms` VALUES (6,'営業情報','%e5%96%b6%e6%a5%ad%e6%83%85%e5%a0%b1',0);
INSERT INTO `wp_terms` VALUES (7,'Footer Menu','footer-menu',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','admin_bk');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','wp496_privacy,theme_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:2:{s:64:\"306094b5d80a80f48a1dd0eefc734624c1a0b710e8b8b54c04d6814750c32475\";a:4:{s:10:\"expiration\";i:1611152183;s:2:\"ip\";s:13:\"49.228.152.66\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36\";s:5:\"login\";i:1610979383;}s:64:\"5ce223c30e9bfb8f35cff3cd7636fc04e89f5c01b9243b74049651e8fd85981c\";a:4:{s:10:\"expiration\";i:1611213748;s:2:\"ip\";s:14:\"110.132.174.41\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 11_0_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.141 Safari/537.36\";s:5:\"login\";i:1611040948;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','102');
INSERT INTO `wp_usermeta` VALUES (18,1,'community-events-location','a:1:{s:2:\"ip\";s:13:\"110.132.174.0\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'default_password_nag','');
INSERT INTO `wp_usermeta` VALUES (20,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}');
INSERT INTO `wp_usermeta` VALUES (21,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (22,1,'nav_menu_recently_edited','7');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_user-settings','libraryContent=browse');
INSERT INTO `wp_usermeta` VALUES (24,1,'wp_user-settings-time','1551693954');
INSERT INTO `wp_usermeta` VALUES (25,2,'nickname','admin_oc');
INSERT INTO `wp_usermeta` VALUES (26,2,'first_name','Outcome');
INSERT INTO `wp_usermeta` VALUES (27,2,'last_name','Admin');
INSERT INTO `wp_usermeta` VALUES (28,2,'description','');
INSERT INTO `wp_usermeta` VALUES (29,2,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (30,2,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (31,2,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (32,2,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (33,2,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (34,2,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (35,2,'locale','');
INSERT INTO `wp_usermeta` VALUES (36,2,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (37,2,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (38,2,'dismissed_wp_pointers','wp496_privacy');
INSERT INTO `wp_usermeta` VALUES (39,1,'closedpostboxes_toplevel_page_oc-configuration','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (40,1,'metaboxhidden_toplevel_page_oc-configuration','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (41,1,'wp_media_library_mode','list');
INSERT INTO `wp_usermeta` VALUES (42,1,'closedpostboxes_dashboard','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (43,1,'metaboxhidden_dashboard','a:2:{i:0;s:18:\"dashboard_activity\";i:1;s:21:\"dashboard_quick_press\";}');
INSERT INTO `wp_usermeta` VALUES (44,3,'nickname','admin_gohachi');
INSERT INTO `wp_usermeta` VALUES (45,3,'first_name','Web管理者');
INSERT INTO `wp_usermeta` VALUES (46,3,'last_name','五八建設');
INSERT INTO `wp_usermeta` VALUES (47,3,'description','');
INSERT INTO `wp_usermeta` VALUES (48,3,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (49,3,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (50,3,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (51,3,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (52,3,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (53,3,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (54,3,'locale','');
INSERT INTO `wp_usermeta` VALUES (55,3,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (56,3,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (57,3,'dismissed_wp_pointers','');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'admin_bk','$P$Bg8Atin6tJ25eQlJvlL2Nq6SvajH88.','admin_bk','k-nishimoto@outcome.tokyo.jp','','2019-01-18 18:42:43','',0,'admin_bk');
INSERT INTO `wp_users` VALUES (2,'admin_oc','$P$BTOpNQKx2FM6frEyZPCAtEYc.vw4jd.','admin_oc','k-nishimoto@outcome.tokyo.jp','https://outcome.tokyo.jp/','2019-03-23 10:51:38','',0,'Outcome Admin');
INSERT INTO `wp_users` VALUES (3,'admin_gohachi','$P$B6PKdun9e/5zblyw0fwA5f24sZCOns0','admin_gohachi','info@gohachi.jp','','2021-01-19 07:33:58','',0,'Web管理者 五八建設');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-21  6:12:39
