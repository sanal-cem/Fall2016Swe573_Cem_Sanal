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
-- Table structure for table `FNUTMEASURES`
--

DROP TABLE IF EXISTS `FNUTMEASURES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FNUTMEASURES` (
  `NID` varchar(32) DEFAULT NULL,
  `LABEL` varchar(64) NOT NULL DEFAULT '',
  `EQV` float DEFAULT NULL,
  `QTY` float DEFAULT NULL,
  `VALUE` float DEFAULT NULL,
  PRIMARY KEY (`LABEL`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FNUTMEASURES`
--

LOCK TABLES `FNUTMEASURES` WRITE;
/*!40000 ALTER TABLE `FNUTMEASURES` DISABLE KEYS */;
INSERT INTO `FNUTMEASURES` VALUES ('208','cup',120,0.5,300),('208','g',122,122,210),('208','serving',184,1,499),('208','strip',30,1,81);
/*!40000 ALTER TABLE `FNUTMEASURES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FNUTRIENTS`
--

DROP TABLE IF EXISTS `FNUTRIENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FNUTRIENTS` (
  `FNDBNO` varchar(32) DEFAULT NULL,
  `NID` varchar(32) NOT NULL DEFAULT '',
  `NNAME` varchar(64) DEFAULT NULL,
  `NGROUP` varchar(64) DEFAULT NULL,
  `NUNIT` varchar(16) DEFAULT NULL,
  `NVALUE` float DEFAULT NULL,
  PRIMARY KEY (`NID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FNUTRIENTS`
--

LOCK TABLES `FNUTRIENTS` WRITE;
/*!40000 ALTER TABLE `FNUTRIENTS` DISABLE KEYS */;
INSERT INTO `FNUTRIENTS` VALUES ('45054821','208','Energy','Proximates','kcal',49),('22912','255','Water','Proximates','g',78.8);
/*!40000 ALTER TABLE `FNUTRIENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FOODS`
--

DROP TABLE IF EXISTS `FOODS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `FOODS` (
  `UNAME` varchar(64) DEFAULT NULL,
  `FOFFSET` int(11) DEFAULT NULL,
  `FGROUP` varchar(64) DEFAULT NULL,
  `FNAME` varchar(128) NOT NULL DEFAULT '',
  `FNDBNO` varchar(32) DEFAULT NULL,
  `FDS` varchar(32) DEFAULT NULL,
  `FWEIGHT` float DEFAULT NULL,
  `FMEASURE` varchar(64) DEFAULT NULL,
  `FCALORY` float DEFAULT NULL,
  PRIMARY KEY (`FNAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FOODS`
--

LOCK TABLES `FOODS` WRITE;
/*!40000 ALTER TABLE `FOODS` DISABLE KEYS */;
INSERT INTO `FOODS` VALUES ('cem-sanal@hotmail.com',9,'Branded Food Products Database','CHICKEN NOODLE SOUP WITH TENDER CHICKEN, GARDEN FRESH VEGETABLES AND A RICH FLAVORFUL STOCK, UPC: 072036708922','45054821','BL',0,' ',0),('cemsanal@yandex.ru',9,'Meals, Entrees, and Side Dishes','Spaghetti, with meatballs in tomato sauce, canned','22912','SR',0,' ',0);
/*!40000 ALTER TABLE `FOODS` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `UACTIVITY` VALUES ('asd2@asd2.com','activity id 273647','activity name','activity type',234342,'2017-01-24 00:00:00'),('cemsanal@yandex.com','Activity 123','deneme Activity Name','deneme Activity Type',1324,'1990-12-12 00:00:00'),('cemsanal@yandex.com','Deneme Activity ID 1','deneme Activity Name 1','deneme Activity Type 1',23,'1999-01-15 00:00:00'),('cemsanal@yandex.com','uoÄ±eru243','deneme Activity Name 2','sdfwerfrf Type',234573248,'2016-12-22 00:00:00'),('cemsanal@yandex.com','45354','erfedfvderf','werwefwvsd',433454,'2017-01-24 00:00:00'),('cemsanal@yandex.com','werewrfsdcs','frferfregf','wefjÄ±wef',35345,'2017-01-17 00:00:00'),('uskudarli','3','swim','swim',120,'2017-01-09 00:00:00'),('cemsanal@yandex.com','Deneme Activity ID 2','sÄ±fhue2349','wehfuwer',23848347,'2016-11-09 00:00:00'),('uskudarli','7','walk','walk',90,'2017-01-09 00:00:00');
/*!40000 ALTER TABLE `UACTIVITY` ENABLE KEYS */;
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
  `GENDER` varchar(1) DEFAULT NULL,
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
INSERT INTO `USERS` VALUES ('asd2@asd2.com','cemcem','asd2','asd2','34','M','sdfsroÄ±fw128734239kfmd',18.1,70.1,150.424),('asd@asd.com','cemcem','Cem','Sanal','27','M','adsfsdfsrgfewrg',1.8,68,14754.3),('cem-sanal@hotmail.com','cemcem','Cem1','Sanal1','26','F','Female comment deneme 1234',1.81,67.7,14527.4),('cemsanal@yandex.com','cemcem','Cem','Sanal','27','M','deneme comment Cem 123435',81.1,68.3,7.30019),('cemsanal@yandex.ru','cemcem','Cem changed','Sanal changed','26','M','deneme 12343 asydge',18.4,69,143.274),('uskudarli','yemek123456','S','Uskudarli','23','F',' ',2.05,90,15055.3);
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

-- Dump completed on 2017-01-14 16:47:37
