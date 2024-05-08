-- MySQL dump 10.13  Distrib 8.3.0, for Linux (x86_64)
--
-- Host: localhost    Database: demo2-goadmin
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `goadmin_menu`
--

DROP TABLE IF EXISTS `goadmin_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_menu` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `header` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plugin_name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `uuid` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_menu`
--

LOCK TABLES `goadmin_menu` WRITE;
/*!40000 ALTER TABLE `goadmin_menu` DISABLE KEYS */;
INSERT INTO `goadmin_menu` VALUES (1,0,1,2,'Admin','fa-tasks','',NULL,'',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,1,1,2,'Users','fa-users','/info/manager',NULL,'',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(3,1,1,3,'Roles','fa-user','/info/roles',NULL,'',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(4,1,1,4,'Permission','fa-ban','/info/permission',NULL,'',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(5,1,1,5,'Menu','fa-bars','/menu',NULL,'',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(6,1,1,6,'Operation log','fa-history','/info/op',NULL,'',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(7,0,1,1,'Dashboard','fa-bar-chart','/',NULL,'',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(9,1,0,2,'Mall','fa-bars','','','',NULL,'2024-05-05 08:44:53','2024-05-05 08:44:53'),(10,9,0,2,'Goods','fa-bars','/info/mall_goods','','',NULL,'2024-05-05 08:45:29','2024-05-05 16:46:26'),(11,9,0,2,'Good_Sku','fa-bars','/info/mall_goods_sku','','',NULL,'2024-05-05 08:45:59','2024-05-05 19:34:01');
/*!40000 ALTER TABLE `goadmin_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_operation_log`
--

DROP TABLE IF EXISTS `goadmin_operation_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_operation_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_operation_log`
--

LOCK TABLES `goadmin_operation_log` WRITE;
/*!40000 ALTER TABLE `goadmin_operation_log` DISABLE KEYS */;
INSERT INTO `goadmin_operation_log` VALUES (1,1,'/admin','GET','::1','','2024-04-26 03:09:56','2024-04-26 03:09:56'),(2,1,'/admin/info/manager','GET','::1','','2024-04-26 03:10:37','2024-04-26 03:10:37'),(3,1,'/admin/info/roles','GET','::1','','2024-04-26 03:10:38','2024-04-26 03:10:38'),(4,1,'/admin/info/permission','GET','::1','','2024-04-26 03:10:39','2024-04-26 03:10:39'),(5,1,'/admin/info/op','GET','::1','','2024-04-26 03:10:39','2024-04-26 03:10:39'),(6,1,'/admin/menu','GET','::1','','2024-04-26 03:10:40','2024-04-26 03:10:40'),(7,1,'/admin/info/permission','GET','::1','','2024-04-26 03:10:41','2024-04-26 03:10:41'),(8,1,'/admin','GET','::1','','2024-04-26 03:10:54','2024-04-26 03:10:54'),(9,1,'/admin/info/op','GET','::1','','2024-04-26 03:10:58','2024-04-26 03:10:58'),(10,1,'/admin/info/site/edit','GET','::1','','2024-04-26 03:11:00','2024-04-26 03:11:00'),(11,1,'/admin/plugins','GET','::1','','2024-04-26 03:11:03','2024-04-26 03:11:03'),(12,1,'/admin/plugins/store','GET','::1','','2024-04-26 03:11:05','2024-04-26 03:11:05'),(13,1,'/admin/menu','GET','::1','','2024-04-26 03:11:37','2024-04-26 03:11:37'),(14,1,'/admin/info/manager','GET','::1','','2024-04-26 03:11:38','2024-04-26 03:11:38'),(15,1,'/admin/info/roles','GET','::1','','2024-04-26 03:11:39','2024-04-26 03:11:39'),(16,1,'/admin/info/roles/edit','GET','::1','','2024-04-26 03:11:43','2024-04-26 03:11:43'),(17,1,'/admin/info/roles','GET','::1','','2024-04-26 03:11:48','2024-04-26 03:11:48'),(18,1,'/admin/info/generate/new','GET','::1','','2024-04-26 03:14:49','2024-04-26 03:14:49'),(19,1,'/admin/operation/_tool_choose_conn','POST','::1','','2024-04-26 03:14:59','2024-04-26 03:14:59'),(20,1,'/admin/operation/_tool_choose_table','POST','::1','','2024-04-26 03:15:02','2024-04-26 03:15:02'),(21,1,'/admin/info/generate/new','GET','::1','','2024-04-26 03:15:43','2024-04-26 03:15:43'),(22,1,'/admin/info/generate/new','GET','::1','','2024-04-26 03:19:53','2024-04-26 03:19:53'),(23,1,'/admin/operation/_tool_choose_conn','POST','::1','','2024-04-26 03:19:56','2024-04-26 03:19:56'),(24,1,'/admin/operation/_tool_choose_table','POST','::1','','2024-04-26 03:19:58','2024-04-26 03:19:58'),(25,1,'/admin/new/generate','POST','::1','{\"__checkbox__hide_back_button\":[\"on\"],\"__checkbox__hide_continue_edit_check_box\":[\"on\"],\"__checkbox__hide_continue_new_check_box\":[\"on\"],\"__checkbox__hide_delete_button\":[\"on\"],\"__checkbox__hide_detail_button\":[\"on\"],\"__checkbox__hide_edit_button\":[\"on\"],\"__checkbox__hide_export_button\":[\"on\"],\"__checkbox__hide_filter_area\":[\"on\"],\"__checkbox__hide_filter_button\":[\"on\"],\"__checkbox__hide_new_button\":[\"on\"],\"__checkbox__hide_pagination\":[\"on\"],\"__checkbox__hide_query_info\":[\"on\"],\"__checkbox__hide_reset_button\":[\"on\"],\"__checkbox__hide_row_selector\":[\"on\"],\"__go_admin_previous_\":[\"http://localhost:25543/admin/login\"],\"__go_admin_t_\":[\"4a1839df-55e9-4a14-9058-6843ec39bd9f\"],\"conn\":[\"default\"],\"detail_description\":[\"\"],\"detail_display\":[\"0\"],\"detail_title\":[\"\"],\"extra_code\":[\"\"],\"field_canadd\":[\"n\",\"y\",\"y\",\"y\",\"y\",\"y\",\"y\",\"y\"],\"field_canedit\":[\"y\",\"y\",\"y\",\"y\",\"y\",\"y\",\"y\",\"y\"],\"field_db_type\":[\"Int\",\"Varchar\",\"Tinyint\",\"Varchar\",\"Varchar\",\"Varchar\",\"Timestamp\",\"Timestamp\"],\"field_db_type_form\":[\"Int\",\"Varchar\",\"Tinyint\",\"Varchar\",\"Varchar\",\"Varchar\",\"Timestamp\",\"Timestamp\"],\"field_default\":[\"\",\"\",\"\",\"\",\"\",\"\",\"\",\"\"],\"field_display\":[\"\",\"\",\"\",\"\",\"\",\"\",\"1\",\"1\"],\"field_filterable\":[\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\"],\"field_form_type_form\":[\"Default\",\"Text\",\"Number\",\"Text\",\"Ip\",\"Text\",\"Datetime\",\"Datetime\"],\"field_head\":[\"Id\",\"Name\",\"Gender\",\"City\",\"Ip\",\"Phone\",\"Created_at\",\"Updated_at\"],\"field_head_form\":[\"Id\",\"Name\",\"Gender\",\"City\",\"Ip\",\"Phone\",\"Created_at\",\"Updated_at\"],\"field_hide\":[\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\"],\"field_name\":[\"id\",\"name\",\"gender\",\"city\",\"ip\",\"phone\",\"created_at\",\"updated_at\"],\"field_name_form\":[\"id\",\"name\",\"gender\",\"city\",\"ip\",\"phone\",\"created_at\",\"updated_at\"],\"field_sortable\":[\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\"],\"filter_form_layout\":[\"LayoutDefault\"],\"form_description\":[\"\"],\"form_title\":[\"\"],\"hide_back_button\":[\"n\"],\"hide_continue_edit_check_box\":[\"n\"],\"hide_continue_new_check_box\":[\"n\"],\"hide_delete_button\":[\"n\"],\"hide_detail_button\":[\"n\"],\"hide_edit_button\":[\"n\"],\"hide_export_button\":[\"n\"],\"hide_filter_area\":[\"n\"],\"hide_filter_button\":[\"n\"],\"hide_new_button\":[\"n\"],\"hide_pagination\":[\"n\"],\"hide_query_info\":[\"n\"],\"hide_reset_button\":[\"n\"],\"hide_row_selector\":[\"n\"],\"info_field_editable\":[\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\",\"n\"],\"package\":[\"tables\"],\"path\":[\"~/cyx/code/demo2-goadmin/tables\"],\"permission\":[\"n\"],\"pk\":[\"id\"],\"table\":[\"users\"],\"table_description\":[\"\"],\"table_title\":[\"\"]}','2024-04-26 03:21:26','2024-04-26 03:21:26'),(26,1,'/admin','GET','::1','','2024-04-26 03:29:47','2024-04-26 03:29:47'),(27,1,'/admin/info/manager','GET','::1','','2024-04-26 03:29:53','2024-04-26 03:29:53'),(28,1,'/admin/info/roles','GET','::1','','2024-04-26 03:29:54','2024-04-26 03:29:54'),(29,1,'/admin/info/permission','GET','::1','','2024-04-26 03:29:54','2024-04-26 03:29:54'),(30,1,'/admin/menu','GET','::1','','2024-04-26 03:29:55','2024-04-26 03:29:55'),(31,1,'/admin/info/op','GET','::1','','2024-04-26 03:29:55','2024-04-26 03:29:55'),(32,1,'/admin/menu','GET','::1','','2024-04-26 03:29:56','2024-04-26 03:29:56'),(33,1,'/admin/info/manager','GET','::1','','2024-04-26 03:30:33','2024-04-26 03:30:33'),(34,1,'/admin/menu','GET','::1','','2024-04-26 03:30:37','2024-04-26 03:30:37'),(35,1,'/admin/menu/new','GET','::1','','2024-04-26 03:40:04','2024-04-26 03:40:04'),(36,1,'/admin/menu','GET','::1','','2024-04-26 03:40:10','2024-04-26 03:40:10'),(37,1,'/admin/menu/new','POST','::1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"2a5cf2d9-c5ee-4c56-97ee-1d8528732370\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"1\"],\"plugin_name\":[\"\"],\"roles[]\":[\"1\"],\"title\":[\"Users\"],\"uri\":[\"users\"]}','2024-04-26 03:40:24','2024-04-26 03:40:24'),(38,1,'/admin/menu','GET','::1','','2024-04-26 03:40:29','2024-04-26 03:40:29'),(39,1,'/admin/menu','GET','::1','','2024-04-26 03:40:31','2024-04-26 03:40:31'),(40,1,'/admin/menu/edit/show','GET','::1','','2024-04-26 03:40:38','2024-04-26 03:40:38'),(41,1,'/admin/menu/edit','POST','::1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"995b1e06-2c99-4ccf-8bb3-b11728a71e7e\"],\"created_at\":[\"2024-04-26 03:40:24\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"8\"],\"parent_id\":[\"1\"],\"plugin_name\":[\"\"],\"roles[]\":[\"1\",\"2\"],\"title\":[\"Users\"],\"updated_at\":[\"2024-04-26 03:40:24\"],\"uri\":[\"/users\"]}','2024-04-26 03:40:44','2024-04-26 03:40:44'),(42,1,'/admin/menu','GET','::1','','2024-04-26 03:40:49','2024-04-26 03:40:49'),(43,1,'/admin/menu/edit/show','GET','::1','','2024-04-26 03:41:06','2024-04-26 03:41:06'),(44,1,'/admin/menu/edit','POST','::1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"52f075e2-f375-44ac-afde-23c917ee5bd0\"],\"created_at\":[\"2024-04-26 03:40:24\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"8\"],\"parent_id\":[\"1\"],\"plugin_name\":[\"\"],\"roles[]\":[\"1\",\"2\"],\"title\":[\"Users\"],\"updated_at\":[\"2024-04-26 11:40:44\"],\"uri\":[\"/info/users\"]}','2024-04-26 03:41:12','2024-04-26 03:41:12'),(45,1,'/admin/menu','GET','::1','','2024-04-26 03:41:14','2024-04-26 03:41:14'),(46,1,'/admin/info/users','GET','::1','','2024-04-26 03:41:16','2024-04-26 03:41:16'),(47,1,'/admin/info/manager','GET','::1','','2024-04-26 03:41:58','2024-04-26 03:41:58'),(48,1,'/admin/info/users','GET','::1','','2024-04-26 03:41:59','2024-04-26 03:41:59'),(49,1,'/admin/info/permission','GET','::1','','2024-04-26 03:41:59','2024-04-26 03:41:59'),(50,1,'/admin/info/roles','GET','::1','','2024-04-26 03:42:00','2024-04-26 03:42:00'),(51,1,'/admin/info/permission','GET','::1','','2024-04-26 03:42:01','2024-04-26 03:42:01'),(52,1,'/admin/menu','GET','::1','','2024-04-26 03:42:01','2024-04-26 03:42:01'),(53,1,'/admin/info/users','GET','::1','','2024-04-26 03:42:01','2024-04-26 03:42:01'),(54,1,'/admin/info/users','GET','::1','','2024-04-26 03:43:28','2024-04-26 03:43:28'),(55,1,'/admin/info/users','GET','::1','','2024-04-26 04:05:23','2024-04-26 04:05:23'),(56,1,'/admin/info/op','GET','::1','','2024-04-26 04:05:31','2024-04-26 04:05:31'),(57,1,'/admin/menu','GET','::1','','2024-04-26 04:05:35','2024-04-26 04:05:35'),(58,1,'/admin/info/permission','GET','::1','','2024-04-26 04:05:36','2024-04-26 04:05:36'),(59,1,'/admin/info/users','GET','::1','','2024-04-26 04:05:37','2024-04-26 04:05:37'),(60,1,'/admin/info/users/new','GET','::1','','2024-04-26 04:05:39','2024-04-26 04:05:39'),(61,1,'/admin','GET','::1','','2024-04-26 04:06:14','2024-04-26 04:06:14'),(62,1,'/admin/info/users','GET','::1','','2024-04-26 04:07:16','2024-04-26 04:07:16'),(63,1,'/admin/info/users/new','GET','::1','','2024-04-26 04:07:19','2024-04-26 04:07:19'),(64,1,'/admin/new/users','POST','::1','{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"8a14e7af-620e-4ab0-8731-ac3c58d72cca\"],\"city\":[\"广东\"],\"gender\":[\"1\"],\"id\":[\"\"],\"ip\":[\"1.1.1.1\"],\"name\":[\"user1\"],\"phone\":[\"\"]}','2024-04-26 04:08:12','2024-04-26 04:08:12'),(65,1,'/admin/info/users/edit','GET','::1','','2024-04-26 04:08:20','2024-04-26 04:08:20'),(66,1,'/admin/edit/users','POST','::1','{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"5f5bc162-7d50-4ae7-a62d-21f57429a199\"],\"city\":[\"广东\"],\"created_at\":[\"2024-04-26 04:08:12\"],\"gender\":[\"1\"],\"id\":[\"1\"],\"ip\":[\"1.1.1.1\"],\"name\":[\"user1\"],\"phone\":[\"1111111111\"],\"updated_at\":[\"\"]}','2024-04-26 04:08:36','2024-04-26 04:08:36'),(67,1,'/admin/edit/users','POST','::1','{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"7a9b1c65-7c3f-4b61-88d5-17ca39340d75\"],\"city\":[\"广东\"],\"created_at\":[\"2024-04-26 04:08:12\"],\"gender\":[\"1\"],\"id\":[\"1\"],\"ip\":[\"1.1.1.1\"],\"name\":[\"user1\"],\"phone\":[\"1111111111\"],\"updated_at\":[\"2024-04-26 00:00:00\"]}','2024-04-26 04:08:48','2024-04-26 04:08:48'),(68,1,'/admin/info/users','GET','::1','','2024-04-26 04:12:28','2024-04-26 04:12:28'),(69,1,'/admin/info/manager','GET','::1','','2024-04-26 04:12:29','2024-04-26 04:12:29'),(70,1,'/admin/info/users','GET','::1','','2024-04-26 04:12:30','2024-04-26 04:12:30'),(71,1,'/admin/info/manager','GET','::1','','2024-04-26 04:12:32','2024-04-26 04:12:32'),(72,1,'/admin/info/users','GET','::1','','2024-04-26 04:12:33','2024-04-26 04:12:33'),(73,1,'/admin/info/roles','GET','::1','','2024-04-26 04:12:33','2024-04-26 04:12:33'),(74,1,'/admin/info/permission','GET','::1','','2024-04-26 04:12:34','2024-04-26 04:12:34'),(75,1,'/admin/info/permission','GET','::1','','2024-04-26 04:12:34','2024-04-26 04:12:34'),(76,1,'/admin/menu','GET','::1','','2024-04-26 04:12:35','2024-04-26 04:12:35'),(77,1,'/admin/info/roles','GET','::1','','2024-04-26 04:12:35','2024-04-26 04:12:35'),(78,1,'/admin/info/users','GET','::1','','2024-04-26 04:12:36','2024-04-26 04:12:36'),(79,1,'/admin/info/permission','GET','::1','','2024-04-26 04:12:39','2024-04-26 04:12:39'),(80,1,'/admin/info/roles','GET','::1','','2024-04-26 04:13:33','2024-04-26 04:13:33'),(81,1,'/admin/info/users','GET','::1','','2024-04-26 04:13:34','2024-04-26 04:13:34'),(82,1,'/admin/info/roles','GET','::1','','2024-04-26 04:13:35','2024-04-26 04:13:35'),(83,1,'/admin/info/permission','GET','::1','','2024-04-26 04:13:37','2024-04-26 04:13:37'),(84,1,'/admin/info/permission/edit','GET','::1','','2024-04-26 04:13:42','2024-04-26 04:13:42'),(85,1,'/admin/info/permission','GET','::1','','2024-04-26 04:13:48','2024-04-26 04:13:48'),(86,1,'/admin/info/roles','GET','::1','','2024-04-26 04:15:54','2024-04-26 04:15:54'),(87,1,'/admin/info/roles','GET','::1','','2024-04-26 04:16:00','2024-04-26 04:16:00'),(88,1,'/admin/info/users','GET','::1','','2024-04-26 04:16:01','2024-04-26 04:16:01'),(89,1,'/admin/info/users','GET','::1','','2024-04-26 04:16:04','2024-04-26 04:16:04'),(90,1,'/admin/info/users','GET','::1','','2024-04-26 04:16:06','2024-04-26 04:16:06'),(91,1,'/admin/info/users','GET','::1','','2024-04-26 04:16:06','2024-04-26 04:16:06'),(92,1,'/admin/info/users','GET','::1','','2024-04-26 04:16:07','2024-04-26 04:16:07'),(93,1,'/admin/info/users/detail','GET','::1','','2024-04-26 04:16:10','2024-04-26 04:16:10'),(94,1,'/admin/info/users','GET','::1','','2024-04-26 04:16:14','2024-04-26 04:16:14'),(95,1,'/admin/info/manager','GET','::1','','2024-04-26 04:17:15','2024-04-26 04:17:15'),(96,1,'/admin/info/manager/edit','GET','::1','','2024-04-26 04:21:12','2024-04-26 04:21:12'),(97,1,'/admin/info/manager','GET','::1','','2024-04-26 04:21:19','2024-04-26 04:21:19'),(98,1,'/admin/info/users','GET','::1','','2024-04-26 04:21:20','2024-04-26 04:21:20'),(99,1,'/admin/info/users/edit','GET','::1','','2024-04-26 04:21:23','2024-04-26 04:21:23'),(100,1,'/admin/info/users','GET','::1','','2024-04-26 04:21:24','2024-04-26 04:21:24'),(101,1,'/admin/info/users','GET','::1','','2024-04-26 04:22:59','2024-04-26 04:22:59'),(102,1,'/admin/info/users/edit','GET','::1','','2024-04-26 04:23:01','2024-04-26 04:23:01'),(103,1,'/admin/info/users/edit','GET','::1','','2024-04-26 04:23:33','2024-04-26 04:23:33'),(104,1,'/admin/info/users/edit','GET','::1','','2024-04-26 04:24:03','2024-04-26 04:24:03'),(105,1,'/admin/edit/users','POST','::1','{\"__go_admin_previous_\":[\"http://localhost:25543/admin/menu\"],\"__go_admin_t_\":[\"0c9b3957-2f60-4e98-a8c0-51474c07f0fe\"],\"city\":[\"广东\"],\"created_at\":[\"2024-04-26 04:08:12\"],\"gender\":[\"0\"],\"id\":[\"1\"],\"ip\":[\"1.1.1.1\"],\"name\":[\"user1\"],\"phone\":[\"1111111111\"],\"updated_at\":[\"2024-04-26 00:00:00\"]}','2024-04-26 04:24:11','2024-04-26 04:24:11'),(106,1,'/admin/menu','GET','::1','','2024-04-26 04:24:11','2024-04-26 04:24:11'),(107,1,'/admin/info/users','GET','::1','','2024-04-26 04:24:14','2024-04-26 04:24:14'),(108,1,'/admin/info/users/edit','GET','::1','','2024-04-26 04:24:26','2024-04-26 04:24:26'),(109,1,'/admin/edit/users','POST','::1','{\"__go_admin_previous_\":[\"/admin/info/users?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"00936c97-e5d2-4c44-9a5a-c601bd11de56\"],\"city\":[\"广东\"],\"created_at\":[\"2024-04-26 04:08:12\"],\"gender\":[\"1\"],\"id\":[\"1\"],\"ip\":[\"1.1.1.1\"],\"name\":[\"user1\"],\"phone\":[\"1111111111\"],\"updated_at\":[\"2024-04-26 00:00:00\"]}','2024-04-26 04:24:28','2024-04-26 04:24:28'),(110,1,'/admin/menu','GET','::1','','2024-04-26 04:25:50','2024-04-26 04:25:50'),(111,1,'/admin','GET','127.0.0.1','','2024-05-05 04:07:13','2024-05-05 04:07:13'),(112,1,'/admin/info/users','GET','127.0.0.1','','2024-05-05 04:07:20','2024-05-05 04:07:20'),(113,1,'/admin/info/manager','GET','127.0.0.1','','2024-05-05 04:07:21','2024-05-05 04:07:21'),(114,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 04:07:24','2024-05-05 04:07:24'),(115,1,'/admin/menu/edit/show','GET','127.0.0.1','','2024-05-05 04:07:46','2024-05-05 04:07:46'),(116,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 04:08:00','2024-05-05 04:08:00'),(117,1,'/admin','GET','127.0.0.1','','2024-05-05 08:44:34','2024-05-05 08:44:34'),(118,1,'/admin/info/users','GET','127.0.0.1','','2024-05-05 08:44:36','2024-05-05 08:44:36'),(119,1,'/admin/info/manager','GET','127.0.0.1','','2024-05-05 08:44:37','2024-05-05 08:44:37'),(120,1,'/admin/info/permission','GET','127.0.0.1','','2024-05-05 08:44:38','2024-05-05 08:44:38'),(121,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 08:44:39','2024-05-05 08:44:39'),(122,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"77dec5f4-04c2-4ec0-97df-9390c87227b3\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"1\"],\"plugin_name\":[\"\"],\"title\":[\"Mall\"],\"uri\":[\"\"]}','2024-05-05 08:44:53','2024-05-05 08:44:53'),(123,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"b389824b-25aa-4149-a41b-e2e13337674c\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"9\"],\"plugin_name\":[\"\"],\"title\":[\"Goods\"],\"uri\":[\"/admin/info/mall_goods\"]}','2024-05-05 08:45:29','2024-05-05 08:45:29'),(124,1,'/admin/menu/new','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"3417496d-7cf3-49a6-833f-c6cebcf5c89c\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"parent_id\":[\"9\"],\"plugin_name\":[\"\"],\"title\":[\"Good_Sku\"],\"uri\":[\"/admin/info/mall_goods\"]}','2024-05-05 08:45:59','2024-05-05 08:45:59'),(125,1,'/admin/menu/delete','POST','127.0.0.1','','2024-05-05 08:46:03','2024-05-05 08:46:03'),(126,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 08:46:03','2024-05-05 08:46:03'),(127,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 08:46:06','2024-05-05 08:46:06'),(128,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 08:46:08','2024-05-05 08:46:08'),(129,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 08:46:11','2024-05-05 08:46:11'),(130,1,'/admin/menu/edit/show','GET','127.0.0.1','','2024-05-05 08:46:19','2024-05-05 08:46:19'),(131,1,'/admin/menu/edit','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"303a2212-0b79-42bb-a86d-54c98975404e\"],\"created_at\":[\"2024-05-05 08:45:29\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"10\"],\"parent_id\":[\"9\"],\"plugin_name\":[\"\"],\"title\":[\"Goods\"],\"updated_at\":[\"2024-05-05 08:45:29\"],\"uri\":[\"/info/mall_goods\"]}','2024-05-05 08:46:26','2024-05-05 08:46:26'),(132,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 08:46:33','2024-05-05 08:46:33'),(133,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 08:46:35','2024-05-05 08:46:35'),(134,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 08:46:37','2024-05-05 08:46:37'),(135,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 08:46:40','2024-05-05 08:46:40'),(136,1,'/admin/menu/edit/show','GET','127.0.0.1','','2024-05-05 08:46:45','2024-05-05 08:46:45'),(137,1,'/admin/menu/edit','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"e93a76a3-854d-4b5c-b67f-04b576f373ce\"],\"created_at\":[\"2024-05-05 08:45:59\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"11\"],\"parent_id\":[\"9\"],\"plugin_name\":[\"\"],\"title\":[\"Good_Sku\"],\"updated_at\":[\"2024-05-05 08:45:59\"],\"uri\":[\"/info/mall_goods\"]}','2024-05-05 08:46:49','2024-05-05 08:46:49'),(138,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 08:46:52','2024-05-05 08:46:52'),(139,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 08:46:57','2024-05-05 08:46:57'),(140,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 08:46:58','2024-05-05 08:46:58'),(141,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 08:47:00','2024-05-05 08:47:00'),(142,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 08:47:01','2024-05-05 08:47:01'),(143,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 08:47:02','2024-05-05 08:47:02'),(144,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 08:51:10','2024-05-05 08:51:10'),(145,1,'/admin/info/mall_goods/new','GET','127.0.0.1','','2024-05-05 08:51:15','2024-05-05 08:51:15'),(146,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 08:51:21','2024-05-05 08:51:21'),(147,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:04:00','2024-05-05 09:04:00'),(148,1,'/admin/info/mall_goods/new','GET','127.0.0.1','','2024-05-05 09:04:02','2024-05-05 09:04:02'),(149,1,'/admin/info/mall_goods/new','GET','127.0.0.1','','2024-05-05 09:05:57','2024-05-05 09:05:57'),(150,1,'/admin/info/mall_goods/new','GET','127.0.0.1','','2024-05-05 09:08:52','2024-05-05 09:08:52'),(151,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:09:21','2024-05-05 09:09:21'),(152,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:09:23','2024-05-05 09:09:23'),(153,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:09:24','2024-05-05 09:09:24'),(154,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:09:24','2024-05-05 09:09:24'),(155,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:09:25','2024-05-05 09:09:25'),(156,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:09:27','2024-05-05 09:09:27'),(157,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:09:27','2024-05-05 09:09:27'),(158,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:09:27','2024-05-05 09:09:27'),(159,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:16:42','2024-05-05 09:16:42'),(160,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:16:44','2024-05-05 09:16:44'),(161,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:16:44','2024-05-05 09:16:44'),(162,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:16:45','2024-05-05 09:16:45'),(163,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:16:46','2024-05-05 09:16:46'),(164,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:16:46','2024-05-05 09:16:46'),(165,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:16:47','2024-05-05 09:16:47'),(166,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:16:48','2024-05-05 09:16:48'),(167,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:16:49','2024-05-05 09:16:49'),(168,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:19:23','2024-05-05 09:19:23'),(169,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 09:19:25','2024-05-05 09:19:25'),(170,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 09:28:56','2024-05-05 09:28:56'),(171,1,'/admin/info/op','GET','127.0.0.1','','2024-05-05 09:29:08','2024-05-05 09:29:08'),(172,1,'/admin/info/op','GET','127.0.0.1','','2024-05-05 11:23:22','2024-05-05 11:23:22'),(173,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:23:25','2024-05-05 11:23:25'),(174,1,'/admin/info/mall_goods/new','GET','127.0.0.1','','2024-05-05 11:23:28','2024-05-05 11:23:28'),(175,1,'/admin/new/mall_goods','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/info/mall_goods?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"302f8c61-1481-496c-9ec0-df47f1a6e925\"],\"big_image\":[\"https://static.zixiaoyun.com/i/2023/05/19/1ebrd2.jpg\"],\"cost_price\":[\"100\"],\"created_at\":[\"2024-05-05 00:00:00\"],\"id\":[\"\"],\"is_index_recommend\":[\"1\"],\"keyword\":[\"测试，商品\"],\"mall_goods_sku_id\":[\"\"],\"price\":[\"100\"],\"title\":[\"测试商品1\"],\"updated_at\":[\"2024-05-05 00:00:00\"]}','2024-05-05 11:24:48','2024-05-05 11:24:48'),(176,1,'/admin/info/mall_goods/new','GET','127.0.0.1','','2024-05-05 11:26:32','2024-05-05 11:26:32'),(177,1,'/admin/new/mall_goods','POST','127.0.0.1','{\"__go_admin_previous_\":[\"http://localhost:25543/admin/login?ref=http%3A%2F%2Flocalhost%3A25543%2Fadmin%2Finfo%2Fop\"],\"__go_admin_t_\":[\"fabd2f88-39b9-4be0-99d7-09c6d6a0126c\"],\"big_image\":[\"https://static.zixiaoyun.com/i/2023/05/19/1ebrd2.jpg\"],\"cost_price\":[\"100\"],\"created_at\":[\"2024-05-05 00:00:00\"],\"id\":[\"\"],\"is_index_recommend\":[\"1\"],\"keyword\":[\"测试，商品\"],\"mall_goods_sku_id\":[\"\"],\"price\":[\"100\"],\"title\":[\"测试商品1\"],\"updated_at\":[\"2024-05-05 00:00:00\"]}','2024-05-05 11:26:53','2024-05-05 11:26:53'),(178,1,'/admin/info/mall_goods/new','GET','127.0.0.1','','2024-05-05 11:31:10','2024-05-05 11:31:10'),(179,1,'/admin/info/mall_goods/new','GET','127.0.0.1','','2024-05-05 11:31:41','2024-05-05 11:31:41'),(180,1,'/admin/new/mall_goods','POST','127.0.0.1','{\"__go_admin_previous_\":[\"http://localhost:25543/admin/login?ref=http%3A%2F%2Flocalhost%3A25543%2Fadmin%2Finfo%2Fop\"],\"__go_admin_t_\":[\"d3c67108-5420-40c7-a0fd-cee610e22239\"],\"big_image\":[\"https://static.zixiaoyun.com/i/2023/05/19/1ebrd2.jpg\"],\"cost_price\":[\"100\"],\"created_at\":[\"2024-05-05 00:00:00\"],\"id\":[\"\"],\"is_index_recommend\":[\"1\"],\"keyword\":[\"测试，商品\"],\"price\":[\"100\"],\"title\":[\"测试商品1\"],\"updated_at\":[\"2024-05-05 00:00:00\"]}','2024-05-05 11:32:41','2024-05-05 11:32:41'),(181,1,'/admin/info/op','GET','127.0.0.1','','2024-05-05 11:32:43','2024-05-05 11:32:43'),(182,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:32:47','2024-05-05 11:32:47'),(183,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:32:58','2024-05-05 11:32:58'),(184,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:00','2024-05-05 11:33:00'),(185,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:01','2024-05-05 11:33:01'),(186,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:02','2024-05-05 11:33:02'),(187,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:03','2024-05-05 11:33:03'),(188,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:03','2024-05-05 11:33:03'),(189,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:04','2024-05-05 11:33:04'),(190,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:04','2024-05-05 11:33:04'),(191,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:05','2024-05-05 11:33:05'),(192,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:06','2024-05-05 11:33:06'),(193,1,'/admin/info/mall_goods/edit','GET','127.0.0.1','','2024-05-05 11:33:12','2024-05-05 11:33:12'),(194,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:20','2024-05-05 11:33:20'),(195,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:22','2024-05-05 11:33:22'),(196,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:22','2024-05-05 11:33:22'),(197,1,'/admin/info/mall_goods/new','GET','127.0.0.1','','2024-05-05 11:33:40','2024-05-05 11:33:40'),(198,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:43','2024-05-05 11:33:43'),(199,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:44','2024-05-05 11:33:44'),(200,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:44','2024-05-05 11:33:44'),(201,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:45','2024-05-05 11:33:45'),(202,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:33:45','2024-05-05 11:33:45'),(203,1,'/admin/info/permission','GET','127.0.0.1','','2024-05-05 11:33:46','2024-05-05 11:33:46'),(204,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 11:33:47','2024-05-05 11:33:47'),(205,1,'/admin/menu/edit/show','GET','127.0.0.1','','2024-05-05 11:33:51','2024-05-05 11:33:51'),(206,1,'/admin/menu/edit','POST','127.0.0.1','{\"__go_admin_previous_\":[\"/admin/menu\"],\"__go_admin_t_\":[\"5c18392b-fb11-421a-8f6c-fe3b663b2427\"],\"created_at\":[\"2024-05-05 08:45:59\"],\"header\":[\"\"],\"icon\":[\"fa-bars\"],\"id\":[\"11\"],\"parent_id\":[\"9\"],\"plugin_name\":[\"\"],\"title\":[\"Good_Sku\"],\"updated_at\":[\"2024-05-05 16:46:49\"],\"uri\":[\"/info/mall_goods_sku\"]}','2024-05-05 11:34:01','2024-05-05 11:34:01'),(207,1,'/admin/menu','GET','127.0.0.1','','2024-05-05 11:34:03','2024-05-05 11:34:03'),(208,1,'/admin/info/mall_goods_sku','GET','127.0.0.1','','2024-05-05 11:34:05','2024-05-05 11:34:05'),(209,1,'/admin/info/mall_goods_sku/new','GET','127.0.0.1','','2024-05-05 11:34:07','2024-05-05 11:34:07'),(210,1,'/admin/info/mall_goods_sku/new','GET','127.0.0.1','','2024-05-05 11:35:22','2024-05-05 11:35:22'),(211,1,'/admin/info/mall_goods_sku','GET','127.0.0.1','','2024-05-05 11:35:25','2024-05-05 11:35:25'),(212,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:35:26','2024-05-05 11:35:26'),(213,1,'/admin/info/mall_goods_sku','GET','127.0.0.1','','2024-05-05 11:35:27','2024-05-05 11:35:27'),(214,1,'/admin/info/mall_goods_sku/new','GET','127.0.0.1','','2024-05-05 11:35:28','2024-05-05 11:35:28'),(215,1,'/admin/new/mall_goods_sku','POST','127.0.0.1','{\"__go_admin_post_result\":[\"\"],\"__go_admin_post_type\":[\"1\"],\"__go_admin_previous_\":[\"/admin/info/mall_goods_sku?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"dcf4f757-148d-44aa-8882-63b51dbfabe0\"],\"cost_price\":[\"100\"],\"created_at\":[\"2024-05-05 00:00:00\"],\"id\":[\"1\"],\"mall_goods_id\":[\"1\"],\"price\":[\"100\"],\"spec\":[\"测试商品1sku1\"],\"status\":[\"1\"],\"stock\":[\"5\"],\"updated_at\":[\"2024-05-05 00:00:00\"]}','2024-05-05 11:35:58','2024-05-05 11:35:58'),(216,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:38:15','2024-05-05 11:38:15'),(217,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:38:19','2024-05-05 11:38:19'),(218,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:44:51','2024-05-05 11:44:51'),(219,1,'/admin/info/mall_goods/detail','GET','127.0.0.1','','2024-05-05 11:45:03','2024-05-05 11:45:03'),(220,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:46:42','2024-05-05 11:46:42'),(221,1,'/admin/info/mall_goods/edit','GET','127.0.0.1','','2024-05-05 11:46:49','2024-05-05 11:46:49'),(222,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:46:55','2024-05-05 11:46:55'),(223,1,'/admin/info/mall_goods/edit','GET','127.0.0.1','','2024-05-05 11:46:59','2024-05-05 11:46:59'),(224,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:47:00','2024-05-05 11:47:00'),(225,1,'/admin/info/mall_goods_sku','GET','127.0.0.1','','2024-05-05 11:47:01','2024-05-05 11:47:01'),(226,1,'/admin/info/mall_goods_sku','GET','127.0.0.1','','2024-05-05 11:47:39','2024-05-05 11:47:39'),(227,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:51:42','2024-05-05 11:51:42'),(228,1,'/admin/info/mall_goods_sku','GET','127.0.0.1','','2024-05-05 11:51:56','2024-05-05 11:51:56'),(229,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-05 11:51:57','2024-05-05 11:51:57'),(230,1,'/admin/info/mall_goods_sku','GET','127.0.0.1','','2024-05-05 11:52:10','2024-05-05 11:52:10'),(231,1,'/admin/info/mall_goods_sku','GET','127.0.0.1','','2024-05-05 11:52:34','2024-05-05 11:52:34'),(232,1,'/admin/info/mall_goods_sku','GET','127.0.0.1','','2024-05-05 11:52:39','2024-05-05 11:52:39'),(233,1,'/admin/info/op','GET','127.0.0.1','','2024-05-06 01:26:50','2024-05-06 01:26:50'),(234,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:26:51','2024-05-06 01:26:51'),(235,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:26:52','2024-05-06 01:26:52'),(236,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:26:54','2024-05-06 01:26:54'),(237,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:27:15','2024-05-06 01:27:15'),(238,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:27:17','2024-05-06 01:27:17'),(239,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:27:47','2024-05-06 01:27:47'),(240,1,'/admin/info/mall_goods_sku','GET','127.0.0.1','','2024-05-06 01:28:33','2024-05-06 01:28:33'),(241,1,'/admin/info/mall_goods_sku/new','GET','127.0.0.1','','2024-05-06 01:28:35','2024-05-06 01:28:35'),(242,1,'/admin/new/mall_goods_sku','POST','127.0.0.1','{\"__go_admin_post_result\":[\"\"],\"__go_admin_post_type\":[\"1\"],\"__go_admin_previous_\":[\"/admin/info/mall_goods_sku?__page=1\\u0026__pageSize=10\\u0026__sort=id\\u0026__sort_type=desc\"],\"__go_admin_t_\":[\"57f259a0-7766-4a8c-98b9-cd1237f1d77f\"],\"cost_price\":[\"50\"],\"created_at\":[\"2024-05-06 00:00:00\"],\"id\":[\"2\"],\"mall_goods_id\":[\"1\"],\"price\":[\"50\"],\"spec\":[\"测试商品1sku2\"],\"status\":[\"1\"],\"stock\":[\"7\"],\"updated_at\":[\"2024-05-06 00:00:00\"]}','2024-05-06 01:28:55','2024-05-06 01:28:55'),(243,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:29:06','2024-05-06 01:29:06'),(244,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:29:18','2024-05-06 01:29:18'),(245,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:29:20','2024-05-06 01:29:20'),(246,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:30:08','2024-05-06 01:30:08'),(247,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:31:14','2024-05-06 01:31:14'),(248,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:31:51','2024-05-06 01:31:51'),(249,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:32:35','2024-05-06 01:32:35'),(250,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:32:59','2024-05-06 01:32:59'),(251,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:35:11','2024-05-06 01:35:11'),(252,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:36:29','2024-05-06 01:36:29'),(253,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:36:35','2024-05-06 01:36:35'),(254,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:38:17','2024-05-06 01:38:17'),(255,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:40:34','2024-05-06 01:40:34'),(256,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:42:20','2024-05-06 01:42:20'),(257,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:42:47','2024-05-06 01:42:47'),(258,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-06 01:43:57','2024-05-06 01:43:57'),(259,1,'/admin','GET','127.0.0.1','','2024-05-08 02:47:39','2024-05-08 02:47:39'),(260,1,'/admin/info/mall_goods','GET','127.0.0.1','','2024-05-08 02:47:43','2024-05-08 02:47:43'),(261,1,'/admin/info/mall_goods/edit','GET','127.0.0.1','','2024-05-08 02:55:04','2024-05-08 02:55:04');
/*!40000 ALTER TABLE `goadmin_operation_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_permissions`
--

DROP TABLE IF EXISTS `goadmin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_permissions`
--

LOCK TABLES `goadmin_permissions` WRITE;
/*!40000 ALTER TABLE `goadmin_permissions` DISABLE KEYS */;
INSERT INTO `goadmin_permissions` VALUES (1,'All permission','*','','*','2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,'Dashboard','dashboard','GET,PUT,POST,DELETE','/','2019-09-10 00:00:00','2019-09-10 00:00:00'),(3,'users Query','users_query','GET','/info/users','2024-04-26 03:35:20','2024-04-26 03:35:20'),(4,'users Show Edit Form Page','users_show_edit','GET','/info/users/edit','2024-04-26 03:35:20','2024-04-26 03:35:20'),(5,'users Show Create Form Page','users_show_create','GET','/info/users/new','2024-04-26 03:35:20','2024-04-26 03:35:20'),(6,'users Edit','users_edit','POST','/edit/users','2024-04-26 03:35:20','2024-04-26 03:35:20'),(7,'users Create','users_create','POST','/new/users','2024-04-26 03:35:20','2024-04-26 03:35:20'),(8,'users Delete','users_delete','POST','/delete/users','2024-04-26 03:35:20','2024-04-26 03:35:20'),(9,'users Export','users_export','POST','/export/users','2024-04-26 03:35:20','2024-04-26 03:35:20'),(10,'mall_goods Query','mall_goods_query','GET','/info/mall_goods','2024-05-05 08:40:45','2024-05-05 08:40:45'),(11,'mall_goods Show Edit Form Page','mall_goods_show_edit','GET','/info/mall_goods/edit','2024-05-05 08:40:45','2024-05-05 08:40:45'),(12,'mall_goods Show Create Form Page','mall_goods_show_create','GET','/info/mall_goods/new','2024-05-05 08:40:45','2024-05-05 08:40:45'),(13,'mall_goods Edit','mall_goods_edit','POST','/edit/mall_goods','2024-05-05 08:40:45','2024-05-05 08:40:45'),(14,'mall_goods Create','mall_goods_create','POST','/new/mall_goods','2024-05-05 08:40:45','2024-05-05 08:40:45'),(15,'mall_goods Delete','mall_goods_delete','POST','/delete/mall_goods','2024-05-05 08:40:45','2024-05-05 08:40:45'),(16,'mall_goods Export','mall_goods_export','POST','/export/mall_goods','2024-05-05 08:40:45','2024-05-05 08:40:45'),(17,'mall_goods_sku Query','mall_goods_sku_query','GET','/info/mall_goods_sku','2024-05-05 08:40:45','2024-05-05 08:40:45'),(18,'mall_goods_sku Show Edit Form Page','mall_goods_sku_show_edit','GET','/info/mall_goods_sku/edit','2024-05-05 08:40:45','2024-05-05 08:40:45'),(19,'mall_goods_sku Show Create Form Page','mall_goods_sku_show_create','GET','/info/mall_goods_sku/new','2024-05-05 08:40:45','2024-05-05 08:40:45'),(20,'mall_goods_sku Edit','mall_goods_sku_edit','POST','/edit/mall_goods_sku','2024-05-05 08:40:45','2024-05-05 08:40:45'),(21,'mall_goods_sku Create','mall_goods_sku_create','POST','/new/mall_goods_sku','2024-05-05 08:40:45','2024-05-05 08:40:45'),(22,'mall_goods_sku Delete','mall_goods_sku_delete','POST','/delete/mall_goods_sku','2024-05-05 08:40:45','2024-05-05 08:40:45'),(23,'mall_goods_sku Export','mall_goods_sku_export','POST','/export/mall_goods_sku','2024-05-05 08:40:45','2024-05-05 08:40:45');
/*!40000 ALTER TABLE `goadmin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_role_menu`
--

DROP TABLE IF EXISTS `goadmin_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_role_menu` (
  `role_id` int unsigned NOT NULL,
  `menu_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_role_menu`
--

LOCK TABLES `goadmin_role_menu` WRITE;
/*!40000 ALTER TABLE `goadmin_role_menu` DISABLE KEYS */;
INSERT INTO `goadmin_role_menu` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(1,7,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,7,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_role_permissions`
--

