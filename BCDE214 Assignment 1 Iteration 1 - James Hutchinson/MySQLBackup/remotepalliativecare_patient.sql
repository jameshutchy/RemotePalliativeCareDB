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
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `patientNumber` int NOT NULL AUTO_INCREMENT,
  `lastName` varchar(40) NOT NULL,
  `firstName` varchar(40) NOT NULL,
  `title` varchar(15) DEFAULT NULL,
  `DOB` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `homeNumber` varchar(15) DEFAULT NULL,
  `mobileNumber` varchar(15) DEFAULT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(40) NOT NULL,
  `region` varchar(40) NOT NULL,
  `postalCode` int NOT NULL,
  `emailAddress` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`patientNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,'Faulkner','Mariam','Mrs','1953-08-11','female','(01) 5223 6258','(157) 275-5052','224-3478 Dui. St.','Morrinsville','South Island',1653,'m_faulkner5204@protonmail.com'),(2,'Armstrong','Kiayada','Mrs','1923-02-19','female','(06) 8835 7525','(765) 224-3819','6979 Eu Rd.','Nelson','South Island',5168,'armstrong_kiayada4544@outlook.conz'),(3,'Lyons','Rhiannon','Mrs','1937-02-26','female','(06) 6589 6637','(549) 963-6778','319-8156 Adipiscing Rd.','Dannevirke','North Island',2172,'l_rhiannon758@google.com'),(4,'Raymond','Tatum','Mrs','1925-06-22','female','(04) 1643 6816','(546) 436-4211','Ap #385-4925 Molestie Ave','Thames','South Island',9998,'t.raymond4204@hotmail.com'),(5,'Holloway','Orli','Mrs','1927-08-17','female','(06) 6316 9187','(727) 540-1881','8404 Risus Ave','North Shore','South Island',6042,'o.holloway3982@outlook.com'),(6,'Faulkner','Adam','Mr','1953-08-11','male','(01) 5223 6258','(157) 275-5052','224-3478 Dui. St.','Morrinsville','South Island',1653,'m_faulkner5204@protonmail.com'),(7,'Armstrong','Mohammad','Mr','1923-02-19','male','(06) 8835 7525','(765) 224-3819','6979 Eu Rd.','Nelson','South Island',5168,'armstrong_kiayada4544@outlook.conz'),(8,'Lyons','Hashim','Mr','1937-02-26','male','(06) 6589 6637','(549) 963-6778','319-8156 Adipiscing Rd.','Dannevirke','North Island',2172,'l_rhiannon758@google.com'),(9,'Raymond','Keaton','Mr','1925-06-22','male','(04) 1643 6816','(546) 436-4211','Ap #385-4925 Molestie Ave','Thames','South Island',9998,'t.raymond4204@hotmail.com'),(10,'Holloway','Hayes','Mr','1927-08-17','male','(06) 6316 9187','(727) 540-1881','8404 Risus Ave','North Shore','South Island',6042,'o.holloway3982@outlook.com'),(11,'Faulkner','Adam','Dr','1953-08-11','male','(01) 5223 6258','(157) 275-5052','224-3478 Dui. St.','Morrinsville','South Island',1653,'m_faulkner5204@protonmail.com'),(12,'Armstrong','Mohammad','Dr','1923-02-19','male','(06) 8835 7525','(765) 224-3819','6979 Eu Rd.','Nelson','South Island',5168,'armstrong_kiayada4544@outlook.conz'),(13,'Lyons','Hashim','Dr','1937-02-26','male','(06) 6589 6637','(549) 963-6778','319-8156 Adipiscing Rd.','Dannevirke','North Island',2172,'l_rhiannon758@google.com'),(14,'Raymond','Keaton','Dr','1925-06-22','male','(04) 1643 6816','(546) 436-4211','Ap #385-4925 Molestie Ave','Thames','South Island',9998,'t.raymond4204@hotmail.com'),(15,'Holloway','Hayes','Dr','1927-08-17','male','(06) 6316 9187','(727) 540-1881','8404 Risus Ave','North Shore','South Island',6042,'o.holloway3982@outlook.com'),(16,'Faulkner','Wynter','Dr','1953-08-11','female','(01) 5223 6258','(157) 275-5052','224-3478 Dui. St.','Morrinsville','South Island',1653,'m_faulkner5204@protonmail.com'),(17,'Armstrong','Idola','Dr','1923-02-19','female','(06) 8835 7525','(765) 224-3819','6979 Eu Rd.','Nelson','South Island',5168,'armstrong_kiayada4544@outlook.conz'),(18,'Lyons','Chastity','Dr','1937-02-26','female','(06) 6589 6637','(549) 963-6778','319-8156 Adipiscing Rd.','Dannevirke','North Island',2172,'l_rhiannon758@google.com'),(19,'Raymond','Kerry','Dr','1925-06-22','female','(04) 1643 6816','(546) 436-4211','Ap #385-4925 Molestie Ave','Thames','South Island',9998,'t.raymond4204@hotmail.com'),(20,'Holloway','Megan','Dr','1927-08-17','female','(06) 6316 9187','(727) 540-1881','8404 Risus Ave','North Shore','South Island',6042,'o.holloway3982@outlook.com');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
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
