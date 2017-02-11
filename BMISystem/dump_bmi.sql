-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 11 Şub 2017, 14:50:27
-- Sunucu sürümü: 5.7.14-log
-- PHP Sürümü: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `bmi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `UACTIVITY`
--

CREATE TABLE `UACTIVITY` (
  `UNAME` varchar(64) DEFAULT NULL,
  `ACTID` varchar(32) NOT NULL,
  `DURATION` float NOT NULL,
  `TSTART` date NOT NULL,
  `CALORIE` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `UACTIVITY`
--

INSERT INTO `UACTIVITY` (`UNAME`, `ACTID`, `DURATION`, `TSTART`, `CALORIE`) VALUES
('cemsanal@yandex.com', '8', 50, '2018-10-02', 443.75),
('cemsanal@yandex.com', '17', 90, '2018-10-02', 958.5),
('cemsanal@yandex.com', '62', 120, '2018-05-02', 752.6),
('cemsanal@yandex.com', '74', 40, '2017-04-08', 321.867),
('cemsanal@yandex.com', '13', 50, '2018-10-02', 591.667),
('cemsanal@yandex.com', '116', 15, '2016-04-10', 88.75),
('cemsanal@yandex.com', '64', 56, '2018-04-02', 152.413),
('cemsanal@yandex.com', '81', 70, '2017-03-02', 414.167),
('cemsanal@yandex.com', '75', 40, '2017-03-10', 227.2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `UACTIVITYGRP`
--

CREATE TABLE `UACTIVITYGRP` (
  `UNAME` varchar(64) DEFAULT NULL,
  `ACTGRPID` varchar(32) NOT NULL,
  `ACTNAME` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `UACTIVITYGRP`
--

INSERT INTO `UACTIVITYGRP` (`UNAME`, `ACTGRPID`, `ACTNAME`) VALUES
('cemsanal@yandex.com', '1', 'Bicycling'),
('cemsanal@yandex.com', '2', 'Conditioning Exercise'),
('cemsanal@yandex.com', '3', 'Dancing'),
('cemsanal@yandex.com', '4', 'Fishing and Hunting');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `UACTIVITYINFO`
--

CREATE TABLE `UACTIVITYINFO` (
  `UNAME` varchar(64) DEFAULT NULL,
  `ACTID` varchar(32) NOT NULL,
  `ACTCODE` varchar(32) DEFAULT NULL,
  `ACTMETS` float DEFAULT NULL,
  `ACTGROUPID` varchar(32) DEFAULT NULL,
  `ACTDESC` varchar(128) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `UACTIVITYINFO`
--

INSERT INTO `UACTIVITYINFO` (`UNAME`, `ACTID`, `ACTCODE`, `ACTMETS`, `ACTGROUPID`, `ACTDESC`) VALUES
('cemsanal@yandex.com', '8', '01015', 7.5, '1', 'bicycling, general'),
('cemsanal@yandex.com', '17', '01066', 9, '1', 'bicycling, 12 mph, standing, hands on brake hoods, 60 rpm'),
('cemsanal@yandex.com', '62', '02120', 5.3, '2', 'water aerobics, water calisthenics, water exercise'),
('cemsanal@yandex.com', '74', '03012', 6.8, '3', 'ballet, modern, or jazz, performance, vigorous effort'),
('cemsanal@yandex.com', '13', '01040', 10, '1', 'bicycling, 14-15.9 mph, racing or leisure, fast, vigorous effort'),
('cemsanal@yandex.com', '116', '04120', 5, '4', 'hunting, rabbit, squirrel, prairie chick, raccoon, small game (Taylor Code 690)'),
('cemsanal@yandex.com', '64', '02140', 2.3, '2', 'video exercise workouts, TV conditioning programs (e.g., yoga, stretching), light effort'),
('cemsanal@yandex.com', '81', '03020', 5, '3', 'aerobic, low impact'),
('cemsanal@yandex.com', '75', '03014', 4.8, '3', 'tap');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `UFMEASURES`
--

CREATE TABLE `UFMEASURES` (
  `UNAME` varchar(64) DEFAULT NULL,
  `FNAME` varchar(128) DEFAULT NULL,
  `NNAME` varchar(128) DEFAULT NULL,
  `LABEL` varchar(64) DEFAULT NULL,
  `EQV` float DEFAULT NULL,
  `QTY` float DEFAULT NULL,
  `VALUE` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `UFMEASURES`
--

INSERT INTO `UFMEASURES` (`UNAME`, `FNAME`, `NNAME`, `LABEL`, `EQV`, `QTY`, `VALUE`) VALUES
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Energy', 'g', 85, 85, 130),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Protein', 'g', 85, 85, 14),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Total lipid (fat)', 'g', 85, 85, 7),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Carbohydrate, by difference', 'g', 85, 85, 2),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Sugars, total', 'g', 85, 85, 1),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Calcium, Ca', 'g', 85, 85, 20),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Iron, Fe', 'g', 85, 85, 1.08),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Sodium, Na', 'g', 85, 85, 440),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Vitamin C, total ascorbic acid', 'g', 85, 85, 4.8),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Vitamin A, IU', 'g', 85, 85, 200),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Fatty acids, total saturated', 'g', 85, 85, 2),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Fatty acids, total trans', 'g', 85, 85, 0),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', 'Cholesterol', 'g', 85, 85, 65),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Energy', 'g', 50, 50, 80),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Protein', 'g', 50, 50, 9),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Total lipid (fat)', 'g', 50, 50, 4.5),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Carbohydrate, by difference', 'g', 50, 50, 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Sugars, total', 'g', 50, 50, 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Calcium, Ca', 'g', 50, 50, 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Iron, Fe', 'g', 50, 50, 0.72),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Sodium, Na', 'g', 50, 50, 270),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Vitamin C, total ascorbic acid', 'g', 50, 50, 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Vitamin A, IU', 'g', 50, 50, 100),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Fatty acids, total saturated', 'g', 50, 50, 1),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Fatty acids, total trans', 'g', 50, 50, 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Cholesterol', 'g', 50, 50, 40),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Energy', 'g', 50, 50, 80),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Protein', 'g', 50, 50, 9),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Total lipid (fat)', 'g', 50, 50, 4.5),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Carbohydrate, by difference', 'g', 50, 50, 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Sugars, total', 'g', 50, 50, 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Calcium, Ca', 'g', 50, 50, 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Iron, Fe', 'g', 50, 50, 0.72),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Sodium, Na', 'g', 50, 50, 270),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Vitamin C, total ascorbic acid', 'g', 50, 50, 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Vitamin A, IU', 'g', 50, 50, 100),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Fatty acids, total saturated', 'g', 50, 50, 1),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Fatty acids, total trans', 'g', 50, 50, 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', 'Cholesterol', 'g', 50, 50, 40);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `UFNUTRIENTS`
--

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

--
-- Tablo döküm verisi `UFNUTRIENTS`
--

INSERT INTO `UFNUTRIENTS` (`UNAME`, `FNAME`, `FNDBNO`, `NID`, `NNAME`, `NGROUP`, `NUNIT`, `NVALUE`) VALUES
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '208', 'Energy', 'Proximates', 'kcal', 153),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '203', 'Protein', 'Proximates', 'g', 16.47),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '204', 'Total lipid (fat)', 'Proximates', 'g', 8.24),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '205', 'Carbohydrate, by difference', 'Proximates', 'g', 2.35),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '269', 'Sugars, total', 'Proximates', 'g', 1.18),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '301', 'Calcium, Ca', 'Minerals', 'mg', 24),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '303', 'Iron, Fe', 'Minerals', 'mg', 1.27),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '307', 'Sodium, Na', 'Minerals', 'mg', 518),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '401', 'Vitamin C, total ascorbic acid', 'Vitamins', 'mg', 5.6),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '318', 'Vitamin A, IU', 'Vitamins', 'IU', 235),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '606', 'Fatty acids, total saturated', 'Lipids', 'g', 2.35),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '605', 'Fatty acids, total trans', 'Lipids', 'g', 0),
('cemsanal@yandex.com', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', '601', 'Cholesterol', 'Lipids', 'mg', 76),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '208', 'Energy', 'Proximates', 'kcal', 160),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '203', 'Protein', 'Proximates', 'g', 18),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '204', 'Total lipid (fat)', 'Proximates', 'g', 9),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '205', 'Carbohydrate, by difference', 'Proximates', 'g', 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '269', 'Sugars, total', 'Proximates', 'g', 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '301', 'Calcium, Ca', 'Minerals', 'mg', 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '303', 'Iron, Fe', 'Minerals', 'mg', 1.44),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '307', 'Sodium, Na', 'Minerals', 'mg', 540),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '401', 'Vitamin C, total ascorbic acid', 'Vitamins', 'mg', 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '318', 'Vitamin A, IU', 'Vitamins', 'IU', 200),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '606', 'Fatty acids, total saturated', 'Lipids', 'g', 2),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '605', 'Fatty acids, total trans', 'Lipids', 'g', 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '601', 'Cholesterol', 'Lipids', 'mg', 80),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '208', 'Energy', 'Proximates', 'kcal', 160),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '203', 'Protein', 'Proximates', 'g', 18),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '204', 'Total lipid (fat)', 'Proximates', 'g', 9),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '205', 'Carbohydrate, by difference', 'Proximates', 'g', 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '269', 'Sugars, total', 'Proximates', 'g', 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '301', 'Calcium, Ca', 'Minerals', 'mg', 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '303', 'Iron, Fe', 'Minerals', 'mg', 1.44),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '307', 'Sodium, Na', 'Minerals', 'mg', 540),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '401', 'Vitamin C, total ascorbic acid', 'Vitamins', 'mg', 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '318', 'Vitamin A, IU', 'Vitamins', 'IU', 200),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '606', 'Fatty acids, total saturated', 'Lipids', 'g', 2),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '605', 'Fatty acids, total trans', 'Lipids', 'g', 0),
('cemsanal@yandex.com', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', '601', 'Cholesterol', 'Lipids', 'mg', 80);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `UFOODS`
--

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
  `AMOUNT` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `UFOODS`
--

INSERT INTO `UFOODS` (`UNAME`, `FDATE`, `FOFFSET`, `FGROUP`, `FNAME`, `FNDBNO`, `FDS`, `FMEASURE`, `FUNIT`, `FCALORY`, `AMOUNT`) VALUES
('cemsanal@yandex.com', '2017-07-12', 42, 'Branded Food Products Database', 'AL FRESCO, CHICKEN SAUSAGE, SPICY JALAPENO, UPC: 030771097107', '45027907', 'BL', 'g', NULL, 301539, 4),
('cemsanal@yandex.com', '2018-04-02', 44, 'Branded Food Products Database', 'AL FRESCO, COUNTRY STYLE BREAKFAST CHICKEN SAUSAGE, UPC: 030771096650', '45010815', 'BL', 'g', NULL, 353654, 7);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `UHISTORY`
--

CREATE TABLE `UHISTORY` (
  `UNAME` varchar(64) NOT NULL,
  `IDATE` date NOT NULL,
  `WEIGHT` float DEFAULT NULL,
  `BMI` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `UHISTORY`
--

INSERT INTO `UHISTORY` (`UNAME`, `IDATE`, `WEIGHT`, `BMI`) VALUES
('cemsanal@yandex.com', '2017-02-11', 70, 21.3669),
('cemsanal@yandex.com', '2017-02-11', 69, 21.0616),
('cemsanal@yandex.com', '2017-02-11', 71, 21.6721),
('cemsanal@yandex.com', '2017-02-11', 71, 27.7344),
('cemsanal@yandex.com', '2017-02-11', 71, 21.9136),
('sfdj&#305;sgf@sdfkmsrg.com', '2017-02-11', 60, 0.195918);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `USERS`
--

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
  `WEIGHTTYPE` varchar(32) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `USERS`
--

INSERT INTO `USERS` (`UNAME`, `PASS`, `NAME`, `SURNAME`, `AGE`, `GENDER`, `COMMENT`, `HEIGHT`, `WEIGHT`, `BMI`, `WEIGHTTYPE`) VALUES
('asd2@asd2.com', 'cemcem', 'asd2', 'asd2', '34', 'F', 'deneme wehfuwerf &#305;&#305;&#305;&#305;&#305;&#305; &#287;&#287;&#287;&#287;&#287;&#287; üüüü', 18.1, 55.1, 0.168188, 'U'),
('asd@asd.com', 'cemcem', 'Cem', 'Sanal', '27', 'F', 'adsfsdfsrgfewrg deneme askjhda', 1.8, 68, 20.9877, 'N'),
('cem-sanal@hotmail.com', 'cemcem', 'Cem1', 'Sanal1', '26', 'M', 'Female comment deneme 1234', 1.81, 67.7, 20.6648, 'N'),
('cemsanal@yandex.com', 'cemcem', 'Cem', 'Sanal', '27', 'M', 'deneme comment Cem 123435 wergyer', 1.8, 71, 21.9136, 'N'),
('cemsanal@yandex.ru', 'cemcem', 'Cem', 'Sanal', '26', 'M', 'deneme 233479 deneme owekroe', 1.81, 68, 20.7564, 'N'),
('uskudarli', 'yemek123456', 'S', 'Uskudarli', '23', 'F', ' ', 2.05, 90, 15055.3, ''),
('asd3@asd3.com', 'cemcem', 'Asd3', 'Asd3', '23', 'F', 'deneme weujwfeu 2345435 sdfsdf', 1.75, 74, 24.1633, 'N'),
('sfdj&#305;sgf@sdfkmsrg.com', 'cemcem', 'jkewf&#305;jkwef&#305;', 'ws&#305;efjwefjw', '34', 'M', 'ssefsewswefswgs wegsdgd', 17.5, 60, 0.195918, 'U');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `UACTIVITY`
--
ALTER TABLE `UACTIVITY`
  ADD PRIMARY KEY (`ACTID`,`TSTART`,`DURATION`);

--
-- Tablo için indeksler `UACTIVITYGRP`
--
ALTER TABLE `UACTIVITYGRP`
  ADD PRIMARY KEY (`ACTGRPID`);

--
-- Tablo için indeksler `UACTIVITYINFO`
--
ALTER TABLE `UACTIVITYINFO`
  ADD PRIMARY KEY (`ACTID`);

--
-- Tablo için indeksler `UFOODS`
--
ALTER TABLE `UFOODS`
  ADD PRIMARY KEY (`FDATE`,`FNAME`);

--
-- Tablo için indeksler `UHISTORY`
--
ALTER TABLE `UHISTORY`
  ADD PRIMARY KEY (`IDATE`,`UNAME`,`BMI`);

--
-- Tablo için indeksler `USERS`
--
ALTER TABLE `USERS`
  ADD PRIMARY KEY (`UNAME`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
