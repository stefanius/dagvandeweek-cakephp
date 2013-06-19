-- MySQL dump 10.13  Distrib 5.5.16, for Win64 (x86)
--
-- Host: localhost    Database: qa_dev
-- ------------------------------------------------------
-- Server version	5.5.16-log

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
-- Table structure for table `qa_acos`
--

DROP TABLE IF EXISTS `qa_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_acos`
--

LOCK TABLES `qa_acos` WRITE;
/*!40000 ALTER TABLE `qa_acos` DISABLE KEYS */;
INSERT INTO `qa_acos` VALUES (1,NULL,NULL,NULL,'Block',1,20),(2,1,NULL,NULL,'Block',2,5),(3,2,NULL,NULL,'admin_index',3,4),(4,1,NULL,NULL,'Manage',6,19),(5,4,NULL,NULL,'admin_index',7,8),(6,4,NULL,NULL,'admin_move',9,10),(7,4,NULL,NULL,'admin_clone',11,12),(8,4,NULL,NULL,'admin_edit',13,14),(9,4,NULL,NULL,'admin_add',15,16),(10,4,NULL,NULL,'admin_delete',17,18),(11,NULL,NULL,NULL,'Comment',21,38),(12,11,NULL,NULL,'Comment',22,25),(13,12,NULL,NULL,'admin_index',23,24),(14,11,NULL,NULL,'List',26,37),(15,14,NULL,NULL,'admin_show',27,28),(16,14,NULL,NULL,'admin_view',29,30),(17,14,NULL,NULL,'admin_approve',31,32),(18,14,NULL,NULL,'admin_unapprove',33,34),(19,14,NULL,NULL,'admin_delete',35,36),(20,NULL,NULL,NULL,'Field',39,46),(21,20,NULL,NULL,'Handler',40,45),(22,21,NULL,NULL,'admin_delete',41,42),(23,21,NULL,NULL,'admin_move',43,44),(24,NULL,NULL,NULL,'FieldFile',47,54),(25,24,NULL,NULL,'Uploadify',48,53),(26,25,NULL,NULL,'delete',49,50),(27,25,NULL,NULL,'upload',51,52),(28,NULL,NULL,NULL,'Locale',55,106),(29,28,NULL,NULL,'Languages',56,69),(30,29,NULL,NULL,'admin_index',57,58),(31,29,NULL,NULL,'admin_set_default',59,60),(32,29,NULL,NULL,'admin_add',61,62),(33,29,NULL,NULL,'admin_edit',63,64),(34,29,NULL,NULL,'admin_move',65,66),(35,29,NULL,NULL,'admin_delete',67,68),(36,28,NULL,NULL,'Locale',70,73),(37,36,NULL,NULL,'admin_index',71,72),(38,28,NULL,NULL,'Packages',74,83),(39,38,NULL,NULL,'admin_index',75,76),(40,38,NULL,NULL,'admin_download_package',77,78),(41,38,NULL,NULL,'admin_uninstall',79,80),(42,38,NULL,NULL,'admin_install',81,82),(43,28,NULL,NULL,'Translations',84,105),(44,43,NULL,NULL,'admin_index',85,86),(45,43,NULL,NULL,'admin_list',87,88),(46,43,NULL,NULL,'admin_edit',89,90),(47,43,NULL,NULL,'admin_add',91,92),(48,43,NULL,NULL,'admin_regenerate',93,94),(49,43,NULL,NULL,'admin_delete',95,96),(50,NULL,NULL,NULL,'Menu',107,130),(51,50,NULL,NULL,'Manage',108,125),(52,51,NULL,NULL,'admin_index',109,110),(53,51,NULL,NULL,'admin_delete',111,112),(54,51,NULL,NULL,'admin_add',113,114),(55,51,NULL,NULL,'admin_edit',115,116),(56,51,NULL,NULL,'admin_delete_link',117,118),(57,51,NULL,NULL,'admin_add_link',119,120),(58,51,NULL,NULL,'admin_edit_link',121,122),(59,51,NULL,NULL,'admin_links',123,124),(60,50,NULL,NULL,'Menu',126,129),(61,60,NULL,NULL,'admin_index',127,128),(62,NULL,NULL,NULL,'Node',131,174),(63,62,NULL,NULL,'Contents',132,145),(64,63,NULL,NULL,'admin_index',133,134),(65,63,NULL,NULL,'admin_edit',135,136),(66,63,NULL,NULL,'admin_create',137,138),(67,63,NULL,NULL,'admin_add',139,140),(68,63,NULL,NULL,'admin_delete',141,142),(69,63,NULL,NULL,'admin_clear_cache',143,144),(70,62,NULL,NULL,'Node',146,155),(71,70,NULL,NULL,'admin_index',147,148),(72,70,NULL,NULL,'index',149,150),(73,70,NULL,NULL,'details',151,152),(74,70,NULL,NULL,'search',153,154),(75,62,NULL,NULL,'Types',156,173),(76,75,NULL,NULL,'admin_index',157,158),(77,75,NULL,NULL,'admin_edit',159,160),(78,75,NULL,NULL,'admin_add',161,162),(79,75,NULL,NULL,'admin_delete',163,164),(80,75,NULL,NULL,'admin_display',165,166),(81,75,NULL,NULL,'admin_field_settings',167,168),(82,75,NULL,NULL,'admin_field_formatter',169,170),(83,75,NULL,NULL,'admin_fields',171,172),(84,NULL,NULL,NULL,'System',175,240),(85,84,NULL,NULL,'Configuration',176,179),(86,85,NULL,NULL,'admin_index',177,178),(87,84,NULL,NULL,'Dashboard',180,183),(88,87,NULL,NULL,'admin_index',181,182),(89,84,NULL,NULL,'Help',184,189),(90,89,NULL,NULL,'admin_index',185,186),(91,89,NULL,NULL,'admin_module',187,188),(92,84,NULL,NULL,'Modules',190,205),(93,92,NULL,NULL,'admin_index',191,192),(94,92,NULL,NULL,'admin_settings',193,194),(95,92,NULL,NULL,'admin_toggle',195,196),(96,92,NULL,NULL,'admin_uninstall',197,198),(97,92,NULL,NULL,'admin_install',199,200),(98,84,NULL,NULL,'Structure',206,209),(99,98,NULL,NULL,'admin_index',207,208),(100,84,NULL,NULL,'System',210,213),(101,100,NULL,NULL,'admin_index',211,212),(102,84,NULL,NULL,'Themes',214,229),(103,102,NULL,NULL,'admin_index',215,216),(104,102,NULL,NULL,'admin_set_theme',217,218),(105,102,NULL,NULL,'admin_settings',219,220),(106,102,NULL,NULL,'admin_uninstall',221,222),(107,102,NULL,NULL,'admin_install',223,224),(108,102,NULL,NULL,'admin_theme_tn',225,226),(109,NULL,NULL,NULL,'Taxonomy',241,264),(110,109,NULL,NULL,'Taxonomy',242,245),(111,110,NULL,NULL,'admin_index',243,244),(112,109,NULL,NULL,'Vocabularies',246,263),(113,112,NULL,NULL,'admin_index',247,248),(114,112,NULL,NULL,'admin_add',249,250),(115,112,NULL,NULL,'admin_move',251,252),(116,112,NULL,NULL,'admin_edit',253,254),(117,112,NULL,NULL,'admin_delete',255,256),(118,112,NULL,NULL,'admin_terms',257,258),(119,112,NULL,NULL,'admin_delete_term',259,260),(120,112,NULL,NULL,'admin_edit_term',261,262),(121,NULL,NULL,NULL,'User',265,330),(122,121,NULL,NULL,'Display',266,271),(123,122,NULL,NULL,'admin_index',267,268),(124,122,NULL,NULL,'admin_field_formatter',269,270),(125,121,NULL,NULL,'Fields',272,277),(126,125,NULL,NULL,'admin_index',273,274),(127,125,NULL,NULL,'admin_field_settings',275,276),(128,121,NULL,NULL,'List',278,291),(129,128,NULL,NULL,'admin_index',279,280),(130,128,NULL,NULL,'admin_delete',281,282),(131,128,NULL,NULL,'admin_block',283,284),(132,128,NULL,NULL,'admin_activate',285,286),(133,128,NULL,NULL,'admin_add',287,288),(134,128,NULL,NULL,'admin_edit',289,290),(135,121,NULL,NULL,'Permissions',292,299),(136,135,NULL,NULL,'admin_index',293,294),(137,135,NULL,NULL,'admin_edit',295,296),(138,135,NULL,NULL,'admin_toggle',297,298),(139,121,NULL,NULL,'Roles',300,307),(140,139,NULL,NULL,'admin_index',301,302),(141,139,NULL,NULL,'admin_edit',303,304),(142,139,NULL,NULL,'admin_delete',305,306),(143,121,NULL,NULL,'User',308,329),(144,143,NULL,NULL,'admin_index',309,310),(145,143,NULL,NULL,'login',311,312),(146,143,NULL,NULL,'logout',313,314),(147,143,NULL,NULL,'admin_login',315,316),(148,143,NULL,NULL,'admin_logout',317,318),(149,143,NULL,NULL,'register',319,320),(150,143,NULL,NULL,'activate',321,322),(151,143,NULL,NULL,'password_recovery',323,324),(152,143,NULL,NULL,'profile',325,326),(153,143,NULL,NULL,'my_account',327,328),(154,NULL,NULL,NULL,'TaxonomyTerms',331,336),(155,154,NULL,NULL,'Tokeninput',332,335),(156,155,NULL,NULL,'admin_suggest',333,334),(157,43,NULL,NULL,'admin_fuzzy_list',97,98),(158,43,NULL,NULL,'admin_fuzzy_delete',99,100),(159,43,NULL,NULL,'admin_import',101,102),(160,43,NULL,NULL,'admin_export',103,104),(161,NULL,NULL,NULL,'FieldImage',337,346),(162,161,NULL,NULL,'Uploadify',338,345),(163,162,NULL,NULL,'delete',339,340),(164,162,NULL,NULL,'upload',341,342),(165,162,NULL,NULL,'preview',343,344),(166,84,NULL,NULL,'Directory',230,239),(167,166,NULL,NULL,'admin_themes',231,232),(168,166,NULL,NULL,'admin_modules',233,234),(169,166,NULL,NULL,'admin_theme_details',235,236),(170,166,NULL,NULL,'admin_module_details',237,238),(171,92,NULL,NULL,'admin_load_order',201,202),(172,92,NULL,NULL,'admin_build_acos',203,204),(173,102,NULL,NULL,'serve_css',227,228);
/*!40000 ALTER TABLE `qa_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_aros`
--

DROP TABLE IF EXISTS `qa_aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_aros`
--

LOCK TABLES `qa_aros` WRITE;
/*!40000 ALTER TABLE `qa_aros` DISABLE KEYS */;
INSERT INTO `qa_aros` VALUES (1,NULL,'User.Role',1,NULL,1,2),(2,NULL,'User.Role',2,NULL,3,4),(3,NULL,'User.Role',3,NULL,5,6);
/*!40000 ALTER TABLE `qa_aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_aros_acos`
--

DROP TABLE IF EXISTS `qa_aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_read` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_update` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `_delete` varchar(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_aros_acos`
--

LOCK TABLES `qa_aros_acos` WRITE;
/*!40000 ALTER TABLE `qa_aros_acos` DISABLE KEYS */;
INSERT INTO `qa_aros_acos` VALUES (1,2,72,'1','1','1','1'),(2,3,72,'1','1','1','1'),(3,2,73,'1','1','1','1'),(4,3,73,'1','1','1','1'),(5,2,74,'1','1','1','1'),(6,3,74,'1','1','1','1'),(7,3,145,'1','1','1','1'),(8,2,146,'1','1','1','1'),(9,3,147,'1','1','1','1'),(10,2,148,'1','1','1','1'),(11,3,149,'1','1','1','1'),(12,3,150,'1','1','1','1'),(13,3,151,'1','1','1','1'),(14,2,152,'1','1','1','1'),(15,2,153,'1','1','1','1'),(16,2,165,'1','1','1','1'),(17,3,165,'1','1','1','1');
/*!40000 ALTER TABLE `qa_aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_block_custom`
--

DROP TABLE IF EXISTS `qa_block_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_block_custom` (
  `block_id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'The block’s block.bid.',
  `body` text COLLATE utf8_unicode_ci COMMENT 'Block contents.',
  `description` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Block description.',
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'The filter_format.format of the block body.',
  PRIMARY KEY (`block_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_block_custom`
--

LOCK TABLES `qa_block_custom` WRITE;
/*!40000 ALTER TABLE `qa_block_custom` DISABLE KEYS */;
INSERT INTO `qa_block_custom` VALUES (11,'<p>Duis tellus nunc, egestas a interdum sed, congue vitae magna. Curabitur a tellus quis lacus blandit sagittis a sit amet elit. Pellentesque habitant morbi tristique senectus et netus ets egestas metus sed.\r\n<br/>\r\n[button size=small color=silver]Read more[/button]</p>\r\n','Services-LEFT',NULL),(12,'<p>Integer egestas ultricies urna vitae molestie. Donec nec facilisis nisi. Vivamus tempor feugiat velit gravida vehicula. Donec faucibus pellentesque ipsum id varius. Ut rutrum metus sed neque ultricies a dictum ante sagittis.\r\n<br/>\r\n[button size=small color=silver]Read more[/button]</p>\r\n','Services-CENTER',NULL),(13,'<p>Praesent et metus sit amet nisl luctus commodo ut a risus. Mauris vehicula, ligula quis consectetur feugiat, arcu nibh tempor nisi, at varius dolor dolor nec dolor. Donec auctor mi vitae neque.\r\n<br/>\r\n[button size=small color=silver]Read more[/button]</p>\r\n','Services-RIGHT',NULL);
/*!40000 ALTER TABLE `qa_block_custom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_block_regions`
--

DROP TABLE IF EXISTS `qa_block_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_block_regions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` int(11) NOT NULL,
  `theme` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `region` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_block_regions`
--

LOCK TABLES `qa_block_regions` WRITE;
/*!40000 ALTER TABLE `qa_block_regions` DISABLE KEYS */;
INSERT INTO `qa_block_regions` VALUES (8,10,'Admin','dashboard_main',1),(9,10,'Default','dashboard_main',1),(13,4,'Admin','management-menu',1),(14,4,'Default','management-menu',1),(18,3,'Admin','footer',1),(48,3,'Default','footer',1),(131,6,'Default','main-menu',1),(133,26,'Default','slider',1),(140,9,'Default','language-switcher',1),(151,19,'Default','services-left',1),(153,20,'Default','services-center',1),(155,25,'Default','services-right',1),(157,15,'Default','search',1),(159,12,'Default','services-left',2),(161,11,'Default','services-center',2),(163,13,'Default','services-right',2),(165,14,'Default','slider',2),(166,15,'Admin','dashboard_sidebar',1),(169,7,'Admin','dashboard_sidebar',2),(172,5,'Default','user-menu',2),(173,16,'Admin','',1),(174,16,'Default','sidebar-left',1),(175,2,'Admin','',2),(176,2,'Default','sidebar-left',2),(177,11,'Admin','',3),(178,12,'Admin','',4),(179,13,'Admin','',5);
/*!40000 ALTER TABLE `qa_block_regions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_block_roles`
--

DROP TABLE IF EXISTS `qa_block_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_block_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `block_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_role_id` int(10) NOT NULL COMMENT 'The user’s role ID from users_roles.rid.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_block_roles`
--

LOCK TABLES `qa_block_roles` WRITE;
/*!40000 ALTER TABLE `qa_block_roles` DISABLE KEYS */;
INSERT INTO `qa_block_roles` VALUES (1,'1',3),(2,'5',2);
/*!40000 ALTER TABLE `qa_block_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_blocks`
--

DROP TABLE IF EXISTS `qa_blocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key - Unique block ID.',
  `module` varchar(64) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The module from which the block originates, for example: "User" for the Who''s Online block, and "Block" for any custom blocks.',
  `delta` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Unique ID for block within a module. Or menu_id',
  `clone_of` int(11) NOT NULL DEFAULT '0',
  `themes_cache` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'store all themes that belongs to (see block_regions table)',
  `ordering` int(11) NOT NULL DEFAULT '1',
  `status` int(4) NOT NULL DEFAULT '1' COMMENT 'Block enabled status. (1 = enabled, 0 = disabled)',
  `visibility` int(4) NOT NULL DEFAULT '0' COMMENT 'Flag to indicate how to show blocks on pages. (0 = Show on all pages except listed pages, 1 = Show only on listed pages, 2 = Use custom PHP code to determine visibility)',
  `pages` text COLLATE utf8_unicode_ci COMMENT 'Contents of the "Pages" block contains either a list of paths on which to include/exclude the block or PHP code, depending on "visibility" setting.',
  `title` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Custom title for the block. (Empty string will use block default title, <none> will remove the title, text will cause block to use specified title.)',
  `locale` text COLLATE utf8_unicode_ci,
  `settings` text COLLATE utf8_unicode_ci,
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_blocks`
--

LOCK TABLES `qa_blocks` WRITE;
/*!40000 ALTER TABLE `qa_blocks` DISABLE KEYS */;
INSERT INTO `qa_blocks` VALUES (1,'User','login',0,'',1,0,0,'','User Login','a:0:{}','',NULL),(2,'Menu','navigation',0,':Default:',2,1,0,'','','a:0:{}','','a:1:{s:5:\"class\";s:0:\"\";}'),(3,'System','powered_by',0,':Admin:Default:',1,1,0,'','Powered By','a:0:{}','',NULL),(4,'Menu','management',0,':Admin:',1,1,1,'/admin/*','','a:0:{}','',NULL),(5,'Menu','user-menu',0,':Default:',4,1,0,'','User Menu','a:0:{}','',NULL),(6,'Menu','main-menu',0,':Default:',1,1,0,'','','a:0:{}','',NULL),(7,'User','new',0,':Admin:',5,1,0,'','New Users','a:0:{}','a:1:{s:10:\"show_limit\";s:1:\"5\";}',NULL),(9,'Locale','language_switcher',0,':Default:',3,1,0,'','Language switcher','a:0:{}','a:2:{s:5:\"flags\";s:1:\"1\";s:4:\"name\";s:1:\"1\";}',NULL),(10,'System','recent_content',0,':Admin:',1,1,0,'','Updates','a:0:{}','',NULL),(11,'Block','5',0,':Default:',1,1,0,'','What we do','a:0:{}','','a:1:{s:5:\"class\";s:0:\"\";}'),(12,'Block','6',0,':Default:',1,1,0,'','Our mission','a:0:{}','','a:1:{s:5:\"class\";s:0:\"\";}'),(13,'Block','7',0,':Default:',1,1,0,'','Who we are','a:0:{}','','a:1:{s:5:\"class\";s:0:\"\";}'),(14,'ThemeDefault','slider',0,':Default:',1,1,1,'/','Slider','a:0:{}','a:1:{s:12:\"slider_order\";s:52:\"1_[language].jpg\r\n2_[language].jpg\r\n3_[language].jpg\";}',NULL),(15,'Node','search',0,':Admin:Default:',1,1,0,'','Search','a:0:{}','',NULL),(16,'Taxonomy','vocabularies',0,':Default:',1,1,1,'/article/*.html\r\n/search/type:article*','Categories','a:0:{}','a:5:{s:12:\"vocabularies\";a:1:{i:0;s:1:\"1\";}s:15:\"content_counter\";s:1:\"1\";s:15:\"show_vocabulary\";s:1:\"0\";s:20:\"terms_cache_duration\";s:11:\"+10 minutes\";s:10:\"url_prefix\";s:12:\"type:article\";}','a:1:{s:5:\"class\";s:0:\"\";}');
/*!40000 ALTER TABLE `qa_blocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_comments`
--

DROP TABLE IF EXISTS `qa_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique comment ID.',
  `node_id` int(11) NOT NULL COMMENT 'The node.nid to which this comment is a reply.',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT 'The users.uid who authored the comment. If set to 0, this comment was created by an anonymous user.',
  `body` text COLLATE utf8_unicode_ci,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hostname` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'The author’s host name. (IP)',
  `homepage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'The time that the comment was created, as a Unix timestamp.',
  `modified` int(11) NOT NULL DEFAULT '0' COMMENT 'The time that the comment was last edited, as a Unix timestamp.',
  `status` int(3) NOT NULL DEFAULT '1' COMMENT 'The published status of a comment. (0 = Not Published, 1 = Published)',
  `name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'The comment author’s name. Uses users.name if the user is logged in, otherwise uses the value typed into the comment form.',
  `mail` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'The comment author’s e-mail address from the comment form, if user is anonymous, and the ’Anonymous users may/must leave their contact information’ setting is turned on.',
  PRIMARY KEY (`id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_comments`
--

LOCK TABLES `qa_comments` WRITE;
/*!40000 ALTER TABLE `qa_comments` DISABLE KEYS */;
INSERT INTO `qa_comments` VALUES (1,3,1,'Fusce pretium, libero a viverra congue, leo dui auctor tellus, in tincidunt lacus ligula a dolor. Praesent rutrum iaculis semper. Sed tortor eros, tempus sit amet molestie posuere.','Fusce pretium, libero a','127.0.0.1',NULL,1319980300,1319980322,1,NULL,NULL);
/*!40000 ALTER TABLE `qa_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_field_data`
--

DROP TABLE IF EXISTS `qa_field_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_field_data` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `foreignKey` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `belongsTo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_field_data`
--

LOCK TABLES `qa_field_data` WRITE;
/*!40000 ALTER TABLE `qa_field_data` DISABLE KEYS */;
INSERT INTO `qa_field_data` VALUES (1,1,'1','Node','<h3>Content Boxes</h3>\r\n<p>\r\n	[content_box type=success]Maecenas pellentesque cursus auctor.[/content_box]</p>\r\n<p>\r\n	[content_box type=error]Nam sagittis nisl non turpis aliquam mollis. Suspendisse ac metus nisi, sed vulputate arcu.[/content_box]</p>\r\n<p>\r\n	[content_box type=alert]Cras interdum leo quis arcu sagittis pulvinar. Curabitur suscipit vulputate erat eu rhoncus. Morbi facilisis mi in ligula ornare ultricies.[/content_box]</p>\r\n<p>\r\n	[content_box type=bubble]Fusce interdum cursus turpis vitae gravida. Aenean aliquet venenatis posuere. Etiam gravida ullamcorper purus.[/content_box]</p>\r\n<hr />\r\n<h3>\r\n	Buttons</h3>\r\n<p>\r\n	Using buttons Hooktags, you can easily create a variety of buttons. These buttons all stem from a single tag, but vary in color and size (each of which are adjustable using color=&rdquo;&quot; and size=&rdquo;&quot; parameters).<br />\r\n	Allowed parameters:</p>\r\n<ol>\r\n	<li>\r\n		<strong>size:</strong> big, small</li>\r\n	<li>\r\n		<strong>color:</strong>\r\n		<ul>\r\n			<li>\r\n				small: black, blue, green, lightblue, orange, pink, purple, red, silver, teal</li>\r\n			<li>\r\n				big: blue, green, orange, purple, red, turquoise</li>\r\n		</ul>\r\n	</li>\r\n	<li>\r\n		<strong>link:</strong> url of your button</li>\r\n	<li>\r\n		<strong>target:</strong> open link en new window (_blank), open in same window (_self or unset parameter)</li>\r\n</ol>\r\n<h4>\r\n	&nbsp;</h4>\r\n<p>\r\n	&nbsp;</p>\r\n<h4>\r\n	Small Buttons</h4>\r\n<table style=\"width: 478px; height: 25px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				[button color=black]Button text[/button]</td>\r\n			<td>\r\n				[button color=blue]Button text[/button]</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				[button color=green]Button text[/button]</td>\r\n			<td>\r\n				[button color=lightblue]Button text[/button]</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				[button color=orange]Button text[/button]</td>\r\n			<td>\r\n				[button color=pink]Button text[/button]</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				[button color=purple]Button text[/button]</td>\r\n			<td>\r\n				[button color=red]Button text[/button]</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				[button color=silver]Button text[/button]</td>\r\n			<td>\r\n				[button color=teal]Button text[/button]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<h4>\r\n	&nbsp;</h4>\r\n<p>\r\n	&nbsp;</p>\r\n<h4>\r\n	Big Buttons</h4>\r\n<table style=\"width: 478px; height: 25px;\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n				[button color=blue size=big]Button text[/button]</td>\r\n			<td>\r\n				[button color=green size=big]Button text[/button]</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				[button color=orange size=big]Button text[/button]</td>\r\n			<td>\r\n				[button color=purple size=big]Button text[/button]</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n				[button color=red size=big]Button text[/button]</td>\r\n			<td>\r\n				[button color=turquoise size=big]Button text[/button]</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n'),(2,1,'2','Node','<p>\r\n	<strong>QuickApps CMS</strong> is a free open source CMS released under GPL license, and inspired by most of the popular cms.<br />\r\n	Powered by CakePHP v2 <strong>MVC framework</strong> makes this cms the perfect development platform. A robust application fully expandable and capable of manage virtually any website, from very simplistic websites, as well as very complex web sites.</p>'),(3,2,'3','Node','Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum turpis mi, pulvinar ac placerat ut, luctus vel arcu. Cras ac vulputate sed.'),(4,3,'3','Node','Integer in augue a neque mollis semper eget nec est. Donec eros justo, ornare non sollicitudin ut, viverra nec ligula. Cras quis nisl magna. Vivamus tortor est, lobortis sit amet vehicula sed, porta vitae risus. Quisque sit amet justo elit. Fusce in eros augue, sed gravida ligula. Integer ac sem neque. Nulla vitae neque a nibh ultricies vehicula vel a massa.\r\n\r\nQuisque at ante sit amet metus auctor dignissim nec nec est. Nullam et lacus a diam viverra suscipit vitae ut neque. Suspendisse in lacus vel ipsum lacinia rutrum id eget ligula. Vestibulum vehicula elit vel nunc ultricies scelerisque sagittis mi consectetur. Maecenas bibendum augue ut urna sodales molestie! Quisque ultrices hendrerit ipsum, ac dictum mi porta eget. Integer fringilla suscipit nisl, id hendrerit elit fringilla sed! Curabitur quis elit vitae est vulputate adipiscing nec a risus. Curabitur euismod sodales risus non commodo?Integer tincidunt dolor a urna convallis interdum. Curabitur quis velit et ante convallis venenatis. \r\n\r\nUt nec ipsum et arcu ultrices mattis? Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam nec est neque. Donec vitae interdum velit? Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis venenatis faucibus odio, sed lobortis enim euismod et. Fusce vel risus et mauris feugiat consectetur. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.Aenean condimentum feugiat lectus eget porttitor. \r\n\r\nSed volutpat pretium felis, ac pulvinar sapien dapibus quis.'),(5,4,'3','Node','1'),(6,5,'3','Node','7,8,9');
/*!40000 ALTER TABLE `qa_field_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_fields`
--

DROP TABLE IF EXISTS `qa_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The primary identifier for a field',
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'The name of this field.  Must be unique',
  `label` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Human name',
  `belongsTo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_module` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'The module that implements the field object',
  `description` text COLLATE utf8_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Rendering settings (View mode)',
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '1' COMMENT 'edit form ordering',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_fields`
--

LOCK TABLES `qa_fields` WRITE;
/*!40000 ALTER TABLE `qa_fields` DISABLE KEYS */;
INSERT INTO `qa_fields` VALUES (1,'field_page_body','Body','NodeType-page','FieldText','',1,'a:7:{s:7:\"display\";a:4:{s:7:\"default\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:4:\"full\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:1;s:11:\"trim_length\";s:3:\"180\";}s:4:\"full\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:4:\"full\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:3:\"600\";}s:4:\"list\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:7:\"trimmed\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:3:\"400\";}s:3:\"rss\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:7:\"trimmed\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:3:\"400\";}}s:4:\"type\";s:8:\"textarea\";s:11:\"text_format\";s:4:\"full\";s:7:\"max_len\";s:0:\"\";s:15:\"validation_rule\";s:0:\"\";s:18:\"validation_message\";s:0:\"\";s:15:\"text_processing\";s:4:\"full\";}',0,1),(2,'field_article_introduction','Introduction','NodeType-article','FieldText','',1,'a:6:{s:4:\"type\";s:8:\"textarea\";s:15:\"text_processing\";s:5:\"plain\";s:7:\"display\";a:4:{s:7:\"default\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:6:\"hidden\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:0:\"\";}s:4:\"full\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:6:\"hidden\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:0:\"\";}s:4:\"list\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:5:\"plain\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:0:\"\";}s:3:\"rss\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:5:\"plain\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:0:\"\";}}s:7:\"max_len\";s:0:\"\";s:15:\"validation_rule\";s:0:\"\";s:18:\"validation_message\";s:0:\"\";}',0,1),(3,'field_article_content','Article content','NodeType-article','FieldText','',1,'a:6:{s:4:\"type\";s:8:\"textarea\";s:15:\"text_processing\";s:4:\"full\";s:7:\"display\";a:4:{s:7:\"default\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:4:\"full\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:0:\"\";}s:4:\"full\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:4:\"full\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:0:\"\";}s:4:\"list\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:6:\"hidden\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:0:\"\";}s:3:\"rss\";a:5:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:6:\"hidden\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;s:11:\"trim_length\";s:0:\"\";}}s:7:\"max_len\";s:0:\"\";s:15:\"validation_rule\";s:0:\"\";s:18:\"validation_message\";s:0:\"\";}',0,1),(4,'field_article_category','Category','NodeType-article','TaxonomyTerms','',1,'a:4:{s:7:\"display\";a:4:{s:7:\"default\";a:4:{s:5:\"label\";s:6:\"inline\";s:4:\"type\";s:14:\"link-localized\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;}s:4:\"list\";a:3:{s:5:\"label\";s:6:\"inline\";s:4:\"type\";s:14:\"link-localized\";s:10:\"url_prefix\";s:12:\"type:article\";}s:3:\"rss\";a:2:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:6:\"hidden\";}s:4:\"full\";a:3:{s:5:\"label\";s:6:\"inline\";s:4:\"type\";s:15:\"plain-localized\";s:10:\"url_prefix\";s:0:\"\";}}s:10:\"vocabulary\";s:1:\"1\";s:4:\"type\";s:6:\"select\";s:10:\"max_values\";s:1:\"1\";}',0,1),(5,'field_article_tags','Tags','NodeType-article','TaxonomyTerms','',0,'a:4:{s:7:\"display\";a:4:{s:7:\"default\";a:4:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:6:\"hidden\";s:8:\"settings\";a:0:{}s:8:\"ordering\";i:0;}s:4:\"full\";a:3:{s:5:\"label\";s:6:\"inline\";s:4:\"type\";s:14:\"link-localized\";s:10:\"url_prefix\";s:12:\"type:article\";}s:4:\"list\";a:3:{s:5:\"label\";s:6:\"inline\";s:4:\"type\";s:14:\"link-localized\";s:10:\"url_prefix\";s:12:\"type:article\";}s:3:\"rss\";a:2:{s:5:\"label\";s:6:\"hidden\";s:4:\"type\";s:6:\"hidden\";}}s:10:\"vocabulary\";s:1:\"2\";s:4:\"type\";s:12:\"autocomplete\";s:10:\"max_values\";s:1:\"0\";}',0,1);
/*!40000 ALTER TABLE `qa_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_i18n`
--

DROP TABLE IF EXISTS `qa_i18n`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_i18n` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `locale` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `foreign_key` int(10) NOT NULL,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `locale` (`locale`),
  KEY `model` (`model`),
  KEY `row_id` (`foreign_key`),
  KEY `field` (`field`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_i18n`
--

LOCK TABLES `qa_i18n` WRITE;
/*!40000 ALTER TABLE `qa_i18n` DISABLE KEYS */;
INSERT INTO `qa_i18n` VALUES (1,'eng','Locale.Translation',1,NULL,'Open Source CMS built on CakePHP 2.0'),(2,'spa','Locale.Translation',1,NULL,'CMS de código libre construido sobre CakePHP 2.0');
/*!40000 ALTER TABLE `qa_i18n` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_languages`
--

DROP TABLE IF EXISTS `qa_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(12) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Language code, e.g. ’eng’',
  `name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Language name in English.',
  `native` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Native language name.',
  `direction` varchar(3) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'ltr' COMMENT 'Direction of language (Left-to-Right , Right-to-Left ).',
  `icon` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT 'Enabled flag (1 = Enabled, 0 = Disabled).',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'Weight, used in lists of languages.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_languages`
--

LOCK TABLES `qa_languages` WRITE;
/*!40000 ALTER TABLE `qa_languages` DISABLE KEYS */;
INSERT INTO `qa_languages` VALUES (1,'eng','English','English','ltr','us.gif',1,0),(2,'spa','Spanish','Español','ltr','es.gif',1,0);
/*!40000 ALTER TABLE `qa_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_menu_links`
--

DROP TABLE IF EXISTS `qa_menu_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_menu_links` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `menu_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The menu name. All links with the same menu name (such as ’navigation’) are part of the same menu.',
  `lft` int(11) NOT NULL,
  `rght` int(11) NOT NULL,
  `parent_id` int(10) NOT NULL DEFAULT '0' COMMENT 'The parent link ID (plid) is the mlid of the link above in the hierarchy, or zero if the link is at the top level in its menu.',
  `link_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'external path',
  `router_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'internal path',
  `description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'The text displayed for the link, which may be modified by a title callback stored in menu_router.',
  `options` text COLLATE utf8_unicode_ci COMMENT 'A serialized array of HTML attributes options.',
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'system' COMMENT 'The name of the module that generated this link.',
  `target` varchar(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `expanded` int(6) NOT NULL DEFAULT '0' COMMENT 'Flag for whether this link should be rendered as expanded in menus - expanded links always have their child links displayed, instead of only when the link is in the active trail (1 = expanded, 0 = not expanded)',
  `selected_on` text COLLATE utf8_unicode_ci COMMENT 'php code, or regular expression. based on selected_on_type',
  `selected_on_type` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'php = on php return TRUE. reg = on URL match',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `router_path` (`router_path`),
  KEY `menu_id` (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_menu_links`
--

LOCK TABLES `qa_menu_links` WRITE;
/*!40000 ALTER TABLE `qa_menu_links` DISABLE KEYS */;
INSERT INTO `qa_menu_links` VALUES (1,'management',1,2,0,NULL,'/admin/system/dashboard',NULL,'Dashboard',NULL,'System','_self',0,NULL,NULL,1),(2,'management',3,12,0,NULL,'/admin/system/structure',NULL,'Structure',NULL,'System','_self',0,NULL,NULL,1),(3,'management',13,14,0,NULL,'/admin/node/contents',NULL,'Content',NULL,'System','_self',0,NULL,NULL,1),(4,'management',15,16,0,NULL,'/admin/system/themes',NULL,'Appearance',NULL,'System','_self',0,NULL,NULL,1),(5,'management',17,18,0,NULL,'/admin/system/modules',NULL,'Modules',NULL,'System','_self',0,NULL,NULL,1),(6,'management',19,20,0,NULL,'/admin/user',NULL,'Users',NULL,'System','_self',0,NULL,NULL,1),(7,'management',23,24,0,NULL,'/admin/system/configuration',NULL,'Configuration',NULL,'System','_self',0,NULL,NULL,1),(8,'management',25,26,0,NULL,'/admin/system/help',NULL,'Help',NULL,'System','_self',0,NULL,NULL,1),(9,'management',4,5,2,NULL,'/admin/block','Configure what block content appears in your site\'s sidebars and other regions.','Blocks',NULL,'System','_self',0,NULL,NULL,1),(10,'management',6,7,2,NULL,'/admin/node/types','Manage content types.','Content Types',NULL,'System','_self',0,NULL,NULL,1),(11,'management',8,9,2,NULL,'/admin/menu','Add new menus to your site, edit existing menus, and rename and reorganize menu links.','Menus',NULL,'System','_self',0,NULL,NULL,1),(12,'management',10,11,2,NULL,'/admin/taxonomy','Manage tagging, categorization, and classification of your content.','Taxonomy',NULL,'System','_self',0,NULL,NULL,1),(13,'main-menu',3,4,0,NULL,'/page/hooktags.html','','Hooktags',NULL,'Menu','_self',0,NULL,NULL,1),(17,'main-menu',5,6,0,NULL,'/page/about.html','','About',NULL,'Menu','_self',0,NULL,NULL,1),(18,'management',21,22,0,NULL,'/admin/locale','','Languages',NULL,'Locale','_self',0,NULL,NULL,1),(21,'main-menu',1,2,0,NULL,'/','','Home',NULL,'Menu','_self',0,NULL,NULL,1),(22,'user-menu',1,2,0,NULL,'/user/my_account','','My account',NULL,'Menu','_self',0,NULL,NULL,1),(23,'user-menu',3,4,0,NULL,'/user/logout','','Logout',NULL,'Menu','_self',0,NULL,NULL,1),(24,'main-menu',7,8,0,NULL,'/search/type:article','','Blog',NULL,'Menu','_self',0,'/article/*.html\r\n/search/type:article*','reg',1),(25,'navigation',1,2,0,'http://www.quickappscms.org',NULL,'','QuickApps Site',NULL,'Menu','_blank',0,'','',1),(26,'navigation',3,4,0,'https://github.com/QuickAppsCMS/QuickApps-CMS-Docs',NULL,'','Documentation',NULL,'Menu','_blank',0,'','',1);
/*!40000 ALTER TABLE `qa_menu_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_menus`
--

DROP TABLE IF EXISTS `qa_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_menus` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Primary Key: Unique key for menu. This is used as a block delta so length is 32.',
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Menu title, displayed at top of block.',
  `description` text COLLATE utf8_unicode_ci COMMENT 'Menu description.',
  `module` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_menus`
--

LOCK TABLES `qa_menus` WRITE;
/*!40000 ALTER TABLE `qa_menus` DISABLE KEYS */;
INSERT INTO `qa_menus` VALUES ('main-menu','Main menu','The <em>Main</em> menu is used on many sites to show the major sections of the site, often in a top navigation bar.','System'),('management','Management','The <em>Management</em> menu contains links for administrative tasks.','System'),('navigation','Navigation','The <em>Navigation</em> menu contains links intended for site visitors. Links are added to the <em>Navigation</em> menu automatically by some modules.','System'),('user-menu','User menu','The <em>User</em> menu contains links related to the user\'s account, as well as the \'Log out\' link.','System');
/*!40000 ALTER TABLE `qa_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_modules`
--

DROP TABLE IF EXISTS `qa_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_modules` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'machine name',
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'module' COMMENT 'module or theme',
  `settings` text COLLATE utf8_unicode_ci COMMENT 'serialized extra data',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_modules`
--

LOCK TABLES `qa_modules` WRITE;
/*!40000 ALTER TABLE `qa_modules` DISABLE KEYS */;
INSERT INTO `qa_modules` VALUES ('Block','module','',1,0),('Comment','module','',1,0),('Field','module','',1,0),('Locale','module','',1,0),('Menu','module','',1,0),('Node','module','',1,0),('System','module','',1,0),('Taxonomy','module','',1,0),('ThemeAdmin','theme','a:4:{s:9:\"site_logo\";s:1:\"1\";s:9:\"site_name\";s:1:\"1\";s:11:\"site_slogan\";s:1:\"1\";s:12:\"site_favicon\";s:1:\"1\";}',1,0),('ThemeDefault','theme','a:7:{s:13:\"slider_folder\";s:6:\"slider\";s:9:\"site_logo\";s:1:\"1\";s:9:\"site_name\";s:1:\"0\";s:11:\"site_slogan\";s:1:\"1\";s:12:\"site_favicon\";s:1:\"1\";s:16:\"color_header_top\";s:7:\"#282727\";s:19:\"color_header_bottom\";s:7:\"#332f2f\";}',1,0),('User','module','',1,0);
/*!40000 ALTER TABLE `qa_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_node_types`
--

DROP TABLE IF EXISTS `qa_node_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_node_types` (
  `id` varchar(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The machine-readable name of this type.',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The human-readable name of this type.',
  `base` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The base string used to construct callbacks corresponding to this node type.',
  `module` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The module defining this node type.',
  `description` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'A brief description of this type.',
  `title_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The label displayed for the title field on the edit form.',
  `comments_approve` tinyint(1) DEFAULT '0',
  `comments_per_page` int(4) NOT NULL DEFAULT '10',
  `comments_anonymous` int(3) NOT NULL DEFAULT '0',
  `comments_subject_field` tinyint(1) NOT NULL DEFAULT '1',
  `node_show_author` tinyint(1) DEFAULT '1',
  `node_show_date` tinyint(1) DEFAULT '1',
  `default_comment` int(11) DEFAULT NULL,
  `default_language` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `default_status` int(11) DEFAULT NULL,
  `default_promote` int(11) DEFAULT NULL,
  `default_sticky` int(11) DEFAULT NULL,
  `status` int(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether the node type is disabled.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_node_types`
--

LOCK TABLES `qa_node_types` WRITE;
/*!40000 ALTER TABLE `qa_node_types` DISABLE KEYS */;
INSERT INTO `qa_node_types` VALUES ('article','Article','node','Node','Use articles for time-sensitive content like news, press releases or blog posts.','Title',0,10,2,0,1,1,2,'',1,0,0,1),('page','Basic page','node','Node','Use <em>basic pages</em> for your static content, such as an \'About us\' page.','Title',1,10,2,1,0,0,0,'es',1,0,0,1);
/*!40000 ALTER TABLE `qa_node_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_nodes`
--

DROP TABLE IF EXISTS `qa_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_nodes` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'The primary identifier for a node.',
  `node_type_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The node_type.type of this node.',
  `node_type_base` varchar(36) COLLATE utf8_unicode_ci NOT NULL COMMENT 'performance data for models',
  `language` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'The languages.language of this node.',
  `translation_of` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'The title of this node, always treated as non-markup plain text.',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `terms_cache` text COLLATE utf8_unicode_ci COMMENT 'serialized data for find performance',
  `roles_cache` text COLLATE utf8_unicode_ci COMMENT 'serialized data for find performance',
  `created_by` int(11) NOT NULL DEFAULT '0' COMMENT 'The users.id that owns this node. This is the user that created it.',
  `status` int(11) NOT NULL DEFAULT '1' COMMENT 'Boolean indicating whether the node is published (visible to non-administrators).',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp when the node was created.',
  `modified` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp when the node was most recently saved.',
  `modified_by` int(11) DEFAULT NULL,
  `comment` int(11) NOT NULL DEFAULT '0' COMMENT 'Whether comments are allowed on this node: 0 = no, 1 = closed (read only), 2 = open (read/write).',
  `comment_count` int(11) DEFAULT '0',
  `promote` int(11) NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether the node should be displayed on the front page.',
  `sticky` int(11) NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether the node should be displayed at the top of lists in which it appears.',
  `cache` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `params` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `node_type_id` (`node_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_nodes`
--

LOCK TABLES `qa_nodes` WRITE;
/*!40000 ALTER TABLE `qa_nodes` DISABLE KEYS */;
INSERT INTO `qa_nodes` VALUES (1,'page','node','',NULL,'Hooktags','','hooktags','','',1,1,1310424311,1310424311,1,0,0,0,0,'','a:1:{s:5:\"class\";s:0:\"\";}'),(2,'page','node','',NULL,'About','','about','','',1,1,1310424311,1310424311,1,0,1,0,0,'','a:1:{s:5:\"class\";s:0:\"\";}'),(3,'article',' node','',NULL,'My first article!','','my-first-article','1:announcements|9:cakephp-1|8:cms|7:quickapps','',1,1,1319979547,1319979547,1,2,1,1,0,'','a:1:{s:5:\"class\";s:0:\"\";}');
/*!40000 ALTER TABLE `qa_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_nodes_roles`
--

DROP TABLE IF EXISTS `qa_nodes_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_nodes_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(10) NOT NULL COMMENT 'The user’s role ID from roles.id.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_nodes_roles`
--

LOCK TABLES `qa_nodes_roles` WRITE;
/*!40000 ALTER TABLE `qa_nodes_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `qa_nodes_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_nodes_terms`
--

DROP TABLE IF EXISTS `qa_nodes_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_nodes_terms` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `node_id` int(20) NOT NULL DEFAULT '0',
  `term_id` int(20) NOT NULL DEFAULT '0',
  `field_id` int(11) NOT NULL DEFAULT '0' COMMENT 'field instance''s ID which creates this tag assoc.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_nodes_terms`
--

LOCK TABLES `qa_nodes_terms` WRITE;
/*!40000 ALTER TABLE `qa_nodes_terms` DISABLE KEYS */;
INSERT INTO `qa_nodes_terms` VALUES (13,3,1,4),(14,3,9,4),(15,3,8,4),(16,3,7,4);
/*!40000 ALTER TABLE `qa_nodes_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_roles`
--

DROP TABLE IF EXISTS `qa_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_roles`
--

LOCK TABLES `qa_roles` WRITE;
/*!40000 ALTER TABLE `qa_roles` DISABLE KEYS */;
INSERT INTO `qa_roles` VALUES (1,'administrator',1),(2,'authenticated user',2),(3,'anonymous user',3);
/*!40000 ALTER TABLE `qa_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_search_data`
--

DROP TABLE IF EXISTS `qa_search_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_search_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `foreignKey` bigint(20) NOT NULL COMMENT 'entity ID. e.g. node_id for Nodes',
  `field_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'field''s name from the `fields` table, NULL means `all fields` which holds the information of every field',
  `entity` varchar(30) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Type of item. e.g. Node, User, Comment, etc',
  `data` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'List of space-separated words from the item.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_search_data`
--

LOCK TABLES `qa_search_data` WRITE;
/*!40000 ALTER TABLE `qa_search_data` DISABLE KEYS */;
INSERT INTO `qa_search_data` VALUES (1,3,'field_article_category','Node','announcements cakephp1 cms quickapps'),(2,3,'field_article_introduction','Node','pellentesque habitant morbi tristique senectus netus malesuada fames turpis egestas vestibulum pulvinar placerat luctus vel arcu cras vulputate sed'),(3,3,'field_article_content','Node','integer augue neque mollis semper eget nec est donec eros justo ornare non sollicitudin viverra ligula cras quis nisl magna vivamus tortor lobortis sit amet vehicula sed porta vitae risus quisque elit fusce gravida sem nulla nibh ultricies vel massa ante metus auctor dignissim nullam lacus diam suscipit suspendisse ipsum lacinia rutrum vestibulum nunc scelerisque sagittis consectetur maecenas bibendum urna sodales molestie ultrices hendrerit dictum fringilla curabitur vulputate adipiscing euismod commodo tincidunt dolor convallis interdum velit venenatis arcu mattis cum sociis natoque penatibus magnis dis parturient montes nascetur ridiculus mus lorem duis faucibus odio enim mauris feugiat class aptent taciti sociosqu litora torquent per conubia nostra inceptos himenaeosaenean condimentum lectus porttitor volutpat pretium felis pulvinar sapien dapibus'),(4,3,NULL,'Node',' myfirstarticle first article announcements cakephp1 cms quickapps pellentesque habitant morbi tristique senectus netus malesuada fames turpis egestas vestibulum pulvinar placerat luctus vel arcu cras vulputate sed integer augue neque mollis semper eget nec est donec eros justo ornare non sollicitudin viverra ligula quis nisl magna vivamus tortor lobortis sit amet vehicula porta vitae risus quisque elit fusce gravida sem nulla nibh ultricies massa ante metus auctor dignissim nullam lacus diam suscipit suspendisse ipsum lacinia rutrum nunc scelerisque sagittis consectetur maecenas bibendum urna sodales molestie ultrices hendrerit dictum fringilla curabitur adipiscing euismod commodo tincidunt dolor convallis interdum velit venenatis mattis cum sociis natoque penatibus magnis dis parturient montes nascetur ridiculus mus lorem duis faucibus odio enim mauris feugiat class aptent taciti sociosqu litora torquent per conubia nostra inceptos himenaeosaenean condimentum lectus porttitor volutpat pretium felis sapien dapibus '),(5,1,'field_page_body','Node','content boxes contentbox type success maecenas pellentesque cursus auctor error nam sagittis nisl non turpis aliquam mollis suspendisse metus nisi sed vulputate arcu alert cras interdum leo quis pulvinar curabitur suscipit erat rhoncus morbi facilisis ligula ornare ultricies bubble fusce vitae gravida aenean aliquet venenatis posuere etiam ullamcorper purus buttons using hooktags you can easily create variety these all stem from single tag but vary color and size each which are adjustable parameters allowed strong big small black blue green lightblue orange pink purple red silver teal turquoise link url your button target open new window blank same self unset parameter table style width 478px height 25px tbody text'),(6,1,NULL,'Node',' hooktags content boxes contentbox type success maecenas pellentesque cursus auctor error nam sagittis nisl non turpis aliquam mollis suspendisse metus nisi sed vulputate arcu alert cras interdum leo quis pulvinar curabitur suscipit erat rhoncus morbi facilisis ligula ornare ultricies bubble fusce vitae gravida aenean aliquet venenatis posuere etiam ullamcorper purus buttons using you can easily create variety these all stem from single tag but vary color and size each which are adjustable parameters allowed strong big small black blue green lightblue orange pink purple red silver teal turquoise link url your button target open new window blank same self unset parameter table style width 478px height 25px tbody text '),(7,2,'field_page_body','Node','strong quickapps cms free open source released under gpl license and inspired most the popular powered cakephp mvc framework makes this perfect development platform robust application fully expandable capable manage virtually any website from very simplistic websites well complex web sites'),(8,2,NULL,'Node',' about strong quickapps cms free open source released under gpl license and inspired most the popular powered cakephp mvc framework makes this perfect development platform robust application fully expandable capable manage virtually any website from very simplistic websites well complex web sites ');
/*!40000 ALTER TABLE `qa_search_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_terms`
--

DROP TABLE IF EXISTS `qa_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_terms` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `vocabulary_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `modified` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT '0',
  `lft` int(11) NOT NULL,
  `rght` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_terms`
--

LOCK TABLES `qa_terms` WRITE;
/*!40000 ALTER TABLE `qa_terms` DISABLE KEYS */;
INSERT INTO `qa_terms` VALUES (1,1,'Announcements','announcements',NULL,1319979841,1319979841,NULL,1,6),(2,1,'PHP','php',NULL,1319979888,1319979888,NULL,7,8),(3,1,'cakePHP','cakephp',NULL,1319979899,1319979899,NULL,9,10),(4,1,'Next Events','next-events','',1319979929,1319979911,1,2,3),(5,1,'Past','past',NULL,1319979918,1319979918,1,4,5),(6,2,'my cool term','my-cool-term',NULL,1325701956,1325701910,0,13,14),(7,2,'quickapps','quickapps',NULL,1325701956,1325701927,0,1,2),(8,2,'cms','cms',NULL,1325701956,1325701930,0,3,4),(9,2,'cakephp','cakephp-1',NULL,1325701956,1325701934,0,5,6),(10,2,'php','php-1',NULL,1325701956,1325701943,0,7,8),(11,2,'drupal','drupal',NULL,1325701956,1325701946,0,9,10),(12,2,'wordpress','wordpress',NULL,1325701956,1325701951,0,11,12);
/*!40000 ALTER TABLE `qa_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_translations`
--

DROP TABLE IF EXISTS `qa_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `original` text COLLATE utf8_unicode_ci NOT NULL,
  `created` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `modified_by` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_translations`
--

LOCK TABLES `qa_translations` WRITE;
/*!40000 ALTER TABLE `qa_translations` DISABLE KEYS */;
INSERT INTO `qa_translations` VALUES (1,'Open Source CMS built on CakePHP 2.0',1319980605,1,1319980612,1);
/*!40000 ALTER TABLE `qa_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_users`
--

DROP TABLE IF EXISTS `qa_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public_email` tinyint(1) NOT NULL DEFAULT '0',
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'full url to avatar image file',
  `language` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timezone` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(4) NOT NULL DEFAULT '0',
  `created` int(11) NOT NULL,
  `modified` int(11) NOT NULL,
  `last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `password` (`password`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_users`
--

LOCK TABLES `qa_users` WRITE;
/*!40000 ALTER TABLE `qa_users` DISABLE KEYS */;
INSERT INTO `qa_users` VALUES (1,'admin','QuickApps','f6ab52454037ee501824bf30e2fb0544edb36c77','info@quickapps.es',0,'','','','4e46f0b7-bb50-4587-9217-14bc22b50a39',1,1313271991,1332174443,1332174443);
/*!40000 ALTER TABLE `qa_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_users_roles`
--

DROP TABLE IF EXISTS `qa_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_users_roles` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_users_roles`
--

LOCK TABLES `qa_users_roles` WRITE;
/*!40000 ALTER TABLE `qa_users_roles` DISABLE KEYS */;
INSERT INTO `qa_users_roles` VALUES (8,1,1);
/*!40000 ALTER TABLE `qa_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_variables`
--

DROP TABLE IF EXISTS `qa_variables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_variables` (
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_variables`
--

LOCK TABLES `qa_variables` WRITE;
/*!40000 ALTER TABLE `qa_variables` DISABLE KEYS */;
INSERT INTO `qa_variables` VALUES ('admin_theme','s:5:\"Admin\";'),('date_default_timezone','s:13:\"Europe/Madrid\";'),('default_language','s:3:\"eng\";'),('default_nodes_main','s:1:\"8\";'),('failed_login_limit','i:5;'),('rows_per_page','i:10;'),('site_description','s:0:\"\";'),('site_frontpage','s:0:\"\";'),('site_logo','s:8:\"logo.gif\";'),('site_mail','s:24:\"no-reply@your-domain.com\";'),('site_maintenance_message','s:177:\"We sincerely apologize for the inconvenience.<br/>Our site is currently undergoing scheduled maintenance and upgrades, but will return shortly.<br/>Thanks you for your patience.\";'),('site_name','s:17:\"My QuickApps Site\";'),('site_online','s:1:\"1\";'),('site_slogan','s:36:\"Open Source CMS built on CakePHP 2.0\";'),('site_theme','s:7:\"Default\";'),('user_default_avatar','s:32:\"/system/img/anonymous_avatar.jpg\";'),('user_mail_activation_body','s:246:\"[user_name],\r\n\r\nYour account at [site_name] has been activated.\r\n\r\nYou may now log in by clicking this link or copying and pasting it into your browser:\r\n\r\n[site_login_url]\r\n\r\nusername: [user_name]\r\npassword: Your password\r\n\r\n--  [site_name] team\";'),('user_mail_activation_notify','s:1:\"1\";'),('user_mail_activation_subject','s:57:\"Account details for [user_name] at [site_name] (approved)\";'),('user_mail_blocked_body','s:85:\"[user_name],\r\n\r\nYour account on [site_name] has been blocked.\r\n\r\n--  [site_name] team\";'),('user_mail_blocked_notify','s:1:\"1\";'),('user_mail_blocked_subject','s:56:\"Account details for [user_name] at [site_name] (blocked)\";'),('user_mail_canceled_body','s:86:\"[user_name],\r\n\r\nYour account on [site_name] has been canceled.\r\n\r\n--  [site_name] team\";'),('user_mail_canceled_notify','s:1:\"1\";'),('user_mail_canceled_subject','s:57:\"Account details for [user_name] at [site_name] (canceled)\";'),('user_mail_password_recovery_body','s:273:\"[user_name],\r\n\r\nA request to reset the password for your account has been made at [site_name].\r\nYou may now log in by clicking this link or copying and pasting it to your browser:\r\n\r\n[user_activation_url]\r\n\r\nAfter log in you can reset your password.\r\n\r\n--  [site_name] team\";'),('user_mail_password_recovery_subject','s:60:\"Replacement login information for [user_name] at [site_name]\";'),('user_mail_welcome_body','s:301:\"[user_name],\r\n\r\nThank you for registering at [site_name]. You may now activate your account by clicking this link or copying and pasting it to your browser:\r\n\r\n[user_activation_url]\r\n\r\nThis link can only be used once to log in.\r\n\r\nusername: [user_name]\r\npassword: Your password\r\n\r\n--  [site_name] team\";'),('user_mail_welcome_subject','s:46:\"Account details for [user_name] at [site_name]\";');
/*!40000 ALTER TABLE `qa_variables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qa_vocabularies`
--

DROP TABLE IF EXISTS `qa_vocabularies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `qa_vocabularies` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `modified` int(11) NOT NULL,
  `created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qa_vocabularies`
--

LOCK TABLES `qa_vocabularies` WRITE;
/*!40000 ALTER TABLE `qa_vocabularies` DISABLE KEYS */;
INSERT INTO `qa_vocabularies` VALUES (1,'Categories','categories','',0,0,1319979737,1319979737),(2,'Tags','tags','',0,0,1325701898,1325701898);
/*!40000 ALTER TABLE `qa_vocabularies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-14 22:32:22
