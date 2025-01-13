-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: nittaayu
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.10.1

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
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('spatie.permission.cache','a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:14:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:9:\"role-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:11:\"role-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:9:\"role-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:11:\"role-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:9:\"user-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:11:\"user-create\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:9:\"user-edit\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:11:\"user-delete\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:2;}}i:8;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:11:\"vendor-list\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}}i:9;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:13:\"active-vendor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:10;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:15:\"inactive-vendor\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:6;}}i:11;a:4:{s:1:\"a\";i:26;s:1:\"b\";s:19:\"vendor-profile-view\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:12;a:3:{s:1:\"a\";i:27;s:1:\"b\";s:14:\"vendor-profile\";s:1:\"c\";s:3:\"web\";}i:13;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:14:\"vendor-approve\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:4;i:1;i:7;i:2;i:8;}}}s:5:\"roles\";a:6:{i:0;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:5:\"Admin\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:14:\"Purchase Admin\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:13:\"Function Head\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:8;s:1:\"b\";s:3:\"CFO\";s:1:\"c\";s:3:\"web\";}i:4;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:6:\"Vendor\";s:1:\"c\";s:3:\"web\";}i:5;a:3:{s:1:\"a\";i:6;s:1:\"b\";s:19:\"Not Approved Vendor\";s:1:\"c\";s:3:\"web\";}}}',1735725941);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `companies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (1,'Nitta Gelatin India Ltd.','1000','2024-12-23 06:15:48','2024-12-23 06:15:48');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material_groups`
--

DROP TABLE IF EXISTS `material_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material_groups`
--

