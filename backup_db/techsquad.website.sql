-- MySQL dump 10.13  Distrib 5.6.37-82.2, for Linux (x86_64)
--
-- Host: localhost    Database: mayanuzs_ts
-- ------------------------------------------------------
-- Server version	5.6.37-82.2-log

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
/*!50112 SELECT COUNT(*) INTO @is_rocksdb_supported FROM INFORMATION_SCHEMA.SESSION_VARIABLES WHERE VARIABLE_NAME='rocksdb_bulk_load' */;
/*!50112 SET @save_old_rocksdb_bulk_load = IF (@is_rocksdb_supported, 'SET @old_rocksdb_bulk_load = @@rocksdb_bulk_load', 'SET @dummy_old_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @save_old_rocksdb_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 SET @enable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = 1', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @enable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_details`
--

LOCK TABLES `user_details` WRITE;
/*!40000 ALTER TABLE `user_details` DISABLE KEYS */;
INSERT INTO `user_details` VALUES (1,'mayank','d3f4ult0r','superadmin'),(2,'karan','d3f4ult0r','admin'),(3,'ruchika','d3f4ult0r','user');
/*!40000 ALTER TABLE `user_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_details`
--

DROP TABLE IF EXISTS `website_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(50) DEFAULT NULL,
  `created` date NOT NULL,
  `expired` date NOT NULL,
  `updated` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_details`
--

LOCK TABLES `website_details` WRITE;
/*!40000 ALTER TABLE `website_details` DISABLE KEYS */;
INSERT INTO `website_details` VALUES (1,'mayanksethi.com','2017-10-30','2018-10-30','2017-11-01'),(6,'crowninternationalregd.com','2017-03-14','2019-03-14','2017-12-29'),(5,'avcls.org','2017-09-04','2018-09-04','2017-11-04'),(7,'wipro.me','2017-11-11','2018-11-11','2018-01-10'),(8,'maanasindia.in','2017-06-12','2018-06-12','2017-08-11'),(9,'techsquad.website','2017-11-11','2018-11-11','2018-01-11'),(10,'sethisalesagency.com','2017-11-11','2018-11-11','2018-01-10'),(11,'padammilk.com','2018-03-14','2020-03-14','2018-03-14'),(12,'royalnightlife.com','2012-07-19','2018-07-19','2014-10-31'),(13,'ibigrock.com','2015-11-13','2018-11-13','2017-11-11'),(14,'redmalls.com','2016-02-08','2019-02-08','2018-03-16'),(16,'redmall.co.in','2016-02-07','2026-02-07','2017-05-18'),(17,'umavyas.in','2016-09-09','2018-09-09','2017-09-03'),(19,'wiproprojects.com','2016-09-18','2018-09-18','2017-09-28'),(21,'beingcartoonic.com','2015-09-16','2018-09-16','2016-09-11'),(43,'digibrain.store','2017-10-30','2018-10-30','2017-11-04'),(39,'majesticcarscantools.com','2018-03-15','2019-03-15','2018-03-15'),(31,'ishikaassociates.com','2013-07-22','2019-07-22','2017-06-21'),(42,'digibrain.download','2017-10-30','2018-10-30','2017-11-04'),(41,'digibrain.me','2017-10-30','2018-10-30','2017-11-04'),(40,'digibrain.online','2017-10-30','2018-10-30','2017-11-04');
/*!40000 ALTER TABLE `website_details` ENABLE KEYS */;
UNLOCK TABLES;
/*!50112 SET @disable_bulk_load = IF (@is_rocksdb_supported, 'SET SESSION rocksdb_bulk_load = @old_rocksdb_bulk_load', 'SET @dummy_rocksdb_bulk_load = 0') */;
/*!50112 PREPARE s FROM @disable_bulk_load */;
/*!50112 EXECUTE s */;
/*!50112 DEALLOCATE PREPARE s */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-14 21:29:06
