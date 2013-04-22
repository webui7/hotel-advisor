-- MySQL dump 10.13  Distrib 5.5.28, for Win32 (x86)
--
-- Host: localhost    Database: hotels
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES (1,'Ukraine','xcdfg','Lviv','sggd','2013-04-18 21:30:04','2013-04-18 22:25:55',2),(2,'111ewqeqwe1','22222weq22222','3333eqwe333333','44444weqwewe444','2013-04-18 21:42:25','2013-04-18 21:46:15',5),(3,'ffff','','','','2013-04-18 22:26:20','2013-04-18 22:26:20',6),(4,'','','','','2013-04-18 22:51:12','2013-04-18 22:51:12',7),(5,'sd','sadasdasd','sad','ad','2013-04-18 23:25:04','2013-04-18 23:25:04',8),(6,'111111111','111111111','1111111111111','111111111111111','2013-04-18 23:27:01','2013-04-18 23:27:54',9),(7,'dgdf','dsfgf','ggdsfgfg','dsffgdfsg','2013-04-18 23:41:56','2013-04-18 23:41:56',10),(8,'Bulgary','','Nesebar','','2013-04-19 18:56:07','2013-04-19 18:57:08',11),(9,'','','','','2013-04-19 19:13:36','2013-04-19 19:13:36',12),(10,'','','','','2013-04-19 19:13:36','2013-04-19 19:13:36',13),(11,'','','','','2013-04-21 11:18:26','2013-04-21 11:18:26',14),(12,'','','','','2013-04-21 11:18:42','2013-04-21 11:18:42',15),(13,'','','','','2013-04-21 11:19:15','2013-04-21 11:19:15',16),(14,'','','','','2013-04-21 11:20:24','2013-04-21 11:20:24',17),(15,'','','','','2013-04-21 11:20:41','2013-04-21 11:20:41',18),(16,'','','','','2013-04-21 19:49:37','2013-04-21 19:49:37',19),(17,'','','','','2013-04-21 23:45:16','2013-04-21 23:45:16',20),(18,'','','','','2013-04-22 00:00:10','2013-04-22 00:00:10',21),(19,'','','','','2013-04-22 07:16:23','2013-04-22 07:16:23',22);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text,
  `hotel_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `hotelrate_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (27,'рповопавовр',18,1,4,'2013-04-21 18:26:01','2013-04-21 18:26:02'),(28,'very nice',12,1,3,'2013-04-21 21:55:45','2013-04-21 21:55:45'),(30,'djdfgjhfdhdfgdsfg\r\nsfdgdfg\r\nsgsdg',21,1,3,'2013-04-22 00:00:16','2013-04-22 00:04:15'),(39,'no',13,1,2,'2013-04-22 01:31:04','2013-04-22 01:31:04'),(41,'I like the hotel',22,2,5,'2013-04-22 07:16:41','2013-04-22 07:16:41'),(42,'fg',11,2,2,'2013-04-22 10:49:59','2013-04-22 10:50:10'),(57,'ssadasd',9,2,1,'2013-04-22 12:45:30','2013-04-22 12:45:30');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotelrates`
--

DROP TABLE IF EXISTS `hotelrates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotelrates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotelrates`
--

LOCK TABLES `hotelrates` WRITE;
/*!40000 ALTER TABLE `hotelrates` DISABLE KEYS */;
INSERT INTO `hotelrates` VALUES (1,1,'2013-04-19 06:46:30','2013-04-19 06:46:30'),(2,2,'2013-04-19 06:46:41','2013-04-19 06:46:41'),(3,3,'2013-04-19 06:46:49','2013-04-19 06:46:49'),(4,4,'2013-04-19 06:46:55','2013-04-19 06:46:55'),(5,5,'2013-04-19 06:47:04','2013-04-19 06:47:04');
/*!40000 ALTER TABLE `hotelrates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hotels`
--

DROP TABLE IF EXISTS `hotels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `star_id` int(11) DEFAULT NULL,
  `breakfast` tinyint(1) DEFAULT '0',
  `roomdescription` text,
  `photo` varchar(255) DEFAULT NULL,
  `roomprice` decimal(8,2) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `averagerate` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hotels`
--

LOCK TABLES `hotels` WRITE;
/*!40000 ALTER TABLE `hotels` DISABLE KEYS */;
INSERT INTO `hotels` VALUES (9,'webui7',4,0,'stsdgsdg','doska_by.jpg',0.00,'2013-04-18 23:27:01','2013-04-21 22:09:15',1,3.00),(10,'qq-qq',1,1,'dfsdfgdg',NULL,1000.00,'2013-04-18 23:41:56','2013-04-19 11:04:12',2,3.50),(11,'carina beach',3,1,'big room','aeron3.jpg',300.00,'2013-04-19 18:56:06','2013-04-19 19:05:34',1,2.00),(12,'flamingo',1,0,'',NULL,NULL,'2013-04-19 19:13:36','2013-04-21 21:55:45',1,3.00),(13,'grenada',4,1,'',NULL,NULL,'2013-04-19 19:13:36','2013-04-22 12:10:36',1,2.00),(14,'6',1,0,'',NULL,NULL,'2013-04-21 11:18:25','2013-04-21 11:18:25',1,NULL),(15,'7',1,0,'',NULL,NULL,'2013-04-21 11:18:42','2013-04-21 11:18:42',1,NULL),(16,'8',4,0,'',NULL,NULL,'2013-04-21 11:19:15','2013-04-21 11:19:36',1,NULL),(17,'9',1,0,'',NULL,NULL,'2013-04-21 11:20:23','2013-04-21 22:51:39',1,3.00),(18,'10',1,0,'',NULL,NULL,'2013-04-21 11:20:41','2013-04-21 18:26:02',1,4.00),(19,'tetttt',1,1,'cbgcvbx',NULL,NULL,'2013-04-21 19:49:37','2013-04-21 20:14:41',1,NULL),(20,'asasasasa',1,0,'',NULL,NULL,'2013-04-21 23:45:16','2013-04-21 23:45:16',1,NULL),(21,'rtertertert',2,0,'',NULL,NULL,'2013-04-22 00:00:09','2013-04-22 00:00:17',1,1.00),(22,'ssfhfjafhsadjk',2,0,'','aeron1.jpg',NULL,'2013-04-22 07:16:23','2013-04-22 07:16:41',2,5.00);
/*!40000 ALTER TABLE `hotels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20130418173951'),('20130418192855'),('20130418193531'),('20130418202540'),('20130418231359'),('20130418232132'),('20130419063623'),('20130419064023'),('20130419092246');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stars`
--

