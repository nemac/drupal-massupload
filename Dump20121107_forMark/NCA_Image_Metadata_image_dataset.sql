-- MySQL dump 10.13  Distrib 5.5.24, for osx10.5 (i386)
--
-- Host: 10.0.1.30    Database: NCA_Image_Metadata
-- ------------------------------------------------------
-- Server version	5.1.61

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
-- Table structure for table `image_dataset`
--

DROP TABLE IF EXISTS `image_dataset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_dataset` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `dataset_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=391 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image_dataset`
--

LOCK TABLES `image_dataset` WRITE;
/*!40000 ALTER TABLE `image_dataset` DISABLE KEYS */;
INSERT INTO `image_dataset` VALUES (1,1,1),(2,2,4),(3,3,7),(4,4,6),(5,5,6),(6,6,6),(7,7,3),(8,12,8),(9,14,4),(10,15,4),(11,16,4),(12,21,4),(13,22,4),(14,23,4),(15,24,4),(16,28,1),(17,29,5),(18,30,2),(19,31,5),(20,32,1),(21,32,5),(22,33,1),(23,34,1),(24,35,5),(25,36,5),(26,37,5),(27,38,5),(28,39,5),(29,40,5),(30,41,5),(31,42,5),(32,43,1),(33,43,5),(34,44,2),(35,45,1),(36,46,5),(37,47,1),(38,47,5),(39,48,1),(40,48,5),(41,49,5),(42,50,5),(43,51,5),(44,52,4),(45,53,4),(46,54,4),(47,55,4),(48,56,1),(49,56,4),(50,57,1),(51,58,1),(52,59,7),(53,66,4),(54,67,4),(55,68,4),(56,69,4),(57,70,4),(58,71,4),(59,72,4),(60,73,1),(61,74,5),(62,75,2),(63,76,5),(64,77,1),(65,77,5),(66,78,1),(67,78,5),(68,79,1),(69,80,5),(70,81,5),(71,82,5),(72,83,5),(73,84,5),(74,85,5),(75,86,5),(76,87,5),(77,88,2),(78,89,1),(79,89,5),(80,90,5),(81,91,1),(82,92,1),(83,92,5),(84,93,1),(85,93,5),(86,94,5),(87,95,5),(88,96,1),(89,96,5),(90,97,4),(91,98,4),(92,99,4),(93,100,4),(94,101,1),(95,101,4),(96,102,1),(97,103,1),(98,104,7),(99,105,3),(100,106,3),(101,108,4),(102,109,4),(103,110,4),(104,111,3),(105,112,3),(106,113,3),(107,114,3),(108,116,9),(109,118,10),(110,121,1),(111,122,5),(112,123,2),(113,124,5),(114,125,1),(115,125,5),(116,126,1),(117,127,1),(118,128,5),(119,129,5),(120,130,5),(121,131,5),(122,132,1),(123,132,5),(124,133,5),(125,134,5),(126,135,5),(127,136,2),(128,137,1),(129,137,5),(130,138,5),(131,139,1),(132,140,1),(133,140,5),(134,141,1),(135,141,5),(136,142,5),(137,143,5),(138,144,1),(139,144,5),(140,145,4),(141,146,4),(142,147,4),(143,148,4),(144,149,1),(145,149,4),(146,150,1),(147,151,1),(148,152,7),(149,60,3),(150,61,3),(151,153,3),(152,154,3),(153,155,11),(154,156,4),(155,157,4),(156,158,6),(157,159,6),(158,160,4),(159,161,3),(160,162,3),(161,163,3),(162,164,3),(163,165,12),(164,166,13),(165,167,1),(166,168,5),(167,169,2),(168,170,5),(169,171,1),(170,171,5),(171,172,1),(172,173,1),(173,174,5),(174,175,5),(175,176,5),(176,177,5),(177,178,1),(178,178,5),(179,179,5),(180,180,5),(181,181,5),(182,182,2),(183,183,1),(184,183,5),(185,184,5),(186,185,1),(187,186,1),(188,186,5),(189,187,1),(190,187,5),(191,188,5),(192,189,5),(193,190,1),(194,190,5),(195,191,1),(196,191,4),(197,192,1),(198,192,4),(199,193,1),(200,193,4),(201,194,1),(202,194,4),(203,195,1),(204,195,4),(205,196,1),(206,197,1),(207,198,7),(208,199,3),(209,200,3),(210,201,4),(211,202,4),(212,203,4),(213,204,3),(214,205,3),(215,206,3),(216,207,3),(217,208,1),(218,209,5),(219,210,2),(220,211,5),(221,212,1),(222,212,5),(223,213,1),(224,214,1),(225,215,5),(226,216,5),(227,217,5),(228,218,5),(229,219,5),(230,220,5),(231,221,5),(232,222,5),(233,223,2),(234,224,1),(235,224,5),(236,225,5),(237,226,1),(238,227,1),(239,227,5),(240,228,1),(241,228,5),(242,229,5),(243,230,5),(244,231,5),(245,232,1),(246,232,5),(247,233,1),(248,233,4),(249,234,1),(250,234,4),(251,235,1),(252,235,4),(253,236,1),(254,236,4),(255,237,1),(256,237,4),(257,238,1),(258,239,1),(259,240,7),(260,241,14),(261,242,14),(262,243,14),(263,244,14),(264,245,14),(265,246,14),(266,247,14),(267,249,14),(268,250,14),(269,254,4),(270,255,15),(271,256,4),(272,257,4),(273,260,3),(274,261,3),(275,263,16),(276,264,3),(277,265,3),(278,266,3),(279,267,17),(280,273,1),(281,274,5),(282,275,2),(283,276,5),(284,277,1),(285,277,5),(286,278,1),(287,279,1),(288,280,5),(289,281,5),(290,282,5),(291,283,5),(292,284,1),(293,284,5),(294,285,5),(295,286,5),(296,287,5),(297,288,1),(298,288,5),(299,289,2),(300,290,1),(301,291,5),(302,292,1),(303,292,5),(304,293,1),(305,293,5),(306,294,5),(307,295,5),(308,296,1),(309,296,5),(310,297,1),(311,297,4),(312,298,1),(313,298,4),(314,299,1),(315,299,4),(316,300,1),(317,300,4),(318,301,1),(319,301,4),(320,302,1),(321,303,1),(322,304,7),(323,305,3),(324,306,3),(325,311,4),(326,312,4),(327,313,4),(328,314,4),(329,317,3),(330,318,17),(331,319,12),(332,322,9),(333,324,5),(334,325,2),(335,326,5),(336,327,1),(337,327,5),(338,328,1),(339,329,1),(340,330,5),(341,331,5),(342,332,5),(343,333,5),(344,334,5),(345,335,5),(346,336,5),(347,337,2),(348,338,5),(349,339,1),(350,339,5),(351,340,1),(352,340,5),(353,341,5),(354,342,5),(355,343,1),(356,343,4),(357,344,1),(358,344,4),(359,345,1),(360,345,4),(361,346,1),(362,346,4),(363,347,1),(364,348,1),(365,349,7),(366,350,6),(367,351,6),(368,355,3),(369,358,18),(370,359,1),(371,360,2),(372,361,1),(373,362,1),(374,363,1),(375,364,1),(376,373,2),(377,374,1),(378,375,1),(379,376,1),(380,377,1),(381,382,19),(382,382,1),(383,383,1),(384,384,7),(385,386,20),(386,395,2),(387,396,2),(388,397,21),(389,398,22),(390,399,1);
/*!40000 ALTER TABLE `image_dataset` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-11-07 13:19:52
