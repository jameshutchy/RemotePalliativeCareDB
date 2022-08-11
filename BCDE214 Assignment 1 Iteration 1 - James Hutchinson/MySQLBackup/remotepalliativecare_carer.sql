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
-- Table structure for table `carer`
--

DROP TABLE IF EXISTS `carer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carer` (
  `carerNumber` int NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`carerNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carer`
--

LOCK TABLES `carer` WRITE;
/*!40000 ALTER TABLE `carer` DISABLE KEYS */;
INSERT INTO `carer` VALUES (1,'Faulkner','Wynter','Mrs','1953-08-11','female','(01) 5223 6258','(157) 275-5052','224-3478 Dui. St.','Morrinsville','South Island',1653,'m_faulkner5204@protonmail.com'),(2,'Armstrong','Idola','Mrs','1923-02-19','female','(06) 8835 7525','(765) 224-3819','6979 Eu Rd.','Nelson','South Island',5168,'armstrong_kiayada4544@outlook.conz'),(3,'Lyons','Chastity','Mrs','1937-02-26','female','(06) 6589 6637','(549) 963-6778','319-8156 Adipiscing Rd.','Dannevirke','North Island',2172,'l_rhiannon758@google.com'),(4,'Raymond','Kerry','Mrs','1925-06-22','female','(04) 1643 6816','(546) 436-4211','Ap #385-4925 Molestie Ave','Thames','South Island',9998,'t.raymond4204@hotmail.com'),(5,'Holloway','Megan','Mrs','1927-08-17','female','(06) 6316 9187','(727) 540-1881','8404 Risus Ave','North Shore','South Island',6042,'o.holloway3982@outlook.com'),(6,'Davidson','Audra','Ms','1946-05-21','female','(06) 6233 4902','(478) 448-5830','797-1584 Ornare. Ave','Waitara','North Island',3689,'d-audra7319@protonmail.ca'),(7,'Baldwin','Karen','Ms','1939-10-19','female','(06) 1467 5515','(431) 823-1296','P.O. Box 590, 4016 Quis St.','Timaru','North Island',2281,'baldwin-karen@google.ca'),(8,'Mayer','Yvette','Ms','1949-02-01','female','(08) 5358 6728','(673) 758-9819','Ap #307-1798 Natoque Street','Taupo','South Island',9159,'mayeryvette@google.conz'),(9,'Reese','Lillian','Ms','1932-06-20','female','(08) 6252 5272','(205) 532-7346','Ap #998-7562 Elit. Ave','Rotorua','South Island',7583,'l.reese7779@yahoo.conz'),(10,'Johnson','Mallory','Ms','1931-03-12','female','(06) 3374 3514','(483) 771-9411','952-8761 Risus. St.','New Plymouth','North Island',9251,'johnsonmallory@icloud.com'),(11,'Mann','Lee','Mr','1936-05-14','male','(03) 9502 5085','(533) 717-8745','P.O. Box 369, 2033 Quis St.','Invercargill','South Island',4416,'lmann3697@google.conz'),(12,'Sherman','Lawrence','Mr','1947-09-17','male','(02) 7245 2462','(761) 861-7549','Ap #646-8826 Feugiat Rd.','Masterton','North Island',8151,'s_lawrence@hotmail.org'),(13,'Fuller','Giacomo','Mr','1944-09-10','male','(06) 0769 2573','(437) 225-1841','Ap #403-2559 Facilisis Road','Porirua','South Island',7715,'g.fuller@yahoo.ca'),(14,'Gonzales','Duncan','Mr','1949-02-02','male','(09) 4394 2598','(681) 769-3386','4315 Aenean Av.','Morrinsville','North Island',3851,'dgonzales@protonmail.conz'),(15,'Boyd','Tarik','Mr','1923-12-12','male','(03) 1772 1256','(263) 757-2835','9828 At Street','Picton','North Island',8633,'t-boyd5890@icloud.ca');
/*!40000 ALTER TABLE `carer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-11 20:09:25