DROP TABLE IF EXISTS `stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rate` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stars`
--

LOCK TABLES `stars` WRITE;
/*!40000 ALTER TABLE `stars` DISABLE KEYS */;
INSERT INTO `stars` VALUES (1,1,'2013-04-18 19:38:12','2013-04-18 19:38:12'),(2,2,'2013-04-18 19:38:23','2013-04-18 19:38:23'),(3,3,'2013-04-18 19:38:33','2013-04-18 19:38:33'),(4,4,'2013-04-18 19:38:43','2013-04-18 19:38:43'),(5,5,'2013-04-18 19:38:54','2013-04-18 19:38:54');
/*!40000 ALTER TABLE `stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'webui7@gmail.com','$2a$10$HxNXR2diz6Rd0dnx.cSbQ.NvikzmBSD3ukU65WBA9Whg.A0xvTcDW',NULL,NULL,NULL,21,'2013-04-22 13:50:02','2013-04-22 12:18:07','127.0.0.1','127.0.0.1','2013-04-18 23:17:51','2013-04-22 13:50:02'),(2,'qq@qq.qq','$2a$10$JQWrEHG1BIcI8oLHJRkDPuYguvboidSbMrOBHx0pvkrP1yfGrMMLa',NULL,NULL,NULL,12,'2013-04-22 12:44:26','2013-04-22 07:17:23','127.0.0.1','127.0.0.1','2013-04-18 23:40:48','2013-04-22 12:44:26');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-22 19:15:28
