-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: remotepalliativecare
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `patientcarer`
--

DROP TABLE IF EXISTS `patientcarer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientcarer` (
  `patientCarerNumber` int NOT NULL AUTO_INCREMENT,
  `carerNumber` int NOT NULL,
  `patientNumber` int NOT NULL,
  `relationship` varchar(60) NOT NULL,
  `dateStarted` date NOT NULL,
  `primaryCarer` tinyint(1) NOT NULL,
  PRIMARY KEY (`patientCarerNumber`),
  KEY `carerNumber` (`carerNumber`),
  KEY `patientNumber` (`patientNumber`),
  CONSTRAINT `patientcarer_ibfk_1` FOREIGN KEY (`carerNumber`) REFERENCES `carer` (`carerNumber`),
  CONSTRAINT `patientcarer_ibfk_2` FOREIGN KEY (`patientNumber`) REFERENCES `patient` (`patientNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientcarer`
--

LOCK TABLES `patientcarer` WRITE;
/*!40000 ALTER TABLE `patientcarer` DISABLE KEYS */;
INSERT INTO `patientcarer` VALUES (1,10,19,'Daughter','2021-11-19',1),(2,2,8,'Daughter','2021-01-14',1),(3,5,6,'Daughter','2021-02-12',1),(4,8,12,'Daughter','2022-06-26',1),(5,2,12,'Daughter','2020-09-14',0),(6,4,14,'Son','2021-12-01',1),(7,10,17,'Son','2021-01-22',0),(8,2,18,'Son','2021-01-25',1),(9,3,1,'Son','2022-02-25',1),(10,7,13,'Son','2021-11-08',0),(11,13,11,'Brother','2021-03-29',1),(12,15,19,'Brother','2022-02-17',0),(13,3,3,'Brother','2022-07-19',1),(14,7,1,'Brother','2021-02-15',0),(15,1,14,'Brother','2022-02-12',0),(16,5,2,'Sister','2022-05-22',1),(17,13,18,'Sister','2020-11-03',0),(18,4,16,'Sister','2021-01-23',0),(19,8,20,'Sister','2021-06-10',1),(20,9,9,'Sister','2022-06-14',1),(21,6,4,'Husband','2021-09-20',1),(22,13,3,'Husband','2020-11-09',0),(23,14,10,'Husband','2021-05-16',1),(24,5,5,'Husband','2020-10-26',1),(25,2,3,'Husband','2021-01-26',0),(26,1,9,'Wife','2021-09-15',0),(27,12,17,'Wife','2022-02-01',1),(28,7,13,'Wife','2020-10-08',1),(29,3,15,'Wife','2022-05-05',1),(30,2,16,'Wife','2021-11-26',1);
/*!40000 ALTER TABLE `patientcarer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-11 20:09:26