LOCK TABLES `material_groups` WRITE;
/*!40000 ALTER TABLE `material_groups` DISABLE KEYS */;
INSERT INTO `material_groups` VALUES (1,'1000','RM - Crushed Bone',NULL,NULL),(2,'1001','RM - Others',NULL,NULL),(3,'1002','RM - Peptide',NULL,NULL),(4,'2000','Pkg Materials',NULL,NULL),(5,'2001','Semi Finished Goods',NULL,NULL),(6,'2002','FG-LOS',NULL,NULL),(7,'2003','REVA Light Fittings',NULL,NULL),(8,'2004','REVA Valve/flow metr',NULL,NULL),(9,'2005','RD Thermi Fluid&spar',NULL,NULL),(10,'2006','REVA Bearings',NULL,NULL),(11,'2007','REVA Blowers& spares',NULL,NULL),(12,'2008','REVA Boiler & spares',NULL,NULL),(13,'2009','REVA Chilers &spares',NULL,NULL),(14,'2010','RD Compressor&spares',NULL,NULL),(15,'2011','RD Coling Tower&Spar',NULL,NULL),(16,'2012','RD Ele Cables & conn',NULL,NULL),(17,'2013','RD Ele Panel & Spare',NULL,NULL),(18,'2014','REVA Fasteners',NULL,NULL),(19,'2015','REVA Gaskets & seals',NULL,NULL),(20,'2016','REVA PLC',NULL,NULL),(21,'2017','REVA Instrumentation',NULL,NULL),(22,'2018','REVA Lubricants',NULL,NULL),(23,'2019','RD Mat handling equp',NULL,NULL),(24,'2020','REVA Paints&Coatings',NULL,NULL),(25,'2021','RD Pre Heating Eqp&S',NULL,NULL),(26,'2022','REVA Pipes & fitings',NULL,NULL),(27,'2023','RD Power Electronic',NULL,NULL),(28,'2024','REVA Reaction Tank',NULL,NULL),(29,'2025','REVA Pumps & spares',NULL,NULL),(30,'2026','REVA Separtion equip',NULL,NULL),(31,'2027','REVA RVDF',NULL,NULL),(32,'2028','REVA Structral steel',NULL,NULL),(33,'2029','RD Transmision elmnt',NULL,NULL),(34,'2030','RD Hydrolic eqp&spar',NULL,NULL),(35,'2031','REVA Mixers & spares',NULL,NULL),(36,'2032','REVA Pack m/c& spres',NULL,NULL),(37,'2033','REVA Refractories',NULL,NULL),(38,'2034','REVA Stiching m/c&sp',NULL,NULL),(39,'2035','REVA Tools',NULL,NULL),(40,'2036','REVA Gauges',NULL,NULL),(41,'2037','REVA Glass wares',NULL,NULL),(42,'2038','REVA Enzymes',NULL,NULL),(43,'2039','REVA Flavour&fragrnc',NULL,NULL),(44,'2040','RD Cmputer& Periphrl',NULL,NULL),(45,'2041','REVA Transformer Oil',NULL,NULL),(46,'2042','REVA Elec. HT Yard',NULL,NULL),(47,'2043','REVA Ceramics',NULL,NULL),(48,'2044','REVA Others',NULL,NULL),(49,'2045','Reva Gen Engg & Spar',NULL,NULL),(50,'2046','Reva Lab Chem & Spar',NULL,NULL),(51,'2047','Reva Electrical Gene',NULL,NULL),(52,'2048','Reva ETP chemical',NULL,NULL),(53,'3000','SFG Others',NULL,NULL),(54,'3001','Cooked gelatin-N',NULL,NULL),(55,'3002','Cooked gelatin-X',NULL,NULL),(56,'3003','Cooked gelatin-VX',NULL,NULL),(57,'3004','Cooked gelatin-LVX',NULL,NULL),(58,'3005','Cooked gelatin-KVX',NULL,NULL),(59,'3006','Cooked gelatin-TVX',NULL,NULL),(60,'3007','Cooked gelatin-SVX',NULL,NULL),(61,'3008','Cooked gelatin-KLVX',NULL,NULL),(62,'3009','Cooked gelatin-CKLVX',NULL,NULL),(63,'3010','Cooked gelatin-SKLVX',NULL,NULL),(64,'3011','Cooked gelatin-TKLVX',NULL,NULL),(65,'3012','Cooked gelatin-R',NULL,NULL),(66,'3013','Cooked gelatin-S',NULL,NULL),(67,'3014','Cooked gelatin-OSR',NULL,NULL),(68,'3015','Cooked gelatin-OSG',NULL,NULL),(69,'3016','SFG-Chitosan',NULL,NULL),(70,'3017','SFG-Peptide',NULL,NULL),(71,'4000','GL Photographic film',NULL,NULL),(72,'4001','FG-Ossein',NULL,NULL),(73,'4002','FG-DCP',NULL,NULL),(74,'4003','FG-Collagen Peptide',NULL,NULL),(75,'4004','FG-Chitosan',NULL,NULL),(76,'4005','FG-Feeds & Fert.',NULL,NULL),(77,'4006','GL Pharma Hard Capsu',NULL,NULL),(78,'4007','GL Pharma Soft Capsu',NULL,NULL),(79,'4008','GL Pharma Tabletting',NULL,NULL),(80,'4009','GL Culture Media',NULL,NULL),(81,'4010','GL Pharma Coating',NULL,NULL),(82,'4011','GL Blood plasma Ex.',NULL,NULL),(83,'4012','GL Microencapsulatio',NULL,NULL),(84,'4013','GL Edible Confection',NULL,NULL),(85,'4014','GL EdiblJelly premix',NULL,NULL),(86,'4015','GL Edible Icecream',NULL,NULL),(87,'4016','GL Edible Beaverages',NULL,NULL),(88,'4017','GL Edible Meat Produ',NULL,NULL),(89,'4018','GL Edible General',NULL,NULL),(90,'4019','GL Industrial Metal',NULL,NULL),(91,'4020','GL Industrial Glue',NULL,NULL),(92,'4021','GL Industrial Rubber',NULL,NULL),(93,'4022','GL Industrial Paint',NULL,NULL),(94,'4023','GL Pharma Granlation',NULL,NULL),(95,'4033','GL Photographic  Pap',NULL,NULL),(96,'5000','E -Light Fittings',NULL,NULL),(97,'5001','E-Actuat.Valve&spare',NULL,NULL),(98,'5002','E-Band Dryer&spares',NULL,NULL),(99,'5003','E-Bearings',NULL,NULL),(100,'5004','E-Blowers & spares',NULL,NULL),(101,'5005','E-Boiler & spares',NULL,NULL),(102,'5006','E-Centrifuge&spares',NULL,NULL),(103,'5007','E-Chillers & spares',NULL,NULL),(104,'5008','E-Compressor&spares',NULL,NULL),(105,'5009','E-Control Valve&spar',NULL,NULL),(106,'5010','E-Cooling tower&spar',NULL,NULL),(107,'5011','E-Ele. Cables & conn',NULL,NULL),(108,'5012','E-Ele. panels & spar',NULL,NULL),(109,'5013','E-Elect dyn equip',NULL,NULL),(110,'5014','E-Elect sta equip',NULL,NULL),(111,'5015','E-Fasteners',NULL,NULL),(112,'5016','E-Gaskets & seals',NULL,NULL),(113,'5017','E-Granulator&spares',NULL,NULL),(114,'5018','E-Instrumentation',NULL,NULL),(115,'5019','E-Instruments',NULL,NULL),(116,'5020','E-Lubricants',NULL,NULL),(117,'5021','E-Manual Valve&spare',NULL,NULL),(118,'5022','E-Mat. handling equp',NULL,NULL),(119,'5023','E-Paints & coatings',NULL,NULL),(120,'5024','E-PHE & spares',NULL,NULL),(121,'5025','E-Pipes & fittings',NULL,NULL),(122,'5026','E-Power electronics',NULL,NULL),(123,'5027','E-Process vessels',NULL,NULL),(124,'5028','E-Pumps & spares',NULL,NULL),(125,'5029','E-Separation equip.',NULL,NULL),(126,'5030','E-Spray drier&spares',NULL,NULL),(127,'5031','E-Structural steel',NULL,NULL),(128,'5032','E-Transmission elmnt',NULL,NULL),(129,'5033','E-Votator & spares',NULL,NULL),(130,'5034','E-Hydraulic eqp & sp',NULL,NULL),(131,'5035','E-Mixers & spares',NULL,NULL),(132,'5036','E-Pack m/c & spares',NULL,NULL),(133,'5037','E-Refractories',NULL,NULL),(134,'5038','E-Stiching m/c & sp',NULL,NULL),(135,'5039','E-Tools',NULL,NULL),(136,'5040','E-Others',NULL,NULL),(137,'5050','Engg- Bearings',NULL,NULL),(138,'5053','Engg -Gauges',NULL,NULL),(139,'5054','Engg -Pipes & Pipe F',NULL,NULL),(140,'5055','Engg -Lubricants',NULL,NULL),(141,'5056','Engg - Miscellaneous',NULL,NULL),(142,'5500','Lab Chemicals',NULL,NULL),(143,'5501','Lab wares',NULL,NULL),(144,'6000','Con-Enzymes',NULL,NULL),(145,'6001','Con-Flavour&fragranc',NULL,NULL),(146,'6002','Con-others',NULL,NULL),(147,'6003','Con-Sweeteners',NULL,NULL),(148,'6004','Computer & Periphera',NULL,NULL),(149,'6005','Gases',NULL,NULL),(150,'6006','Stationary',NULL,NULL),(151,'6500','Civil items',NULL,NULL),(152,'7000','Fuels',NULL,NULL),(153,'7500','Non Valuated Mtrls',NULL,NULL),(154,'8000','Scrap',NULL,NULL),(155,'8500','Misc. Pur 4% + 1%',NULL,NULL),(156,'8501','Misc. Pur 12.5% + 1%',NULL,NULL),(157,'8502','Misc.Pur 12.5%+2.5%',NULL,NULL),(158,'9000','Services',NULL,NULL),(159,'CHETOSAN','Chetosan',NULL,NULL),(160,'DCP','DCP',NULL,NULL),(161,'FISHPEP','Fish peptide',NULL,NULL),(162,'GEL','Gelatin',NULL,NULL),(163,'HIDE','Hide',NULL,NULL),(164,'LOS','Limed Ossein',NULL,NULL),(165,'MM','Meat Meals',NULL,NULL),(166,'NUTRI','Nutrigold',NULL,NULL),(167,'OSS','Ossein',NULL,NULL),(168,'PEPBLEND','Peptide BLND',NULL,NULL),(169,'PEPGRAN','Peptide GRAN',NULL,NULL),(170,'PEPRET','PEPRET',NULL,NULL),(171,'PEPRMG','Peptide MG',NULL,NULL),(172,'PEPSPRY','Peptide Spary',NULL,NULL),(173,'STEAM','Steam',NULL,NULL);
/*!40000 ALTER TABLE `material_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2024_11_08_085227_create_permission_tables',2),(5,'2024_11_15_061003_create_personal_access_tokens_table',3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (2,'App\\Models\\User',4),(4,'App\\Models\\User',11),(5,'App\\Models\\User',12),(6,'App\\Models\\User',13),(7,'App\\Models\\User',14),(8,'App\\Models\\User',15);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
INSERT INTO `password_reset_tokens` VALUES ('meera.v11@gmail.com','$2y$12$5pXZWUJi0Us2WhZnScOmj.x2rO7eumeJPwIWXSnhQ.tJfGF0P4qb2','2024-12-10 04:27:12');
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'role-list','web','2024-11-08 04:22:08','2024-11-08 04:22:08'),(2,'role-create','web','2024-11-08 04:22:08','2024-11-08 04:22:08'),(3,'role-edit','web','2024-11-08 04:22:08','2024-11-08 04:22:08'),(4,'role-delete','web','2024-11-08 04:22:08','2024-11-08 04:22:08'),(5,'user-list','web','2024-11-08 04:51:06','2024-11-08 04:51:06'),(6,'user-create','web','2024-11-08 04:51:07','2024-11-08 04:51:07'),(7,'user-edit','web','2024-11-08 04:51:07','2024-11-08 04:51:07'),(8,'user-delete','web','2024-11-08 04:51:07','2024-11-08 04:51:07'),(11,'vendor-list','web','2024-11-14 00:44:46','2024-11-14 00:44:46'),(14,'active-vendor','web','2024-11-19 09:09:03','2024-11-19 09:09:03'),(15,'inactive-vendor','web','2024-11-19 09:09:03','2024-11-19 09:09:03'),(26,'vendor-profile-view','web','2024-12-04 10:41:02','2024-12-04 10:41:02'),(27,'vendor-profile','web','2024-12-26 08:12:01','2024-12-26 08:12:01'),(30,'vendor-approve','web','2024-12-30 12:55:39','2024-12-30 12:55:39');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plants`
--

DROP TABLE IF EXISTS `plants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plants`
--

LOCK TABLES `plants` WRITE;
/*!40000 ALTER TABLE `plants` DISABLE KEYS */;
INSERT INTO `plants` VALUES (1,'1000','NGIL-Koratty -OD',NULL,NULL),(2,'1100','NGIL-Kakkanad -GD',NULL,NULL),(3,'7000','NGIL-Reva',NULL,NULL);
/*!40000 ALTER TABLE `plants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_groups`
--

DROP TABLE IF EXISTS `purchase_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_groups` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_groups`
--

LOCK TABLES `purchase_groups` WRITE;
/*!40000 ALTER TABLE `purchase_groups` DISABLE KEYS */;
INSERT INTO `purchase_groups` VALUES (1,'100','CB/OS/LOS/FP',NULL,NULL),(2,'101','Other Raw material',NULL,NULL),(3,'102','Packing material',NULL,NULL),(4,'103','Engg items / Spare',NULL,NULL),(5,'104','SFG/FG',NULL,NULL),(6,'105','Capital Equipments',NULL,NULL),(7,'106','Consumables',NULL,NULL),(8,'107','Trading',NULL,NULL),(9,'108','Services Rated',NULL,NULL),(10,'109','Kakkanad Pur/Serv',NULL,NULL),(11,'110','Koratty Pur/Serv',NULL,NULL),(12,'111','Services- Others',NULL,NULL),(13,'114','QA Dept',NULL,NULL),(14,'115','Marketing Dept',NULL,NULL),(15,'116','Planning Dept',NULL,NULL),(16,'117','BE - Dept',NULL,NULL),(17,'118','TS -Dept',NULL,NULL),(18,'119','IT -Dept',NULL,NULL),(19,'120','Aroor Pur/Serv',NULL,NULL),(20,'121','Finance Dept',NULL,NULL),(21,'122','CO-Admin Dept',NULL,NULL),(22,'123','R&D Dept',NULL,NULL),(23,'124','Service Unrated',NULL,NULL),(24,'125','Material Dept',NULL,NULL),(25,'126','CS Dept',NULL,NULL),(26,'127','Service - AMC',NULL,NULL),(27,'128','QC Dept.',NULL,NULL),(28,'129','Microbiology',NULL,NULL),(29,'130','Security&Cleaning',NULL,NULL),(30,'200','Reva RM-Domestic',NULL,NULL),(31,'201','Reva RM-Imports',NULL,NULL),(32,'202','Reva-PKM-Domestic',NULL,NULL),(33,'203','Reva-PKM-Imports',NULL,NULL),(34,'204','Reva-Cap Eqp- DOM',NULL,NULL),(35,'205','Reva-Cap Eqp- IMP',NULL,NULL),(36,'206','Reva-Spares- DOM',NULL,NULL),(37,'207','Reva-Spares- IMP',NULL,NULL),(38,'208','Reva-Inventory-Trf',NULL,NULL),(39,'209','Reva-Consumabe-Dom',NULL,NULL),(40,'210','Reva-Consumabe-IMP',NULL,NULL),(41,'211','Reva- Fuels',NULL,NULL),(42,'212','Reva- Transports',NULL,NULL),(43,'213','Reva-Subcontracts',NULL,NULL),(44,'214','Reva-Pur-Admin',NULL,NULL),(45,'215','Reva-Project-Purch',NULL,NULL),(46,'216','Reva-Services-othe',NULL,NULL),(47,'217','Reva General Pur',NULL,NULL),(48,'218','Reva chemical',NULL,NULL),(49,'219','Reva-Projects',NULL,NULL),(50,'300','NGIL Bamini Pur',NULL,NULL),(51,'310','Bangalore Purchase',NULL,NULL),(52,'320','NGIL-UP',NULL,NULL),(53,'500','Reva Purchase',NULL,NULL),(54,'600','BPL- RM CB Domesti',NULL,NULL),(55,'601','BPL- RM CB Export',NULL,NULL),(56,'602','BPL-Other Raw mate',NULL,NULL),(57,'603','BPL-PKM-Domestic',NULL,NULL),(58,'604','BPL-PKM-Imports',NULL,NULL),(59,'605','BPL-Cap Eqp- DOM',NULL,NULL),(60,'606','BPL-Cap Eqp- IMP',NULL,NULL),(61,'607','BPL-Spares- DOM',NULL,NULL),(62,'608','BPL-Spares- IMP',NULL,NULL),(63,'609','BPL-Inventory-Trf',NULL,NULL),(64,'610','BPL-Consumabe-Dom',NULL,NULL),(65,'611','BPL-Consumabe-IMP',NULL,NULL),(66,'612','BPL- Fuels',NULL,NULL),(67,'613','BPL- Transports',NULL,NULL),(68,'614','BPL-Subcontracts',NULL,NULL),(69,'615','BPL-Pur-Admin',NULL,NULL),(70,'616','BPL-Project-Purch',NULL,NULL),(71,'617','BPL-Services-othe',NULL,NULL),(72,'618','BPL General Pur',NULL,NULL),(73,'619','BPL chemical',NULL,NULL),(74,'620','BPL-Projects',NULL,NULL),(75,'700','RD-CB-Domestic',NULL,NULL),(76,'701','RD-CB-Imports',NULL,NULL),(77,'702','RD-PKM-Domestic',NULL,NULL),(78,'703','RD-PKM-Imports',NULL,NULL),(79,'704','RD-Cap Eqp- DOM',NULL,NULL),(80,'705','RD-Cap Eqp- IMP',NULL,NULL),(81,'706','RD-Spares- DOM',NULL,NULL),(82,'707','RD-Spares- IMP',NULL,NULL),(83,'708','RD-Inventory-Trf',NULL,NULL),(84,'709','RD-Consumabe-Dom',NULL,NULL),(85,'710','RD-Consumabe-IMP',NULL,NULL),(86,'711','RD- Fuels',NULL,NULL),(87,'712','RD- Transports',NULL,NULL),(88,'713','RD-Subcontracts',NULL,NULL),(89,'714','RD-Pur-Admin',NULL,NULL),(90,'715','RD-Project-Purch',NULL,NULL),(91,'716','RD-Services-othe',NULL,NULL),(92,'717','RD-General Pur',NULL,NULL),(93,'718','RD-chemical',NULL,NULL),(94,'719','RD-Projects',NULL,NULL),(95,'720','RD-Other Raw mate',NULL,NULL),(96,'900','Stock transfers',NULL,NULL),(97,'901','Project Purchase',NULL,NULL);
/*!40000 ALTER TABLE `purchase_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_organizations`
--

DROP TABLE IF EXISTS `purchase_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_organizations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_organizations`
--

LOCK TABLES `purchase_organizations` WRITE;
/*!40000 ALTER TABLE `purchase_organizations` DISABLE KEYS */;
INSERT INTO `purchase_organizations` VALUES (1,'1000','Centralized Purchase',NULL,NULL);
/*!40000 ALTER TABLE `purchase_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,2),(2,2),(3,2),(4,2),(5,2),(6,2),(7,2),(8,2),(11,4),(30,4),(14,5),(26,5),(15,6),(11,7),(30,7),(11,8),(30,8);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (2,'Admin','web','2024-11-08 04:36:15','2024-11-08 04:36:15'),(4,'Purchase Admin','web','2024-11-13 07:35:05','2024-11-13 07:35:05'),(5,'Vendor','web','2024-11-19 09:09:22','2024-11-19 09:09:22'),(6,'Not Approved Vendor','web','2024-11-19 09:10:18','2024-11-19 09:10:18'),(7,'Function Head','web','2024-12-30 08:44:16','2024-12-30 08:44:16'),(8,'CFO','web','2024-12-30 08:47:32','2024-12-30 08:47:32');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('qqlA7NpJUdbFp3KUFNwE3YAA3ylwOdwyy2twa7eG',13,'152.59.223.189','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVUk2SXV0dzhBeDloVVg4NUx3QVZWUk5vQ3J0ZmF5NE94VjZ0VHljQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njk6Imh0dHA6Ly93d3cudmVuZG9ybmdpbC5zZWN0b3JtYXguY29tL3B1YmxpYy9pbmRleC5waHAvdmVuZG9yb25ib2FyZGluZyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEzO30=',1735639784);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plant` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gstin` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (4,'admin','admin@gmail.com',NULL,'$2y$12$Cm3IeojLyc56Mckb/YfzLuzkUMgwkIOpKnvEI7hSwIeC5Lwl7iBSS',NULL,NULL,NULL,NULL,'2024-11-08 04:36:15','2024-11-08 04:36:15'),(11,'Purchase Manager','purchasemanager@gmail.com',NULL,'$2y$12$rxa/hYs/hGffgP/YGSzKXOXF6lbR7HtpdIpqvQgz9fbX9d/Iv9qMq',NULL,NULL,NULL,NULL,'2024-11-13 07:35:05','2024-11-13 07:35:05'),(12,'vendor','vendor@gmail.com',NULL,'$2y$12$c9oId0rZUWxroxZirHEw4eHTFp6jzErOaKuKg8T6w4wtKHmUTbEBO',NULL,NULL,NULL,NULL,'2024-11-19 09:28:24','2024-11-19 09:28:24'),(13,'Not Approved Vendor','vendor0@gmail.com',NULL,'$2y$12$gLhQGngSMJb0f9XpbihWauXL3jEP5YQLwUXjByu2XLd2ClNwi/HzC',NULL,NULL,NULL,NULL,'2024-11-19 09:29:04','2024-11-25 07:24:54'),(14,'Function Head','functionhead@gmail.com',NULL,'$2y$12$JPOrtXGWRXZxMHpVhZeFt.UPQWn1wtSEgwjatUfYx0Hj0oJHoVE3G',NULL,NULL,NULL,NULL,'2024-12-30 08:46:43','2024-12-30 08:46:43'),(15,'CFO','cfo@gmail.com',NULL,'$2y$12$D9vNn2omh.e9/6Xwavxoy.9/g39EJcCvvgijqazMLShtDTLJD4QBu',NULL,NULL,NULL,NULL,'2024-12-30 08:48:09','2024-12-30 08:48:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_details`
--

DROP TABLE IF EXISTS `vendor_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_details` (
  `id` int NOT NULL,
  `user_id` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vendor_code` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company_code` int DEFAULT NULL,
  `purchorg` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `vendoraccgrp` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `title` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `name1` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name2` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `addressline1` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `addressline2` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `addressline3` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `postcode` int DEFAULT NULL,
  `district` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `region_code` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mobileno` int NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pannum` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `gstin` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `recon_account` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `order_currency` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_terms` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `payment_method` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_country` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_key` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_name` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_account` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bankacct_holder` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_swift` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bank_ifsc` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_by` int DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_details`
--

LOCK TABLES `vendor_details` WRITE;
/*!40000 ALTER TABLE `vendor_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_otps`
--

DROP TABLE IF EXISTS `vendor_otps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_otps` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vendor_id` int NOT NULL,
  `otp_type` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `otp` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_otps`
--

LOCK TABLES `vendor_otps` WRITE;
/*!40000 ALTER TABLE `vendor_otps` DISABLE KEYS */;
INSERT INTO `vendor_otps` VALUES (1,1,'Mobile',5131,'2024-12-30 16:54:09','2024-12-30 16:54:09'),(2,1,'Email',5007,'2024-12-30 17:16:33','2024-12-30 17:16:33'),(3,1,'Email',6635,'2024-12-30 17:18:18','2024-12-30 17:18:18'),(4,1,'Mobile',1052,'2024-12-30 17:19:41','2024-12-30 17:19:41'),(5,1,'Email',5628,'2024-12-30 17:19:53','2024-12-30 17:19:53'),(6,1,'Mobile',1882,'2024-12-31 01:48:20','2024-12-31 01:48:20'),(7,1,'Email',1328,'2024-12-31 02:04:50','2024-12-31 02:04:50'),(8,1,'Email',2467,'2024-12-31 02:05:56','2024-12-31 02:05:56'),(9,1,'Email',6940,'2024-12-31 02:06:56','2024-12-31 02:06:56'),(10,1,'Email',8513,'2024-12-31 02:12:33','2024-12-31 02:12:33'),(11,1,'Email',2740,'2024-12-31 02:14:20','2024-12-31 02:14:20'),(12,1,'Email',1679,'2024-12-31 02:15:57','2024-12-31 02:15:57'),(13,1,'Email',3510,'2024-12-31 02:16:12','2024-12-31 02:16:12'),(16,1,'Mobile',5821,'2024-12-31 03:36:31','2024-12-31 03:36:31');
/*!40000 ALTER TABLE `vendor_otps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-31 10:12:00
