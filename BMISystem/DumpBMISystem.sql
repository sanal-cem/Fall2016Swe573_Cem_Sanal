-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: mysql1.cibo6qjcekup.eu-west-2.rds.amazonaws.com    Database: bmi
-- ------------------------------------------------------
-- Server version	5.6.29

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
-- Table structure for table `UACTIVITY`
--

DROP TABLE IF EXISTS `UACTIVITY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UACTIVITY` (
  `UNAME` varchar(64) DEFAULT NULL,
  `ACTID` varchar(32) DEFAULT NULL,
  `ACTNAME` varchar(64) NOT NULL DEFAULT '',
  `ACTTYPE` varchar(64) DEFAULT NULL,
  `ACTCALORY` bigint(20) DEFAULT NULL,
  `ACTTIME` datetime DEFAULT NULL,
  PRIMARY KEY (`ACTNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UACTIVITY`
--

LOCK TABLES `UACTIVITY` WRITE;
/*!40000 ALTER TABLE `UACTIVITY` DISABLE KEYS */;
INSERT INTO `UACTIVITY` VALUES ('cemsanal@yandex.com','Activity 123','deneme Activity Name','deneme Activity Type',1324,'1990-12-12 00:00:00'),('cemsanal@yandex.com','Deneme Activity ID 1','deneme Activity Name 1','deneme Activity Type 1',23,'1999-01-15 00:00:00'),('cemsanal@yandex.com','uoÄ±eru243','deneme Activity Name 2','sdfwerfrf Type',234573248,'2016-12-22 00:00:00'),('cemsanal@yandex.com','45354','erfedfvderf','werwefwvsd',433454,'2017-01-24 00:00:00'),('cemsanal@yandex.com','werewrfsdcs','frferfregf','wefjÄ±wef',35345,'2017-01-17 00:00:00'),('cemsanal@yandex.com','Deneme Activity ID 2','sÄ±fhue2349','wehfuwer',23848347,'2016-11-09 00:00:00');
/*!40000 ALTER TABLE `UACTIVITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UFOOD`
--

DROP TABLE IF EXISTS `UFOOD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UFOOD` (
  `UNAME` varchar(64) DEFAULT NULL,
  `FOFFSET` int(11) DEFAULT NULL,
  `FGROUP` varchar(64) DEFAULT NULL,
  `FNAME` varchar(64) NOT NULL DEFAULT '',
  `FNDBNO` varchar(32) DEFAULT NULL,
  `FDS` varchar(32) DEFAULT NULL,
  `FCALORY` bigint(20) DEFAULT NULL,
  `FINGRED` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UFOOD`
--

LOCK TABLES `UFOOD` WRITE;
/*!40000 ALTER TABLE `UFOOD` DISABLE KEYS */;
INSERT INTO `UFOOD` VALUES ('cemsanal@yandex.com',23542,'wgfaewrger','aergaergesrg','SDJFKEJHEJFD','dzbzdfbvdestre',23423,'dfbsthsrtgbsthstr wadgfdfgdf'),('cemsanal@yandex.com',43534,'deneme food group 3','deneme food burger','i23487jkfsd','dahsudhe4353',34534654,'deneme food ingredients'),('cemsanal@yandex.com',234,'deneme food group','deneme food name','234874sjdfh','deneme food ds',234,'deneme food ingredients asd'),('cemsanal@yandex.com',56,'gerger','dfgsgetre','234534','rtyrtr',4534,'fedrgrfhtfghrf'),('cemsanal@yandex.com',3445,'saÄ±fdhfe','jesrÄ±fjerÄ±','sdgferg34534','ansdfjksenoÄ±',2349,'sdfjnwÄ± ingredients 238745'),('cemsanal@yandex.com',545445,'rtgffgjghf','sdreddfsfdd','1cvsadrete345','dffdcvvccv',4554,'erdfdffdcvvccv'),('cemsanal@yandex.com',343,'sdfgefgfg','wrerfddfdgf','834?gjgfjdd','erredfdfdf',4545,'ugÄ±oygyg');
/*!40000 ALTER TABLE `UFOOD` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS` (
  `UNAME` varchar(64) NOT NULL DEFAULT '',
  `PASS` varchar(256) DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `SURNAME` varchar(32) DEFAULT NULL,
  `AGE` varchar(3) DEFAULT NULL,
  `COMMENT` varchar(1024) DEFAULT NULL,
  `HEIGHT` float DEFAULT NULL,
  `WEIGHT` float DEFAULT NULL,
  `BMI` float DEFAULT NULL,
  PRIMARY KEY (`UNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES ('cemsanal@yandex.com','cemcem','Cem','Sanal','27','deneme comment Cem 123435',81.1,68.3,7.30019);
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-01-08 16:27:52
