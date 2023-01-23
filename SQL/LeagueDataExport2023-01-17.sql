-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: league
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
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `pla_id` int NOT NULL AUTO_INCREMENT,
  `pla_tms_id` int NOT NULL,
  `pla_dob` datetime DEFAULT NULL,
  `pla_position` varchar(45) NOT NULL,
  `pla_first_name` varchar(100) NOT NULL,
  `pla_last_name` varchar(100) NOT NULL,
  `pla_number` int NOT NULL,
  PRIMARY KEY (`pla_id`),
  UNIQUE KEY `pla_number_UNIQUE` (`pla_number`),
  KEY `pla_tms_id_index` (`pla_tms_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,1,'2005-05-08 00:00:00','Goalkeeper','Leyton','Siew',60),(2,3,'2006-06-18 00:00:00','Defense Person','Matt','Collins',2),(3,3,'2012-01-01 00:00:00','Defense Person','TJ','Caf',55),(4,3,'2023-01-01 00:00:00','Goalkeeper','Leyton','Siew 3.0',9),(5,1,'2005-02-12 00:00:00','Sriker','Dan','Nguyen',33),(6,1,'2004-12-16 00:00:00','Midfield','Hayden','Daley',24);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `tms_id` int NOT NULL AUTO_INCREMENT,
  `tms_city` varchar(45) NOT NULL,
  `tms_name` varchar(45) NOT NULL,
  `tms_coach` varchar(100) DEFAULT NULL,
  `tms_logo` blob,
  PRIMARY KEY (`tms_id`),
  UNIQUE KEY `tms_name_UNIQUE` (`tms_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Hanover','Hawks',NULL,NULL),(2,'Scituate','Sailors',NULL,NULL),(3,'Hingham','Harbormen',NULL,NULL),(4,'Duxbury','Dragons',NULL,NULL),(11,'Weymouth','Wildcats',NULL,NULL),(12,'Abington','Green Wave',NULL,NULL);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17 12:26:42
