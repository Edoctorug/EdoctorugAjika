-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: pyshop
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add product',7,'add_product'),(26,'Can change product',7,'change_product'),(27,'Can delete product',7,'delete_product'),(28,'Can view product',7,'view_product'),(29,'Can add cart',8,'add_cart'),(30,'Can change cart',8,'change_cart'),(31,'Can delete cart',8,'delete_cart'),(32,'Can view cart',8,'view_cart'),(33,'Can add cart items',9,'add_cartitems'),(34,'Can change cart items',9,'change_cartitems'),(35,'Can delete cart items',9,'delete_cartitems'),(36,'Can view cart items',9,'view_cartitems'),(37,'Can add cart item',9,'add_cartitem'),(38,'Can change cart item',9,'change_cartitem'),(39,'Can delete cart item',9,'delete_cartitem'),(40,'Can view cart item',9,'view_cartitem'),(41,'Can add client',10,'add_client'),(42,'Can change client',10,'change_client'),(43,'Can delete client',10,'delete_client'),(44,'Can view client',10,'view_client');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$390000$kDUIyemGphVQNQAvghvJ1j$i6nj0kjQYCd6oZSRGMitEAh4Skmeq3L72aDbvEMjfug=','2023-01-24 08:20:41.464704',1,'ajika','','','ajika@gmail.com',1,1,'2023-01-16 13:26:22.713611'),(13,'pbkdf2_sha256$390000$UbmiKQOH5Mbu7xfGlccpAH$UqGA+/10CHoM5z3Z5c8NWL1VTfemZmkkdwVx45k9+Qs=','2023-01-20 14:31:29.689243',0,'serge','','','serge@gmail.coom',0,1,'2023-01-20 14:30:05.345492'),(14,'pbkdf2_sha256$390000$q9UEi7JUS1aFIcuLg1WKzq$05f/TiLtAQ9ahb2pWdDoxrTGsFAkbP7JhdYlCKS8tAM=','2023-01-21 17:35:44.088351',0,'jacob','','','jacob@gmail.com',0,1,'2023-01-20 14:30:47.516974');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-01-16 13:28:29.279696','1','Product object (1)',1,'[{\"added\": {}}]',7,1),(2,'2023-01-16 13:29:08.343739','2','Product object (2)',1,'[{\"added\": {}}]',7,1),(3,'2023-01-16 13:29:55.980180','3','Product object (3)',1,'[{\"added\": {}}]',7,1),(4,'2023-01-17 09:27:25.336691','3','Product object (3)',3,'',7,1),(5,'2023-01-17 09:27:25.434590','2','Product object (2)',3,'',7,1),(6,'2023-01-17 09:27:25.501977','1','Product object (1)',3,'',7,1),(7,'2023-01-17 09:28:14.907661','4','Product object (4)',1,'[{\"added\": {}}]',7,1),(8,'2023-01-17 09:30:53.185492','4','Product object (4)',3,'',7,1),(9,'2023-01-17 09:31:13.269965','5','Product object (5)',1,'[{\"added\": {}}]',7,1),(10,'2023-01-17 09:31:46.581635','6','Product object (6)',1,'[{\"added\": {}}]',7,1),(11,'2023-01-17 09:32:21.439735','7','Product object (7)',1,'[{\"added\": {}}]',7,1),(12,'2023-01-18 09:39:19.332749','3','david',3,'',4,1),(13,'2023-01-18 09:39:19.520330','4','joelle',3,'',4,1),(14,'2023-01-18 09:39:19.820632','2','karangwa',3,'',4,1),(15,'2023-01-18 10:05:10.387889','5','karangwa',3,'',4,1),(16,'2023-01-18 17:04:31.008135','8','bongolo',3,'',4,1),(17,'2023-01-18 17:10:11.493740','6','karangwa',3,'',4,1),(18,'2023-01-18 19:03:24.791431','7','jcole',3,'',4,1),(19,'2023-01-18 19:03:25.716977','9','serge',3,'',4,1),(20,'2023-01-20 12:07:48.862082','1','ajika karangwa',1,'[{\"added\": {}}]',10,1),(21,'2023-01-20 12:12:45.392717','1','ajika karangwa',3,'',10,1),(22,'2023-01-20 14:29:30.001412','11','David',3,'',4,1),(23,'2023-01-20 14:29:30.099449','10','serge',3,'',4,1),(24,'2023-01-20 14:29:30.139771','12','solange',3,'',4,1),(25,'2023-01-20 14:33:48.814712','2','jacob(2',1,'[{\"added\": {}}]',8,1),(26,'2023-01-20 14:35:13.923016','1','Sambusa(1)',1,'[{\"added\": {}}]',9,1),(27,'2023-01-20 14:35:59.322047','2','Tekila(2)',1,'[{\"added\": {}}]',9,1),(28,'2023-01-21 17:35:04.607710','3','ajika(3)',3,'',8,1),(29,'2023-01-21 17:35:04.855723','2','jacob(2)',3,'',8,1),(30,'2023-01-21 17:43:49.370763','5','ajika(5)',3,'',8,1),(31,'2023-01-21 17:43:49.445066','4','jacob(4)',3,'',8,1),(32,'2023-01-21 17:53:28.323238','6','ajika(6)',3,'',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'products','cart'),(9,'products','cartitem'),(10,'products','client'),(7,'products','product'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-01-16 10:48:28.805033'),(2,'auth','0001_initial','2023-01-16 10:48:33.690979'),(3,'admin','0001_initial','2023-01-16 10:48:35.247935'),(4,'admin','0002_logentry_remove_auto_add','2023-01-16 10:48:35.297937'),(5,'admin','0003_logentry_add_action_flag_choices','2023-01-16 10:48:35.398938'),(6,'contenttypes','0002_remove_content_type_name','2023-01-16 10:48:36.191987'),(7,'auth','0002_alter_permission_name_max_length','2023-01-16 10:48:36.492003'),(8,'auth','0003_alter_user_email_max_length','2023-01-16 10:48:36.620708'),(9,'auth','0004_alter_user_username_opts','2023-01-16 10:48:36.667881'),(10,'auth','0005_alter_user_last_login_null','2023-01-16 10:48:37.106379'),(11,'auth','0006_require_contenttypes_0002','2023-01-16 10:48:37.132381'),(12,'auth','0007_alter_validators_add_error_messages','2023-01-16 10:48:37.173381'),(13,'auth','0008_alter_user_username_max_length','2023-01-16 10:48:37.640759'),(14,'auth','0009_alter_user_last_name_max_length','2023-01-16 10:48:38.165581'),(15,'auth','0010_alter_group_name_max_length','2023-01-16 10:48:38.316583'),(16,'auth','0011_update_proxy_permissions','2023-01-16 10:48:38.400114'),(17,'auth','0012_alter_user_first_name_max_length','2023-01-16 10:48:38.765649'),(18,'sessions','0001_initial','2023-01-16 10:48:39.234171'),(19,'products','0001_initial','2023-01-16 13:16:54.788509'),(20,'products','0002_cart_alter_product_image_cartitems','2023-01-19 12:39:13.165207'),(21,'products','0003_rename_cartitems_cartitem_client_alter_cart_client','2023-01-20 11:54:43.378735'),(22,'products','0004_alter_client_image','2023-01-20 12:20:31.419214'),(23,'products','0005_remove_client_user','2023-01-20 12:22:21.249182'),(24,'products','0006_client_user','2023-01-20 14:12:23.582392'),(25,'products','0007_remove_cart_client_cart_user','2023-01-20 14:12:26.082268'),(26,'products','0008_remove_client_user','2023-01-20 14:20:03.270175'),(27,'products','0009_client_user','2023-01-20 14:28:13.305180');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('fjs5h3onlar8xqdokvpmzd8frkc6ih9v','.eJxVjEEOgkAMRe8yazOh0MLg0r1nmLTTjqAGEgZWxrsrCQvd_vfef7nI2zrErdgSR3VnB-70uwmnh0070DtPt9mneVqXUfyu-IMWf53VnpfD_TsYuAzfOtTKgn1uKQhbX6WAFXQUSDOxoUmHaCAkUCdoCEhUemwQMiYN1rr3B-lvOAI:1pIUFe:9D4es3CAqRj7KgqtLyktAK9hVZ4FlmvFj9wtYSeR4lk','2023-02-02 12:42:42.537528'),('p5cer2stxl2xiwu469cbnojg5kq1txpt','.eJxVjEEOgkAMRe8yazOh0MLg0r1nmLTTjqAGEgZWxrsrCQvd_vfef7nI2zrErdgSR3VnB-70uwmnh0070DtPt9mneVqXUfyu-IMWf53VnpfD_TsYuAzfOtTKgn1uKQhbX6WAFXQUSDOxoUmHaCAkUCdoCEhUemwQMiYN1rr3B-lvOAI:1pJHon:VwsinXmK2ikUP_bfRVQ4OWdakMoP_H_cslJuFoDiy2M','2023-02-04 17:38:17.296442');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_cart`
--

DROP TABLE IF EXISTS `products_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cart_id` char(32) NOT NULL,
  `completed` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cart_id` (`cart_id`),
  KEY `products_cart_user_id_d53bf7cf_fk_auth_user_id` (`user_id`),
  CONSTRAINT `products_cart_user_id_d53bf7cf_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_cart`
--

LOCK TABLES `products_cart` WRITE;
/*!40000 ALTER TABLE `products_cart` DISABLE KEYS */;
INSERT INTO `products_cart` VALUES (7,'728c597a8dfb40b19db729a563363f35',0,1);
/*!40000 ALTER TABLE `products_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_cartitem`
--

DROP TABLE IF EXISTS `products_cartitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_cartitem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `cart_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_cartitems_cart_id_a3292b88_fk_products_cart_id` (`cart_id`),
  KEY `products_cartitems_product_id_f54f6d91_fk_products_product_id` (`product_id`),
  CONSTRAINT `products_cartitems_cart_id_a3292b88_fk_products_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `products_cart` (`id`),
  CONSTRAINT `products_cartitems_product_id_f54f6d91_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_cartitem`
--

LOCK TABLES `products_cartitem` WRITE;
/*!40000 ALTER TABLE `products_cartitem` DISABLE KEYS */;
INSERT INTO `products_cartitem` VALUES (3,3,7,5),(4,4,7,6);
/*!40000 ALTER TABLE `products_cartitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_client`
--

DROP TABLE IF EXISTS `products_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_client` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password` (`password`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `products_client_user_id_895ed048_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_client`
--

LOCK TABLES `products_client` WRITE;
/*!40000 ALTER TABLE `products_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `products_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products_product`
--

DROP TABLE IF EXISTS `products_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products_product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products_product`
--

LOCK TABLES `products_product` WRITE;
/*!40000 ALTER TABLE `products_product` DISABLE KEYS */;
INSERT INTO `products_product` VALUES (5,'Sambusa','Bread',1000,'products/static/products/img/28965_w1024h768c1cx1500cy1000.jpg'),(6,'Tekila','Wine',35000,'products/static/products/img/5329713f-1cb9-424e-a7f4-7f60ce9ca0be_1.53e74d5b259385da461_5Jpp90z.jpeg'),(7,'Candy','Biscuit',500,'products/static/products/img/img41569.jpg');
/*!40000 ALTER TABLE `products_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-24 15:00:25
