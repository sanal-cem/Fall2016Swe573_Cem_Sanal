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
  `DURATION` float NOT NULL,
  `TSTART` date NOT NULL,
  `CALORIE` float DEFAULT NULL,
  PRIMARY KEY (`ACTID`,`TSTART`,`DURATION`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UACTIVITY`
--

LOCK TABLES `UACTIVITY` WRITE;
/*!40000 ALTER TABLE `UACTIVITY` DISABLE KEYS */;
INSERT INTO `UACTIVITY` VALUES ('cemsanal@yandex.com','46',90,'2017-02-02',924.75),('cemsanal@yandex.com','6',30,'2018-09-02',232.9),('cemsanal@yandex.com','11',60,'2019-02-01',465.8),('cemsanal@yandex.com','26',150,'2017-02-02',1507);
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
INSERT INTO `UACTIVITYGRP` VALUES ('cemsanal@yandex.com','2','Conditioning Exercise'),('cemsanal@yandex.com','1','Bicycling');
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
INSERT INTO `UACTIVITYINFO` VALUES ('cemsanal@yandex.com','46','02065',9,'2','stair-treadmill ergometer, general'),('cemsanal@yandex.com','6','01011',6.8,'1','bicycling, to/from work, self selected pace'),('cemsanal@yandex.com','11','01020',6.8,'1','bicycling, 10-11.9 mph, leisure, slow, light effort'),('cemsanal@yandex.com','26','02013',8.8,'2','bicycling, stationary, 101-160 watts, vigorous effort');
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
  `NNAME` varchar(128) DEFAULT NULL,
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
INSERT INTO `UFMEASURES` VALUES ('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Energy','g',68,68,80),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Protein','g',68,68,12),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Total lipid (fat)','g',68,68,2.5),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Carbohydrate, by difference','g',68,68,2),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Fiber, total dietary','g',68,68,0),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Sugars, total','g',68,68,2),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Calcium, Ca','g',68,68,0),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Iron, Fe','g',68,68,0.72),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Sodium, Na','g',68,68,460),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Vitamin C, total ascorbic acid','g',68,68,2.4),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Vitamin A, IU','g',68,68,750),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Fatty acids, total saturated','g',68,68,0.5),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Fatty acids, total trans','g',68,68,0),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','Cholesterol','g',68,68,50),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Energy','g',91,91,150),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Protein','g',91,91,14),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Total lipid (fat)','g',91,91,9),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Carbohydrate, by difference','g',91,91,2),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Sugars, total','g',91,91,2),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Iron, Fe','g',91,91,0.72),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Sodium, Na','g',91,91,630),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Vitamin C, total ascorbic acid','g',91,91,2.4),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Vitamin A, IU','g',91,91,300),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Fatty acids, total saturated','g',91,91,2.5),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Cholesterol','g',91,91,75),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Energy','g',91,91,150),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Protein','g',91,91,14),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Total lipid (fat)','g',91,91,9),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Carbohydrate, by difference','g',91,91,2),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Sugars, total','g',91,91,2),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Iron, Fe','g',91,91,0.72),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Sodium, Na','g',91,91,630),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Vitamin C, total ascorbic acid','g',91,91,2.4),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Vitamin A, IU','g',91,91,300),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Fatty acids, total saturated','g',91,91,2.5),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','Cholesterol','g',91,91,75),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Energy','PIECES',90,2,140),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Protein','PIECES',90,2,12),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Total lipid (fat)','PIECES',90,2,8),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Carbohydrate, by difference','PIECES',90,2,3),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Fiber, total dietary','PIECES',90,2,1),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Sugars, total','PIECES',90,2,0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Calcium, Ca','PIECES',90,2,20),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Iron, Fe','PIECES',90,2,1.8),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Potassium, K','PIECES',90,2,90),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Sodium, Na','PIECES',90,2,430),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Vitamin C, total ascorbic acid','PIECES',90,2,0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Thiamin','PIECES',90,2,150.3),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Riboflavin','PIECES',90,2,170),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Niacin','PIECES',90,2,2),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Vitamin B-6','PIECES',90,2,0.16),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Vitamin B-12','PIECES',90,2,1.8),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Vitamin A, IU','PIECES',90,2,0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Fatty acids, total saturated','PIECES',90,2,0.999),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Fatty acids, total monounsaturated','PIECES',90,2,1.998),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Fatty acids, total polyunsaturated','PIECES',90,2,5.004),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Fatty acids, total trans','PIECES',90,2,0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','Cholesterol','PIECES',90,2,0),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','Energy','cup',245,1,140),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','Protein','cup',245,1,8.99),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','Total lipid (fat)','cup',245,1,2.99),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','Carbohydrate, by difference','cup',245,1,19.01),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','Fiber, total dietary','cup',245,1,3.9),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','Sugars, total','cup',245,1,2.01);
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
INSERT INTO `UFNUTRIENTS` VALUES ('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','208','Energy','Proximates','kcal',118),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','203','Protein','Proximates','g',17.65),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','204','Total lipid (fat)','Proximates','g',3.68),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','205','Carbohydrate, by difference','Proximates','g',2.94),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','291','Fiber, total dietary','Proximates','g',0),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','269','Sugars, total','Proximates','g',2.94),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','301','Calcium, Ca','Minerals','mg',0),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','303','Iron, Fe','Minerals','mg',1.06),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','307','Sodium, Na','Minerals','mg',676),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','401','Vitamin C, total ascorbic acid','Vitamins','mg',3.5),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','318','Vitamin A, IU','Vitamins','IU',1103),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','606','Fatty acids, total saturated','Lipids','g',0.74),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','601','Cholesterol','Lipids','mg',74),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','208','Energy','Proximates','kcal',165),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','203','Protein','Proximates','g',15.38),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','204','Total lipid (fat)','Proximates','g',9.89),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','205','Carbohydrate, by difference','Proximates','g',2.2),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','269','Sugars, total','Proximates','g',2.2),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','303','Iron, Fe','Minerals','mg',0.79),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','307','Sodium, Na','Minerals','mg',692),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','401','Vitamin C, total ascorbic acid','Vitamins','mg',2.6),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','318','Vitamin A, IU','Vitamins','IU',330),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','606','Fatty acids, total saturated','Lipids','g',2.75),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','601','Cholesterol','Lipids','mg',82),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','208','Energy','Proximates','kcal',165),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','203','Protein','Proximates','g',15.38),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','204','Total lipid (fat)','Proximates','g',9.89),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','205','Carbohydrate, by difference','Proximates','g',2.2),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','269','Sugars, total','Proximates','g',2.2),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','303','Iron, Fe','Minerals','mg',0.79),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','307','Sodium, Na','Minerals','mg',692),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','401','Vitamin C, total ascorbic acid','Vitamins','mg',2.6),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','318','Vitamin A, IU','Vitamins','IU',330),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','606','Fatty acids, total saturated','Lipids','g',2.75),('cemsanal@yandex.com','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','601','Cholesterol','Lipids','mg',82),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','208','Energy','Proximates','kcal',156),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','203','Protein','Proximates','g',13.33),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','204','Total lipid (fat)','Proximates','g',8.89),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','205','Carbohydrate, by difference','Proximates','g',3.33),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','291','Fiber, total dietary','Proximates','g',1.1),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','269','Sugars, total','Proximates','g',0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','301','Calcium, Ca','Minerals','mg',22),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','303','Iron, Fe','Minerals','mg',2),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','306','Potassium, K','Minerals','mg',100),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','307','Sodium, Na','Minerals','mg',478),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','401','Vitamin C, total ascorbic acid','Vitamins','mg',0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','404','Thiamin','Vitamins','mg',167),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','405','Riboflavin','Vitamins','mg',188.889),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','406','Niacin','Vitamins','mg',2.222),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','415','Vitamin B-6','Vitamins','mg',0.178),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','418','Vitamin B-12','Vitamins','µg',2),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','318','Vitamin A, IU','Vitamins','IU',0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','606','Fatty acids, total saturated','Lipids','g',1.11),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','645','Fatty acids, total monounsaturated','Lipids','g',2.22),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','646','Fatty acids, total polyunsaturated','Lipids','g',5.56),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','601','Cholesterol','Lipids','mg',0),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','208','Energy','Proximates','kcal',57),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','203','Protein','Proximates','g',3.67),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','204','Total lipid (fat)','Proximates','g',1.22),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','205','Carbohydrate, by difference','Proximates','g',7.76),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','291','Fiber, total dietary','Proximates','g',1.6),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','269','Sugars, total','Proximates','g',0.82),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','301','Calcium, Ca','Minerals','mg',16),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','303','Iron, Fe','Minerals','mg',0.44),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','307','Sodium, Na','Minerals','mg',196),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','401','Vitamin C, total ascorbic acid','Vitamins','mg',0),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','318','Vitamin A, IU','Vitamins','IU',204),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','606','Fatty acids, total saturated','Lipids','g',0.41),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','605','Fatty acids, total trans','Lipids','g',0),('cemsanal@yandex.com','AHOLD, CHICKEN TORTILLA SOUP, UPC: 688267155994','45045486','601','Cholesterol','Lipids','mg',2);
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
  `FDATE` date NOT NULL,
  `FOFFSET` int(11) DEFAULT NULL,
  `FGROUP` varchar(64) DEFAULT NULL,
  `FNAME` varchar(128) NOT NULL,
  `FNDBNO` varchar(32) DEFAULT NULL,
  `FDS` varchar(32) DEFAULT NULL,
  `FMEASURE` varchar(64) DEFAULT NULL,
  `FUNIT` varchar(16) DEFAULT NULL,
  `FCALORY` float DEFAULT NULL,
  `AMOUNT` int(11) DEFAULT NULL,
  PRIMARY KEY (`FDATE`,`FNAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UFOODS`
--

LOCK TABLES `UFOODS` WRITE;
/*!40000 ALTER TABLE `UFOODS` DISABLE KEYS */;
INSERT INTO `UFOODS` VALUES ('cemsanal@yandex.com','2018-04-02',14,'Branded Food Products Database','AHOLD, NATURE\'S PROMISE, ORGANIC CHICKEN SAUSAGE, PUMPKIN SPICE, UPC: 688267158346','45045732','BL',' ','g',0,4),('cemsanal@yandex.com','2017-01-02',15,'Branded Food Products Database','AHOLD, NATURE\'S PROMISE, SWEET ITALIAN CHICKEN SAUSAGE WITH KALE, UPC: 688267156335','45048380','BL',' ','g',0,6),('cemsanal@yandex.com','2017-01-02',0,'Branded Food Products Database','A DELICIOUS VEGETARIAN ALTERNATIVE TO CHICKEN, UPC: 845561000669','45188431','BL',' ','g',0,3);
/*!40000 ALTER TABLE `UFOODS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uhistory`
--

DROP TABLE IF EXISTS `uhistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uhistory` (
  `UNAME` varchar(64) NOT NULL,
  `IDATE` date NOT NULL,
  `WEIGHT` float DEFAULT NULL,
  `BMI` float NOT NULL,
  PRIMARY KEY (`IDATE`,`UNAME`,`BMI`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uhistory`
--

LOCK TABLES `uhistory` WRITE;
/*!40000 ALTER TABLE `uhistory` DISABLE KEYS */;
INSERT INTO `uhistory` VALUES ('cemsanal@yandex.com','2017-02-04',69.9,21.3363),('cemsanal@yandex.com','2017-02-04',69.2,21.1227),('cemsanal@yandex.com','2017-02-04',70,21.3669),('cemsanal@yandex.com','2017-02-04',80,24.4193),('cemsanal@yandex.com','2017-02-04',75,22.8931),('cemsanal@yandex.com','2017-02-04',60,18.3145),('cemsanal@yandex.com','2017-02-04',68.5,20.909);
/*!40000 ALTER TABLE `uhistory` ENABLE KEYS */;
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
INSERT INTO `USERS` VALUES ('asd2@asd2.com','cemcem','asd2','asd2','34','F','deneme wehfuwerf &#305;&#305;&#305;&#305;&#305;&#305; &#287;&#287;&#287;&#287;&#287;&#287; üüüü',18.1,55.1,0.168188,'U'),('asd@asd.com','cemcem','Cem','Sanal','27','F','adsfsdfsrgfewrg deneme askjhda',1.8,68,20.9877,'N'),('cem-sanal@hotmail.com','cemcem','Cem1','Sanal1','26','M','Female comment deneme 1234',1.81,67.7,20.6648,'N'),('cemsanal@yandex.com','cemcem','Cem','Sanal','27','M','deneme comment Cem 123435 wergyer',1.81,68.5,20.909,'N'),('cemsanal@yandex.ru','cemcem','Cem','Sanal','26','M','deneme 233479 deneme owekroe',1.81,68,20.7564,'N'),('uskudarli','yemek123456','S','Uskudarli','23','F',' ',2.05,90,15055.3,''),('asd3@asd3.com','cemcem','Asd3','Asd3','23','F','deneme weujwfeu 2345435 sdfsdf',1.75,74,24.1633,'N');
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

-- Dump completed on 2017-02-06  0:35:54
