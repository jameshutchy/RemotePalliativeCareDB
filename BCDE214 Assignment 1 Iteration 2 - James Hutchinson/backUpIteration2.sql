USE remotepalliativecare;
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
INSERT INTO `carer` VALUES (1,'Faulkner','Wynter','Mrs','1953-08-11','female','(01) 5223 6258','(157) 275-5052','224-3478 Dui. St.','Morrinsville','South Island',1653,'m_faulkner5204@protonmail.com\r'),(2,'Armstrong','Idola','Mrs','1923-02-19','female','(06) 8835 7525','(765) 224-3819','6979 Eu Rd.','Nelson','South Island',5168,'armstrong_kiayada4544@outlook.conz\r'),(3,'Lyons','Chastity','Mrs','1937-02-26','female','(06) 6589 6637','(549) 963-6778','319-8156 Adipiscing Rd.','Dannevirke','North Island',2172,'l_rhiannon758@google.com\r'),(4,'Raymond','Kerry','Mrs','1925-06-22','female','(04) 1643 6816','(546) 436-4211','Ap #385-4925 Molestie Ave','Thames','South Island',9998,'t.raymond4204@hotmail.com\r'),(5,'Holloway','Megan','Mrs','1927-08-17','female','(06) 6316 9187','(727) 540-1881','8404 Risus Ave','North Shore','South Island',6042,'o.holloway3982@outlook.com\r'),(6,'Davidson','Audra','Ms','1946-05-21','female','(06) 6233 4902','(478) 448-5830','797-1584 Ornare. Ave','Waitara','North Island',3689,'d-audra7319@protonmail.ca\r'),(7,'Baldwin','Karen','Ms','1939-10-19','female','(06) 1467 5515','(431) 823-1296','P.O. Box 590, 4016 Quis St.','Timaru','North Island',2281,'baldwin-karen@google.ca\r'),(8,'Mayer','Yvette','Ms','1949-02-01','female','(08) 5358 6728','(673) 758-9819','Ap #307-1798 Natoque Street','Taupo','South Island',9159,'mayeryvette@google.conz\r'),(9,'Reese','Lillian','Ms','1932-06-20','female','(08) 6252 5272','(205) 532-7346','Ap #998-7562 Elit. Ave','Rotorua','South Island',7583,'l.reese7779@yahoo.conz\r'),(10,'Johnson','Mallory','Ms','1931-03-12','female','(06) 3374 3514','(483) 771-9411','952-8761 Risus. St.','New Plymouth','North Island',9251,'johnsonmallory@icloud.com\r'),(11,'Mann','Lee','Mr','1936-05-14','male','(03) 9502 5085','(533) 717-8745','P.O. Box 369, 2033 Quis St.','Invercargill','South Island',4416,'lmann3697@google.conz\r'),(12,'Sherman','Lawrence','Mr','1947-09-17','male','(02) 7245 2462','(761) 861-7549','Ap #646-8826 Feugiat Rd.','Masterton','North Island',8151,'s_lawrence@hotmail.org\r'),(13,'Fuller','Giacomo','Mr','1944-09-10','male','(06) 0769 2573','(437) 225-1841','Ap #403-2559 Facilisis Road','Porirua','South Island',7715,'g.fuller@yahoo.ca\r'),(14,'Gonzales','Duncan','Mr','1949-02-02','male','(09) 4394 2598','(681) 769-3386','4315 Aenean Av.','Morrinsville','North Island',3851,'dgonzales@protonmail.conz\r'),(15,'Boyd','Tarik','Mr','1923-12-12','male','(03) 1772 1256','(263) 757-2835','9828 At Street','Picton','North Island',8633,'t-boyd5890@icloud.ca\r');
/*!40000 ALTER TABLE `carer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact` (
  `contactNumber` int NOT NULL AUTO_INCREMENT,
  `contactorNumber` int NOT NULL,
  `patientNumber` int NOT NULL,
  `workerNumber` int NOT NULL,
  `dateOfContact` datetime NOT NULL,
  `reasonForContact` text NOT NULL,
  `actionsTaken` text NOT NULL,
  PRIMARY KEY (`contactNumber`),
  KEY `contactorNumber` (`contactorNumber`),
  KEY `patientNumber` (`patientNumber`),
  KEY `workerNumber` (`workerNumber`),
  CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`contactorNumber`) REFERENCES `contactor` (`contactorNumber`),
  CONSTRAINT `contact_ibfk_2` FOREIGN KEY (`patientNumber`) REFERENCES `patient` (`patientNumber`),
  CONSTRAINT `contact_ibfk_3` FOREIGN KEY (`workerNumber`) REFERENCES `worker` (`workerNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,1,14,10,'2022-01-13 06:04:34','velit justo nec ante. Maecenas mi felis adipiscing fringilla porttitor vulputate posuere vulputate lacus. Cras','tristique ac eleifend vitae erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam erat\r'),(2,2,8,4,'2020-10-15 16:49:07','felis orci adipiscing non luctus sit amet faucibus ut nulla. Cras eu tellus eu augue porttitor interdum. Sed','eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh.\r'),(3,3,1,15,'2022-01-24 08:09:07','sem semper erat in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac','elementum at egestas a scelerisque sed sapien. Nunc pulvinar arcu et pede. Nunc sed\r'),(4,4,14,14,'2021-01-12 11:58:44','ipsum porta elit a feugiat tellus lorem eu metus. In lorem. Donec elementum lorem ut aliquam','dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et\r'),(5,5,6,4,'2022-07-21 15:39:08','porttitor tellus non magna. Nam ligula elit pretium et rutrum non hendrerit id ante. Nunc mauris sapien cursus in hendrerit consectetuer cursus et magna. Praesent','Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper velit in aliquet lobortis nisi nibh lacinia orci consectetuer\r'),(6,6,4,15,'2020-12-05 16:05:22','tempus non lacinia at iaculis quis pede. Praesent eu dui. Cum sociis','arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui semper et lacinia vitae sodales at velit. Pellentesque ultricies dignissim\r'),(7,7,13,2,'2021-05-01 16:57:53','sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus mus. Proin vel nisl. Quisque','dis parturient montes nascetur ridiculus mus. Proin vel arcu eu\r'),(8,8,12,14,'2022-02-12 13:20:01','rutrum justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id','Donec consectetuer mauris id sapien. Cras dolor dolor tempus non lacinia at iaculis quis pede. Praesent eu dui. Cum sociis natoque penatibus et magnis\r'),(9,9,9,4,'2021-07-20 16:16:56','lacus. Nulla tincidunt neque vitae semper egestas urna justo faucibus lectus a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras','quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In\r'),(10,10,19,14,'2022-06-03 21:28:57','eu dolor egestas rhoncus. Proin nisl sem consequat nec mollis vitae posuere at velit. Cras lorem lorem luctus ut pellentesque eget dictum placerat','neque tellus imperdiet non vestibulum nec euismod in dolor. Fusce feugiat. Lorem ipsum dolor sit amet consectetuer\r'),(11,11,17,12,'2022-01-02 03:04:49','non massa non ante bibendum ullamcorper. Duis cursus diam at pretium','placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante iaculis nec eleifend non dapibus rutrum justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed\r'),(12,12,17,9,'2021-12-25 01:47:53','cursus non egestas a dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu','Sed auctor odio a purus. Duis elementum dui quis accumsan convallis ante lectus convallis est vitae sodales nisi magna sed dui. Fusce aliquam enim nec tempus scelerisque lorem\r'),(13,13,11,4,'2021-07-06 08:20:52','semper rutrum. Fusce dolor quam elementum at egestas a scelerisque sed sapien. Nunc pulvinar arcu et','risus. Quisque libero lacus varius et euismod et commodo at libero. Morbi accumsan laoreet ipsum. Curabitur consequat lectus sit amet luctus vulputate nisi sem semper erat in consectetuer ipsum nunc\r'),(14,14,10,12,'2022-01-18 02:09:42','magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis','et eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla\r'),(15,15,19,1,'2021-12-30 10:38:03','nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor dictum eu placerat eget venenatis','luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt\r'),(16,3,4,5,'2022-08-18 22:08:50','testing view','to have a record in the last 7 days');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactcentre`
--

DROP TABLE IF EXISTS `contactcentre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactcentre` (
  `contactCentreNum` int NOT NULL AUTO_INCREMENT,
  `companyName` varchar(50) NOT NULL,
  `contactNumber` varchar(15) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(40) NOT NULL,
  `region` varchar(40) NOT NULL,
  `postalCode` int NOT NULL,
  PRIMARY KEY (`contactCentreNum`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactcentre`
--

LOCK TABLES `contactcentre` WRITE;
/*!40000 ALTER TABLE `contactcentre` DISABLE KEYS */;
INSERT INTO `contactcentre` VALUES (1,'Mollis Duis LLC','0800 816 1736','799-8428 In St.','Hamilton','South Island',645),(2,'Imperdiet Nec Leo Foundation','0800 378 3142','Ap #155-8755 Metus. Street','Motueka','South Island',3924),(3,'Magna Ut Incorporated','0800 845 3342','Ap #127-110 Pharetra. Street','Balclutha','North Island',5042),(4,'Natoque Penatibus Corporation','0800 852 6239','8061 Et Ave','Christchurch','South Island',926),(5,'Lectus Inc.','0800 699 3182','691-6408 Ut Rd.','Motueka','South Island',4217);
/*!40000 ALTER TABLE `contactcentre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactor`
--

DROP TABLE IF EXISTS `contactor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactor` (
  `contactorNumber` int NOT NULL AUTO_INCREMENT,
  `carerNumber` int DEFAULT NULL,
  `patientNumber` int DEFAULT NULL,
  PRIMARY KEY (`contactorNumber`),
  KEY `carerNumber` (`carerNumber`),
  KEY `patientNumber` (`patientNumber`),
  CONSTRAINT `contactor_ibfk_1` FOREIGN KEY (`carerNumber`) REFERENCES `carer` (`carerNumber`),
  CONSTRAINT `contactor_ibfk_2` FOREIGN KEY (`patientNumber`) REFERENCES `patient` (`patientNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactor`
--

LOCK TABLES `contactor` WRITE;
/*!40000 ALTER TABLE `contactor` DISABLE KEYS */;
INSERT INTO `contactor` VALUES (1,1,NULL),(2,2,NULL),(3,3,NULL),(4,4,NULL),(5,5,NULL),(6,6,NULL),(7,7,NULL),(8,8,NULL),(9,9,NULL),(10,10,NULL),(11,11,NULL),(12,12,NULL),(13,13,NULL),(14,14,NULL),(15,15,NULL);
/*!40000 ALTER TABLE `contactor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `diagnosis` (
  `diagnosisNumber` int NOT NULL AUTO_INCREMENT,
  `medicalCondition` text NOT NULL,
  PRIMARY KEY (`diagnosisNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis`
--

LOCK TABLES `diagnosis` WRITE;
/*!40000 ALTER TABLE `diagnosis` DISABLE KEYS */;
INSERT INTO `diagnosis` VALUES (1,'Arthritis\r'),(2,'Asthma\r'),(3,'Blindness\r'),(4,'Cancer\r'),(5,'Chronic Bronchitis\r'),(6,'Chronic Kidney Disease\r'),(7,'Coronary Heart Disease\r'),(8,'Deep Vein Thrombosis\r'),(9,'Dementia\r'),(10,'Diabetes\r'),(11,'Epilepsy\r'),(12,'High Cholesterol\r'),(13,'Hypertension\r'),(14,'Motor Neurone Disease\r'),(15,'Multiple Sclerosis\r'),(16,'Osteoporosis\r'),(17,'Pagets Disease of Bone\r'),(18,'Parkinsons Disease\r'),(19,'Shingles\r'),(20,'Stroke\r');
/*!40000 ALTER TABLE `diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `patient` VALUES (1,'Faulkner','Mariam','Mrs','1953-08-11','female','(01) 5223 6258','(157) 275-5052','224-3478 Dui. St.','Morrinsville','South Island',1653,'m_faulkner5204@protonmail.com\r'),(2,'Armstrong','Kiayada','Mrs','1923-02-19','female','(06) 8835 7525','(765) 224-3819','6979 Eu Rd.','Nelson','South Island',5168,'armstrong_kiayada4544@outlook.conz\r'),(3,'Lyons','Rhiannon','Mrs','1937-02-26','female','(06) 6589 6637','(549) 963-6778','319-8156 Adipiscing Rd.','Dannevirke','North Island',2172,'l_rhiannon758@google.com\r'),(4,'Raymond','Tatum','Mrs','1925-06-22','female','(04) 1643 6816','(546) 436-4211','Ap #385-4925 Molestie Ave','Thames','South Island',9998,'t.raymond4204@hotmail.com\r'),(5,'Holloway','Orli','Mrs','1927-08-17','female','(06) 6316 9187','(727) 540-1881','8404 Risus Ave','North Shore','South Island',6042,'o.holloway3982@outlook.com\r'),(6,'Faulkner','Adam','Mr','1953-08-11','male','(01) 5223 6258','(157) 275-5052','224-3478 Dui. St.','Morrinsville','South Island',1653,'m_faulkner5204@protonmail.com\r'),(7,'Armstrong','Mohammad','Mr','1923-02-19','male','(06) 8835 7525','(765) 224-3819','6979 Eu Rd.','Nelson','South Island',5168,'armstrong_kiayada4544@outlook.conz\r'),(8,'Lyons','Hashim','Mr','1937-02-26','male','(06) 6589 6637','(549) 963-6778','319-8156 Adipiscing Rd.','Dannevirke','North Island',2172,'l_rhiannon758@google.com\r'),(9,'Raymond','Keaton','Mr','1925-06-22','male','(04) 1643 6816','(546) 436-4211','Ap #385-4925 Molestie Ave','Thames','South Island',9998,'t.raymond4204@hotmail.com\r'),(10,'Holloway','Hayes','Mr','1927-08-17','male','(06) 6316 9187','(727) 540-1881','8404 Risus Ave','North Shore','South Island',6042,'o.holloway3982@outlook.com\r'),(11,'Faulkner','Adam','Dr','1953-08-11','male','(01) 5223 6258','(157) 275-5052','224-3478 Dui. St.','Morrinsville','South Island',1653,'m_faulkner5204@protonmail.com\r'),(12,'Armstrong','Mohammad','Dr','1923-02-19','male','(06) 8835 7525','(765) 224-3819','6979 Eu Rd.','Nelson','South Island',5168,'armstrong_kiayada4544@outlook.conz\r'),(13,'Lyons','Hashim','Dr','1937-02-26','male','(06) 6589 6637','(549) 963-6778','319-8156 Adipiscing Rd.','Dannevirke','North Island',2172,'l_rhiannon758@google.com\r'),(14,'Raymond','Keaton','Dr','1925-06-22','male','(04) 1643 6816','(546) 436-4211','Ap #385-4925 Molestie Ave','Thames','South Island',9998,'t.raymond4204@hotmail.com\r'),(15,'Holloway','Hayes','Dr','1927-08-17','male','(06) 6316 9187','(727) 540-1881','8404 Risus Ave','North Shore','South Island',6042,'o.holloway3982@outlook.com\r'),(16,'Faulkner','Wynter','Dr','1953-08-11','female','(01) 5223 6258','(157) 275-5052','224-3478 Dui. St.','Morrinsville','South Island',1653,'m_faulkner5204@protonmail.com\r'),(17,'Armstrong','Idola','Dr','1923-02-19','female','(06) 8835 7525','(765) 224-3819','6979 Eu Rd.','Nelson','South Island',5168,'armstrong_kiayada4544@outlook.conz\r'),(18,'Lyons','Chastity','Dr','1937-02-26','female','(06) 6589 6637','(549) 963-6778','319-8156 Adipiscing Rd.','Dannevirke','North Island',2172,'l_rhiannon758@google.com\r'),(19,'Raymond','Kerry','Dr','1925-06-22','female','(04) 1643 6816','(546) 436-4211','Ap #385-4925 Molestie Ave','Thames','South Island',9998,'t.raymond4204@hotmail.com\r'),(20,'Holloway','Megan','Dr','1927-08-17','female','(06) 6316 9187','(727) 540-1881','8404 Risus Ave','North Shore','South Island',6042,'o.holloway3982@outlook.com\r');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `patientdiagnosis`
--

DROP TABLE IF EXISTS `patientdiagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientdiagnosis` (
  `patientDiagnosisNumber` int NOT NULL AUTO_INCREMENT,
  `patientNumber` int NOT NULL,
  `diagnosisNumber` int NOT NULL,
  `additionalNotes` text,
  `dateDiagnosed` date DEFAULT NULL,
  PRIMARY KEY (`patientDiagnosisNumber`),
  KEY `patientNumber` (`patientNumber`),
  KEY `diagnosisNumber` (`diagnosisNumber`),
  CONSTRAINT `patientdiagnosis_ibfk_1` FOREIGN KEY (`patientNumber`) REFERENCES `patient` (`patientNumber`),
  CONSTRAINT `patientdiagnosis_ibfk_2` FOREIGN KEY (`diagnosisNumber`) REFERENCES `diagnosis` (`diagnosisNumber`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientdiagnosis`
--

LOCK TABLES `patientdiagnosis` WRITE;
/*!40000 ALTER TABLE `patientdiagnosis` DISABLE KEYS */;
INSERT INTO `patientdiagnosis` VALUES (1,1,1,'testing notes ','2022-08-17'),(2,2,2,'testing notes ','2022-07-20'),(3,3,3,'testing notes ','2022-07-21'),(4,4,4,'testing notes ','2022-07-22'),(5,5,5,'','2022-07-23'),(6,6,6,'','2022-07-24'),(7,7,7,'','2022-07-25'),(8,8,8,'','2022-07-26'),(9,9,9,'testing notes ','2022-07-27'),(10,10,10,'testing notes ','2022-07-28'),(11,11,11,'testing notes ','2022-07-29'),(12,12,12,'testing notes ','2022-07-30'),(13,13,13,'testing notes ','2022-07-31'),(14,14,14,'testing notes ','2022-08-01'),(15,15,15,'testing notes ','2022-08-02'),(16,16,1,'testing notes ','2022-08-03'),(17,17,2,'','2022-08-04'),(18,18,3,'','2022-08-05'),(19,19,4,'','2022-08-06'),(20,1,5,'','2022-08-07'),(21,2,6,'testing notes ','2022-08-08'),(22,3,9,'testing notes ','2022-08-09'),(23,4,20,'testing notes ','2022-08-10'),(24,5,3,'testing notes ','2022-08-11'),(25,6,17,'testing notes ','2022-08-12'),(26,7,16,'','2022-08-13'),(27,8,18,'','2022-08-14'),(28,8,19,'','2022-08-15'),(29,9,20,'','2022-08-16');
/*!40000 ALTER TABLE `patientdiagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vcontactsmadepast7days`
--

DROP TABLE IF EXISTS `vcontactsmadepast7days`;
/*!50001 DROP VIEW IF EXISTS `vcontactsmadepast7days`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vcontactsmadepast7days` AS SELECT 
 1 AS `Patient Number`,
 1 AS `Patient Name`,
 1 AS `Patient Age`,
 1 AS `Time of Contact`,
 1 AS `Reason for Contact`,
 1 AS `Actions Taken`,
 1 AS `Worker Number`,
 1 AS `Worker Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vpercentageofcontactsbyregion`
--

DROP TABLE IF EXISTS `vpercentageofcontactsbyregion`;
/*!50001 DROP VIEW IF EXISTS `vpercentageofcontactsbyregion`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vpercentageofcontactsbyregion` AS SELECT 
 1 AS `Region`,
 1 AS `Region Percentage`,
 1 AS `Average Age`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vpercentageofprimarycarerrelationship`
--

DROP TABLE IF EXISTS `vpercentageofprimarycarerrelationship`;
/*!50001 DROP VIEW IF EXISTS `vpercentageofprimarycarerrelationship`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vpercentageofprimarycarerrelationship` AS SELECT 
 1 AS `Relationship To Patient`,
 1 AS `Percentage`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `worker`
--

DROP TABLE IF EXISTS `worker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker` (
  `workerNumber` int NOT NULL AUTO_INCREMENT,
  `contactCentreNum` int NOT NULL,
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
  PRIMARY KEY (`workerNumber`),
  KEY `contactCentreNum` (`contactCentreNum`),
  CONSTRAINT `worker_ibfk_1` FOREIGN KEY (`contactCentreNum`) REFERENCES `contactcentre` (`contactCentreNum`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker`
--

LOCK TABLES `worker` WRITE;
/*!40000 ALTER TABLE `worker` DISABLE KEYS */;
INSERT INTO `worker` VALUES (1,1,'Ayala','Jameson','Mr','1934-06-07','male','(981) 868-2303','857-4926 Non Rd.','Whakatane','South Island',3180,'j.ayala1199@aol.ca','06:04:35','21:40:41'),(2,1,'Kane','Colin','Mr','1925-10-26','male','(823) 274-1543','P.O. Box 674, 5735 Placerat, Av.','Queenstown','North Island',9742,'colinkane8612@aol.conz','06:06:40','23:38:33'),(3,1,'Gould','Arsenio','Mr','1937-11-26','male','(454) 391-4655','479 Fusce Road','Whakatane','South Island',6724,'agould@outlook.com','06:03:55','21:26:20'),(4,1,'Stanton','Kyle','Mr','1949-10-16','male','(441) 655-8876','Ap #724-976 Orci, Ave','Napier','South Island',3606,'k_stanton5496@outlook.ca','06:11:20','21:22:42'),(5,1,'Thornton','Quinlan','Mr','1939-03-01','male','(295) 653-4713','4519 Dolor. Rd.','Masterton','South Island',3220,'q_thornton2525@outlook.conz','06:00:23','19:09:11'),(6,2,'Mason','Shay','Mrs','1928-07-04','female','(307) 718-5607','7072 Duis Rd.','Timaru','North Island',6362,'m-shay@google.com','07:55:12','23:37:44'),(7,2,'Bryan','Chava','Mrs','1923-06-23','female','(354) 404-3503','936-7361 Lorem St.','Motueka','North Island',1575,'bryan_chava@icloud.conz','08:39:38','19:54:33'),(8,2,'Pace','Cathleen','Mrs','1942-10-28','female','(817) 528-7266','534-2312 Semper, Rd.','Wanaka','North Island',5938,'pace.cathleen@aol.net','07:57:43','19:09:32'),(9,2,'Whitley','Jena','Mrs','1938-06-24','female','(325) 336-0213','493-9964 Scelerisque Av.','Porirua','South Island',3718,'whitley-jena@aol.org','07:02:53','20:29:30'),(10,2,'Cohen','Jana','Mrs','1948-07-06','female','(317) 820-9652','P.O. Box 203, 7164 Bibendum St.','Ashburton','North Island',5002,'j.cohen@aol.org','06:37:09','19:53:53'),(11,3,'Drake','Deborah','Mrs','1934-12-15','female','(471) 875-8218','Ap #782-507 Dictum Ave','Matamata','North Island',7950,'ddrake@yahoo.ca','07:29:30','17:31:50'),(12,4,'King','Giselle','Mrs','1944-02-01','female','(434) 587-2744','647-5653 Metus. St.','Nelson','North Island',5790,'giselleking7930@protonmail.conz','07:08:32','20:26:48'),(13,4,'Rosario','Bianca','Mrs','1940-11-29','female','(446) 886-7614','Ap #639-5097 Eu, St.','Manukau','North Island',4323,'b-rosario@outlook.com','06:31:56','21:25:23'),(14,5,'Hamilton','Medge','Mrs','1926-10-27','female','(668) 484-8937','P.O. Box 711, 8849 Ac Road','Whakatane','North Island',8836,'medge_hamilton2072@aol.ca','07:12:01','21:21:40'),(15,5,'Barnes','Destiny','Mrs','1945-04-22','female','(387) 630-2163','P.O. Box 371, 3358 Mauris Street','Queenstown','South Island',4931,'barnesdestiny3743@protonmail.conz','08:00:02','22:40:08'),(16,5,'Mcconnell','Serina','Mrs','1981-05-26','female','(296) 358-4275','P.O. Box 720, 4948 Aliquet. Road','Alexandra','North Island',4544,'mcconnell_serina@aol.ca','06:47:01','23:32:09'),(17,3,'Freeman','Phoebe','Mrs','1981-03-14','female','(777) 826-4618','5506 Enim, Avenue','Whangarei','North Island',9441,'phoebefreeman215@yahoo.ca','08:38:08','17:50:58'),(18,3,'Baker','Bryar','Mrs','1980-04-29','female','(776) 884-1541','9809 Cursus St.','Oamaru','North Island',1101,'b.baker@yahoo.net','08:43:32','18:19:27'),(19,4,'Weaver','Tamekah','Mrs','1987-09-10','female','(929) 347-7225','Ap #260-5977 Convallis Ave','Queenstown','South Island',6862,'t.weaver8395@aol.org','08:25:27','21:10:00'),(20,4,'Wilson','Shelby','Mrs','1983-05-20','female','(581) 737-0723','302-7509 Urna. Ave','Hamilton','South Island',1359,'s.wilson@google.ca','08:00:32','17:56:35');
/*!40000 ALTER TABLE `worker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `vcontactsmadepast7days`
--

/*!50001 DROP VIEW IF EXISTS `vcontactsmadepast7days`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vcontactsmadepast7days` AS select `c`.`patientNumber` AS `Patient Number`,concat(`p`.`firstName`,' ',`p`.`lastName`) AS `Patient Name`,timestampdiff(YEAR,`p`.`DOB`,curdate()) AS `Patient Age`,`c`.`dateOfContact` AS `Time of Contact`,`c`.`reasonForContact` AS `Reason for Contact`,`c`.`actionsTaken` AS `Actions Taken`,`c`.`workerNumber` AS `Worker Number`,concat(`w`.`firstName`,' ',`w`.`lastName`) AS `Worker Name` from ((`contact` `c` left join `patient` `p` on((`p`.`patientNumber` = `c`.`patientNumber`))) left join `worker` `w` on((`w`.`workerNumber` = `c`.`workerNumber`))) where (`c`.`dateOfContact` > (now() - interval 7 day)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vpercentageofcontactsbyregion`
--

/*!50001 DROP VIEW IF EXISTS `vpercentageofcontactsbyregion`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vpercentageofcontactsbyregion` AS select `p`.`region` AS `Region`,concat(cast(((count(0) * 100.0) / sum(count(0)) OVER () ) as decimal(5,2)),'%') AS `Region Percentage`,floor(avg(timestampdiff(YEAR,`p`.`DOB`,curdate()))) AS `Average Age` from (`contact` `c` left join `patient` `p` on((`p`.`patientNumber` = `c`.`patientNumber`))) group by `p`.`region` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vpercentageofprimarycarerrelationship`
--

/*!50001 DROP VIEW IF EXISTS `vpercentageofprimarycarerrelationship`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vpercentageofprimarycarerrelationship` AS select `p`.`relationship` AS `Relationship To Patient`,concat(cast(((count(0) * 100.0) / sum(count(0)) OVER () ) as decimal(5,2)),'%') AS `Percentage` from (`patientcarer` `p` left join `carer` `c` on((`c`.`carerNumber` = `p`.`carerNumber`))) where (`p`.`primaryCarer` = true) group by `p`.`relationship` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-18 22:34:11