DROP TABLE IF EXISTS `goadmin_role_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_role_permissions` (
  `role_id` int unsigned NOT NULL,
  `permission_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_role_permissions` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_role_permissions`
--

LOCK TABLES `goadmin_role_permissions` WRITE;
/*!40000 ALTER TABLE `goadmin_role_permissions` DISABLE KEYS */;
INSERT INTO `goadmin_role_permissions` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(1,2,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,2,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_role_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_role_users`
--

DROP TABLE IF EXISTS `goadmin_role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_role_users` (
  `role_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_user_roles` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_role_users`
--

LOCK TABLES `goadmin_role_users` WRITE;
/*!40000 ALTER TABLE `goadmin_role_users` DISABLE KEYS */;
INSERT INTO `goadmin_role_users` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,2,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_roles`
--

DROP TABLE IF EXISTS `goadmin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_roles`
--

LOCK TABLES `goadmin_roles` WRITE;
/*!40000 ALTER TABLE `goadmin_roles` DISABLE KEYS */;
INSERT INTO `goadmin_roles` VALUES (1,'Administrator','administrator','2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,'Operator','operator','2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_session`
--

DROP TABLE IF EXISTS `goadmin_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_session` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `sid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `values` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_session`
--

LOCK TABLES `goadmin_session` WRITE;
/*!40000 ALTER TABLE `goadmin_session` DISABLE KEYS */;
INSERT INTO `goadmin_session` VALUES (85,'6cc5f500-7f05-4586-9e37-e076b7674916','{\"user_id\":1}','2024-05-08 02:47:39','2024-05-08 02:47:39'),(86,'b8bb4120-c69e-4c0e-8b18-dd2f943a4de9','__csrf_token__','2024-05-08 02:55:04','2024-05-08 02:55:04');
/*!40000 ALTER TABLE `goadmin_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_site`
--

DROP TABLE IF EXISTS `goadmin_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_site` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_site`
--

LOCK TABLES `goadmin_site` WRITE;
/*!40000 ALTER TABLE `goadmin_site` DISABLE KEYS */;
INSERT INTO `goadmin_site` VALUES (1,'domain','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(2,'color_scheme','skin-black',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(3,'hide_config_center_entrance','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(4,'error_log_off','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(5,'logger_level','0',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(6,'site_off','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(7,'hide_plugin_entrance','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(8,'logger_rotate_max_size','0',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(9,'logger_rotate_max_age','0',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(10,'app_id','aqvBimabHNa1',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(11,'logger_encoder_duration','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(12,'extra','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(13,'custom_404_html','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(14,'bootstrap_file_path','/Users/ele/cyx/code/bootstrap.go',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(15,'logger_encoder_caller_key','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(16,'logger_encoder_message_key','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(17,'logger_encoder_caller','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(18,'asset_url','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(19,'no_limit_login_ip','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(20,'theme','sword',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(21,'title','GoAdmin',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(22,'access_assets_log_off','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(23,'access_log_off','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(24,'logger_encoder_stacktrace_key','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(25,'animation_type','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(26,'hide_visitor_user_center_entrance','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(27,'index_url','/',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(28,'env','local',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(29,'session_life_time','7200',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(30,'custom_head_html','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(31,'animation_delay','0.00',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(32,'prohibit_config_modification','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(33,'url_prefix','admin',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(34,'info_log_off','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(35,'auth_user_table','goadmin_users',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(36,'mini_logo','<b>G</b>A',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(37,'logger_encoder_encoding','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(38,'open_admin_api','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(39,'asset_root_path','./public/',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(40,'login_url','/login',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(41,'info_log_path','/Users/ele/cyx/code/logs/info.log',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(42,'hide_app_info_entrance','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(43,'hide_tool_entrance','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(44,'custom_403_html','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(45,'logger_rotate_max_backups','0',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(46,'logger_rotate_compress','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(47,'access_log_path','/Users/ele/cyx/code/logs/access.log',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(48,'logger_encoder_name_key','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(49,'footer_info','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(50,'login_logo','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(51,'language','zh',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(52,'error_log_path','/Users/ele/cyx/code/logs/error.log',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(53,'go_mod_file_path','/Users/ele/cyx/code/go.mod',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(54,'exclude_theme_components','null',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(55,'custom_foot_html','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(56,'login_title','GoAdmin',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(57,'logger_encoder_level','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(58,'animation_duration','0.00',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(59,'logo','<b>Go</b>Admin',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(60,'sql_log','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(61,'logger_encoder_level_key','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(62,'logger_encoder_time','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(63,'file_upload_engine','{\"name\":\"local\"}',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(64,'custom_500_html','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(65,'allow_del_operation_log','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(66,'operation_log_off','false',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(67,'debug','true',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56'),(68,'logger_encoder_time_key','',NULL,1,'2024-04-26 03:05:56','2024-04-26 03:05:56');
/*!40000 ALTER TABLE `goadmin_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_user_permissions`
--

DROP TABLE IF EXISTS `goadmin_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_user_permissions` (
  `user_id` int unsigned NOT NULL,
  `permission_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  UNIQUE KEY `admin_user_permissions` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_user_permissions`
--

LOCK TABLES `goadmin_user_permissions` WRITE;
/*!40000 ALTER TABLE `goadmin_user_permissions` DISABLE KEYS */;
INSERT INTO `goadmin_user_permissions` VALUES (1,1,'2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,2,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goadmin_users`
--

DROP TABLE IF EXISTS `goadmin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goadmin_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goadmin_users`
--

LOCK TABLES `goadmin_users` WRITE;
/*!40000 ALTER TABLE `goadmin_users` DISABLE KEYS */;
INSERT INTO `goadmin_users` VALUES (1,'admin','$2a$10$sDdtJWzIWYUxXOMT72anaeoMGcxCWTklCYCSYWCN1gj2DE50wPxOu','admin','','tlNcBVK9AvfYH7WEnwB1RKvocJu8FfRy4um3DJtwdHuJy0dwFsLOgAc0xUfh','2019-09-10 00:00:00','2019-09-10 00:00:00'),(2,'operator','$2a$10$rVqkOzHjN2MdlEprRflb1eGP0oZXuSrbJLOmJagFsCd81YZm0bsh.','Operator','',NULL,'2019-09-10 00:00:00','2019-09-10 00:00:00');
/*!40000 ALTER TABLE `goadmin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_goods`
--

DROP TABLE IF EXISTS `mall_goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mall_goods` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `title` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '商品标题',
  `price` decimal(10,2) NOT NULL COMMENT '现价',
  `cost_price` decimal(10,2) NOT NULL COMMENT '原价',
  `mall_goods_sku_id` int DEFAULT NULL COMMENT '默认sku_id',
  `keyword` varchar(100) COLLATE utf8mb4_general_ci NOT NULL COMMENT '关键词',
  `big_image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '大图',
  `is_index_recommend` tinyint(1) NOT NULL COMMENT '是否显示大图',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='商品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_goods`
--

LOCK TABLES `mall_goods` WRITE;
/*!40000 ALTER TABLE `mall_goods` DISABLE KEYS */;
INSERT INTO `mall_goods` VALUES (1,'测试商品1',100.00,100.00,2,'测试，商品','https://static.zixiaoyun.com/i/2023/05/19/1ebrd2.jpg',1,'2024-05-05 00:00:00','2024-05-05 00:00:00');
/*!40000 ALTER TABLE `mall_goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mall_goods_sku`
--

DROP TABLE IF EXISTS `mall_goods_sku`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mall_goods_sku` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `mall_goods_id` int NOT NULL COMMENT '商品ID',
  `spec` varchar(255) COLLATE utf8mb4_general_ci NOT NULL COMMENT '规格',
  `price` decimal(10,2) NOT NULL COMMENT '现价',
  `cost_price` decimal(10,2) NOT NULL COMMENT '原价',
  `stock` int NOT NULL COMMENT '库存',
  `status` tinyint(1) NOT NULL COMMENT '状态',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `mall_goods_sku_mall_goods_id_index` (`mall_goods_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='商品SKU表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mall_goods_sku`
--

LOCK TABLES `mall_goods_sku` WRITE;
/*!40000 ALTER TABLE `mall_goods_sku` DISABLE KEYS */;
INSERT INTO `mall_goods_sku` VALUES (1,1,'测试商品1sku1',100.00,100.00,5,1,'2024-05-05 00:00:00','2024-05-05 00:00:00'),(2,1,'测试商品1sku2',50.00,50.00,7,1,'2024-05-06 00:00:00','2024-05-06 00:00:00');
/*!40000 ALTER TABLE `mall_goods_sku` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-05-08  3:08:06
