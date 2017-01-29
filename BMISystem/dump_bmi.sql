-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: bmi
-- ------------------------------------------------------
-- Server version	5.7.14-log

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
  `ACTID` varchar(32) NOT NULL,
  `DURATION` float DEFAULT NULL,
  `TSTART` date DEFAULT NULL,
  PRIMARY KEY (`ACTID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UACTIVITY`
--

LOCK TABLES `UACTIVITY` WRITE;
/*!40000 ALTER TABLE `UACTIVITY` DISABLE KEYS */;
INSERT INTO `UACTIVITY` VALUES ('cemsanal@yandex.ru','100',348.5,'2019-04-01'),('cemsanal@yandex.com','7',150,'2018-07-01');
/*!40000 ALTER TABLE `UACTIVITY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UACTIVITYGRP`
--

DROP TABLE IF EXISTS `UACTIVITYGRP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UACTIVITYGRP` (
  `UNAME` varchar(64) DEFAULT NULL,
  `ACTGRPID` varchar(32) NOT NULL,
  `ACTNAME` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ACTGRPID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UACTIVITYGRP`
--

LOCK TABLES `UACTIVITYGRP` WRITE;
/*!40000 ALTER TABLE `UACTIVITYGRP` DISABLE KEYS */;
INSERT INTO `UACTIVITYGRP` VALUES ('cemsanal@yandex.ru','18','Water Activities'),('cemsanal@yandex.ru','4','Fishing and Hunting'),('cemsanal@yandex.com','1','Bicycling');
/*!40000 ALTER TABLE `UACTIVITYGRP` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UACTIVITYINFO`
--

DROP TABLE IF EXISTS `UACTIVITYINFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UACTIVITYINFO` (
  `UNAME` varchar(64) DEFAULT NULL,
  `ACTID` varchar(32) NOT NULL,
  `ACTCODE` varchar(32) DEFAULT NULL,
  `ACTMETS` float DEFAULT NULL,
  `ACTGROUPID` varchar(32) DEFAULT NULL,
  `ACTDESC` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ACTID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UACTIVITYINFO`
--

LOCK TABLES `UACTIVITYINFO` WRITE;
/*!40000 ALTER TABLE `UACTIVITYINFO` DISABLE KEYS */;
INSERT INTO `UACTIVITYINFO` VALUES ('cemsanal@yandex.ru','709','18110',4,'18','paddle boat'),('cemsanal@yandex.ru','100','04061',1.8,'4','fishing, jog or line, standing, general'),('cemsanal@yandex.com','7','01013',5.8,'1','bicycling, on dirt or farm road, moderate pace');
/*!40000 ALTER TABLE `UACTIVITYINFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UFMEASURES`
--

DROP TABLE IF EXISTS `UFMEASURES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UFMEASURES` (
  `UNAME` varchar(64) DEFAULT NULL,
  `FNAME` varchar(128) DEFAULT NULL,
  `LABEL` varchar(64) DEFAULT NULL,
  `EQV` float DEFAULT NULL,
  `QTY` float DEFAULT NULL,
  `VALUE` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UFMEASURES`
--

LOCK TABLES `UFMEASURES` WRITE;
/*!40000 ALTER TABLE `UFMEASURES` DISABLE KEYS */;
INSERT INTO `UFMEASURES` VALUES ('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,140),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,12),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,8),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,3),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,1),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,20),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,1.8),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,90),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,430),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,150.3),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,170),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,2),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,0.16),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,1.8),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,0.999),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,1.998),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,5.004),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','PIECES',90,2,0),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,131),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,2.5),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,12.01),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,1.1),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,1.99),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,40),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,1.08),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,591),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,2.3),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,1999),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,0.51),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,0),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,40),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,131),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,2.5),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,12.01),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,1.1),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,1.99),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,40),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,1.08),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,591),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,2.3),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,1999),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,0.51),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,0),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','g',284,284,40),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,379),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,44.99),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,15),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,13.01),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,0.9),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,11.01),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,59),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,2.7),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,461),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,4.8),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,300),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,4),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,0),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,236),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,379),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,44.99),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,15),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,13.01),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,0.9),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,11.01),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,59),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,2.7),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,461),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,4.8),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,300),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,4),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,0),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,236),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,379),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,44.99),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,15),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,13.01),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,0.9),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,11.01),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,59),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,2.7),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,461),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,4.8),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,300),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,4),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,0),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','oz',227,8,236),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,50),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,6),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,2.5),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,1),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,1),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,0.36),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,170),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,100),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,1),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,0),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','g',32,32,25),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,120),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,3.99),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,2.99),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,21),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,1),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,6),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,39),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,1.08),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,480),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,0),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,399),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,2.01),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,0),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','cup',245,1,5);
/*!40000 ALTER TABLE `UFMEASURES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UFNUTRIENTS`
--

DROP TABLE IF EXISTS `UFNUTRIENTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UFNUTRIENTS` (
  `UNAME` varchar(64) DEFAULT NULL,
  `FNAME` varchar(128) DEFAULT NULL,
  `FNDBNO` varchar(32) DEFAULT NULL,
  `NID` varchar(32) DEFAULT NULL,
  `NNAME` varchar(64) DEFAULT NULL,
  `NGROUP` varchar(64) DEFAULT NULL,
  `NUNIT` varchar(16) DEFAULT NULL,
  `NVALUE` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UFNUTRIENTS`
--

LOCK TABLES `UFNUTRIENTS` WRITE;
/*!40000 ALTER TABLE `UFNUTRIENTS` DISABLE KEYS */;
INSERT INTO `UFNUTRIENTS` VALUES ('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','208','Energy','Proximates','kcal',156),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','203','Protein','Proximates','g',13.33),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','204','Total lipid (fat)','Proximates','g',8.89),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','205','Carbohydrate, by difference','Proximates','g',3.33),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','291','Fiber, total dietary','Proximates','g',1.1),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','269','Sugars, total','Proximates','g',0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','301','Calcium, Ca','Minerals','mg',22),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','303','Iron, Fe','Minerals','mg',2),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','306','Potassium, K','Minerals','mg',100),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','307','Sodium, Na','Minerals','mg',478),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','401','Vitamin C, total ascorbic acid','Vitamins','mg',0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','404','Thiamin','Vitamins','mg',167),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','405','Riboflavin','Vitamins','mg',188.889),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','406','Niacin','Vitamins','mg',2.222),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','415','Vitamin B-6','Vitamins','mg',0.178),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','418','Vitamin B-12','Vitamins','µg',2),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','318','Vitamin A, IU','Vitamins','IU',0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','606','Fatty acids, total saturated','Lipids','g',1.11),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','645','Fatty acids, total monounsaturated','Lipids','g',2.22),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','646','Fatty acids, total polyunsaturated','Lipids','g',5.56),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','601','Cholesterol','Lipids','mg',0),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','208','Energy','Proximates','kcal',46),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','204','Total lipid (fat)','Proximates','g',0.88),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','205','Carbohydrate, by difference','Proximates','g',4.23),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','291','Fiber, total dietary','Proximates','g',0.4),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','269','Sugars, total','Proximates','g',0.7),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','301','Calcium, Ca','Minerals','mg',14),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','303','Iron, Fe','Minerals','mg',0.38),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','307','Sodium, Na','Minerals','mg',208),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','401','Vitamin C, total ascorbic acid','Vitamins','mg',0.8),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','318','Vitamin A, IU','Vitamins','IU',704),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','606','Fatty acids, total saturated','Lipids','g',0.18),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','601','Cholesterol','Lipids','mg',14),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','208','Energy','Proximates','kcal',46),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','204','Total lipid (fat)','Proximates','g',0.88),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','205','Carbohydrate, by difference','Proximates','g',4.23),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','291','Fiber, total dietary','Proximates','g',0.4),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','269','Sugars, total','Proximates','g',0.7),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','301','Calcium, Ca','Minerals','mg',14),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','303','Iron, Fe','Minerals','mg',0.38),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','307','Sodium, Na','Minerals','mg',208),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','401','Vitamin C, total ascorbic acid','Vitamins','mg',0.8),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','318','Vitamin A, IU','Vitamins','IU',704),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','606','Fatty acids, total saturated','Lipids','g',0.18),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','601','Cholesterol','Lipids','mg',14),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','208','Energy','Proximates','kcal',167),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','203','Protein','Proximates','g',19.82),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','204','Total lipid (fat)','Proximates','g',6.61),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','205','Carbohydrate, by difference','Proximates','g',5.73),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','291','Fiber, total dietary','Proximates','g',0.4),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','269','Sugars, total','Proximates','g',4.85),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','301','Calcium, Ca','Minerals','mg',26),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','303','Iron, Fe','Minerals','mg',1.19),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','307','Sodium, Na','Minerals','mg',203),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','401','Vitamin C, total ascorbic acid','Vitamins','mg',2.1),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','318','Vitamin A, IU','Vitamins','IU',132),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','606','Fatty acids, total saturated','Lipids','g',1.76),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','601','Cholesterol','Lipids','mg',104),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','208','Energy','Proximates','kcal',167),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','203','Protein','Proximates','g',19.82),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','204','Total lipid (fat)','Proximates','g',6.61),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','205','Carbohydrate, by difference','Proximates','g',5.73),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','291','Fiber, total dietary','Proximates','g',0.4),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','269','Sugars, total','Proximates','g',4.85),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','301','Calcium, Ca','Minerals','mg',26),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','303','Iron, Fe','Minerals','mg',1.19),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','307','Sodium, Na','Minerals','mg',203),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','401','Vitamin C, total ascorbic acid','Vitamins','mg',2.1),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','318','Vitamin A, IU','Vitamins','IU',132),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','606','Fatty acids, total saturated','Lipids','g',1.76),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','601','Cholesterol','Lipids','mg',104),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','208','Energy','Proximates','kcal',167),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','203','Protein','Proximates','g',19.82),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','204','Total lipid (fat)','Proximates','g',6.61),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','205','Carbohydrate, by difference','Proximates','g',5.73),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','291','Fiber, total dietary','Proximates','g',0.4),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','269','Sugars, total','Proximates','g',4.85),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','301','Calcium, Ca','Minerals','mg',26),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','303','Iron, Fe','Minerals','mg',1.19),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','307','Sodium, Na','Minerals','mg',203),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','401','Vitamin C, total ascorbic acid','Vitamins','mg',2.1),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','318','Vitamin A, IU','Vitamins','IU',132),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','606','Fatty acids, total saturated','Lipids','g',1.76),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','601','Cholesterol','Lipids','mg',104),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','208','Energy','Proximates','kcal',156),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','203','Protein','Proximates','g',18.75),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','204','Total lipid (fat)','Proximates','g',7.81),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','205','Carbohydrate, by difference','Proximates','g',3.12),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','269','Sugars, total','Proximates','g',3.12),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','303','Iron, Fe','Minerals','mg',1.12),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','307','Sodium, Na','Minerals','mg',531),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','318','Vitamin A, IU','Vitamins','IU',312),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','606','Fatty acids, total saturated','Lipids','g',3.12),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','601','Cholesterol','Lipids','mg',78),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','208','Energy','Proximates','kcal',49),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','203','Protein','Proximates','g',1.63),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','204','Total lipid (fat)','Proximates','g',1.22),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','205','Carbohydrate, by difference','Proximates','g',8.57),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','291','Fiber, total dietary','Proximates','g',0.4),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','269','Sugars, total','Proximates','g',2.45),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','301','Calcium, Ca','Minerals','mg',16),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','303','Iron, Fe','Minerals','mg',0.44),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','307','Sodium, Na','Minerals','mg',196),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','401','Vitamin C, total ascorbic acid','Vitamins','mg',0),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','318','Vitamin A, IU','Vitamins','IU',163),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','606','Fatty acids, total saturated','Lipids','g',0.82),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','601','Cholesterol','Lipids','mg',2);
/*!40000 ALTER TABLE `UFNUTRIENTS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UFOODS`
--

DROP TABLE IF EXISTS `UFOODS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UFOODS` (
  `UNAME` varchar(64) DEFAULT NULL,
  `FOFFSET` int(11) DEFAULT NULL,
  `FGROUP` varchar(64) NOT NULL,
  `FNAME` varchar(128) NOT NULL,
  `FNDBNO` varchar(32) DEFAULT NULL,
  `FDS` varchar(32) DEFAULT NULL,
  `FWEIGHT` float DEFAULT NULL,
  `FMEASURE` varchar(64) DEFAULT NULL,
  `FCALORY` float DEFAULT NULL,
  `AMOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`FNAME`,`FGROUP`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UFOODS`
--

LOCK TABLES `UFOODS` WRITE;
/*!40000 ALTER TABLE `UFOODS` DISABLE KEYS */;
INSERT INTO `UFOODS` VALUES ('cemsanal@yandex.com',0,'Branded Food Products Database','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','BL',0,' ',0,5),('cemsanal@yandex.com',5,'Branded Food Products Database','AHOLD, CHICKEN NOODLE SOUP, UPC: 688267154928','45045909','BL',0,' ',0,9),('cemsanal@yandex.com',9,'Branded Food Products Database','AHOLD, CHIPOTLE BBQ CHICKEN LEG & THIGH, UPC: 688267003868','45044197','BL',0,' ',0,13),('cemsanal@yandex.com',45,'Branded Food Products Database','AL FRESCO, COUNTRY STYLE CHICKEN SAUSAGE, UPC: 030771097060','45121195','BL',0,' ',0,80),('cemsanal@yandex.com',17,'Branded Food Products Database','AHOLD, THAI STYLE CHICKEN CURRY SOUP, UPC: 688267155970','45063252','BL',0,' ',0,19);
/*!40000 ALTER TABLE `UFOODS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UHISTORY`
--

DROP TABLE IF EXISTS `UHISTORY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UHISTORY` (
  `UNAME` varchar(64) NOT NULL,
  `IDATE` date NOT NULL,
  `WEIGHT` float DEFAULT NULL,
  `BMI` float NOT NULL,
  `CALORIE` float DEFAULT NULL,
  PRIMARY KEY (`IDATE`,`UNAME`,`BMI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UHISTORY`
--

LOCK TABLES `UHISTORY` WRITE;
/*!40000 ALTER TABLE `UHISTORY` DISABLE KEYS */;
INSERT INTO `UHISTORY` VALUES ('cemsanal@yandex.com','2017-01-28',70.5,31.3333,0),('cemsanal@yandex.com','2017-01-28',67.4,29.9556,0),('cemsanal@yandex.com','2017-01-28',69.2,21.1227,0);
/*!40000 ALTER TABLE `UHISTORY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS` (
  `UNAME` varchar(64) NOT NULL,
  `PASS` varchar(256) DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `SURNAME` varchar(32) DEFAULT NULL,
  `AGE` varchar(3) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `COMMENT` varchar(1024) DEFAULT NULL,
  `HEIGHT` float DEFAULT NULL,
  `WEIGHT` float DEFAULT NULL,
  `BMI` float DEFAULT NULL,
  `WEIGHTTYPE` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`UNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES ('asd2@asd2.com','cemcem','asd2','asd2','34','F','deneme wehfuwerf &#305;&#305;&#305;&#305;&#305;&#305; &#287;&#287;&#287;&#287;&#287;&#287; üüüü',18.1,55.1,0.168188,'U'),('asd@asd.com','cemcem','Cem','Sanal','27','F','adsfsdfsrgfewrg deneme askjhda',1.8,68,20.9877,'N'),('cem-sanal@hotmail.com','cemcem','Cem1','Sanal1','26','M','Female comment deneme 1234',1.81,67.7,20.6648,'N'),('cemsanal@yandex.com','cemcem','Cem','Sanal','27','M','deneme comment Cem 123435 wergyer',1.81,69.2,21.1227,'N'),('cemsanal@yandex.ru','cemcem','Cem','Sanal','26','M','deneme 233479 deneme owekroe',1.81,68,20.7564,'N'),('uskudarli','yemek123456','S','Uskudarli','23','F',' ',2.05,90,15055.3,''),('asd3@asd3.com','cemcem','Asd3','Asd3','23','F','deneme weujwfeu 2345435 sdfsdf',1.75,74,24.1633,'N');
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

-- Dump completed on 2017-01-29 20:21:22
