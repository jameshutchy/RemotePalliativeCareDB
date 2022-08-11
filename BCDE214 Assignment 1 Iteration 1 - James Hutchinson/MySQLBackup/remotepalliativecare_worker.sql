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
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `workerNumber` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(40) NOT NULL,
  `firstName` varchar(40) NOT NULL,
  `title` varchar(15) DEFAULT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `contactNumber` varchar(15) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(40) NOT NULL,
  `region` varchar(40) NOT NULL,
  `postalCode` int NOT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  `startAvailability` time NOT NULL,
  `endAvailability` time NOT NULL,
  PRIMARY KEY (`workerNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (1,'Ayala','Jameson','Mr','1934-06-07','male','(981) 868-2303','857-4926 Non Rd.','Whakatane','South Island',3180,'j.ayala1199@aol.ca','06:04:35','21:40:41'),(2,'Kane','Colin','Mr','1925-10-26','male','(823) 274-1543','P.O. Box 674, 5735 Placerat, Av.','Queenstown','North Island',9742,'colinkane8612@aol.conz','06:06:40','23:38:33'),(3,'Gould','Arsenio','Mr','1937-11-26','male','(454) 391-4655','479 Fusce Road','Whakatane','South Island',6724,'agould@outlook.com','06:03:55','21:26:20'),(4,'Stanton','Kyle','Mr','1949-10-16','male','(441) 655-8876','Ap #724-976 Orci, Ave','Napier','South Island',3606,'k_stanton5496@outlook.ca','06:11:20','21:22:42'),(5,'Thornton','Quinlan','Mr','1939-03-01','male','(295) 653-4713','4519 Dolor. Rd.','Masterton','South Island',3220,'q_thornton2525@outlook.conz','06:00:23','19:09:11'),(6,'Mason','Shay','Mrs','1928-07-04','female','(307) 718-5607','7072 Duis Rd.','Timaru','North Island',6362,'m-shay@google.com','07:55:12','23:37:44'),(7,'Bryan','Chava','Mrs','1923-06-23','female','(354) 404-3503','936-7361 Lorem St.','Motueka','North Island',1575,'bryan_chava@icloud.conz','08:39:38','19:54:33'),(8,'Pace','Cathleen','Mrs','1942-10-28','female','(817) 528-7266','534-2312 Semper, Rd.','Wanaka','North Island',5938,'pace.cathleen@aol.net','07:57:43','19:09:32'),(9,'Whitley','Jena','Mrs','1938-06-24','female','(325) 336-0213','493-9964 Scelerisque Av.','Porirua','South Island',3718,'whitley-jena@aol.org','07:02:53','20:29:30'),(10,'Cohen','Jana','Mrs','1948-07-06','female','(317) 820-9652','P.O. Box 203, 7164 Bibendum St.','Ashburton','North Island',5002,'j.cohen@aol.org','06:37:09','19:53:53'),(11,'Drake','Deborah','Mrs','1934-12-15','female','(471) 875-8218','Ap #782-507 Dictum Ave','Matamata','North Island',7950,'ddrake@yahoo.ca','07:29:30','17:31:50'),(12,'King','Giselle','Mrs','1944-02-01','female','(434) 587-2744','647-5653 Metus. St.','Nelson','North Island',5790,'giselleking7930@protonmail.conz','07:08:32','20:26:48'),(13,'Rosario','Bianca','Mrs','1940-11-29','female','(446) 886-7614','Ap #639-5097 Eu, St.','Manukau','North Island',4323,'b-rosario@outlook.com','06:31:56','21:25:23'),(14,'Hamilton','Medge','Mrs','1926-10-27','female','(668) 484-8937','P.O. Box 711, 8849 Ac Road','Whakatane','North Island',8836,'medge_hamilton2072@aol.ca','07:12:01','21:21:40'),(15,'Barnes','Destiny','Mrs','1945-04-22','female','(387) 630-2163','P.O. Box 371, 3358 Mauris Street','Queenstown','South Island',4931,'barnesdestiny3743@protonmail.conz','08:00:02','22:40:08'),(16,'Mcconnell','Serina','Mrs','1981-05-26','female','(296) 358-4275','P.O. Box 720, 4948 Aliquet. Road','Alexandra','North Island',4544,'mcconnell_serina@aol.ca','06:47:01','23:32:09'),(17,'Freeman','Phoebe','Mrs','1981-03-14','female','(777) 826-4618','5506 Enim, Avenue','Whangarei','North Island',9441,'phoebefreeman215@yahoo.ca','08:38:08','17:50:58'),(18,'Baker','Bryar','Mrs','1980-04-29','female','(776) 884-1541','9809 Cursus St.','Oamaru','North Island',1101,'b.baker@yahoo.net','08:43:32','18:19:27'),(19,'Weaver','Tamekah','Mrs','1987-09-10','female','(929) 347-7225','Ap #260-5977 Convallis Ave','Queenstown','South Island',6862,'t.weaver8395@aol.org','08:25:27','21:10:00'),(20,'Wilson','Shelby','Mrs','1983-05-20','female','(581) 737-0723','302-7509 Urna. Ave','Hamilton','South Island',1359,'s.wilson@google.ca','08:00:32','17:56:35');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
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
