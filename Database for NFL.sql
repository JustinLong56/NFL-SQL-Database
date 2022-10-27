-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: final_project
-- ------------------------------------------------------
-- Server version 8.0.28
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
-- Table structure for table `2021_season`
--
DROP TABLE IF EXISTS `2021_season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `2021_season` (
  `conference` varchar(5) NOT NULL,
  `points_for` int NOT NULL,
  `points_allowed` int NOT NULL,
  `point_differential` varchar(45) NOT NULL,
  `points_per_game` varchar(45) NOT NULL,
  `def_points_per_game` varchar(45) NOT NULL,
  `wins` int NOT NULL,
  `losses` int NOT NULL,
  `ties` int DEFAULT NULL,
  `win_percentage` varchar(45) NOT NULL,
  `playoff_appearance` varchar(45) NOT NULL,
  `teams_id` int NOT NULL,
  PRIMARY KEY (`teams_id`),
  KEY `fk_2021_season_teams1_idx` (`teams_id`),
  CONSTRAINT `fk_2021_season_teams1` FOREIGN KEY (`teams_id`) REFERENCES `teams` 
(`teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `2021_season`
--
LOCK TABLES `2021_season` WRITE;
/*!40000 ALTER TABLE `2021_season` DISABLE KEYS */;
INSERT INTO `2021_season` VALUES 
('AFC',483,289,'194','28.4','17.0',11,6,0,'0.647','yes',1),('AFC',341,373,'-
32','20.1','21.9',9,8,0,'0.529','no',2),
('AFC',462,303,'159','27.2','17.8',10,7,0,'0.588','yes',3),('AFC',310,504,'-
194','18.2','29.6',4,13,0,'0.235','no',4),('AFC',387,392,'-
5','22.8','23.1',8,9,0,'0.471','no',5),
('AFC',460,376,'84','27.1','22.1',10,7,0,'0.588','yes',6),('AFC',349,371,'-
22','20.5','21.8',8,9,0,'0.471','no',7),('AFC',343,398,'-
55','20.2','23.4',9,7,1,'0.559','yes',8),('AFC',280,452,'-
172','16.5','26.6',4,13,0,'0.235','no',9),
('AFC',451,365,'86','26.5','21.5',9,8,0,'0.529','no',10),('AFC',253,457,'-
204','14.9','26.9',3,14,0,'0.176','no',11),
('AFC',419,354,'65','24.6','20.8',12,5,0,'0.706','yes',12),
('AFC',335,322,'13','19.7','18.9',7,10,0,'0.412','no',13),
('AFC',480,364,'116','28.2','21.4',12,5,0,'0.706','yes',14),('AFC',374,439,'-
65','22.0','25.8',10,7,0,'0.588','yes',15),
('AFC',474,459,'15','27.9','27.0',9,8,0,'0.529','no',16),
('NFC',530,358,'172','31.2','21.1',12,5,0,'0.706','yes',17),('NFC',258,416,'-
158','15.2','24.5',4,13,0,'0.235','no',18),
('NFC',444,385,'59','26.1','22.6',9,8,0,'0.529','yes',19),('NFC',335,434,'-
99','19.7','25.5',7,10,0,'0.412','no',20),('NFC',311,407,'-
96','18.3','23.9',6,11,0,'0.353','no',21),('NFC',325,467,'-
142','19.1','27.5',3,13,1,'0.206','no',22),
('NFC',450,371,'79','26.5','21.8',13,4,0,'0.765','yes',23),('NFC',425,426,'-
1','25.0','25.1',8,9,0,'0.471','no',24),('NFC',313,459,'-
146','18.4','27.0',7,10,0,'0.412','no',25),('NFC',304,404,'-
100','17.9','23.8',5,12,0,'0.294','no',26),
('NFC',364,335,'29','21.4','19.7',9,8,0,'0.529','no',27),
('NFC',511,353,'158','30.1','20.8',13,4,0,'0.765','yes',28),
('NFC',449,366,'83','26.4','21.5',11,6,0,'0.647','yes',29),
('NFC',460,372,'88','27.1','21.9',12,5,0,'0.706','yes',30),
('NFC',427,365,'62','25.1','21.5',10,7,0,'0.588','yes',31),
('NFC',395,366,'29','23.2','21.5',7,10,0,'0.412','no',32);
/*!40000 ALTER TABLE `2021_season` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `coaches`
--
DROP TABLE IF EXISTS `coaches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coaches` (
  `coaches_id` int NOT NULL,
  `coaches_fname` varchar(45) NOT NULL,
  `coaches_lname` varchar(45) NOT NULL,
  `career_length` int NOT NULL,
  `wins` int NOT NULL,
  `losses` int NOT NULL,
  PRIMARY KEY (`coaches_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `coaches`
--
LOCK TABLES `coaches` WRITE;
/*!40000 ALTER TABLE `coaches` DISABLE KEYS */;
INSERT INTO `coaches` VALUES (1,'Kliff','Kingsbury',3,24,24),
(2,'Arthur','Smith',1,7,10),(3,'John','Harbaugh',14,137,88),
(4,'Sean','McDermott',5,49,32),(5,'Matt','Rhule',2,10,23),
(6,'Matt','Eberflus',0,0,0),(7,'Zac','Taylor',3,16,32),
(8,'Kevin','Stefanski',2,19,14),(9,'Mike','McCarthy',15,143,92),
(10,'Nathaniel','Hackett',0,0,0),(11,'Dan','Campbell',1,8,20),
(12,'Matt','LaFleur',3,39,10),(13,'Lovie','Smith',11,89,87),
(14,'Frank','Reich',4,37,28),(15,'Doug','Pederson',5,42,37),
(16,'Andy','Reid',23,233,135),(17,'Josh','McDaniels',2,11,17),
(18,'Brandon','Staley',1,9,8),(19,'Sean','McVay',5,55,26),
(20,'Mike','McDaniel',0,0,0),(21,'Kevin','O\'Connell',0,0,0),
(22,'Bill','Belichick',27,290,143),(23,'Dennis','Allen',3,8,28),
(24,'Brian','Daboll',0,0,0),(25,'Robert','Saleh',1,4,14),
(26,'Nick','Sirianni',1,9,8),(27,'Mike','Tomlin',15,154,85),
(28,'Kyle','Shanahan',5,39,42),(29,'Pete','Carroll',16,152,104),
(30,'Todd','Bowles',5,26,41),(31,'Mike','Vrabel',4,41,24),
(32,'Ron','Rivera',11,90,82);
/*!40000 ALTER TABLE `coaches` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `coaches_more_wins`
--
DROP TABLE IF EXISTS `coaches_more_wins`;
/*!50001 DROP VIEW IF EXISTS `coaches_more_wins`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `coaches_more_wins` AS SELECT 
 1 AS `name`,
 1 AS `percentage`,
 1 AS `team_name`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `fantasy`
--
DROP TABLE IF EXISTS `fantasy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fantasy` (
  `fantasy_football_id` int NOT NULL,
  `completions` int NOT NULL,
  `players_id` int NOT NULL,
  `attempts` int NOT NULL,
  `passing_yards` int NOT NULL,
  `passing_tds` int NOT NULL,
  `interceptions` int NOT NULL,
  `rushing_attempts` int NOT NULL,
  `rushing_yards` int NOT NULL,
  `rushing_tds` int NOT NULL,
  `receptions` int NOT NULL,
  `receiving_yards` int NOT NULL,
  `receiving_tds` int NOT NULL,
  `fumbles` int NOT NULL,
  `touchdowns` int NOT NULL,
  `fantasy_points` int NOT NULL,
  `fantasy_ppr_scoring` varchar(45) NOT NULL,
  `position_rank` int DEFAULT NULL,
  PRIMARY KEY (`fantasy_football_id`),
  KEY `fk_fantasy_football_players1_idx` (`players_id`),
  CONSTRAINT `fk_fantasy_football_players1` FOREIGN KEY (`players_id`) REFERENCES 
`players` (`players_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `fantasy`
--
LOCK TABLES `fantasy` WRITE;
/*!40000 ALTER TABLE `fantasy` DISABLE KEYS */;
INSERT INTO `fantasy` VALUES 
(1,0,677,0,0,0,0,332,1811,18,40,360,2,4,20,333,'373.1',1),
(2,0,2202,1,0,0,0,4,18,0,145,1947,16,0,16,295,'439.5',1),
(3,1,2270,2,24,1,0,59,365,8,77,1405,6,4,14,262,'339',2),
(4,409,1,646,4407,36,15,122,763,6,0,0,0,8,6,403,'402.6',1),
(5,0,1145,0,0,0,0,206,911,12,70,647,8,4,20,274,'343.8',2),
(6,443,1138,672,5014,38,15,63,302,3,0,0,0,1,3,381,'380.8',2),
(7,485,2053,719,5316,43,12,28,81,2,0,0,0,4,2,375,'374.7',3),
(8,0,307,0,0,0,0,1,0,0,107,1361,9,1,9,194,'301.1',1),
(9,0,374,0,0,0,0,7,21,0,81,1455,13,2,13,224,'304.6',3),
(10,2,1762,4,35,0,0,6,14,0,108,1616,10,1,10,222,'330.4',4),
(11,0,366,0,0,0,0,292,1205,13,42,314,3,2,16,246,'287.9',3),
(12,0,1686,0,0,0,0,0,0,0,123,1553,11,0,11,221,'344.3',5),
(13,436,994,658,4839,37,13,66,381,2,0,0,0,9,2,362,'361.7',4),
(14,0,521,0,0,0,0,307,1200,7,74,467,3,0,10,227,'300.7',4),
(15,0,1009,0,0,0,0,2,3,1,92,1125,9,1,10,171,'262.8',2),
(16,0,2125,0,0,0,0,202,752,15,37,375,3,2,18,221,'257.7',5),
(17,0,2062,0,0,0,0,1,10,0,74,1035,14,0,14,189,'262.5',6),
(18,366,1681,531,4115,37,4,33,101,3,1,-4,0,3,3,332,'333.3',5),
(19,0,1004,0,0,0,0,9,96,0,111,1239,9,2,9,186,'296.5',7),
(20,404,2189,601,4886,41,17,32,43,0,0,0,0,5,0,330,'329.7',6),
(21,0,13,0,0,0,0,0,0,0,103,1225,10,1,10,183,'285.5',8),
(22,1,1215,1,4,0,0,237,1002,10,47,287,2,1,12,205,'252.1',6),
(23,410,1212,596,4449,37,10,48,146,1,0,0,0,14,1,321,'320.6',7),
(24,0,442,0,0,0,0,228,1259,8,20,174,1,2,9,195,'215.3',7),
(25,0,1147,0,0,0,0,0,0,0,76,1146,9,0,9,171,'246.6',9),
(26,0,2339,0,0,0,0,1,6,0,75,967,12,1,12,169,'244.3',10),
(27,0,2338,0,0,0,0,2,9,0,73,1175,8,0,8,168,'241.4',11),
(28,0,141,0,0,0,0,202,929,15,18,132,0,2,15,192,'210.1',8),
(29,366,361,520,4611,34,14,40,118,2,0,0,0,5,2,314,'314.2',8),
(30,0,531,0,0,0,0,5,53,0,107,1161,8,2,8,167,'274.4',12),
(31,265,1359,432,3144,16,9,139,784,10,0,0,0,9,10,312,'312.2',9),
(32,0,1258,0,0,0,0,240,898,4,47,439,5,0,9,188,'234.7',9),
(33,0,1439,0,0,0,0,258,1037,7,42,294,3,6,10,187,'229.1',10),
(34,0,2059,1,0,0,0,180,812,8,69,454,2,1,10,187,'255.6',11),
(35,0,1227,0,0,0,0,0,0,0,78,808,8,0,8,131,'208.8',3),
(36,0,1833,1,0,0,0,153,618,6,52,548,5,2,11,183,'234.6',12),
(37,0,2275,0,0,0,0,3,20,0,71,910,6,2,6,127,'198',4),
(38,0,1073,0,0,0,0,3,3,0,103,1038,9,5,9,156,'259.1',13),
(39,0,1220,0,0,0,0,9,76,0,79,1102,6,0,6,154,'232.8',14),
(40,333,2123,481,3787,24,10,88,423,5,0,7,0,13,5,300,'300.5',10),
(41,372,1751,561,4221,33,7,29,115,1,0,0,0,12,1,300,'300.3',11),
(42,0,1684,0,0,0,0,171,799,4,52,391,6,2,10,177,'229',13),
(43,0,1155,1,0,0,0,0,0,0,106,1138,6,1,6,152,'257.8',15),
(44,1,835,1,5,1,0,219,937,10,18,154,0,1,10,175,'193.3',14),
(45,0,682,0,0,0,0,5,44,0,88,1082,6,1,6,151,'238.6',16),
(46,0,1756,0,0,0,0,249,1159,6,34,224,0,3,6,172,'206.3',15),
(47,0,1066,0,0,0,0,217,872,9,54,348,0,2,9,172,'226',16),
(49,0,373,0,0,0,0,0,0,0,74,1091,6,1,6,145,'219.1',17),
(50,0,18,0,0,0,0,0,4,0,49,587,9,0,9,115,'164.1',6),
(51,0,1909,0,0,0,0,8,48,0,93,1157,4,1,4,145,'237.5',18),
(52,0,2064,0,0,0,0,4,21,1,98,1103,5,2,6,144,'242.4',19),
(53,0,153,0,0,0,0,0,0,0,50,603,9,0,9,114,'164.3',7),
(54,0,923,0,0,0,0,203,918,8,28,213,2,3,10,167,'195.1',17),
(55,0,76,0,0,0,0,2,3,1,104,1015,6,2,7,142,'245.8',21),
(56,0,604,0,0,0,0,2,21,0,90,1037,6,0,6,142,'231.8',20),
(57,0,1375,0,0,0,0,0,0,0,56,830,4,1,4,109,'165',8),
(58,0,1531,0,0,0,0,6,32,1,81,1055,4,0,5,139,'219.7',22),
(59,0,1840,0,0,0,0,0,0,0,68,1026,1,0,1,109,'176.6',9),
(60,0,922,0,0,0,0,203,903,4,43,316,3,2,7,162,'204.9',18),
(61,0,1610,0,0,0,0,7,61,1,90,912,5,0,6,137,'227.3',23),
(62,0,2137,0,0,0,0,1,4,0,74,763,5,0,5,107,'180.7',10),
(63,0,1444,0,0,0,0,1,12,0,77,1053,5,0,5,137,'213.5',24),
(64,0,2129,0,0,0,0,1,5,0,91,1008,6,3,6,135,'226.3',25),
(65,0,1223,0,0,0,0,0,0,0,68,865,8,1,8,135,'202.5',26),
(66,0,4,0,0,0,0,188,870,7,40,228,1,5,8,158,'197.8',19),
(67,0,1766,0,0,0,0,1,2,0,67,726,10,1,10,133,'199.8',27),
(69,0,1521,1,0,0,1,225,849,7,42,301,0,1,7,153,'195',20),
(70,0,1682,0,0,0,0,187,803,5,34,313,2,2,7,152,'185.6',21),
(71,1,149,1,25,1,0,12,125,0,55,800,5,1,5,126,'180.5',29),
(72,0,996,0,0,0,0,144,558,6,47,452,2,0,8,149,'196',22),
(73,0,1601,1,0,0,0,151,617,5,62,452,2,2,7,147,'208.9',23),
(74,0,87,1,0,0,0,0,0,0,73,780,2,0,2,92,'165',11),
(75,0,1217,0,0,0,0,0,0,0,0,0,0,0,0,101,'165',2),
(76,0,2259,0,0,0,0,207,963,5,19,137,1,0,6,146,'165',24),
(77,0,839,0,0,0,0,0,0,0,0,0,0,0,0,103,'165',1),
(78,357,828,531,3734,21,14,55,270,7,0,0,0,10,7,268,'268.4',12),
(79,322,673,516,3563,27,7,57,215,1,0,0,0,8,1,258,'258',13),
(80,428,1063,626,4804,23,14,40,108,0,0,0,0,13,0,257,'257',14),
(81,246,288,382,2882,16,13,133,767,2,0,0,0,6,2,240,'240',16),
(82,301,2254,441,3810,20,12,38,51,3,0,0,0,8,3,228,'227.5',17),
(83,352,136,521,3801,22,13,44,129,0,0,0,0,7,0,225,'224.9',18),
(84,375,1825,560,3968,20,12,40,82,1,0,0,0,11,1,223,'222.9',19),
(85,321,1432,494,3419,20,15,60,313,1,1,-2,0,7,1,222,'222.9',20),
(86,390,518,605,3740,22,10,20,5,1,0,0,0,11,1,218,'218.1',21),
(87,285,921,426,3052,18,7,30,106,2,0,0,0,1,2,203,'202.7',22),
(88,359,747,602,3641,12,17,73,334,2,0,0,0,9,2,199,'199',23),
(89,332,1597,494,3245,19,8,17,87,0,0,0,0,9,0,195,'194.5',24),
(90,253,436,418,3010,17,13,37,134,1,0,11,0,6,1,181,'180.9',26),
(91,263,65,388,2653,16,10,42,128,3,0,0,0,9,3,181,'180.9',25),
(92,232,1283,361,2428,10,7,62,298,2,1,16,0,7,2,167,'167.5',27),
(93,243,1893,406,2527,9,13,48,222,5,0,0,0,9,5,157,'157.3',28),
(94,263,589,394,2664,16,10,18,44,0,0,0,0,5,0,157,'157',29),
(95,213,201,383,2334,9,11,29,185,4,0,0,0,5,4,152,'151.9',30),
(96,0,750,0,0,0,0,164,767,8,31,222,0,4,8,143,'173.9',25),
(97,0,2195,0,0,0,0,149,688,5,29,176,3,0,8,134,'163.4',26),
(98,159,1517,270,1870,7,10,72,420,2,0,0,0,12,2,127,'126.8',31),
(99,0,71,0,0,0,0,173,612,3,49,234,4,2,7,125,'173.6',28),
(100,0,1214,0,0,0,0,130,719,2,39,337,0,2,3,124,'162.6',29),
(101,0,1367,0,0,0,0,0,0,0,64,916,5,1,5,122,'185.6',30),
(102,0,849,2,0,0,0,2,10,0,63,869,5,0,5,118,'180.9',32),
(103,0,209,0,0,0,0,147,639,4,36,325,0,1,4,118,'154.4',30),
(104,78,1995,134,978,4,5,70,374,5,4,52,0,2,5,118,'121.7',32),
(105,0,2200,0,0,0,0,2,20,0,50,802,6,0,6,118,'168.2',31),
(106,1,375,1,46,0,0,2,22,0,67,828,5,1,5,117,'183.8',33),
(107,95,1976,161,1170,14,3,32,166,1,0,0,0,2,1,117,'117.4',33),
(108,0,2230,0,0,0,0,119,749,6,6,48,0,0,6,116,'121.7',31),
(109,0,2263,0,0,0,0,5,17,0,56,826,5,2,5,114,'170.3',34),
(110,0,292,0,0,0,0,133,576,5,34,190,1,0,6,113,'146.6',32),
(111,0,1900,0,0,0,0,172,612,5,25,174,1,1,6,113,'137.6',33),
(112,0,1764,0,0,0,0,1,10,0,50,655,7,0,7,109,'158.5',35),
(113,0,1290,0,0,0,0,162,593,2,41,263,2,2,4,108,'148.6',34),
(114,0,532,0,0,0,0,14,96,0,59,860,2,0,2,108,'166.6',36),
(115,0,760,0,0,0,0,0,0,0,73,832,4,0,4,107,'180.2',37),
(116,0,1984,0,0,0,0,0,0,0,46,698,6,0,6,106,'151.8',38),
(117,0,1289,0,0,0,0,145,593,2,40,268,1,0,3,104,'144.1',35),
(118,0,2131,0,0,0,0,0,0,0,54,848,3,0,3,103,'156.8',43),
(119,0,1688,0,0,0,0,3,32,0,40,513,8,0,8,103,'142.5',44),
(120,2,147,2,45,0,0,1,9,0,83,866,2,1,2,103,'186.3',41),
(121,0,929,0,0,0,0,0,0,0,53,734,5,0,5,103,'156.4',40),
(122,3,1218,3,88,0,0,2,11,0,45,602,6,3,6,103,'147.8',42),
(123,0,140,0,0,0,0,133,606,5,14,123,0,2,5,101,'114.9',36),
(124,0,999,0,0,0,0,119,517,4,19,129,2,2,6,99,'117.6',38),
(125,0,1831,0,0,0,0,0,0,0,66,770,4,2,4,97,'163',45),
(126,0,214,0,0,0,0,5,54,1,43,538,5,0,6,95,'138.2',46),
(127,0,1826,0,0,0,0,138,503,3,44,259,1,4,4,94,'138.2',39),
(128,0,1759,0,0,0,0,134,491,3,32,228,1,1,4,94,'125.9',40),
(129,0,291,0,0,0,0,119,501,6,10,75,0,0,6,94,'103.6',42),
(130,0,1602,0,0,0,0,153,601,3,26,157,0,1,3,94,'119.8',41),
(131,0,532,0,0,0,0,0,0,0,60,497,7,1,7,92,'151.7',12),
(132,1,927,1,16,0,0,0,0,0,58,776,2,0,2,92,'150.2',47),
(133,0,14,0,0,0,0,0,0,0,35,549,6,0,6,91,'125.9',49),
(134,0,2343,0,0,0,0,0,0,0,68,670,4,0,4,91,'159',13),
(135,0,1901,0,0,0,0,99,442,1,37,343,1,1,2,91,'127.5',44),
(136,0,1361,0,0,0,0,137,754,0,26,158,0,1,0,91,'117.2',43),
(137,0,1364,0,0,0,0,68,291,5,33,253,1,2,6,90,'123.4',45),
(138,0,9,0,0,0,0,2,31,0,42,626,4,0,4,90,'131.7',50),
(139,0,440,0,0,0,0,78,386,5,22,174,0,0,5,88,'110',46),
(140,0,1903,0,0,0,0,3,36,0,53,519,5,0,5,86,'138.5',51),
(141,0,2208,0,0,0,0,0,0,0,61,560,5,1,5,86,'147',14),
(142,69,1894,126,684,4,5,47,230,5,0,0,0,4,5,86,'86.4',35),
(143,0,1360,0,0,0,0,87,373,7,13,83,0,1,7,86,'98.6',47),
(144,0,453,0,0,0,0,2,14,0,44,537,5,0,5,85,'129.1',52),
(145,0,836,0,0,0,0,133,566,3,9,123,0,2,3,85,'93.9',49),
(146,0,439,0,0,0,0,100,534,3,19,137,0,1,3,85,'104.1',48),
(147,0,1445,0,0,0,0,48,212,2,43,397,2,0,4,85,'127.9',50),
(148,0,1002,0,0,0,0,0,0,0,42,568,5,2,5,85,'126.8',53),
(149,0,1158,0,0,0,0,0,0,0,48,564,4,0,4,84,'132.4',15),
(150,149,1519,236,1515,8,9,16,76,0,0,0,0,1,0,84,'84.2',36),
(151,0,1614,0,0,0,0,0,0,0,61,583,4,0,4,84,'145.3',16),
(152,0,1608,0,0,0,0,4,28,0,48,576,4,0,4,84,'132.4',54),
(153,0,142,0,0,0,0,44,226,1,41,405,2,1,3,83,'124.1',51),
(154,122,289,188,1081,3,4,47,294,2,0,0,0,4,2,83,'82.6',37),
(155,0,207,0,0,0,0,61,238,2,34,372,2,2,4,83,'117',52),
(156,0,1005,0,0,0,0,8,46,0,59,693,2,3,2,82,'140.9',55),
(157,0,595,0,0,0,0,160,554,2,27,162,0,1,2,82,'108.6',54),
(158,0,5,0,0,0,0,96,345,4,23,197,1,2,5,82,'105.2',53),
(159,91,588,150,966,5,5,19,151,3,0,0,0,3,3,82,'81.7',38),
(160,0,449,0,0,0,0,6,40,2,52,570,2,3,4,81,'133',56),
(161,0,597,1,0,0,0,122,427,3,25,186,0,1,3,79,'104.3',55),
(162,0,377,0,0,0,0,0,0,0,49,493,5,0,5,79,'128.3',17),
(163,0,1079,0,0,0,0,0,0,0,55,665,2,0,2,79,'133.5',18),
(164,0,15,1,0,0,0,0,0,0,82,693,1,1,1,77,'159.3',58),
(165,0,1768,0,0,0,0,0,0,0,61,593,3,1,3,77,'138.3',19),
(166,0,1985,0,0,0,0,5,41,0,36,570,3,2,3,77,'113.1',59),
(167,0,447,0,0,0,0,0,0,0,34,597,3,2,3,76,'109.7',60),
(168,0,222,0,0,0,0,7,40,2,46,431,2,1,5,75,'121.1',61),
(169,0,1077,0,0,0,0,1,0,0,34,571,3,1,3,75,'109.1',62),
(170,0,1067,0,0,0,0,63,254,2,30,291,1,1,3,73,'102.5',57),
(171,0,680,0,0,0,0,56,276,2,40,310,1,3,3,73,'112.6',56),
(172,0,1365,0,0,0,0,1,3,0,43,647,1,0,1,73,'116',63),
(173,141,66,225,1283,5,4,19,70,1,0,0,0,6,1,72,'72.3',39),
(174,0,454,0,0,0,0,1,1,0,36,475,4,0,4,72,'107.6',20),
(175,0,218,0,0,0,0,0,0,0,34,492,4,2,4,71,'105.2',64),
(176,0,840,0,0,0,0,0,0,0,38,476,4,1,4,70,'107.6',65),
(177,0,150,0,0,0,0,3,11,0,37,473,3,0,3,66,'103.4',66),
(178,0,1687,0,0,0,0,1,1,0,28,375,5,1,5,66,'93.6',68)
,(179,0,1152,0,0,0,0,7,34,0,31,448,3,1,3,66,'97.2',67),
(180,0,1520,0,0,0,0,103,433,2,14,96,0,1,2,65,'78.9',59),
(181,41,2255,71,603,5,2,38,168,1,0,0,0,0,1,65,'64.9',40),
(182,0,1144,0,0,0,0,68,364,2,22,178,0,1,2,64,'86.2',60),
(183,0,77,0,0,0,0,0,0,0,40,515,2,0,2,64,'103.5',70),
(184,0,758,0,0,0,0,11,41,0,63,619,0,1,0,64,'127',69),
(185,0,1448,0,0,0,0,10,89,0,24,296,3,3,4,63,'86.5',71),
(186,0,2340,0,0,0,0,5,32,0,25,343,4,1,4,62,'86.5',72),
(187,0,1363,0,0,0,0,86,406,3,2,19,0,0,3,61,'62.5',61),
(188,0,1538,0,0,0,0,1,0,0,60,612,0,0,0,61,'121.2',22),
(189,0,1072,0,0,0,0,3,16,0,24,469,2,0,2,61,'84.5',74),
(190,0,1693,0,0,0,0,0,0,0,26,430,3,0,3,61,'87',73),
(191,0,1149,0,0,0,0,1,6,0,33,353,4,0,4,60,'92.9',75),
(192,0,219,0,0,0,0,0,0,0,51,447,2,1,2,59,'109.7',78),
(193,0,1074,0,0,0,0,2,3,0,47,546,1,1,1,59,'105.9',76),
(194,0,1837,0,0,0,0,1,2,0,31,406,3,0,3,59,'89.8',77),
(195,0,302,0,0,0,0,0,0,0,46,515,1,0,1,58,'103.5',80),
(196,0,2264,0,0,0,0,0,0,0,24,282,5,1,5,58,'82.2',79),(197,0,1305,0,0,0,0,1,-
3,0,46,408,3,1,3,57,'102.5',23),
(198,0,1221,0,0,0,0,0,0,0,35,445,2,0,2,57,'91.5',81),
(199,0,684,0,0,0,0,2,21,0,38,384,3,1,3,57,'94.5',82),
(200,0,693,0,0,0,0,0,0,0,24,316,4,1,4,56,'79.6',24),
(201,0,1076,0,0,0,0,1,4,0,20,454,2,1,2,56,'75.8',83),
(202,0,365,0,0,0,0,55,246,1,27,196,1,0,2,56,'83.2',63),
(203,0,1990,0,0,0,0,0,0,0,32,377,3,1,3,56,'87.7',84),
(204,0,455,0,0,0,0,0,0,0,38,345,3,0,3,55,'92.5',26),
(205,0,70,0,0,0,0,71,330,3,4,41,0,0,3,55,'59.1',64),
(206,0,2133,0,0,0,0,18,76,0,54,435,1,3,1,55,'109.1',85),
(207,0,1080,0,0,0,0,0,0,0,30,373,3,1,3,55,'85.3',25),
(208,0,834,0,0,0,0,56,350,2,19,87,0,2,2,54,'72.7',65),
(209,65,2325,95,702,5,1,9,42,1,0,0,0,1,1,54,'54.3',41),
(210,0,1754,0,0,0,0,51,166,0,38,289,1,0,1,52,'89.5',66),
(211,0,826,0,0,0,0,7,111,1,24,229,1,1,3,52,'76',87),
(212,0,1298,0,0,0,0,0,0,0,37,521,0,0,0,52,'89.1',86),
(213,0,842,0,0,0,0,0,0,0,29,396,2,0,2,52,'80.6',88),
(214,0,220,1,0,0,0,0,0,0,28,449,1,0,1,51,'78.9',90),
(215,0,606,0,0,0,0,0,0,0,33,446,1,0,1,51,'83.6',91),
(216,0,685,0,0,0,0,0,0,0,23,331,3,0,3,51,'74.1',89),
(217,67,2324,111,787,2,2,10,53,2,1,1,0,2,2,51,'51.9',42),
(218,0,692,0,0,0,0,0,0,0,29,302,3,0,3,50,'79.2',27),
(219,0,299,0,0,0,0,7,50,0,33,272,2,1,3,50,'83.2',92),
(220,0,2072,0,0,0,0,0,0,0,30,245,4,0,4,49,'78.5',28),
(221,0,594,0,0,0,0,67,228,0,32,225,1,1,1,49,'81.3',67),
(222,0,845,0,0,0,0,0,0,0,31,434,1,0,1,49,'80.4',93),
(223,0,1533,0,0,0,0,0,0,0,38,410,1,0,1,49,'87',95),
(224,0,756,0,0,0,0,0,0,0,33,434,1,0,1,49,'82.4',94),
(225,0,998,0,0,0,0,51,256,2,8,105,0,0,2,48,'56.1',68),
(226,0,931,0,0,0,0,2,3,0,38,467,0,1,0,47,'85',96),
(227,0,80,0,0,0,0,0,0,0,14,223,4,0,4,46,'60.3',97),
(228,57,203,85,638,5,2,9,28,0,0,0,0,2,0,46,'46.3',43),
(229,0,833,0,0,0,0,41,156,0,28,240,1,0,1,46,'73.6',71),
(230,0,1438,0,0,0,0,68,266,2,10,73,0,1,2,46,'55.9',69),
(231,0,608,1,0,0,0,0,0,0,24,248,3,1,3,45,'68.8',99),
(232,0,855,0,0,0,0,0,0,0,34,291,2,2,3,45,'79.1',29),
(233,0,1368,0,0,0,0,10,32,0,33,299,2,2,2,45,'78.1',98),
(234,0,1524,0,0,0,0,40,164,2,16,103,1,0,3,45,'60.7',72),
(235,0,2261,0,0,0,0,79,294,2,7,31,0,1,2,45,'51.5',73),
(236,0,2262,0,0,0,0,8,22,1,30,296,1,0,2,44,'73.8',74),
(237,0,1001,0,0,0,0,0,0,0,25,264,3,0,3,44,'69.4',100),(238,88,202,132,953,5,8,5,-
1,0,0,0,0,0,0,44,'44',44),(239,0,605,0,0,0,0,1,3,0,22,323,2,1,2,43,'64.6',103),
(240,0,938,0,0,0,0,0,0,0,33,330,2,1,2,43,'76',30),(241,0,1292,0,0,0,0,1,-
13,0,26,339,2,1,2,43,'68.6',104),
(242,1,1291,3,19,0,0,3,6,0,39,420,0,0,0,43,'82.4',102),
(243,0,296,0,0,0,0,0,0,0,27,394,1,1,1,43,'70.4',101),
(244,0,2326,0,0,0,0,54,232,3,6,29,0,1,3,42,'48.1',75),(245,0,1294,0,0,0,0,1,-
9,0,36,366,1,0,1,42,'77.7',106),
(246,0,526,0,0,0,0,2,13,0,24,285,2,0,2,42,'65.8',105),
(247,0,768,0,0,0,0,0,0,0,35,408,0,1,0,41,'75.8',32),
(248,0,459,0,0,0,0,0,0,0,21,233,3,0,3,41,'62.3',31),
(249,0,208,0,0,0,0,84,356,0,11,49,0,0,0,41,'51.5',77),
(250,0,593,0,0,0,0,88,249,1,4,45,1,0,2,41,'45.4',76),
(251,74,2121,99,740,3,1,22,37,0,0,0,0,4,0,41,'41.3',45),
(252,0,1068,0,0,0,0,55,212,2,10,67,0,2,2,40,'49.9',78);
/*!40000 ALTER TABLE `fantasy` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `fantasy_greater_avg_touchdown`
--
DROP TABLE IF EXISTS `fantasy_greater_avg_touchdown`;
/*!50001 DROP VIEW IF EXISTS `fantasy_greater_avg_touchdown`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `fantasy_greater_avg_touchdown` AS SELECT 
 1 AS `player_name`,
 1 AS `team_name`,
 1 AS `touchdowns`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `players`
--
DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `players_id` int NOT NULL,
  `players_fname` varchar(45) NOT NULL,
  `players_lname` varchar(45) NOT NULL,
  `age` int NOT NULL,
  `number` int NOT NULL,
  `years_pro` int NOT NULL,
  `position` varchar(45) NOT NULL,
  `teams_id` int NOT NULL,
  PRIMARY KEY (`players_id`),
  KEY `fk_players_teams2_idx` (`teams_id`),
  CONSTRAINT `fk_players_teams2` FOREIGN KEY (`teams_id`) REFERENCES `teams` 
(`teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `players`
--
LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,'Josh','Allen',25,17,3,'Quarterback',1),
(2,'Mitchell ','Trubisky',27,10,4,'Quarterback',1),
(3,'Davis','Webb',26,7,3,'Quarterback',1),
(4,'Devin','Singletary',24,26,2,'Runningback',1),
(5,'Zach','Moss',24,20,1,'Runningback',1),
(6,'Taiwan','Jones',33,25,10,'Runningback',1),
(7,'Matt','Breida',26,22,4,'Runningback',1),(8,'Marquez','Stevenson',23,5,0,'Wide 
Receiver',1),(9,'Emmanuel','Sanders',34,1,11,'Wide Receiver',1),
(10,'Isaiah','McKenzie',26,19,4,'Wide Receiver',1),
(11,'Jake','Kumerow',29,15,3,'Wide Receiver',1),
(12,'Isaiah','Hodgins',23,16,0,'Wide Receiver',1),
(13,'Stefon','Diggs',28,14,6,'Wide Receiver',1),(14,'Gabriel','Davis',22,13,1,'Wide
Receiver',1),(15,'Cole','Beasely',32,11,9,'Wide Receiver',1),
(16,'Kahale','Warring',24,81,1,'Tight End',1),(17,'Tommy','Sweeney',26,89,2,'Tight 
End',1),(18,'Dawson','Knox',25,88,2,'Tight End',1),
(19,'Reggie','Gilliam',24,41,1,'Tight End',1),(20,'Ryan','Bates',24,71,2,'Offensive
Lineman',1),(21,'Cody','Ford',25,74,2,'Offensive Lineman',1),
(22,'Tommy','Doyle',23,72,0,'Offensive Lineman',1),
(23,'Daryl','Williams',29,75,6,'Offensive Lineman',1),
(24,'Spencer','Brown',23,79,0,'Offensive Lineman',1),
(25,'Dion','Dawkins',27,73,4,'Offensive Lineman',1),
(26,'Jamil','Douglas',29,77,6,'Offensive Lineman',1),
(27,'Jon','Feliciano',29,76,6,'Offensive Lineman',1),
(28,'Bobby','Hart',27,68,6,'Offensive Lineman',1),
(29,'Ike','Boettger',27,65,3,'Offensive Lineman',1),
(30,'Mitch','Morse',29,60,6,'Offensive Lineman',1),(31,'AJ 
','Espenesa',23,57,1,'Defensive Lineman',1),
(32,'Brandin','Bryant',28,90,2,'Defensive Lineman',1),
(33,'Ed','Oliver',24,91,2,'Defensive Lineman',1),
(34,'Boogie','Basham',24,96,0,'Defensive Lineman',1),
(35,'Greg','Rousseau',21,50,0,'Defensive Lineman',1),
(36,'Jerry','Hughes',33,55,11,'Defensive Lineman',1),
(37,'Harrison','Phillips',25,99,3,'Defensive Lineman',1),
(38,'Justin','Zimmer',29,61,3,'Defensive Lineman',1),
(39,'Shaq','Lawson',27,50,6,'Defensive Lineman',1),
(40,'Mike','Love',28,56,2,'Defensive Lineman',1),
(41,'Jordan','Phillips',29,97,7,'Defensive Lineman',1),
(42,'Eli','Ankou',27,51,4,'Defensive Lineman',1),
(43,'Vernon','Butler',27,94,5,'Defensive Lineman',1),
(44,'Star','Lotulelei',32,98,8,'Defensive Lineman',1),
(45,'Matt','Milano',27,58,5,'Linebacker',1),
(46,'Tremaine','Edmunds',23,49,4,'Linebacker',1),
(47,'Andre','Smith',25,9,4,'Linebacker',1),
(48,'Tyler','Matakevich',29,44,6,'Linebacker',1),
(49,'Tyrel','Dodson',23,53,2,'Linebacker',1),(50,'Joe','Giles-
Harris',25,42,2,'Linebacker',1),(51,'Efe','Odaba',29,93,3,'Linebacker',1),
(52,'Dane','Jackson',25,30,2,'Cornerback',1),
(53,'Jaquan','Johnson',26,46,2,'Cornerback',1),
(54,'Taron','Johnson',25,24,4,'Cornerback',1),
(55,'Siran','Neal',27,33,4,'Cornerback',1),
(56,'Levi','Wallace',26,39,3,'Cornerback',1),
(57,'Tre\'Davious','White',27,27,5,'Cornerback',1),
(58,'Jordan','Poyer',30,21,8,'Cornerback',1),
(59,'Micah','Hyde',31,23,8,'Safety',1),(60,'Damar','Hamlin',23,31,0,'Safety',1),
(61,'Cameron','Lewis',24,47,1,'Safety',1),(62,'Tyler','Bass',25,2,3,'Kicker',1),
(63,'Matt','Haack',27,3,5,'Punter',1),(64,'Reid 
','Ferguson',28,69,5,'Longsnapper',1),
(65,'Tua','Tagovailoa',23,1,1,'Quarterback',2),
(66,'Jacoby','Brissett',29,14,5,'Quarterback',2),
(67,'Jordan','Scarlett',25,22,2,'Runningback',2),
(68,'Phillip','Lindsay',27,31,3,'Runningback',2),
(69,'Patrick','Laird',26,32,2,'Runningback',2),
(70,'Duke','Johnson',28,28,6,'Runningback',2),
(71,'Miles','Gaskin',24,37,2,'Runningback',2),
(72,'Malcolm','Brown',28,34,6,'Runningback',2),
(73,'Salvon','Ahmed',23,26,1,'Runningback',2),(74,'Albert','Wilson',29,2,7,'Wide 
Receiver',2),(75,'Preston','Williams',24,18,2,'Wide Receiver',2),
(76,'Jaylen','Waddle',23,17,0,'Wide Receiver',2),
(77,'DaVante','Parker',28,11,6,'Wide Receiver',2),
(78,'Kirk','Merritt',24,83,1,'Wide Receiver',2),
(79,'Tommylee','Lewis',29,85,5,'Wide Receiver',2),
(80,'Mack','Hollins',28,86,4,'Wide Receiver',2),(81,'Jakeem','Grant',29,19,5,'Wide 
Receiver',2),(82,'Will','Fuller',27,3,5,'Wide Receiver',2),
(83,'Isaiah','Ford',25,87,3,'Wide Receiver',2),(84,'Durham','Smythe',26,81,3,'Tight
End',2),(85,'Adam','Shaheen',27,80,4,'Tight End',2),
(86,'Hunter','Lomg',23,84,0,'Tight End',2),(87,'Mike','Gesecki',26,88,3,'Tight 
End',2),(88,'Cethan','Carter',26,82,4,'Tight End',2),
(89,'Solomon','Kindley',24,66,1,'Offensive Lineman',2),
(90,'Austin','Jackson',22,73,1,'Offensive Lineman',2),
(91,'Robert','Hunt',25,68,1,'Offensive Lineman',2),
(92,'Michael','Deiter',25,63,2,'Offensive Lineman',2),
(93,'Liam','Eichenberg',23,74,0,'Offensive Lineman',2),
(94,'Jesse','Davis',30,77,4,'Offensive Lineman',2),
(95,'Adam','Pankey',37,78,4,'Offensive Lineman',2),
(96,'Robert','Jones',22,65,0,'Offensive Lineman',2),
(97,'Cameron','Tom',26,64,3,'Offensive Lineman',2),
(98,'Austin','Reiter',30,61,5,'Offensive Lineman',2),
(99,'Greg','Mancz',29,62,6,'Offensive Lineman',2),
(100,'Christian','Wilkins',26,94,2,'Defensive Lineman',2),
(101,'Jabaal','Sheard',32,97,10,'Defensive Lineman',2),
(102,'Raekwon','Davis',24,98,1,'Defensive Lineman',2),
(103,'Zach','Sieler',26,92,3,'Defensive Lineman',2),
(104,'Emmanuel','Ogbah',28,91,5,'Defensive Lineman',2),
(105,'John','Jenkins',32,90,8,'Defensive Lineman',2),
(106,'Adam','Butler',27,70,4,'Defensive Lineman',2),
(107,'Duke','Riley',27,45,4,'Linebacker',2),
(108,'Calvin','Munson',27,50,4,'Linebacker',2),
(109,'Vince','Biegel',28,47,4,'Linebacker',2),
(110,'Jerome','Baker',25,55,3,'Linebacker',2),
(111,'Elandon','Roberts',27,52,5,'Linebacker',2),(112,'Andrew','Van 
Ginkel',26,43,2,'Linebacker',2),(113,'Brennan','Scarlett',28,57,5,'Linebacker',2),
(114,'Jaelan','Phillips',22,15,0,'Linebacker',2),
(115,'Samuel','Eguavoen',28,49,2,'Linebacker',2),
(116,'Trill','Williams',22,51,0,'Cornerback',2),
(117,'Eric','Rowe',29,21,6,'Cornerback',2),
(118,'Jamal','Perry',27,33,2,'Cornerback',2),
(119,'Christopher','Milton',29,35,5,'Cornerback',2),
(120,'Byron','Jones',29,24,6,'Cornerback',2),
(121,'Noah','Igbinoghene',22,9,1,'Cornerback',2),
(122,'Xavien','Howard',28,25,5,'Cornerback',2),
(123,'Justin','Coleman',28,27,6,'Cornerback',2),
(124,'Clayton','Fejedelem',28,42,5,'Safety',2),
(125,'Blake','Ferguson',24,44,1,'Long Snapper',2),
(126,'Sheldrick','Redwine',25,20,2,'Safety',2),
(127,'Will','Parks',27,36,5,'Safety',2),(128,'Brandon','Jones',23,29,1,'Safety',2),
(129,'Jevon','Holland',21,22,0,'Safety',2),
(130,'Nik','Needham',25,30,2,'Safety',2),
(131,'Jason','McCourty',34,30,12,'Cornerback',2),
(132,'Javaris','Davis',25,38,0,'Safety',2),
(133,'Elijah','Campbell',26,22,1,'Safety',2),
(134,'Jason','Sanders',26,7,3,'Kicker',2),
(135,'Michael','Palardy',29,5,7,'Punter',2),
(136,'Mac','Jones',23,10,0,'Quarterback',3),
(137,'Brian','Hoyer',36,5,12,'Quarterback',3),
(138,'James','White',29,28,7,'Runningback',3),
(139,'J.J.','Taylor',23,42,1,'Runningback',3),
(140,'Rhamondre','Stevenson',23,38,0,'Runningback',3),
(141,'Damien','Harris',24,37,2,'Runningback',3),
(142,'Brandon','Bolden',31,25,9,'Runningback',3),
(143,'Jakob','Johnson',27,47,2,'Fullback',3),
(144,'Kristian','Wilkerson',24,17,1,'Wide Receiver',3),
(145,'Matthew','Slater',31,18,13,'Wide Receiver',3),
(146,'Gunner','Olszewski',25,80,2,'Wide Receiver',3),
(147,'Jakobi','Meyers',25,16,2,'Wide Receiver',3),
(148,'N\'Keal','Harry',24,1,2,'Wide Receiver',3),
(149,'Kendrick','Bourne',26,84,4,'Wide Receiver',3),
(150,'Nelson','Agholor',28,15,6,'Wide Receiver',3),
(151,'Jonnu','Smith',26,81,4,'Tight End',3),(152,'Matt','LaCosse',29,83,6,'Tight 
End',3),(153,'Hunter','Henry',27,85,5,'Tight End',3),
(154,'Devin','Asiasi',24,86,1,'Tight End',3),
(155,'Michael','Onwenu',24,71,1,'Offensive Lineman',3),
(156,'Justin','Herron',26,75,1,'Offensive Lineman',3),
(157,'Yodny','Cajuste',25,72,0,'Offensive Lineman',3),
(158,'Isaiah','Wynn',26,76,3,'Offensive Lineman',3),
(159,'Trent','Browm',28,77,6,'Offensive Lineman',3),
(160,'William','Sherman',22,68,0,'Offensive Lineman',3),
(161,'Yasir','Durant',23,63,1,'Offensive Lineman',3),
(162,'Ted','Karras',28,67,5,'Offensive Lineman',3),
(163,'Shaq','Mason',28,69,6,'Offensive Lineman',3),
(164,'James','Ferentz',32,65,7,'Offensive Lineman',3),
(165,'David','Andrews',29,60,6,'Offensive Lineman',3),
(166,'Daniel','Ekuale',27,95,2,'Defensive Lineman',3),(167,'Deatrich','Wise 
Jr.',27,92,4,'Defensive Lineman',3),(168,'Matt','Judon',29,9,5,'Defensive 
Lineman',3),(169,'Henry','Anderson',30,94,6,'Defensive Lineman',3),
(170,'Lawrence','Guy',31,93,10,'Defensive Lineman',3),
(171,'Davon','Godchaux',27,92,4,'Defensive Lineman',3),
(172,'Carl','Davis',29,98,6,'Defensive Lineman',3),
(173,'Christian','Barmore',22,70,0,'Defensive Lineman',3),(174,'Kyle','Van 
Noy',30,53,7,'Linebacker',3),(175,'Calvin','Munson',27,43,4,'Linebacker',3),
(176,'Jamie','Collins',32,58,8,'Linebacker',3),
(177,'Tashawn','Bowser',26,96,4,'Linebacker',3),
(178,'Harvey','Langi',29,48,4,'Linebacker',3),
(179,'Donta','Hightower',31,54,9,'Linebacker',3),
(180,'Ja\'Whaun','Bentley',25,8,3,'Linebacker',3),
(181,'Josh','Uche',23,55,1,'Linebacker',3),
(182,'Jahlani','Tavai',25,38,2,'Linebacker',3),
(183,'Joejuan','Williams',24,33,2,'Cornerback',3),
(184,'Shaun','Wade',23,26,0,'Cornerback',3),
(185,'Jalen','Mills',27,2,5,'Cornerback',3),
(186,'Jonathan','Jones',28,31,5,'Cornerback',3),
(187,'Justin','Bethel',31,29,9,'Cornerback',3),
(188,'Sean','Davis',28,30,5,'Safety',3),(189,'Joe','Cardona',29,49,6,'Long 
Snapper',3),(190,'Kyle','Dugger',25,23,1,'Safety',3),
(191,'Cody','Davis',32,22,8,'Safety',3),
(192,'D\'Angelo','Ross',25,39,0,'Safety',3),
(193,'Adrian','Phillips',29,21,7,'Safety',3),
(194,'Devin','McCourty',34,32,11,'Safety',3),
(195,'Brandon','King',28,36,8,'Safety',3),
(196,'J.C.','Jackson',26,27,3,'Safety',3),
(197,'Myles','Bryant',23,41,1,'Safety',3),(198,'Nick','Folk',37,6,14,'Kicker',3),
(199,'Jakeem','Bailey',24,7,2,'Punter',3),
(200,'Chase','Winovich',26,50,2,'Defensive Lineman',3),
(201,'Zach','Wilson',22,2,0,'Quarterback',4),
(202,'Mike','White',26,5,3,'Quarterback',4),
(203,'Josh','Johnson',35,9,13,'Quarterback',4),
(204,'Joe','Flacco',36,19,13,'Quarterback',4),
(205,'Austin','Walter',25,35,2,'Runningback',4),
(206,'La\'Mical','Perine',23,22,1,'Runningback',4),(207,'Ty','Jo
hnson',24,25,2,'Runningback',4),(208,'Tevin','Coleman',28,23,6,'Runningback',4),
(209,'Michael','Carter',22,32,0,'Runningback',4),
(210,'Nick','Bawden',25,38,3,'Runningback',4),
(211,'Josh','Adams',25,36,3,'Runningback',4),(212,'Vyncint','Smith',25,17,3,'Wide 
Receiver',4),(213,'Jeff','Smith',24,16,2,'Wide Receiver',4),
(214,'Elijah','Moore',21,8,0,'Wide Receiver',4),(215,'D.J.','Montgomery 
',25,14,0,'Wide Receiver',4),(216,'Denzel','Mims',24,11,1,'Wide Receiver',4),
(217,'Justin','Hardee',27,34,4,'Wide Receiver',4),
(218,'Corey','Davis',26,84,4,'Wide Receiver',4),
(219,'Jamison','Crowder',28,82,6,'Wide Receiver',4),
(220,'Keelan','Cole',28,88,4,'Wide Receiver',4),(221,'Tarik','Black',23,3,0,'Wide 
Receiver',4),(222,'Braxton','Berrios',26,10,3,'Wide Receiver',4),
(223,'Kenny','Yeboah',23,48,0,'Tight End',4),(224,'Trevon','Wesco',26,85,2,'Tight 
End',4),(225,'Tyler','Kroft',29,81,6,'Tight End',4),
(226,'Ryan','Griffin',31,86,8,'Tight End',4),(227,'Daniel','Browns',29,87,6,'Tight 
End',4),(228,'Alijah','Vera-Tucker',22,75,0,'Offensive Lineman',4),
(229,'Chuma','Edoga',24,70,2,'Offensive Lineman',4),
(230,'Mekhi','Becton',22,77,1,'Offensive Lineman',4),
(231,'Morgan','Moses',30,78,4,'Offensive Lineman',4),(232,'Laurent','Duvernay-
Tardif',29,72,7,'Offensive Lineman',4),(233,'Isaiah','Williams',30,71,3,'Offensive 
Lineman',4),(234,'George','Fant',29,76,5,'Offensive Lineman',4),(235,'Connor 
','McGovern',28,60,4,'Offensive Lineman',4),
(236,'Daniel','Feeney',27,67,4,'Offensive Lineman',4),(237,'Greg','Van 
Roten',31,62,9,'Offensive Lineman',4),(238,'Jabari','Zuniga',24,92,1,'Defensive 
Lineman',4),(239,'Quinnen','Williams',24,95,2,'Defensive Lineman',4),
(240,'Kyle','Phillips',24,93,2,'Defensive Lineman',4),
(241,'Tim','Ward',24,51,1,'Defensive Lineman',4),
(242,'Shaq','Lawson',27,50,5,'Defensive Lineman',4),
(243,'Bryce','Huff',23,47,1,'Defensive Lineman',4),(244,'John','Franklin-
Myers',25,91,3,'Defensive Lineman',4),(245,'Ronald','Blair',28,54,5,'Defensive 
Lineman',4),(246,'Freedom','Akinmoladun',25,0,2,'Defensive Lineman',4),
(247,'Nathan','Shepherd',28,97,3,'Defensive Lineman',4),
(248,'Sheldon','Rankins',27,98,5,'Defensive Lineman',4),
(249,'Jonathan','Marshall',24,96,0,'Defensive Lineman',4),
(250,'Folorunso','Fatukasi',26,94,3,'Defensive Lineman',4),
(251,'Quincy','Williams',25,56,2,'Linebacker',4),(252,'Hamilcar','Rashed 
Jr.',23,55,0,'Linebacker',4),(253,'B.J.','Goodson',28,48,5,'Linebacker',4),
(254,'C.J.','Mosely',29,57,7,'Linebacker',4),
(255,'Jarrad','Davis',27,52,4,'Linebacker',4),
(256,'Jamien','Sherwood',21,44,0,'Linebacker',4),
(257,'LaRoy','Reynolds',31,49,8,'Linebacker',4),
(258,'Del\'Shawn','Phillips',25,43,1,'Linebacker',4),
(259,'Hamsah','Nasirildeen',22,45,0,'Linebacker',4),
(260,'Noah','Dawkins',24,46,2,'Linebacker',4),
(261,'Blake','Cashman',25,53,2,'Linebacker',4),
(262,'Rachad','WIldgoose',21,29,0,'Cornerback',4),
(263,'Jason','Pinnock',22,41,0,'Cornerback',4),
(264,'Lamarcus','Joyner',31,29,7,'Cornerback',4),
(265,'Bryce','Hall',24,37,1,'Cornerback',4),
(266,'Brandin','Echols',24,25,0,'Cornerback',4),
(267,'Michael','Carter',22,30,0,'Cornerback',4),
(268,'Adrian','Colbert',28,33,4,'Safety',4),(269,'Kai','Nacua',26,1,4,'Safety',4),
(270,'Marcus','Maye',28,20,4,'Safety',4),(271,'Thomas','Hennessy',27,42,4,'Long 
Snapper',4),(272,'Jarrod','Wilson',27,39,5,'Safety',4),
(273,'Sheldrick','Redwine',25,31,2,'Safety',4),
(274,'Will','Parks',27,39,5,'Safety',4),
(275,'Sharrod','Neasman',30,35,5,'Safety',4),
(276,'Ashtyn','Davis',25,21,1,'Safety',4),(277,'Javin','White',24,53,1,'Safety',4),
(278,'Elijah','Riley',23,33,1,'Safety',4),
(279,'Lamar','Jackson',23,38,1,'Cornerback',4),
(280,'Javelin','Guidry',23,40,1,'Cornerback',4),
(281,'Isaiah','Dunn',22,27,0,'Cornerback',4),
(282,'Eddie','Pineiro',26,15,3,'Kicker',4),
(283,'Alex','Kessman',23,6,0,'Kicker',4),
(284,'Matt','Ammendola',25,6,0,'Kicker',4),
(285,'Thomas','Morstead',35,4,12,'Punter',4),
(286,'Braden','Mann',24,7,1,'Punter',4),
(287,'Josh','Johnson',35,15,13,'Quarterback',5),
(288,'Lamar','Jackson',24,8,3,'Quarterback',5),
(289,'Tyler','Huntley',23,2,1,'Quarterback',5),
(290,'Ty\'Son','Williams',25,34,0,'Runningback',5),
(291,'Latavius','Murray',31,28,8,'Runningback',5),
(292,'Devonta','Freeman',29,33,7,'Runningback',5),
(293,'Trenton','Cannon',27,39,3,'Runningback',5),
(294,'Le\'Veon','Bell',29,17,8,'Runningback',5),
(295,'Patrick','Ricard',27,42,4,'Fullback',5),(296,'Sammy','Watkins',28,14,7,'Wide 
Receiver',5),(297,'Tylan','Wallace',22,16,0,'Wide Receiver',5),
(298,'James','Proche',25,11,1,'Wide Receiver',5),
(299,'Devin','Duvernay',24,13,1,'Wide Receiver',5),
(300,'Marquise','Browns',24,5,2,'Wide Receiver',5),
(301,'Miles','Boykin',25,80,2,'Wide Receiver',5),
(302,'Rashod','Bateman',22,12,0,'Wide Receiver',5),
(303,'Eric','Tomlinson',29,85,5,'Tight End',5),(304,'Tony','Poljan',24,83,0,'Tight 
End',5),(305,'Josh','Oliver',24,84,2,'Tight End',5),
(306,'Nick','Boyle',28,86,6,'Tight End',5),(307,'Mark','Andrews',26,89,3,'Tight 
End',5),(308,'Ben','Powers',25,72,2,'Offensive Lineman',5),
(309,'Tyre','Phillips',24,74,1,'Offensive Lineman',5),
(310,'Ronnie','Stanley',27,79,5,'Offensive Lineman',5),
(311,'David','Sharpe',26,62,4,'Offensive Lineman',5),
(312,'Cedric','Ogbuehi',29,67,6,'Offensive Lineman',5),
(313,'Alejandro','Villanueva',33,78,7,'Offensive Lineman',5),(314,'Jaryd','Jones-
Smith',26,76,1,'Offensive Lineman',5),(315,'James','Carpenter',32,0,10,'Offensive 
Lineman',5),(316,'Kevin','Zeitler',31,70,9,'Offensive Lineman',5),
(317,'Patrick','Mekari',24,65,2,'Offensive Lineman',5),
(318,'Ben','Cleveland',23,66,0,'Offensive Lineman',5),(319,'Trystan','Colon-
Castillo',23,63,1,'Offensive Lineman',5),
(320,'Bradley','Bozeman',27,77,3,'Offensive Lineman',5),
(321,'Broderick','Washington Jr.',25,96,1,'Defensive Lineman',5),
(322,'Pernell','McPhee',33,90,10,'Defensive Lineman',5),
(323,'Justin','Madubuike',24,92,1,'Defensive Lineman',5),
(324,'Jaylon','Ferguson',26,45,2,'Defensive Lineman',5),
(325,'Calais','Campbell',35,93,13,'Defensive Lineman',5),
(326,'Brandon','Williams',32,98,8,'Defensive Lineman',5),
(327,'Khalil','McKenzie',24,69,3,'Defensive Lineman',5),
(328,'Isaiah','Mack',25,94,2,'Defensive Lineman',5),
(329,'Justin','Ellis',31,71,7,'Defensive Lineman',5),
(330,'Justin','Houston',32,50,10,'Linebacker',5),
(331,'Odafe','Oweh',23,99,0,'Linebacker',5),
(332,'Daelin','Hayes',23,59,0,'Linebacker',5),
(333,'Tyus','Bowser',26,54,4,'Linebacker',5),
(334,'Josh','Bynes',32,56,10,'Linebacker',5),
(335,'Kristian','Welch',23,57,1,'Linebacker',5),
(336,'Joe','Thomas',30,58,7,'Linebacker',5),
(337,'Patrick','Queen',22,6,1,'Linebacker',5),
(338,'Malik','Harrison',23,40,1,'Linebacker',5),
(339,'Chris','Board',26,49,3,'Linebacker',5),
(340,'Tavon','Young',27,25,5,'Cornerback',5),
(341,'Daryl','Worley',26,29,5,'Cornerback',5),
(342,'Chris','Westry',24,30,1,'Cornerback',5),
(343,'Brandon','Stephens',24,21,0,'Cornerback',5),
(344,'Jimmy','Smith',33,22,10,'Cornerback',5),
(345,'Kevon','Seymour',28,38,5,'Cornerback',5),
(346,'Robert','Jackson',28,17,3,'Cornerback',5),
(347,'Marlon','Humphrey',25,44,4,'Cornerback',5),
(348,'Anthony','Averett',37,23,3,'Cornerback',5),
(349,'Jordan','Richards',28,48,6,'Safety',5),
(350,'DeShon','Elliot',24,32,3,'Safety',5),
(351,'Tony','Jefferson',29,31,8,'Safety',5),
(352,'Chuck','Clark',26,36,4,'Safety',5),(353,'Nick','Moore ',29,46,1,'Long 
Snapper',5),(354,'Ar\'Darius','Washington',22,29,0,'Safety',5),
(355,'Geno','Stone',22,26,1,'Safety',5),
(356,'Anthony','Levine',34,41,10,'Safety',5),
(357,'Mazzi','Wilkins',26,39,2,'Safety',5),
(358,'Justin','Tucker',32,9,9,'Kicker',5),(359,'Sammy','Koch',39,4,15,'Punter',5),
(360,'Nate','McCrary',22,47,0,'',5),(361,'Joe','Burrow',35,9,1,'Quarterback',6),
(362,'Brandon','Allen',29,8,3,'Quarterback',6),
(363,'Trayveon','Williams',24,32,2,'Running Back',6),
(364,'Pooka','Williams',22,12,0,'Running Back',6),
(365,'Semaje','Perine',26,34,4,'Running Back',6),
(366,'Joe','Mixon',25,28,4,'Running Back',6),(367,'Chris','Evans',24,25,0,'Running 
Back',6),(368,'Mike','Thomas',27,80,5,'Wide Receiver',6),
(369,'Trent','Taylor',27,11,4,'Wide Receiver',6),(370,'Auden','Tate',24,19,3,'Wide 
Receiver',6),(371,'Stanley','Morgan Jr',25,17,2,'Wide Receiver',6),
(372,'Trenton','Irwin',26,16,2,'Wide Receiver',6),
(373,'Tee','Higgins',22,85,1,'Wide Receiver',6),
(374,'Ja\'Marr','Chase',21,1,0,'Wide Receiver',6),(375,'Tyler','Boyd',27,83,5,'Wide
Receiver',6),(376,'Mitchell','Wilcox',25,84,0,'Tight End',6),
(377,'C.J.','Uzomah',28,87,6,'Tight End',6),(378,'Mason','Schreck',28,86,3,'Tight 
End',6),(379,'Drew','Sample',25,89,2,'Tight End',6),
(380,'Clark','Harris',37,46,13,'Tight End',6),
(381,'Jonah','Williams',24,73,1,'Offensive Lineman',6),
(382,'Isaiah','Prince',24,75,2,'Offensive Lineman',6),
(383,'Hakeem','Adeniji',24,77,1,'Offensive Lineman',6),
(384,'Riley','Reiff',33,71,9,'Offensive Lineman',6),
(385,'D\'Ante','Smith',23,70,0,'Offensive Lineman',6),(386,'Xavier','Su\'a-
Filo',30,72,7,'Offensive Lineman',6),(387,'Quinton','Spain',30,67,6,'Offensive 
Lineman',6),(388,'Keaton','Sutherland',24,64,2,'Offensive Lineman',6),
(389,'Fred','Johnson',24,74,2,'Offensive Lineman',6),
(390,'Trey','Hopkins',29,66,7,'Offensive Lineman',6),
(391,'Jackson','Carman',21,79,0,'Offensive Lineman',6),
(392,'Trey','Hill',21,63,0,'Offensive Lineman',6),
(393,'Renell','Wren',26,95,2,'Defensive Lineman',6),
(394,'Khalid','Kareem',23,90,1,'Defensive Lineman',6),
(395,'Noah','Spence',27,52,5,'Defensive Lineman',6),
(396,'Cameron','Sample',22,96,0,'Defensive Lineman',6),
(397,'Wyatt','Ray',25,93,1,'Defensive Lineman',6),
(398,'Sam','Hubbard',26,94,3,'Defensive Lineman',6),
(399,'Darius','Hodge',23,44,0,'Defensive Lineman',6),
(400,'Trey','Hendrickson',27,91,4,'Defensive Lineman',6),
(401,'Josh','Tupou',27,68,4,'Defensive Lineman',6),
(402,'Tyler','Shelvin',23,99,0,'Defensive Lineman',6),
(403,'D.J.','Reader',27,98,5,'Defensive Lineman',6),
(404,'Larry','Ogunjobi',27,65,4,'Defensive Lineman',6),
(405,'B.J.','Hill',26,92,3,'Defensive Lineman',6),
(406,'Mike','Daniels',32,76,9,'Defensive Lineman',6),
(407,'Jordan','Evans',26,50,4,'Linebacker',6),
(408,'Austin','Calitro',27,48,3,'Linebacker',6),(409
,'Logan','Wilson',25,55,1,'Linebacker',6),
(410,'Germaine','Pratt',25,57,2,'Linebacker',6),
(411,'Keandre','Jones',24,47,1,'Linebacker',6),
(412,'Clay','Johnson',25,44,1,'Linebacker',6),(413,'Akeem','Davis-
Gaither',24,59,1,'Linebacker',6),(414,'Markus','Bailey',24,51,1,'Linebacker',6),
(415,'Joe','Bachie',23,49,1,'Linebacker',6),
(416,'Brandon','Wilson',27,40,4,'Cornerback',6),
(417,'Trae','Waynes',29,26,6,'Cornerback',6),
(418,'Darius','Phillips',26,23,3,'Cornerback',6),
(419,'Nick','McCloud',23,29,0,'Cornerback',6),
(420,'Mike','Hilton',27,21,4,'Cornerback',6),(421,'Vernon','Hargreaves 
III',26,29,5,'Cornerback',6),(422,'Jalen','Davis',25,35,3,'Cornerback',6),
(423,'Chidobe','Awuzie',26,22,4,'Cornerback',6),
(424,'Eli','Apple',26,20,5,'Cornerback',6),
(425,'Ricardo','Allen',30,37,7,'Cornerback',6),
(426,'Tre','Flowers',26,33,3,'Cornerback',6),
(427,'Vonn','Bell',27,24,5,'Safety',6),(428,'Sean','Davis',28,33,5,'Safety',6),
(429,'Jessie','Bates III',24,30,3,'Safety',6),
(430,'Michael','Thomas',31,31,8,'Safety',6),
(431,'Trayvon','Henderson',26,41,3,'Safety',6),
(432,'Evan','McPherson',22,2,0,'Kicker',6),(433,'Elliot','Frey',27,3,1,'Kicker',6),
(434,'Kevin','Huber',36,10,12,'Punter',6),
(435,'Nick','Mullens',26,9,3,'Quarterback',7),
(436,'Baker','Mayfield',26,6,3,'Quarterback',7),
(437,'Case','Keenum',33,5,9,'Quarterback',7),
(438,'John','Kelley',25,41,3,'Runningback',7),
(439,'D\'Ernest','Johnson',25,30,2,'Runningback',7),
(440,'Kareem','Hunt',26,27,4,'Runningback',7),
(441,'Demetric','Felton',23,25,0,'Runningback',7),
(442,'Nick','Chubb',26,24,3,'Runningback',7),
(443,'Jordan','Franks',25,87,3,'Runningback',7),
(444,'Johnny','Stanton',27,40,3,'Fullback',7),
(445,'Andy','Janovich',28,31,5,'Fullback',7),
(446,'Anthony','Schwartz',21,10,0,'Wide Receiver',7),(447,'Donovan','Peoples-
Jones',22,11,1,'Wide Receiver',7),(448,'Jojo','Natson',27,19,4,'Wide Receiver',7),
(449,'Jarvis','Landry',29,80,7,'Wide Receiver',7),
(450,'Rashard','Higgins',27,82,5,'Wide Receiver',7),
(451,'Lawrence','Cager',24,83,1,'Wide Receiver',7),
(452,'Ja\'Marcus','Bradley',25,84,1,'Wide Receiver',7),(453,'Odell','Beckham 
Jr.',29,13,7,'Wide Receiver',7),(454,'David','Njoku',25,85,4,'Tight End',7),
(455,'Austin','Hooper',27,81,5,'Tight End',7),
(456,'Miller','Forristall',23,86,0,'Tight End',7),
(457,'Connor','Davis',27,86,0,'Tight End',7),
(458,'Stephen','Carlson',25,89,2,'Tight End',7),
(459,'Harrison','Bryant',23,88,1,'Tight End',7),(460,'Jedrick','Wills 
Jr.',22,71,1,'Offensive Lineman',7),(461,'Nick','Harris',23,53,1,'Offensive 
Lineman',7),(462,'Hjalte','Froholdt',25,72,1,'Offensive Lineman',7),
(463,'James','Hudson',22,66,0,'Offensive Lineman',7),
(464,'Drew','Forbes',24,79,2,'Offensive Lineman',7),
(465,'Michael','Dunn',27,68,1,'Offensive Lineman',7),
(466,'Jackson','Conklin',27,78,5,'Offensive Lineman',7),
(467,'Alex','Taylor',24,60,1,'Offensive Lineman',7),
(468,'Blake','Hance',25,62,0,'Offensive Lineman',7),
(469,'J.C.','Tretter',30,64,8,'Offensive Lineman',7),
(470,'Wyatt','Teller',27,77,3,'Offensive Lineman',7),
(471,'Chris','Hubbard',30,74,8,'Offensive Lineman',7),
(472,'Joel','Bitonio',30,75,7,'Offensive Lineman',7),
(473,'Jordan','Elliott',24,96,1,'Defensive Lineman',7),
(474,'Ifeadi','Odenigbo',27,57,3,'Defensive Lineman',7),
(475,'Myles','Garrett',26,95,4,'Defensive Lineman',7),
(476,'Jadeveon','Clowney',28,90,7,'Defensive Lineman',7),
(477,'Tommy','Togiai',22,93,0,'Defensive Lineman',7),
(478,'Malik','McDowell',25,58,0,'Defensive Lineman',7),
(479,'Malik','Jackson',31,97,9,'Defensive Lineman',7),
(480,'Sheldon','Day',27,92,5,'Defensive Lineman',7),
(481,'Andrew','Billings',26,99,4,'Defensive Lineman',7),
(482,'Takkarist','McKinley',26,55,4,'Linebacker',7),
(483,'Elijah','Lee',25,52,4,'Linebacker',7),
(484,'Anthony','Walker',26,4,4,'Linebacker',7),
(485,'Malcolm','Smith',32,56,10,'Linebacker',7),
(486,'Mack','Wilson',23,51,2,'Linebacker',7),
(487,'Curtis','Weaver',23,59,0,'Linebacker',7),
(488,'Sione','Takitaki',26,44,2,'Linebacker',7),
(489,'Jacob','Phillips',22,50,1,'Linebacker',7),(490,'Jeremiah','Owusu-
Koramoah',22,28,0,'Linebacker',7),(491,'Willie','Harvey',25,54,2,'Linebacker',7),
(492,'Porter','Gustin',24,94,2,'Linebacker',7),
(493,'Tony','Fields',22,42,0,'Linebacker',7),
(494,'Greedy','Williams',24,26,2,'Cornerback',7),
(495,'Denzel','Ward',24,21,3,'Cornerback',7),
(496,'M.J.','Stewart',26,36,3,'Cornerback',7),(497,'Greg','Newsome 
II',21,20,0,'Cornerback',7),(498,'Troy','Hill',30,23,6,'Cornerback',7),
(499,'Tim','Harris',26,34,1,'Cornerback',7),
(500,'Brian','Allen',28,34,4,'Cornerback',7),
(501,'Tedric','Thomposn',26,37,4,'Safety',7),
(502,'Ronnie','Harrison',24,33,3,'Safety',7),
(503,'Adrian','Colbert',28,15,4,'Safety',7),
(504,'Grant','Delpit',23,22,0,'Safety',7),(505,'Charley','Hughlett',31,37,7,'Long 
Snapper',7),(506,'Richard','LeCounte',23,39,0,'Safety',7),(507,'John','Johnson 
III',26,43,4,'Safety',7),(508,'Jovante','Mofatt',25,35,1,'Safety',7),
(509,'Herb','Miller',24,29,1,'Safety',7),(510,'A.J.','Green',23,38,1,'Safety',7),
(511,'Chris','Naggar',24,8,0,'Kicker',7),
(512,'Chase','McLaughlin',25,3,2,'Kicker',7),
(513,'Jamie','Gillan',24,7,2,'Punter',7),
(514,'Dustin','Colquitt',39,2,16,'Punter',7),
(515,'Joe','Jackson',25,91,2,'Defensive Lineman',7),
(516,'Josiah','Bronson',24,99,0,'',7),
(517,'Mason','Rudolph',26,2,3,'Quarterback',8),
(518,'Ben','Roethlisberger',39,7,17,'Quarterback',8),(519,'Benny','Snell 
Jr.',23,24,2,'Runningback',8),(520,'Anthony','McFarland 
Jr.',22,26,1,'Runningback',8),(521,'Najee','Harris',23,22,0,'Runningback',8),
(522,'Trey','Edmunds',27,33,4,'Runningback',8),
(523,'Kalen','Ballage',26,29,3,'Runningback',8),
(524,'Derek','Watt',29,44,5,'Fullback',8),(525,'Cody','White',23,15,0,'Wide 
Receiver',8),(526,'James','Washington',25,13,3,'Wide Receiver',8),
(527,'JuJu','Smith-Schuster',25,19,4,'Wide Receiver',8),
(528,'Steven','Sims',24,82,2,'Wide Receiver',8),
(529,'Anthony','Miller',27,17,3,'Wide Receiver',8),(530,'Ray-
Ray','McCloud',25,14,3,'Wide Receiver',8),(531,'Diontae','Johnson',25,18,2,'Wide 
Receiver',8),(532,'Chase','Claypool',23,11,1,'Wide Receiver',8),
(533,'Kevin','Rader',26,87,1,'Tight End',8),(534,'Zach','Gentry',25,81,2,'Tight 
End',8),(535,'Pat','Freiermuth',23,88,0,'Tight End',8),
(536,'Eric','Ebron',28,85,7,'Tight End',8),(537,'Kevin','Dotson',25,69,1,'Offensive
Lineman',8),(538,'Chukumwa','Okorafor',24,76,3,'Offensive Lineman',8),
(539,'Dan','Moore ',23,65,0,'Offensive Lineman',8),
(540,'Joe','Haeg',28,71,5,'Offensive Lineman',8),
(541,'Chaz','Green',29,74,5,'Offensive Lineman',8),
(542,'Trai','Turner',28,51,7,'Offensive Lineman',8),
(543,'Zach','Banner',28,72,4,'Offensive Lineman',8),
(544,'John','Leglue',25,77,0,'Offensive Lineman',8),
(545,'J.C.','Hassenauer',26,60,1,'Offensive Lineman',8),
(546,'Kendrick','Green',23,53,0,'Offensive Lineman',8),
(547,'B.J.','Finney',30,67,5,'Offensive Lineman',8),
(548,'Derrek','Tuszka',25,48,1,'Defensive Lineman',8),
(549,'Alex','Highsmith',24,56,1,'Linebacker',8),
(550,'Carlos','Davis',25,73,1,'Defensive Lineman',8),
(551,'Isaiah','Buggs',25,96,2,'Defensive Lineman',8),
(552,'John','Simon',31,38,8,'Defensive Lineman',8),
(553,'Delontae','Scott',24,50,0,'Defensive Lineman',8),
(554,'Isaiahh','Loudermilk',24,92,0,'Defensive Lineman',8),
(555,'Melvin','Ingram',32,8,9,'Defensive Lineman',8),
(556,'Taco','Charlton',27,98,4,'Defensive Lineman',8),
(557,'Chris','Wormley',28,95,4,'Defensive Lineman',8),
(558,'Henry','Mondeaux',26,99,1,'Defensive Lineman',8),
(559,'Cameron','Heyward',32,97,10,'Defensive Lineman',8),
(560,'Rashaad','Coward',27,79,4,'Defensive Lineman',8),
(561,'Tyson','Alualu',34,94,11,'Defensive Lineman',8),
(562,'Montravius','Adams',26,57,4,'Defensive Lineman',8),
(563,'T.J.','Watt',27,90,4,'Linebacker',8),
(564,'Joe','Schobert',28,45,5,'Linebacker',8),
(565,'Tegray','Scales',25,30,1,'Linebacker',8),
(566,'Jamir','Jones',23,49,0,'Linebacker',8),
(567,'Robert','Spillane',26,41,3,'Linebacker',8),
(568,'Christian','Kuntz',27,46,0,'Linebacker',8),
(569,'Buddy','Johnson',22,45,0,'Linebacker',8),(570,'Ulysees','Gilbert 
III',24,54,2,'Linebacker',8),(571,'Devin','Bush Jr.',23,55,2,'Linebacker',8),
(572,'Ahkello','Witherspoon',26,25,4,'Cornerback',8),
(573,'Cameron','Sutton',26,20,4,'Cornerback',8),
(574,'Arthur','Maulet',28,35,4,'Cornerback',8),
(575,'Justin','Layne',23,31,2,'Cornerback',8),
(576,'Miles','Killebrew',28,28,5,'Safety',8),
(577,'Karl','Joseph',28,30,5,'Safety',8),
(578,'Minkah','Fitzpatrick',25,39,3,'Safety',8),
(579,'Terell','Edmunds',24,34,3,'Safety',8),
(580,'Marcus','Allen',25,27,3,'Safety',8),
(581,'James','Pierre',25,42,1,'Cornerback',8),
(582,'Tre','Norwood',22,21,0,'Safety',8),
(583,'Joe','Haden',32,23,11,'Cornerback',8),
(584,'Chris','Boswell',30,9,6,'Kicker',8),
(585,'Corliss','Waitman',26,10,0,'Punter',8),(586,'Pressley','Harvin 
III',23,6,0,'Punter',8),(587,'Daniel','Archibong',24,61,0,'Defensive Lineman',8),
(588,'Tyrod','Taylor',32,5,10,'Quarterback',9),
(589,'Davis','Mills',23,10,0,'Quarterback',9),
(590,'Jeff','Driskel',28,6,3,'Quarterback',9),
(591,'Jaylen','Samuels',25,38,3,'Runningback',9),
(592,'Scottie','Philips',24,27,1,'Runningback',9),
(593,'Philip','Lindsay',27,30,3,'Runningback',9),
(594,'David','Johnson',30,31,6,'Runningback',9),
(595,'Mark','Ingram',32,2,10,'Runningback',9),
(596,'Royce','Freeman',25,26,3,'Runningback',9),
(597,'Rex','Burkhead',31,28,8,'Runningback',9),(598,'Jordan','Veasy',26,84,0,'Wide 
Receiver ',9),(599,'Andre','Roberts',33,19,11,'Wide Receiver ',9),
(600,'Chris','Moore',28,15,5,'Wide Receiver ',9),
(601,'Anthony','Miller',27,18,3,'Wide Receiver ',9),
(602,'Philip','Dorsett',28,2,6,'Wide Receiver ',9),
(603,'Davion','Davis',25,81,2,'Wide Receiver ',9),
(604,'Brandin','Cooks',28,13,7,'Wide Receiver ',9),
(605,'Chris','Conley',29,18,6,'Wide Receiver ',9),
(606,'Nico','Collins',22,12,0,'Wide Receiver ',9),(607,'Jalen','Camp',23,17,0,'Wide
Receiver ',9),(608,'Danny','Amendola',36,89,12,'Wide Receiver ',9),
(609,'Brevin','Jordan',21,9,0,'Tight End',9),(610,'Pharaoh','Brown',27,85,4,'Tight 
End',9),(611,'Antony','Auclair',28,83,4,'Tight End',9),
(612,'Jordan','Akins',29,88,3,'Tight
 End',9),(613,'Paul','Quessenbarry',29,45,0,'Tight End',9),
(614,'Jimmy','Morrissey',23,79,0,'Offensive Lineman',9),
(615,'Charlie','Heck',25,67,1,'Offensive Lineman',9),
(616,'Marcus','Cannon',33,61,10,'Offensive Lineman',9),
(617,'Laremy','Tunsil',27,78,5,'Offensive Lineman',9),
(618,'Cole','Toner',27,66,5,'Offensive Lineman',9),
(619,'Max','Scharping',25,74,2,'Offensive Lineman',9),
(620,'Geron','Christian',25,72,3,'Offensive Lineman',9),
(621,'Justin','Britt',30,68,7,'Offensive Lineman',9),
(622,'Jordan','Steckler',25,70,0,'Offensive Lineman',9),
(623,'Tytus','Howard',25,71,2,'Offensive Lineman',9),
(624,'Lane','Taylor',32,65,8,'Offensive Lineman',9),
(625,'Justin','McCray',29,64,4,'Offensive Lineman',9),
(626,'Jon','Weeks',35,46,11,'Offensive Lineman',9),
(627,'Charles','Omenihu',24,94,2,'Defensive Lineman',9),
(628,'Johnathon','Greenard',24,52,1,'Defensive Lineman',9),
(629,'Michael','Dwumfour',23,98,0,'Defensive Lineman',9),
(630,'Ross','Blacklock',23,90,1,'Defensive Lineman',9),
(631,'DeMarcus','Walker',27,44,4,'Defensive Lineman',9),
(632,'Chris','Smith',29,92,7,'Defensive Lineman',9),
(633,'Derek','Rivers',27,95,3,'Defensive Lineman',9),
(634,'Whitney','Mercilus',31,59,9,'Defensive Lineman',9),(635,'Demone 
','Harris',26,94,3,'Defensive Lineman',9),(636,'Ron\'Dell 
','Carter',24,75,1,'Defensive Lineman',9),
(637,'Xavier','Williams',29,69,6,'Defensive Lineman',9),
(638,'Vincent','Taylor',27,96,4,'Defensive Lineman',9),
(639,'Roy','Lopez',24,79,0,'Defensive Lineman',9),
(640,'Jaleel','Johnson',27,93,4,'Defensive Lineman',9),
(641,'Maliek','Collins',26,97,5,'Defensive Lineman',9),(642,'Kevin','Pierre-
Louis',30,57,7,'Linebacker',9),(643,'Christian','Kirksey',29,58,7,'Linebacker',9),
(644,'Jordan','Jenkins',27,50,5,'Linebacker',9),(645,'Kamu','Grugier-
Hill',27,51,5,'Linebacker',9),(646,'Zach ','Cunnigham',27,41,4,'Linebacker',9),
(647,'Eric','Wilson',27,59,4,'Linebacker',9),
(648,'Hardy','Nickerson',27,56,4,'Linebacker',9),
(649,'Josh','Watson',25,40,2,'Linebacker',9),(650,'Garret 
','Wallow',22,32,0,'Linebacker',9),(651,'Joe','Thomas',30,48,7,'Linebacker',9),
(652,'Connor','Strachan',26,53,0,'Linebacker',9),
(653,'Jacob','Martin',26,54,3,'Linebacker',9),
(654,'Neville','Hewitt',28,43,6,'Linebacker',9),
(655,'Eric','Murray',27,23,5,'Corner back',9),
(656,'Jimmy','Moreland',26,22,2,'Corner back',9),
(657,'Terrance','Mitchell',29,39,7,'Corner back',9),(658,'Lonnie','Johnson 
Jr.',26,1,2,'Corner back',9),(659,'Vernon ','Hargreaves III',26,26,5,'Corner 
back',9),(660,'Justin','Reid',24,20,3,'Safety',9),
(661,'Desmond','King',27,25,4,'Safety',9),(662,'T.J.','Green',26,14,5,'Safety',9),
(663,'Terrence ','Brooks',29,29,7,'Safety',9),
(664,'Johnathon','Owens',26,36,2,'Safety',9),
(665,'Tavierre','Thomas',25,37,3,'Defensive Lineman',9),
(666,'Tremon','Smith',25,24,3,'Defensive Lineman',9),
(667,'A.J.','Moore',26,33,3,'Defensive Lineman',9),
(668,'Grayland','Arnold',24,35,1,'Defensive Lineman',9),
(669,'Joey','Slye',25,17,2,'Kicker',9),(670,'Ka\'imi','FaiRunning 
backairn',27,7,4,'Kicker',9),(671,'Dominik','Eberle',25,0,0,'Kicker',9),
(672,'Cameron','Johnston',29,11,3,'Punter',9),(673,'Carson 
','Wentz',29,2,5,'Quarterback',10),(674,'Sam ','Ehlinger',23,4,0,'Quarterback',10),
(675,'Jacob ','Eason',24,9,0,'Quarterback',10),(676,'Jordan 
','Wilkins',27,20,3,'Running back',10),(677,'Jonathan ','Taylor',22,28,1,'Running 
back',10),(678,'Marlon','Mack',25,25,4,'Running back',10),(679,'Deon 
','Jackson',22,35,0,'Running back',10),(680,'Nyheim ','Hines',25,21,3,'Running 
back',10),(681,'Mike ','Strachan',24,17,0,'Wide Receiver',10),(682,'Michael 
','Pittman Jr.',24,11,1,'Wide Receiver',10),(683,'Dezmon','Patmon',23,10,1,'Wide 
Receiver',10),(684,'Zach','Pascal',27,14,3,'Wide Receiver',10),
(685,'T.Y.','Hilton',32,13,9,'Wide Receiver',10),
(686,'De\'Michael','Harris',23,12,0,'Wide Receiver',10),
(687,'Ashton','Dulin',24,16,2,'Wide Receiver',10),
(688,'Keke','Coutee',24,15,3,'Wide Receiver',10),
(689,'Parris','Campbell',24,1,2,'Wide Receiver',10),
(690,'Kyle','Nelson',35,48,9,'Tight End',10),(691,'Kylen','Granson',23,83,0,'Tight 
End',10),(692,'Jack','Doyle',31,84,8,'Tight End',10),(693,'Mo','Alie-
Cox',28,81,3,'Tight End',10),(694,'Danny','Pinter',25,63,1,'Offensive Lineman',10),
(695,'Will','Fries',23,75,0,'Offensive Lineman',10),
(696,'Matt','Pryor',27,69,3,'Offensive Lineman',10),
(697,'Eric','Fisher',30,79,8,'Offensive Lineman',10),
(698,'Julie\'n','Davenport',26,73,4,'Offensive Lineman',10),
(699,'Braden','Smith',25,72,3,'Offensive Lineman',10),
(700,'Quenton','Nelson',25,56,3,'Offensive Lineman',10),
(701,'Mark','Glowinski',29,64,6,'Offensive Lineman',10),
(702,'Chris','Reed',29,62,5,'Offensive Lineman',10),
(703,'Ryan','Kelly',28,78,5,'Offensive Lineman',10),
(704,'Dayo','Odeyingbo',22,54,0,'Defensive Lineman ',10),
(705,'Khalil','Davis',25,74,1,'Defensive Lineman ',10),
(706,'Isaac','Rochell',26,91,4,'Defensive Lineman',10),
(707,'Kwity','Paye',23,51,0,'Defensive Lineman',10),(708,'Al-
Quadin','Muhammad',26,97,4,'Defensive Lineman',10),
(709,'Tyquan','Lewis',26,94,3,'Defensive Lineman',10),
(710,'Chris','Williams',23,66,0,'Defensive Lineman',10),
(711,'Grover','Stewart',28,90,4,'Defensive Lineman',10),
(712,'Taylor','Stallworth',26,95,3,'Defensive Lineman',10),
(713,'Kameron','Cline',23,92,1,'Defensive Lineman',10),
(714,'DeForest','Buckner',27,99,5,'Defensive Lineman',10),
(715,'Antwaun','Woods',28,96,5,'Defensive Lineman',10),
(716,'Kemoko','Turay',26,57,3,'Linebacker',10),
(717,'Skai','Moore',26,55,3,'Linebacker',10),
(718,'Malik','Jefferson',25,43,3,'Linebacker',10),
(719,'E.J.','Speed',26,45,2,'Linebacker',10),
(720,'Luke','Rhodes',29,46,5,'Linebacker',10),
(721,'Bobby','Okereke',25,58,2,'Linebacker',10),
(722,'Darius','Leonard',26,53,3,'Linebacker',10),
(723,'Jordan','Glasgow',25,59,1,'Linebacker',10),
(724,'Zaire','Franklin',25,44,3,'Linebacker',10),
(725,'Matthew','Adams',26,49,3,'Linebacker',10),(726,'Rock','Ya-
Sin',25,26,2,'Cornerback',10),(727,'Isaiah','Rodgers',23,34,1,'Cornerback',10),
(728,'Xavier','Rhodes',31,27,8,'Cornerback',10),
(729,'Will','Redmond',28,29,3,'Cornerback',10),
(730,'Kenny','Moore',26,23,4,'Cornerback',10),
(731,'Thakarius','Keyes',24,33,1,'Cornerback',10),
(732,'T.J.','Carrie',31,38,7,'Cornerback',10),
(733,'Jordan','Lucas',28,29,5,'Safety',10),
(734,'Ibraheim','Campbell',29,36,6,'Safety',10),
(735,'Sean','Davis',28,29,5,'Safety',10),
(736,'Khari','Willis',25,37,2,'Safety',10),
(737,'George','Odum',28,30,3,'Safety',10),(738,'Josh','Jones',27,36,4,'Safety',10),
(739,'Julian','Blackmon',23,32,1,'Safety',10),
(740,'Jahleel','Addae',31,41,8,'Safety',10),
(741,'Andrew','Sendejo',34,42,11,'Defensive Lineman',10),
(742,'Anthony','Chesley',25,47,1,'Defensive Lineman',10),
(743,'Rodrigo','Blankenship',24,3,1,'Kicker',10),
(744,'Michael','Badgley',26,6,3,'Kicker',10),
(745,'Rigoberto','Sanchez',27,8,4,'Punter',10),
(746,'Ben','Banogu',25,52,2,'Defensive Lineman',10),
(747,'Trevor','Lawrence',22,16,0,'Quarterback',11),
(748,'C.J.','Beathard',28,3,4,'Quarterback',11),
(749,'Mekhi','Sargent',24,36,0,'Runningback',11),
(750,'James','Robinson',23,25,1,'Runningback',11),
(751,'Devine','Ozigbo',25,22,2,'Runningback',11),
(752,'Dare','Ogunbowale',27,33,4,'Runningback',11),
(753,'Carlos','Hyde',31,24,7,'Runningback',11),
(754,'Nathan','Cottrell',25,31,1,'Runningback',11),
(755,'Ryquell','Armstead',25,23,2,'Runningback',11),
(756,'Laquon','Treadwell',26,18,5,'Wide Receiver',11),
(757,'Devin','Smith',29,19,6,'Wide Receiver',11),(758,'Laviska','Shenault 
Jr.',23,10,1,'Wide Receiver',11),(759,'Jaydon','Mickens',27,19,4,'Wide 
Receiver',11),(760,'Marvin','Jones',31,11,9,'Wide Receiver',11),
(761,'Tyron','Johnson',25,12,1,'Wide Receiver',11),
(762,'Josh','Hammond',23,81,0,'Wide Receiver',11),
(763,'Phillip','Dorsett',28,13,6,'Wide Receiver',11),
(764,'Jeff','Cotton',24,88,0,'Wide Receiver',11),(765,'DJ','Chark',25,17,3,'Wide 
Receiver',11),(766,'John','Brown',31,13,7,'Wide Receiver',11),
(767,'Tavon','Austin',31,7,8,'Wide Receiver',11),(768,'Dan','Arnold',26,85,3,'Wide 
Receiver',11),(769,'Kahale','Warring',24,47,1,'Tight End',11),
(770,'James','O\'Shaughnessy',29,80,6,'Tight End',11),
(771,'Chris','Manhertz',29,84,7,'Tight End',11),
(772,'Jacob','Hollister',28,86,4,'Tight End',11),
(773,'Luke','Farrell',24,89,0,'Tight End',11),
(774,'Jawaan','Taylor',24,75,2,'Offensive Lineman',11),
(775,'KC','McDermott',25,62,1,'Offensive Lineman',11),
(776,'Ben','Bartch',23,78,1,'Offensive Lineman',11),
(777,'Cam','Robinson',26,74,4,'Offensive Lineman',11),
(778,'Will','Richardson',25,76,3,'Offensive Lineman',11),
(779,'Walker','Little',22,72,0,'Offensive Lineman',11),
(780,'Badara','Traore',24,73,0,'Offensive Lineman',11),
(781,'Tyler','Shatley',30,69,7,'Offensive Lineman',11),
(782,'Brandon','Linder',29,65,7,'Offensive Lineman',11),
(783,'A.J.','Cann',30,60,6,'Offensive Lineman',11),(784,'Tre\'Vour','Wallace-
Simms',24,77,1,'Offensive Lineman',11),(785,'Andrew','Norwell',30,68,7,'Offensive 
Lineman',11),(786,'DaVon','Hamilton',24,52,1,'Defensive Lineman',11),
(787,'Jihad','Ward',27,59,5,'Defensive Lineman',11),
(788,'Dawuane','Smoot',26,91,4,'Defensive Lineman',11),(789,'Roy','Robertson-
Harris',28,95,4,'Defensive Lineman',11),(790,'Jay','Tufele',22,97,0,'Defensive 
Lineman',11),(791,'Adam','Gotsis',29,96,5,'Defensive Lineman',11),
(792,'Doug','Costin',24,58,1,'Defensive Lineman',11),
(793,'Taven','Bryan',25,90,3,'Defensive Lineman',11),
(794,'Malcom','Brown',27,90,6,'Defensive Lineman',11),
(795,'Jordan','Smith',23,92,0,'Linebacker',11),
(796,'Jamir','Jones',23,40,0,'Linebacker',11),
(797,'Myles','Jack',26,44,5,'Linebacker',11),
(798,'Damien','Wilson',28,54,6,'Linebacker',11),
(799,'Chapelle','Russell',24,49,1,'Linebacker',11),
(800,'Shaquille','Quarterman',24,50,1,'Linebacker',11),
(801,'Lerentee','McCray',31,55,8,'Linebacker',11),
(802,'K\'Lavon','Chaisson',22,45,1,'Linebacker',11),
(803,'Dakota','Allen',26,53,2,'Linebacker',11),
(804,'Tyrell','Adams',29,59,5,'Linebacker',11),
(805,'Nevin','Lawson',30,21,7,'Cornerback',11),
(806,'Tre','Herndon',25,37,3,'Cornerback',11),
(807,'C.J.','Henderson',23,23,1,'Cornerback',11),
(808,'Chris','Claybrooks',24,27,1,'Cornerback',11),(809,'Tyson',
'Campbell',21,32,0,'Cornerback',11),
(810,'Bradley','McDougald',31,22,8,'Safety',11),
(811,'Rayshawn','Jenkins',27,2,4,'Safety',11),
(812,'Rudy','Ford',27,5,4,'Safety',11),(813,'Ross','Matiscik',25,46,1,'Safety',11),
(814,'Andrew','Wingard',25,42,2,'Safety',11),
(815,'Daniel','Thomas',23,20,1,'Safety',11),
(816,'Andre','Cisco',21,38,0,'Safety',11),
(817,'Brandon','Rusnak',26,29,2,'Defensive Lineman',11),
(818,'Michael','Jacquet',24,34,1,'Defensive Lineman',11),
(819,'Shaquill','Griffin',26,26,4,'Defensive Lineman',11),
(820,'Matthew','Wright',25,15,1,'Kicker',11),
(821,'Josh','Lambo',31,4,6,'Kicker',11),(822,'JK','Scott',26,13,3,'Punter',11),
(823,'Logan','Cooke',26,9,3,'Punter',11),
(824,'Joseph','Charlton',24,19,1,'Punter',11),
(825,'Josh','Allen',24,41,2,'Defensive Lineman',11),
(826,'Jamal','Agnew',26,39,4,'Wide Receiver/Cornerback',11),
(827,'Logan','Woodside',26,5,3,'Quarterback',12),
(828,'Ryan','Tannehill',33,17,9,'Quarterback',12),
(829,'Kevin','Hogan',29,18,5,'Quarterback',12),
(830,'Jordan','Wilkins',27,33,3,'Runningback',12),
(831,'Mekhi','Sargent',24,38,0,'Runningback',12),
(832,'Adrian','Peterson',36,8,14,'Runningback',12),
(833,'Jeremy','McNichols',26,28,4,'Runningback',12),
(834,'Dontrell','Hilliard',26,40,3,'Runningback',12),
(835,'Derrick','Henry',27,22,5,'Runningback',12),
(836,'D\'Onta','Foreman',25,45,4,'Runningback',12),
(837,'Darrynton','Evans',23,32,1,'Runningback',12),
(838,'Khari','Blasingame',25,41,2,'Running Back',12),
(839,'Tory','Carter',22,44,0,'Fullback',12),(840,'Nick','Westbrook-
Ikhine',24,15,1,'Wide Receiver',12),(841,'Chester','Rogers',27,80,5,'Wide 
Receiver',12),(842,'Josh','Reynolds',26,18,4,'Wide Receiver',12),
(843,'Racey','McMath',22,81,0,'Wide Receiver',12),
(844,'Mason','Kinsey',23,12,0,'Wide Receiver',12),
(845,'Julio','Jones',32,2,10,'Wide Receiver',12),
(846,'Marcus','Johnson',27,88,4,'Wide Receiver',12),
(847,'Cody','Hollister',28,16,2,'Wide Receiver',12),
(848,'Dez','Fitzpatrick',24,10,0,'Wide Receiver',12),
(849,'A.J.','Brown',24,11,2,'Wide Receiver',12),
(850,'Cameron','Batson',26,13,3,'Wide Receiver',12),
(851,'Geoff','Swaim',28,87,6,'Tight End',12),(852,'MyCole','Pruitt',29,85,6,'Tight 
End',12),(853,'Ryan','Izzo',26,83,3,'Tight End',12),
(854,'Tommy','Hudson',24,89,0,'Tight End',12),
(855,'Anthony','Firkser',26,86,3,'Tight End',12),
(856,'Dillon','Radunz',23,75,0,'Offensive Lineman',12),
(857,'Daniel','Munyer',29,52,6,'Offensive Lineman',12),
(858,'Corey','Levin',27,61,3,'Offensive Lineman',12),
(859,'Nate','Davis',25,64,2,'Offensive Lineman',12),
(860,'Ty','Sambrailo',29,70,6,'Offensive Lineman',12),
(861,'David','Quessenberry',31,72,8,'Offensive Lineman',12),
(862,'Taylor','Lewan',30,77,7,'Offensive Lineman',12),
(863,'Rodger','Saffold',33,76,11,'Offensive Lineman',12),
(864,'Kendall','Lamm',29,71,6,'Offensive Lineman',12),
(865,'Christian','DiLauro',27,69,0,'Offensive Lineman',12),
(866,'Bobby','Hart',27,68,6,'Offensive Lineman',12),
(867,'Ben','Jones',32,60,9,'Offensive Lineman',12),
(868,'Morgan','Cox',35,46,11,'Offensive Lineman',12),
(869,'Aaron','Brewer',24,62,1,'Offensive Lineman',12),
(870,'Jeffery','Simmons',24,98,2,'Defensive Lineman',12),
(871,'Larrell','Murchison',24,91,1,'Defensive Lineman',12),
(872,'Woodrow','Hamilton',29,78,5,'Defensive Lineman',12),
(873,'John','Simon',31,59,8,'Defensive Lineman',12),
(874,'Derick','Roberson',26,50,2,'Defensive Lineman',12),
(875,'Da\'Shawn','Hand',26,0,3,'Defensive Lineman',12),
(876,'Bud','Dupree',28,48,6,'Defensive Lineman',12),
(877,'Amani','Bledsoe',23,94,1,'Defensive Lineman',12),
(878,'Denico','Autry',31,96,7,'Defensive Lineman',12),
(879,'Olasunkanmi','Adeniyi',24,92,3,'Defensive Lineman',12),
(880,'Teair','Tart',24,93,1,'Defensive Lineman',12),
(881,'Kevin','Strong',25,97,2,'Defensive Lineman',12),
(882,'Caraun','Reid',30,97,7,'Defensive Lineman',12),
(883,'Kyle','Peko',28,94,5,'Defensive Lineman',12),
(884,'Naquan','Jones',23,90,0,'Defensive Lineman',12),
(885,'Eli','Ankou',27,95,4,'Defensive Lineman',12),
(886,'Anthony','Rush',25,95,2,'Defensive Lineman',12),
(887,'Rashad','Weaver',24,99,0,'Linebacker',12),
(888,'Harold','Landry',25,58,3,'Linebacker',12),
(889,'Joseph','Jones',27,42,4,'Linebacker',12),
(890,'Zach','Cunningham',27,33,4,'Linebacker',12),
(891,'Avery','Williamson',29,53,7,'Linebacker',12),
(892,'Rashaan','Evans',26,54,3,'Linebacker',12),
(893,'Jayon','Brown',26,55,4,'Linebacker',12),
(894,'Monty','Rice',22,56,0,'Linebacker',12),
(895,'David','Long',25,51,2,'Linebacker',12),
(896,'Sharif','Finch',26,54,3,'Linebacker',12),
(897,'Nick','Dzubnar',30,49,6,'Linebacker',12),
(898,'Dylan','Cole',27,45,4,'Linebacker',12),
(899,'Elijah','Molden',22,24,0,'Cornerback',12),
(900,'Greg','Mabin',27,30,4,'Cornerback',12),
(901,'Chris','Jones',26,23,3,'Cornerback',12),
(902,'Jackrabbit','Jenkins',33,20,9,'Cornerback',12),
(903,'Kristian','Fulton',23,26,1,'Cornerback',12),
(904,'Caleb','Farley',23,3,0,'Cornerback',12),
(905,'Dane','Cruikshank',26,29,3,'Cornerback',12),
(906,'Breon','Borders',26,39,4,'Cornerback',12),
(907,'Bradley','McDougald',31,30,8,'Safety',12),
(908,'Chris','Jackson',23,35,1,'Safety',12),
(909,'Amani','Hooker',23,37,2,'Safety',12),
(910,'Jamal','Carter',27,25,4,'Safety',12),
(911,'Kevin','Byard',28,31,5,'Safety',12),
(912,'Brady','Breeze',24,33,0,'Safety',12),
(913,'Buster','Skrine',32,38,10,'Defensive Lineman',12),
(914,'Matthias','Farley',29,21,5,'Defensive Lineman',12),
(915,'Randy','Bullock',32,14,9,'Kicker',12),
(916,'Michael','Badgley',26,8,3,'Kicker',12),
(917,'Johnny','Townsend',26,8,3,'Punter',12),
(918,'Brett','Kern',35,6,13,'Punter',12),
(919,'Brett','Rypien',25,4,1,'Quarterback',13),
(920,'Drew','Lock',25,3,2,'Quarterback',13),
(921,'Teddy','Bridgewater',29,5,7,'Quarterback',13),
(922,'Javonte','Williams',21,33,0,'Runningback',13),
(923,'Melvin','Gordon',28,25,6,'Runningback',13),
(924,'Damarea','Crockett',24,28,0,'Runningback',13),
(925,'Mike','Boone',26,26,3,'Runningback',13),(926,'Seth','Williams',21,19,0,'Wide 
Receiver',13),(927,'Courtland','Sutton',26,14,3,'Wide Receiver',13),
(928,'Diontae','Spencer',29,11,2,'Wide Receiver',13),
(929,'Tim','Patrick',28,81,3,'Wide Receiver',13),(930,'David','Moore',26,89,4,'Wide
Receiver',13),(931,'Jerry','Jeudy',22,10,1,'Wide Receiver',13),
(932,'Kendall','Hinton',24,9,1,'Wide Receiver',13),(933,'KJ','Hamler',22,1,1,'Wide 
Receiver',13),(934,'Travis','Fulgham',26,17,2,'Wide Receiver',13),
(935,'Tyrie','Cleveland',24,16,1,'Wide Receiver',13),
(936,'John','Brown',31,17,7,'Wide Receiver',13),
(937,'Eric','Saubert',27,82,4,'Tight End',13),
(938,'Albert','Okwuegbunam',23,85,1,'Tight End',13),
(939,'Noah','Fant',24,87,2,'Tight End',13),(940,'Andrew','Beck',25,83,2,'Tight 
End',13),(941,'Dalton','Risner',26,66,2,'Offensive Lineman',13),
(942,'Netane','Muti',22,52,1,'Offensive Lineman',13),
(943,'Quinn','Meinerz',23,77,0,'Offensive Lineman',13),(944,'Lloyd','Cushenberry 
III',24,79,1,'Offensive Lineman',13),(945,'Cameron','Fleming',29,73,7,'Offensive 
Lineman',13),(946,'Garett','Bolles',29,72,4,'Offensive Lineman',13),
(947,'Bobby','Massie',32,70,9,'Offensive Lineman',13),
(948,'Quinn','Bailey',26,75,2,'Offensive Lineman',13),
(949,'Calvin','Anderson',25,76,1,'Offensive Lineman',13),
(950,'Graham','Glasgow',29,61,5,'Offensive Lineman',13),
(951,'Austin','Schlottmann',26,71,2,'Offensive Lineman',13),
(952,'Dre\'Mont','Jones',24,93,2,'Defensive Lineman',13),
(953,'McTelvin','Agim',24,95,1,'Defensive Lineman',13),
(954,'Marquiss','Spencer',24,51,0,'Defensive Lineman',13),
(955,'Aaron','Patrick',25,94,0,'Defensive Lineman',13),
(956,'Shelby','Harris',30,96,7,'Defensive Lineman',13),
(957,'Jonathan','Harris',25,92,2,'Defensive Lineman',13),
(958,'Bradley','Chubb',25,55,3,'Defensive Lineman',13),
(959,'DeShawn','Williams',29,90,5,'Defensive Lineman',13),
(960,'Shamar','Stephen',30,99,7,'Defensive Lineman',13),
(961,'Mike','Purcell',30,98,8,'Defensive Lineman',13),
(962,'Stephen','Weatherly',27,91,5,'Linebacker',13),
(963,'Pita','Taumoepenu',27,57,4,'Linebacker',13),
(964,'Andre','Mintze',23,48,0,'Linebacker',13),
(965,'Von','Miller',32,58,10,'Linebacker',13),
(966,'Jonathon','Cooper',23,53,0,'Linebacker',13),
(967,'Micah','Kiser',26,43,3,'Linebacker',13),
(968,'Josey','Jewell',27,47,3,'Linebacker',13),
(969,'Kenny','Young',27,41,3,'Linebacker',13),
(970,'Barrington','Wade',23,54,0,'Linebacker',13),
(971,'Justin','Strnad',25,40,0,'Linebacker',13),
(972,'Malik','Reed',25,59,2,'Linebacker',13),
(973,'Alexander','Johnson',30,45,3,'Linebacker',13),
(974,'Jonas','Griffith',24,50,0,'Linebacker',13),
(975,'Baron','Browning',22,56,0,'Linebacker',13),(976,'Patrick','Surtain 
II',21,2,0,'Cornerback',13),(977,'Michael','Ojemudia',24,13,1,'Cornerback',13),
(978,'Nate','Hairston',27,27,4,'Cornerback',13),
(979,'Kyle','Fuller',29,23,7,'Cornerback',13),
(980,'Mike','Ford',26,12,3,'Cornerback',13),
(981,'Rojesterman','Farris',24,0,0,'Cornerback',13),
(982,'Ronald','Darby',27,21,6,'Cornerback',13),
(983,'Bryce','Callahan',30,29,6,'Cornerback',13),
(984,'Justin','Simmons',28,31,5,'Safety ',13),
(985,'Jacob','Bobenmoyer',24,46,1,'Safety ',13),
(986,'Caden','Sterns',22,30,0,'Safety ',13),(987,'P.J.','Locke',24,37,1,'Defensive 
Lineman',13),(988,'Jamar','Johnson',22,41,0,'Defensive Lineman',13),
(989,'Kareem','Jackson',33,22,11,'Defensive Lineman',13),
(990,'Essang','Bassey',23,34,1,'Defensive Lineman',13),
(991,'Brandon','McManus',30,8,7,'Kicker',13),
(992,'Sam','Martin',31,6,8,'Punter',13),(993,'Curtis','Robinson',23,42,0,'',13),
(994,'Patrick','Mahomes',26,15,4,'Quarterback',14),
(995,'Chad','Henne',36,4,13,'Quarterback',14),
(996,'Darrel','Williams',26,31,3,'Runningback',14),
(997,'Jerick','McKinnon',29,1,7,'Runningback',14),
(998,'Derrick','Gore',27,40,0,'Runningback',14),(999,'Clyde','Edwards-
Helaire',22,25,1,'Runningback',14),(1000,'Michael','Burton',29,45,6,'Fullback',14),
(1001,'Demarcus','Robinson',27,11,5,'Wide Receiver',14),
(1002,'Byron','Pringle',28,13,3,'Wide Receiver',14),
(1003,'Marcus','Kemp',26,85,4,'Wide Receiver',14),
(1004,'Tyreek','Hill',27,10,5,'Wide Receiver',14),
(1005,'Mecole','Hardman',23,17,2,'Wide Receiver',14),
(1006,'Josh','Gordon',30,19,9,'Wide
 Receiver',14),(1007,'Daurice','Fountain',26,82,3,'Wide Receiver',14),
(1008,'Joe','Fortson',26,88,0,'Wide Receiver',14),
(1009,'Travis','Kelce',32,87,8,'Tight End',14),(1010,'Nakia','Griffin-
Stewart',25,48,0,'Tight End',14),(1011,'Noah','Gray',22,83,0,'Tight End',14),
(1012,'Blake','Bell',30,81,6,'Tight End',14),(1013,'Prince','Tega 
Wanogho',24,70,1,'Offensive Lineman',14),(1014,'Trey','Smith',22,65,0,'Offensive 
Lineman',14),(1015,'Creed','Humphrey',22,52,0,'Offensive Lineman',14),
(1016,'Orlando','Brown Jr.',25,57,3,'Offensive Lineman',14),
(1017,'Andrew','Wylie',27,77,3,'Offensive Lineman',14),
(1018,'Mike','Remmers',32,75,9,'Offensive Lineman',14),
(1019,'Lucas','Niang',23,67,0,'Offensive Lineman',14),
(1020,'Joe','Thuney',29,62,5,'Offensive Lineman',14),
(1021,'Nick','Allegretti',25,73,2,'Offensive Lineman',14),
(1022,'Austin','Blythe',29,66,5,'Offensive Lineman',14),
(1023,'Cortez','Broughton',25,79,2,'Defensive Lineman',14),
(1024,'Tershawn','Wharton',23,98,1,'Defensive Lineman',14),
(1025,'Alex','Okafor',30,97,8,'Defensive Lineman',14),
(1026,'Joshua','Kaindoh',23,59,0,'Defensive Lineman',14),
(1027,'Melvin','Ingram',32,24,9,'Defensive Lineman',14),
(1028,'Demone','Harris',26,96,3,'Defensive Lineman',14),
(1029,'Austin','Edwards',24,60,1,'Defensive Lineman',14),
(1030,'Michael','Danna',24,51,1,'Defensive Lineman',14),
(1031,'Frank','Clark',28,55,6,'Defensive Lineman',14),
(1032,'Khalen','Saunders',25,99,2,'Defensive Lineman',14),
(1033,'Jarran','Reed',29,90,5,'Defensive Lineman',14),
(1034,'Derrick','Nnadi',25,91,3,'Defensive Lineman',14),
(1035,'Chris','Jones',27,95,5,'Defensive Lineman',14),
(1036,'Dorian','O\'Daniel',27,44,3,'Linebacker',14),
(1037,'Anthony','Hitchens',29,53,7,'Linebacker',14),
(1038,'Ben','Niemann',26,56,3,'Linebacker',14),
(1039,'Christian','Rozeboom',24,0,0,'Linebacker',14),
(1040,'Darius','Harris',25,47,1,'Linebacker',14),(1041,'Willie','Gay 
Jr.',23,50,1,'Linebacker',14),(1042,'Nick','Bolton',21,54,0,'Linebacker',14),
(1043,'Tyrann','Mathieu',29,32,8,'Cornerback',14),
(1044,'Josh','Jackson',25,20,3,'Cornerback',14),
(1045,'Mike','Hughes',24,21,3,'Cornerback',14),
(1046,'Rashad','Fenton',24,27,2,'Cornerback',14),
(1047,'Dicaprio','Bootle',24,2,0,'Cornerback',14),
(1048,'Deandre','Baker',24,30,2,'Cornerback',14),
(1049,'Armani','Watts',25,23,3,'Safety',14),
(1050,'James','Winchester',32,41,6,'Safety',14),
(1051,'Juan','Thornhill',26,22,2,'Safety',14),
(1052,'Daniel','Sorensen',31,49,7,'Safety',14),
(1053,'L\'Jarius','Sneed',24,38,1,'Safety',14),
(1054,'Charvarius','Ward',25,35,3,'Defensive Lineman',14),
(1055,'Chris','Lammons',25,26,2,'Defensive Lineman',14),
(1056,'Zayne','Anderson',24,39,0,'Defensive Lineman',14),
(1057,'Elliott','Fry',27,0,1,'Kicker',14),
(1058,'Harrison','Butker',26,7,4,'Kicker',14),
(1059,'Tommy','Townsend',25,5,1,'Punter',14),
(1060,'Johnny','Townsend',26,5,3,'Punter',14),
(1061,'Nathan','Peterman',27,3,4,'Quarterback',15),
(1062,'Marcus','Mariota',28,8,6,'Quarterback',15),
(1063,'Derek','Carr',30,4,7,'Quarterback',15),
(1064,'Jalen','Richard',28,30,5,'Runningback',15),
(1065,'Trey','Ragas',25,36,0,'Runningback',15),
(1066,'Josh','Jacobs',23,28,2,'Runningback',15),
(1067,'Kenyan','Drake',27,23,5,'Runningback',15),
(1068,'Peyton','Barber',27,31,5,'Runningback',15),
(1069,'Alec','Ingold',25,45,2,'Fullback',15),(1070,'Dillon','Stoner',23,16,0,'Wide 
Reciever',15),(1071,'Willie','Snead',29,17,7,'Wide Reciever',15),
(1072,'Henry','Ruggs III',22,11,1,'Wide Reciever',15),
(1073,'Hunter','Renfrow',26,13,2,'Wide Reciever',15),
(1074,'Zay','Jones',26,7,4,'Wide Reciever',15),
(1075,'Tyron','Johnson',25,17,1,'Wide Reciever',15),
(1076,'DeSean','Jackson',35,1,13,'Wide Reciever',15),
(1077,'Bryan','Edwards',23,89,1,'Wide Reciever',15),
(1078,'Marcell','Ateman',27,88,3,'Wide Reciever',15),
(1079,'Darren','Waller',29,83,6,'Tight End',15),
(1080,'Foster','Moreau',24,87,2,'Tight End',15),
(1081,'Daniel','Helm',26,86,1,'Tight End',15),
(1082,'Derek','Carrier',31,85,9,'Tight End',15),
(1083,'Matt','Bushman',26,84,0,'Tight End',15),(1084,'Nick','Bowers',25,82,0,'Tight
End',15),(1085,'John','Simpson',24,76,1,'Offensive Lineman',15),
(1086,'Andre','James',24,68,2,'Offensive Lineman',15),
(1087,'Jackson','Barton',26,78,0,'Offensive Lineman',15),
(1088,'Brandon','Parker',26,75,3,'Offensive Lineman',15),
(1089,'Kolton','Miller',26,74,3,'Offensive Lineman',15),
(1090,'Denzelle','Good',30,71,6,'Offensive Lineman',15),
(1091,'Alex','Leatherwood',22,70,0,'Offensive Lineman',15),
(1092,'Jermaine','Eluemunor',27,72,4,'Offensive Lineman',15),
(1093,'Jordan','Simmons',27,60,3,'Offensive Lineman',15),
(1094,'Lester','Cotton',25,67,2,'Offensive Lineman',15),
(1095,'Nick','Martin',28,66,4,'Offensive Lineman',15),
(1096,'Kendal','Vickers',26,95,1,'Defensive Lineman',15),
(1097,'Solomon','Thomas',26,92,4,'Defensive Lineman',15),
(1098,'Damion','Square',32,97,8,'Defensive Lineman',15),
(1099,'Sutton','Smith',25,41,0,'Defensive Lineman',15),
(1100,'Yannick','Ngakoue',26,91,5,'Defensive Lineman',15),
(1101,'Carl','Nassib',28,94,5,'Defensive Lineman',15),
(1102,'Malcolm','Koonce',23,51,0,'Defensive Lineman',15),
(1103,'Darius','Philon',27,96,6,'Defensive Lineman',15),
(1104,'Gerald','McCoy',33,93,11,'Defensive Lineman',15),
(1105,'Quinton','Jefferson',28,77,5,'Defensive Lineman',15),
(1106,'Johnathan','Hankins',29,90,8,'Defensive Lineman',15),
(1107,'Kyle','Wilber',32,58,9,'Linebacker',15),
(1108,'Denzel','Perryman',29,52,6,'Linebacker',15),
(1109,'Marquel','Lee',26,55,4,'Linebacker',15),
(1110,'Nick','Kwiatkoski',28,44,5,'Linebacker',15),
(1111,'K.J.','Wright',32,34,10,'Linebacker',15),
(1112,'William','Compton',32,57,8,'Linebacker',15),
(1113,'Patrick','Onwuasor',29,48,5,'Linebacker',15),
(1114,'Cory','Littleton',28,42,5,'Linebacker',15),
(1115,'Divine','Deablo',23,5,0,'Linebacker',15),
(1116,'Desmond','Trufant',31,10,8,'Cornerback',15),
(1117,'Amik','Robertson',23,21,1,'Cornerback',15),
(1118,'Keisean','Nixon',24,22,2,'Cornerback',15),
(1119,'Trayvon','Mullen',24,27,2,'Cornerback',15),
(1120,'Nate','Hobbs',22,39,0,'Cornerback',15),
(1121,'Brandon','Facyson',27,35,3,'Cornerback',15),
(1122,'Damon','Arnette',25,20,1,'Cornerback',15),
(1123,'Kavon','Frazier',27,43,5,'Safety',15),(1124,'Ha Ha','Clinton-
Dix',29,26,7,'Safety',15),(1125,'Carson','Tinker',32,46,8,'Long Snapper',15),
(1126,'Trent','Sieg',26,47,3,'Long Snapper',15),
(1127,'Roderic','Teamer',24,33,2,'Safety',15),
(1128,'Trevon','Moehrig',22,25,0,'Safety',15),
(1129,'Dallin','Leavitt',27,32,3,'Safety',15),
(1130,'Tyree','Gillespie',23,37,0,'Safety',15),
(1131,'Johnathan','Abram',25,24,2,'Safety',15),
(1132,'Javin','White',24,53,1,'Safety',15),
(1133,'Casey','Hayward',32,29,9,'Safety',15),
(1134,'Daniel','Carlson',26,2,3,'Kicker',15),(1135,'AJ','Cole 
III',26,6,2,'Punter',15),(1136,'Clelin','Ferrell',24,99,2,'Defensive Lineman',15),
(1137,'Maxx','Crosby',24,98,2,'Defensive Lineman',15),
(1138,'Justin','Herbert',23,10,1,'Quarterback',16),
(1139,'Chase','Daniel',35,4,12,'Quarterback',16),
(1140,'K.J.','Costello',24,3,0,'Quarterback',16),
(1141,'Larry','Rountree',22,35,0,'Runningback',16),
(1142,'Gabe','Nabers',24,40,1,'Runningback',16),
(1143,'Joshua','Kelley',24,27,1,'Runningback',16),
(1144,'Justin','Jackson',25,22,3,'Runningback',16),
(1145,'Austin','Ekeler',26,30,4,'Runningback',16),
(1146,'Darius','Bradwell',24,34,1,'Runningback',16),
(1147,'Mike','Williams',27,81,4,'Wide Receiver',16),
(1148,'Andre','Roberts',33,7,11,'Wide Receiver',16),
(1149,'Josh','Palmer',23,5,0,'Wide Receiver',16),
(1150,'Jason','Moore',26,11,2,'Wide Receiver',16),(1151,'K.J.','Hill',24,84,1,'Wide
Receiver',16),(1152,'Jalen','Guyton',24,15,2,'Wide Receiver',16),
(1153,'Maurice','Ffrench',23,80,0,'Wide Receiver',16),
(1154,'Michael','Bandy',24,83,0,'Wide Receiver',16),
(1155,'Keenan','Allen',29,13,8,'Wide Receiver',16),
(1156,'Donald','Parham',24,89,1,'Tight End',16),
(1157,'Tre\'','McKitty',22,88,0,'Tight End',16),
(1158,'Jared','Cook',34,87,12,'Tight End',16),
(1159,'Stephen','Anderson',28,82,5,'Tight End',16),
(1160,'Brenden','Jaimes',22,64,0,'Offensive Lineman',16),
(1161,'Michael','Schofield',31,72,7,'Offensive Lineman',16),
(1162,'Trey','Pipkins',25,79,2,'Offensive Lineman',16),
(1163,'Storm','Norton',27,74,3,'Offensive Lineman',16),
(1164,'Oday','Aboushi',30,76,8,'Offensive Lineman',16),
(1165,'Rashawn','Slater',22,70,0,'Offensive Lineman',16),
(1166,'Senio','Kelemete',31,68,9,'Offensive Lineman',16),
(1167,'Matt','Feiler',29,71,7,'Offensive Lineman',16),
(1168,'Bryan','Bulaga',32,75,11,'Offensive Lineman',16),
(1169,'Scott','Quessenberry',26,61,3,'Offensive Lineman',16),
(1170,'Corey','Linsley',30,63,7,'Offensive Lineman',16),
(1171,'Jerry','Tillery',25,99,2,'Defensive Lineman',16),
(1172,'Forrest','Merrill',25,91,0,'Defensive Lineman',16),
(1173,'Joe','Gaziano',25,92,1,'Defensive Lineman',16),
(1174,'Andrew','Brown',26,90,3,'Defensive Lineman',16),
(1175,'Joey','Bosa',26,97,5,'Defensive Lineman',16),
(1176,'Linval','Joseph',33,98,11,'Defensive Lineman',16),
(1177,'Justin','Jones',25,93,3,'Defensive Lineman',16),
(1178,'Christian','Covington',28,95,6,'Defensive Lineman',16),
(1179,'Eric','Banks',23,90,0,'Defensive Lineman',16),
(1180,'Breiden','Fehoko',25,96,1,'Defensive Lineman',16),
(1181,'Chris','Rumph',23,94,0,'Linebacker',16),
(1182,'Uchenna','Nwosu',25,42,3,'Linebacker',16),
(1183,'Kyler','Fackrell',30,52,5,'Linebacker',16),
(1184,'Drue','Tranquill',26,49,2,'Linebacker',16),
(1185,'Amen','Ogbongbemiga',23,57,0,'Linebacker',16),
(1186,'Nick','Niemann',24,31,0,'Linebacker',16),
(1187,'Kenneth','Murray',23,9,1,'Linebacker',16),
(1188,'Emeke','Egbule',25,51,2,'Linebacker',16),
(1189,'Cole','Christiansen',24,50,1,'Linebacker',16),
(1190,'Kiondre','Thomas',23,38,0,'Cornerback',16),
(1191,'Ryan','Smith',28,23,5,'Cornerback',16),(1192,'Asante','Samuel 
Jr.',22,26,0,'Cornerback',16),(1193,'Davontae','Harris',26,28,3,'Cornerback',16),
(1194,'Chris','Harris Jr.',32,25,10,'Cornerback',16),
(1195,'Kemon','Hall',24,37,0,'Cornerback',16),
(1196,'Derwin','James',25,3,3,'Safety',16),(1197,'Matt','Overton',36,54,9,'Long 
Snapper',16),(1198,'Kyzir','White',25,44,3,'Safety',16),
(1199,'Mark','Webb',23,29,0,'Safety',16),(1200,'Trey','Marshall',2
5,36,3,'Safety',16),(1201,'Alohi','Gilman',24,32,1,'Safety',16),
(1202,'Nasir','Adderley',24,24,2,'Safety',16),
(1203,'Ben','DeLuca',23,46,0,'Safety',16),
(1204,'Tevaughn','Campbell',28,20,1,'Safety',16),
(1205,'Essang','Bassey',23,39,1,'Safety',16),
(1206,'Tristan','Vizcaino',25,16,1,'Kicker',16),
(1207,'Dustin','Hopkins',31,6,8,'Punter',16),(1208,'Ty','Long',28,1,2,'Punter',16),
(1209,'Hunter','Kampmoyer',23,47,0,'',16),(1210,'Michael','Davis',26,43,4,'',16),
(1211,'Cooper','Rush',28,10,4,'Quarterback',17),
(1212,'Dak','Prescott',28,4,5,'Quarterback',17),
(1213,'Ito','Smith',26,43,3,'Runningback',17),
(1214,'Tony','Pollard',24,20,2,'Runningback',17),
(1215,'Ezekiel','Elliott',26,21,5,'Runningback',17),
(1216,'Corey','Clement',27,32,4,'Runningback',17),
(1217,'Nick','Ralston',25,46,0,'Fullback',17),(1218,'Cedrick','Wilson 
Jr.',26,1,3,'Wide Reciever',17),(1219,'Malik','Turner',25,17,3,'Wide Reciever',17),
(1220,'CeeDee','Lamb',22,88,1,'Wide Reciever',17),
(1221,'Michael','Gallup',25,13,3,'Wide Reciever',17),
(1222,'Simi','Fehoko',24,81,0,'Wide Reciever',17),
(1223,'Amari','Cooper',27,19,6,'Wide Reciever',17),
(1224,'Deante','Burton',27,33,3,'Wide Reciever',17),
(1225,'Noah','Brown',25,85,4,'Wide Reciever',17),
(1226,'Jeremy','Sprinkle',27,87,4,'Tight End',17),
(1227,'Dalton','Schultz',25,86,3,'Tight End',17),
(1228,'Sean','McKeon',24,84,1,'Tight End',17),(1229,'Blake','Jarwin',27,89,4,'Tight
End',17),(1230,'Ian','Bunting',25,49,0,'Tight End',17),
(1231,'Connor','McGovern',24,66,1,'Offensive Lineman',17),
(1232,'Brandon','Knight',24,69,2,'Offensive Lineman',17),
(1233,'Tyler','Biadasz',24,63,1,'Offensive Lineman',17),
(1234,'Connor','Williams',24,52,3,'Offensive Lineman',17),
(1235,'Tyron','Smith',31,77,10,'Offensive Lineman',17),
(1236,'La\'el','Collins',28,71,6,'Offensive Lineman',17),
(1237,'Terence','Steele',24,78,1,'Offensive Lineman',17),
(1238,'Ty','Nsekhe',36,79,9,'Offensive Lineman',17),
(1239,'Zack','Martin',31,70,7,'Offensive Lineman',17),
(1240,'Matt','Farniok',24,68,0,'Offensive Lineman',17),
(1241,'Trysten','Hill',23,72,2,'Defensive Lineman',17),
(1242,'Neville','Gallimore',24,96,1,'Defensive Lineman',17),
(1243,'Bradlee','Anae',23,56,1,'Defensive Lineman',17),
(1244,'Brent','Urban',30,95,7,'Defensive Lineman',17),
(1245,'DeMarcus','Lawrence',29,90,7,'Defensive Lineman',17),
(1246,'Randy','Gregory',29,94,6,'Defensive Lineman',17),
(1247,'Chauncey','Golston',23,59,0,'Defensive Lineman',17),
(1248,'Tarell','Basham',27,93,4,'Defensive Lineman',17),(1249,'Dorance','Armstrong 
Jr.',24,92,3,'Defensive Lineman',17),(1250,'Carlos','Watkins',28,91,4,'Defensive 
Lineman',17),(1251,'Osa','Odighizuwa',23,75,0,'Defensive Lineman',17),
(1252,'Justin','Hamilton',28,99,4,'Defensive Lineman',17),
(1253,'Austin','Faoliu',22,58,0,'Defensive Lineman',17),
(1254,'Quinton','Bohanna',22,98,0,'Defensive Lineman',17),(1255,'Leighton','Vander 
Esch',25,55,3,'Linebacker',17),(1256,'Jaylon','Smith',26,9,4,'Linebacker',17),
(1257,'Micah','Parsons',22,11,0,'Linebacker',17),
(1258,'Azur','Kamara',25,43,0,'Linebacker',17),
(1259,'Luke','Gifford',26,57,2,'Linebacker',17),
(1260,'Jabril','Cox',23,14,0,'Linebacker',17),
(1261,'Francis','Bernard',26,53,1,'Linebacker',17),
(1262,'Nahshon','Wright',23,25,0,'Cornerback',17),
(1263,'Jourdan','Lewis',26,26,4,'Cornerback',17),
(1264,'Damontae','Kazee',28,18,4,'Cornerback',17),
(1265,'Trevon','Diggs',23,27,1,'Cornerback',17),
(1266,'Maurice','Canady',27,31,5,'Cornerback',17),
(1267,'Anthony','Brown',28,30,5,'Cornerback',17),
(1268,'Jayron','Kearse',27,27,5,'Safety',17),
(1269,'Darian','Thompson',28,23,5,'Safety',17),
(1270,'Keanu','Neal',26,42,5,'Safety',17),
(1271,'Malik','Hooker',25,28,4,'Safety',17),(1272,'Jake','McQuaide',34,44,10,'Long 
Snapper',17),(1273,'Donovan','Wilson',26,6,2,'Safety',17),
(1274,'Israel','Mukuamu',22,38,0,'Safety',17),
(1275,'Kelvin','Joseph',21,24,0,'Safety',17),
(1276,'C.J.','Goodwin',31,29,7,'Safety',17),
(1277,'Kyron','Brown',25,36,2,'Safety',17),
(1278,'Greg','Zuerlein',34,2,9,'Kicker',17),
(1279,'Lirim','Hajrullahu',31,3,0,'Kicker',17),
(1280,'Bryan','Anger',33,5,9,'Punter',17),(1281,'JaQuan','Hardy',24,37,0,'',17),
(1282,'Tyler','Coyle',23,39,0,'',17),
(1283,'Daniel','Jones',24,8,2,'Quarterback',18),
(1284,'Mike','Glennon',32,2,8,'Quarterback',18),
(1285,'Jake','Fromm',23,17,0,'Quarterback',18),
(1286,'Elijhaa','Penny',28,39,4,'Runningback',18),
(1287,'Cullen','Gillaspia',26,36,2,'Runningback',18),
(1288,'Gary','Brightwell',22,37,0,'Runningback',18),
(1289,'Devontae','Booker',29,28,5,'Runningback',18),
(1290,'Saquon','Barkley',24,26,3,'Runningback',18),
(1291,'Kadarius','Toney',22,89,0,'Wide Reciever',18),
(1292,'Darius','Slayton',24,86,2,'Wide Reciever',18),
(1293,'David','Sills',25,84,0,'Wide Reciever',18),
(1294,'Sterling','Shepard',28,3,5,'Wide Reciever',18),
(1295,'John','Ross',26,12,4,'Wide Reciever',18),
(1296,'Dante','Pettis',26,13,3,'Wide Reciever',18),
(1297,'Collin','Johnson',24,15,1,'Wide Reciever',18),
(1298,'Kenny','Golladay',28,19,4,'Wide Reciever',18),
(1299,'Pharoh','Cooper',26,83,5,'Wide Reciever',18),
(1300,'C.J.','Board',28,18,3,'Wide Reciever',18),
(1301,'Alex','Bachman',25,15,1,'Wide Reciever',18),
(1302,'Kaden','Smith',24,82,2,'Tight End',18),
(1303,'Kyle','Rudolph',32,80,10,'Tight End',18),
(1304,'Chris','Myarick',26,41,1,'Tight End',18),
(1305,'Evan','Engram',27,88,4,'Tight End',18),
(1306,'Andrew','Thomas',22,78,1,'Offensive Lineman',18),
(1307,'Nate','Solder',33,76,10,'Offensive Lineman',18),
(1308,'Matt','Peart',24,74,1,'Offensive Lineman',18),
(1309,'Shane','Lemieux',24,66,1,'Offensive Lineman',18),
(1310,'Ben','Bredeson',23,68,1,'Offensive Lineman',18),
(1311,'Nick','Gates',26,65,3,'Offensive Lineman',18),
(1312,'Korey','Cunningham',26,79,3,'Offensive Lineman',18),
(1313,'Derrick','Kelly',26,0,1,'Offensive Lineman',18),
(1314,'Will','Hernandez',26,71,3,'Offensive Lineman',18),
(1315,'Wes','Martin',25,63,2,'Offensive Lineman',18),
(1316,'Matt','Skura',28,67,4,'Offensive Lineman',18),
(1317,'Billy','Price',27,69,3,'Offensive Lineman',18),
(1318,'Dexter','Lawrence',24,97,2,'Defensive Lineman',18),
(1319,'Trent','Harris',26,93,2,'Defensive Lineman',18),
(1320,'Woodrow','Hamilton',29,0,5,'Defensive Lineman',18),
(1321,'Elerson','Smith',23,58,0,'Defensive Lineman',18),
(1322,'Raymond','Johnson',23,91,0,'Defensive Lineman',18),
(1323,'Lorenzo','Carter',26,59,3,'Defensive Lineman',18),
(1324,'Leonard','Williams',27,99,6,'Defensive Lineman',18),
(1325,'Danny','Shelton',28,75,6,'Defensive Lineman',18),
(1326,'David','Moa',25,96,0,'Defensive Lineman',18),
(1327,'Austin','Johnson',27,98,5,'Defensive Lineman',18),
(1328,'Jaylon','Smith',26,45,4,'Linebacker',18),
(1329,'Reggie','Ragland',28,55,4,'Linebacker',18),
(1330,'Benardrick','McKinney',29,49,6,'Linebacker',18),
(1331,'Blake','Martinez',27,54,5,'Linebacker',18),
(1332,'Quincy','Roche',23,93,0,'Linebacker',18),
(1333,'Azeez','Ojulari',21,51,0,'Linebacker',18),
(1334,'Justin','Hilliard',24,46,0,'Linebacker',18),
(1335,'Carter','Coughlin',24,49,1,'Linebacker',18),
(1336,'Cam','Brown',23,47,1,'Linebacker',18),
(1337,'Rodarius','Williams',25,25,0,'Cornerback',18),
(1338,'Logan','Ryan',30,23,8,'Cornerback',18),
(1339,'Julian','Love',23,20,2,'Cornerback',18),
(1340,'Adoree\'','Jackson',26,22,4,'Cornerback',18),
(1341,'Darnay','Holmes',23,30,1,'Cornerback',18),
(1342,'Darqueze','Dennard',30,35,7,'Cornerback',18),
(1343,'Keion','Crossen',25,31,3,'Cornerback',18),
(1344,'James','Bradberry',28,24,5,'Cornerback',18),
(1345,'Sam','Beal',25,34,2,'Cornerback',18),
(1346,'Jabrill','Peppers',26,21,4,'Safety',18),
(1347,'Casey','Kreiter',31,58,5,'Long Snapper',18),
(1348,'Xavier','McKinney',22,29,1,'Safety',18),
(1349,'Jarren','Williams',24,34,1,'Safety',18),
(1350,'Aaron','Robinson',24,33,0,'Safety',18),
(1351,'J.R.','Reed',25,27,1,'Safety',18),
(1352,'Steven','Parker',26,38,2,'Safety',18),
(1353,'Nate','Ebner',33,43,9,'Safety',18),
(1354,'Graham','Gano',34,5,12,'Kicker',18),
(1355,'Riley','Dixon',28,9,5,'Punter',18),
(1356,'Oshane','Ximines',25,53,2,'Defensive Lineman',18),
(1357,'Tae','Crowder',24,48,1,'Linebacker',18),(1358,'Gardner','Minshew 
II',25,10,2,'Quarterback',19),(1359,'Jalen','Hurts',23,1,1,'Quarterback',19),
(1360,'Boston','Scott',26,35,3,'Runningback',19),
(1361,'Miles','Sanders',24,26,2,'Runningback',19),
(1362,'Jason','Huntley',23,32,1,'Runningback',19),
(1363,'Jordan','Howard',27,24,5,'Runningback',19),
(1364,'Kenneth','Gainwell',22,14,0,'Runningback',19),
(1365,'Quez','Watkins',23,16,1,'Wide Reciever',19),
(1366,'Greg','Ward',26,84,2,'Wide Reciever',19),
(1367,'DeVonta','Smith',23,6,0,'Wide Reciever',19),
(1368,'Jalen','Reagor',22,18,1,'Wide Reciever',19),
(1369,'John','Hightower',25,82,1,'Wide Reciever',19),(1370,'JJ','Arcega-
Whiteside',25,19,2,'Wide Reciever',19),(1371,'Noah','Togiai',24,83,1,'Tight 
End',19),(1372,'Jack','Stoll',23,47,0,'Tight End',19),
(1373,'Richard','Rodgers',29,81,7,'Tight End',19),
(1374,'Tyree','Jackson',24,80,0,'Tight End',19),
(1375,'Dallas','Goedert',26,88,3,'Tight End',19),(1376,'Zach','Ertz',31,86,8,'Tight
End',19),(1377,'Jack','Driscoll',24,63,1,'Offensive Lineman',19),
(1378,'Andre','Dillard',26,77,2,'Offensive Lineman',19),
(1379,'Landon','Dickerson',23,51,0,'Offensive Lineman',19),
(1380,'Lane','Johnson',31,65,8,'Offensive Lineman',19),
(1381,'Le\'Raven','Clark',28,74,5,'Offensive Lineman',19),
(1382,'Casey','Tucker',26,50,0,'Offensive Lineman',19),
(1383,'Brett','Toth',25,64,1,'Offensive Lineman',19),
(1384,'Jordan','Mailata',24,68,3,'Offensive Lineman',19),
(1385,'Kayode','Awosika',23,72,0,'Offensive Lineman',19),
(1386,'Isaac','Seumalo',28,56,5,'Offensive Lineman',19),
(1387,'Sua','Opeta',25,78,1,'Offensive Lineman',19),
(1388,'Nate','Herbig',23,67,2,'Offensive Lineman',19),
(1389,'Brandon','Brooks',32,79,9,'Offensive Lineman',19),
(1390,'Jack','Anderson',23,76,0,'Offensive Lineman',19),
(1391,'Jason','Kelce',34,62,10,'Offensive Lineman',19),
(1392,'Josh','Sweat',24,94,3,'Defensive Lineman',19),
(1393,'Cameron','Malveaux',27,59,4,'Defensive Lineman',19),
(1394,'Tarron','Jackson',23,75,0,'Defensive Lineman',19),
(1395,'Brandon','Graham',33,55,11,'Defensive
 Lineman',19),(1396,'Derek','Barnett',25,96,4,'Defensive Lineman',19),
(1397,'Marvin','Wilson',23,73,0,'Defensive Lineman',19),
(1398,'Raequan','Williams',24,61,1,'Defensive Lineman',19),
(1399,'Milton','Williams',22,93,0,'Defensive Lineman',19),
(1400,'Marlon','Tuipulotu',22,72,0,'Defensive Lineman',19),
(1401,'Hassan','Ridgeway',27,98,5,'Defensive Lineman',19),
(1402,'Javon','Hargrave',28,97,5,'Defensive Lineman',19),
(1403,'Fletcher','Cox',31,91,9,'Defensive Lineman',19),
(1404,'Ryan','Kerrigan',33,90,10,'Linebacker',19),
(1405,'Eric','Wilson',27,50,4,'Linebacker',19),
(1406,'Davion','Taylor',23,52,1,'Linebacker',19),
(1407,'Alex','Singleton',28,49,2,'Linebacker',19),
(1408,'Patrick','Johnson',23,48,0,'Linebacker',19),
(1409,'Christian','Elliss',22,53,0,'Linebacker',19),
(1410,'T.J.','Edwards',25,57,2,'Linebacker',19),
(1411,'Shaun','Bradley',24,54,1,'Linebacker',19),
(1412,'Genard','Avery',26,58,3,'Linebacker',19),(1413,'Kary','Vincent 
Jr.',22,34,0,'Cornerback',19),(1414,'Darius','Slay',30,2,8,'Cornerback',19),
(1415,'Josiah','Scott',22,33,1,'Cornerback',19),
(1416,'Steven','Nelson',28,3,6,'Cornerback',19),
(1417,'Zech','McPhearson',23,27,0,'Cornerback',19),
(1418,'Mac','McCain',23,37,0,'Cornerback',19),
(1419,'Avonte','Maddox',25,29,3,'Cornerback',19),
(1420,'Andre','Chachere',25,21,0,'Cornerback',19),
(1421,'Rick','Lovato',29,45,6,'Long Snapper',19),
(1422,'K\'Von','Wallace',24,42,1,'Safety',19),
(1423,'JaCoby','Stevens',23,30,0,'Safety',19),
(1424,'Rodney','McLeod',31,23,9,'Safety',19),
(1425,'Marcus','Epps',25,22,2,'Safety',19),
(1426,'Elijah','Riley',23,39,1,'Safety',19),
(1427,'Jared','Mayden',23,41,1,'Safety',19),
(1428,'Anthony','Harris',30,28,6,'Safety',19),
(1429,'Tay','Gowan',23,36,0,'Safety',19),
(1430,'Jake','Elliott',26,4,4,'Kicker',19),
(1431,'Arryn','Siposs',29,8,0,'Punter',19),
(1432,'Taylor','Heinicke',28,4,4,'Quarterback',20),
(1433,'Garrett','Gilbert',30,19,7,'Quarterback',20),
(1434,'Ryan','Fitzpatrick',39,14,16,'Quarterback',20),
(1435,'Kyle','Allen',25,8,3,'Quarterback',20),
(1436,'Jonathan','Williams',27,35,5,'Runningback',20),
(1437,'Wendell','Smallwood',27,34,5,'Runningback',20),
(1438,'Jaret','Patterson',22,32,0,'Runningback',20),
(1439,'Antonio','Gibson',23,24,1,'Runningback',20),
(1440,'Alex','Armah',27,38,4,'Fullback',20),(1441,'Cam','Sims',25,11,3,'Wide 
Reciever',20),(1442,'Curtis','Samuel',25,10,4,'Wide Reciever',20),
(1443,'Dax','Milne',22,15,0,'Wide Reciever',20),
(1444,'Terry','McLaurin',26,17,2,'Wide Reciever',20),
(1445,'J.D.','McKissic',28,41,5,'Wide Reciever',20),
(1446,'Adam','Humphries',28,13,6,'Wide Reciever',20),(1447,'Antonio','Gandy-
Golden',23,18,1,'Wide Reciever',20),(1448,'DeAndre','Carter',28,1,3,'Wide 
Reciever',20),(1449,'Dyami','Brown',22,2,0,'Wide Reciever',20),
(1450,'Tyrone','Swoopes',27,86,4,'Tight End',20),(1451,'Ricky','Seals-
Jones',26,83,4,'Tight End',20),(1452,'Sammis','Reyes',26,80,0,'Tight End',20),
(1453,'Temarrick','Hemingway',28,88,5,'Tight End',20),
(1454,'John','Bates',24,87,0,'Tight End',20),
(1455,'Najee','Toran',26,61,3,'Offensive Lineman',20),
(1456,'Keith','Ismael',23,60,1,'Offensive Lineman',20),
(1457,'Samuel','Cosmi',22,76,0,'Offensive Lineman',20),
(1458,'Saahdiq','Charles',22,77,1,'Offensive Lineman',20),(1459,'Charles','Leno 
Jr.',30,72,7,'Offensive Lineman',20),(1460,'Wes','Schweitzer',28,71,4,'Offensive 
Lineman',20),(1461,'Cornelius','Lucas',30,78,7,'Offensive Lineman',20),
(1462,'Ereck','Flowers',27,79,6,'Offensive Lineman',20),
(1463,'David','Steinmetz',26,66,1,'Offensive Lineman',20),
(1464,'Jamil','Douglas',29,64,6,'Offensive Lineman',20),
(1465,'Brandon','Scherff',30,75,6,'Offensive Lineman',20),
(1466,'Shaq','Calhoun',25,64,2,'Offensive Lineman',20),
(1467,'Jon','Toth',27,61,3,'Offensive Lineman',20),
(1468,'Chase','Roullier',28,73,4,'Offensive Lineman',20),
(1469,'Tyler','Larsen',30,69,5,'Offensive Lineman',20),
(1470,'Chase','Young',22,99,1,'Defensive Lineman',20),
(1471,'Daniel','Wise',25,92,0,'Defensive Lineman',20),(1472,'James','Smith-
Williams',24,96,1,'Defensive Lineman',20),(1473,'Shaka','Toney',23,58,0,'Defensive 
Lineman',20),(1474,'Bunmi','Rotimi',26,57,0,'Defensive Lineman',20),
(1475,'Akeem','Spence',30,69,8,'Defensive Lineman',20),
(1476,'Tim','Settle',24,97,3,'Defensive Lineman',20),
(1477,'Daron','Payne',24,94,3,'Defensive Lineman',20),
(1478,'Matthew','Ioannidis',27,98,5,'Defensive Lineman',20),
(1479,'David','Bada',26,64,0,'Defensive Lineman',20),
(1480,'Jonathan','Allen',26,93,4,'Defensive Lineman',20),
(1481,'Nate','Orchard',28,43,6,'Linebacker',20),(1482,'William','Bradley-
King',24,56,0,'Linebacker',20),(1483,'Jonathan','Bostic',30,53,8,'Linebacker',20),
(1484,'David','Mayo',28,51,6,'Linebacker',20),
(1485,'Casey','Toohill',25,95,1,'Linebacker',20),
(1486,'Jared','Norris',28,50,5,'Linebacker',20),
(1487,'Jordan','Kunaszyk',25,59,2,'Linebacker',20),
(1488,'Khaleke','Hudson',24,47,1,'Linebacker',20),
(1489,'Cole','Holcomb',25,55,2,'Linebacker',20),
(1490,'De\'Jon','Harris',24,45,1,'Linebacker',20),
(1491,'Milo','Eifler',23,46,0,'Linebacker',20),
(1492,'Jamin','Davis',23,52,0,'Linebacker',20),
(1493,'Darryl','Roberts',31,34,5,'Cornerback',20),
(1494,'Torry','McTyer',26,35,4,'Cornerback',20),
(1495,'Bobby','McCain',28,20,6,'Cornerback',20),
(1496,'Danny','Johnson',26,36,3,'Cornerback',20),(1497,'William','Jackson 
III',29,23,4,'Cornerback',20),(1498,'D.J.','Hayden',31,14,8,'Cornerback',20),
(1499,'Kendall','Fuller',26,29,5,'Cornerback',20),
(1500,'Deshazor','Everett',29,22,6,'Cornerback',20),
(1501,'Corn','Elder',27,35,3,'Cornerback',20),
(1502,'Landon','Collins',27,26,6,'Safety',20),
(1503,'Jeremy','Reaves',25,39,3,'Safety',20),
(1504,'Camaron','Cheeseman',23,54,0,'Long Snapper',20),
(1505,'Darrick','Forrest',22,48,0,'Safety',20),
(1506,'Kamren','Curl',22,31,1,'Safety',20),
(1507,'Troy','Apke',26,30,3,'Safety',20),(1508,'Benjamin','St-
Juste',24,25,0,'Safety',20),(1509,'Joey','Slye',25,3,2,'Kicker',20),
(1510,'Brian','Johnson',22,16,0,'Kicker',20),
(1511,'Dustin','Hopkins',31,3,8,'Kicker',20),
(1512,'Chris','Blewitt',26,12,0,'Kicker',20),
(1513,'Ryan','Winslow',27,12,2,'Punter',20),
(1514,'Tress','Way',31,5,7,'Punter',20),(1515,'Logan','Thomas',30,82,7,'Tight 
End',20),(1516,'Montez','Sweat',25,90,2,'Defensive Lineman',20),
(1517,'Justin','Fields',22,1,0,'Quarterback',21),
(1518,'Nick','Foles',32,9,9,'Quarterback',21),
(1519,'Andy','Dalton',34,14,10,'Quarterback',21),
(1520,'Khalil','Herbert',23,24,0,'Runningback',21),
(1521,'David','Montgomery',24,32,2,'Runningback',21),
(1522,'Ryan','Nall',26,35,2,'Runningback',21),
(1523,'Artavis','Pierce',25,31,1,'Runningback',21),
(1524,'Damien','Williams',29,8,7,'Runningback',21),
(1525,'Rodney','Williams',27,13,4,'Wide Reciever',21),(1526,'Damiere 
','Byrd',28,10,5,'Wide Reciever',21),(1527,'Isaiah ','Coulter',23,19,1,'Wide 
Reciever',21),(1528,'Marquise','Goodwin',31,84,8,'Wide Reciever',21),
(1529,'Jakeem','Grant',29,17,5,'Wide Reciever',21),
(1530,'Jesper','Horsted',24,87,2,'Wide Reciever',21),
(1531,'Darnell','Mooney',24,11,1,'Wide Reciever',21),
(1532,'Dazz','Newsome',22,83,0,'Wide Reciever',21),(1533,'Allen 
','Robinson',28,12,7,'Wide Reciever',21),(1534,'Nsimba','Webster',25,15,2,'Wide 
Reciever',21),(1535,'Jimmy','Graham',35,80,11,'Tight End',21),
(1536,'J.P.','Holtz',28,81,3,'Tight End',21),(1537,'Jesse ','James',27,18,6,'Tight 
End',21),(1538,'Cole','Kmet',22,85,1,'Tight End',21),
(1539,'Jeremiah','Attaochu',28,50,7,'Offensive Lineman',21),
(1540,'Larry','Borom',22,75,0,'Offensive Lineman',21),(1541,'Elijah 
','Wilkinson',26,70,4,'Offensive Lineman',21),(1542,'Germain 
Ifedi','Ifedi',27,74,5,'Offensive Lineman',21),(1543,'Cody 
','Whitehair',29,65,5,'Offensive Lineman',21),(1544,'Dieter 
','Eiselen',25,60,1,'Offensive Lineman',21),(1545,'Lachavious 
','Simmons',25,73,0,'Offensive Lineman',21),(1546,'Sam 
','Mustipher',25,67,1,'Offensive Lineman',21),(1547,'James 
','Daniels',24,68,3,'Offensive Lineman',21),
(1548,'Trevis','Gipson',24,99,1,'Defensive Lineman',21),
(1549,'Ledarius','Mack',25,43,0,'Defensive Lineman',21),
(1550,'Bruce','Irvin',34,46,9,'Defensive Lineman',21),
(1551,'Cassius','Marsh',29,59,7,'Defensive Lineman',21),
(1552,'Damion','Square',32,79,8,'Defensive Lineman',21),
(1553,'Margus','Hunt',34,93,8,'Defensive Lineman',21),
(1554,'Robert','Quinn',31,94,10,'Defensive Lineman',21),
(1555,'Akiem','Hicks',32,96,9,'Defensive Lineman',21),
(1556,'Mario','Edwards',27,97,6,'Defensive Lineman',21),
(1557,'LaCale','London',24,63,0,'Defensive Lineman',21),
(1558,'Angelo','Blackson',29,90,6,'Defensive Lineman',21),
(1559,'Eddie','Goldman',27,91,6,'Defensive Lineman',21),
(1560,'Khyiris','Tonga',25,95,0,'Defensive Lineman',21),
(1561,'Bilal','Nichols',25,98,3,'Defensive Lineman',21),
(1562,'Alex','Bars',26,64,2,'Defensive Lineman',21),
(1563,'Jason','Peters',39,71,17,'Defensive Lineman',21),
(1565,'Alex','Taylor',24,79,1,'Defensive Lineman',21),
(1566,'Alec','Ogletree',30,44,8,'Linebacker',21),
(1567,'Charles','Snowden',23,49,0,'Linebacker',21),
(1568,'Jeremiah','Attaochu',28,50,7,'Linebacker',21),
(1569,'Khalil','Mack',30,52,7,'Linebacker',21),
(1570,'Danny','Trevathan',31,59,9,'Linebacker',21),
(1571,'Christian','Jones',30,57,7,'Linebacker',21),
(1572,'Roquan','Smith',24,58,3,'Linebacker',21),
(1573,'Joel','Iyiegbuniwe',26,45,3,'Linebacker',21),
(1574,'Sam','Kamara',24,46,0,'Linebacker',21),
(1575,'Josh','Woods',25,55,2,'Linebacker',21),
(1576,'Caleb','Johnson',23,92,0,'Linebacker',21),
(1577,'Tashaun','Gipson',31,38,9,'Linebacker',21),
(1578,'Duke','Shelley',25,20,2,'Cornerback',21),
(1579,'Xavier','Crawford',26,21,2,'Cornerback',21),
(1580,'Kindle','Vildor',24,22,1,'Cornerback',21),
(1581,'Artie','Burns',26,25,5,'Cornerback',21),
(1582,'Thomas','Graham',22,27,0,'Cornerback',21),
(1583,'Dee','Virgin',28,30,3,'Cornerback',21),
(1584,'Michael','Joseph',26,31,0,'Cornerback',21),
(1585,'Jaylon','Johnson',22,33,1,'Cornerback',21),
(1586,'Teez','Tabor',26,37,4,'Cornerback',21),
(1587,'Thakarius','Keyes',24,39,1,'Cornerback',21),
(1588,'Eddie','Jackson',28,4,4,'Safety',21),
(1589,'Marqui','Christian',27,23,5,'Safety',21),
(1590,'Deon','Bush',28,26,5,'Safety',21),(1591,'DeAndre','Houston-
Carson',28,36,5,'Safety',21),(1592,'Ca
iro','Santos',30,2,7,'Kicker',21),(1593,'Pat','O\'Donnell',30,16,7,'Punter',21),
(1594,'Patrick','Scales',33,48,7,'Long Snapper',21),
(1595,'David','Blough',26,10,2,'Quarterback',22),
(1596,'Tim','Boyle',27,12,3,'Quarterback',22),
(1597,'Jared','Goff',27,16,5,'Quarterback',22),
(1598,'Godwin','Igwebuike',27,35,3,'Runningback',22),
(1599,'Jermar','Jefferson',21,28,0,'Runningback',22),
(1600,'Craig','Reynolds',25,46,2,'Runningback',22),
(1601,'D\'Andre','Swift',22,32,1,'Runningback',22),
(1602,'Jamaal','Williams',26,30,4,'Runningback',22),
(1603,'Geronimo','Allison',27,13,5,'Runningback',22),
(1604,'Trinity','Benson',24,17,0,'Wide Reciever',22),
(1605,'Quintez','Cephus',23,87,1,'Wide Reciever',22),
(1606,'KhaDarel','Hodge',26,18,3,'Wide Reciever',22),
(1607,'Tom','Kennedy',25,85,2,'Wide Reciever',22),
(1608,'Kalif','Raymond',27,11,5,'Wide Reciever',22),
(1609,'Josh','Reynolds',26,8,4,'Wide Reciever',22),(1610,'Amon-
Ra','St.',22,14,0,'Wide Reciever',22),(1611,'Tyrell','Williams',29,6,6,'Wide 
Reciever',22),(1612,'Rashod','Berry',25,43,1,'Tight End',22),
(1613,'Darren','Fells',35,80,8,'Tight End',22),
(1614,'T.J.','Hockenson',24,88,2,'Tight End',22),
(1615,'Jared','Pinkney',24,80,0,'Tight End',22),
(1616,'Ross','Travis',28,86,5,'Tight End',22),(1617,'Brock','Wright',23,89,0,'Tight
End',22),(1618,'Shane','Zylstra',25,84,0,'Tight End',22),
(1619,'Taylor','Decker',28,68,5,'Offensive Lineman',22),
(1620,'Will','Holden',28,69,4,'Offensive Lineman',22),
(1621,'Dan','Skipper',27,70,4,'Offensive Lineman',22),
(1622,'Halapoulivaati','Vaitai',28,72,5,'Offensive Lineman',22),
(1623,'Parker','Ehinger',29,65,5,'Offensive Lineman',22),
(1624,'Jonah','Jackson',24,73,1,'Offensive Lineman',22),
(1625,'Ryan','McCollum',23,74,0,'Offensive Lineman',22),
(1626,'Logan','Stenberg',24,71,1,'Offensive Lineman',22),
(1627,'Tommy','Kraemer',23,78,0,'Offensive Lineman',22),
(1628,'Evan','Brown',25,63,3,'Offensive Lineman',22),
(1629,'Frank','Ragnow',25,77,3,'Offensive Lineman',22),
(1630,'Julian','Okwara',24,99,1,'Defensive Lineman',22),
(1631,'John','Penisini',24,98,1,'Defensive Lineman',22),
(1632,'Jashon','Cornell',25,96,0,'Defensive Lineman',22),
(1633,'Trey','Flowers',28,90,6,'Defensive Lineman',22),
(1634,'Da\'Shawn','Hand',26,93,3,'Defensive Lineman',22),
(1635,'Charles','Harris',26,53,4,'Defensive Lineman',22),
(1636,'Jessie','Lemonier',24,52,1,'Defensive Lineman',22),
(1637,'Romeo','Okwara',26,95,5,'Defensive Lineman',22),
(1638,'Levi','Onwuzurike',23,75,0,'Defensive Lineman',22),
(1639,'Michael','Brockers',31,91,9,'Defensive Lineman',22),
(1640,'Bruce','Hector',27,76,3,'Defensive Lineman',22),
(1641,'Kevin','Strong',25,92,2,'Defensive Lineman',22),
(1642,'Nick','Williams',31,97,7,'Defensive Lineman',22),
(1643,'Matt','Nelson',26,67,1,'Defensive Lineman',22),
(1644,'Penei','Sewell',21,58,0,'Defensive Lineman',22),
(1645,'Austin','Bryant',25,2,2,'Defensive Lineman',22),
(1646,'Alim','McNeill',21,54,0,'Defensive Lineman',22),
(1647,'Alex','Anzalone',27,34,4,'Linebacker',22),
(1648,'Jamie','Collins',32,8,8,'Linebacker',22),(1649,'Jalen','Reeves-
Maybin',26,44,4,'Linebacker',22),(1650,'Jason','Cabinda',25,45,3,'Linebacker',22),
(1651,'Derrick','Barnes',22,55,0,'Linebacker',22),
(1652,'Tavante','Beckett',24,59,0,'Linebacker',22),
(1653,'Curtis','Bolton',26,49,0,'Linebacker',22),
(1654,'Anthony','Pittman',25,57,2,'Linebacker',22),
(1655,'Josh','Woods',25,51,2,'Linebacker',22),
(1656,'Jalen','Elliott',23,42,0,'Linebacker',22),
(1657,'C.J.','Moore',26,38,2,'Linebacker',22),
(1658,'Parnell','Motley',24,29,1,'Linebacker',22),
(1659,'Bobby','Price',23,27,1,'Linebacker',22),
(1660,'Corey','Ballentine',25,36,2,'Cornerback',22),
(1661,'Mark','Gilbert',24,40,0,'Cornerback',22),
(1662,'Jerry','Jacobs',24,39,0,'Cornerback',22),
(1663,'Ifeatu','Melifonwu',22,26,0,'Cornerback',22),
(1664,'Jeff','Okudah',22,1,1,'Cornerback',22),
(1665,'Amani','Oruwariye',25,24,2,'Cornerback',22),
(1666,'AJ','Parker',23,41,0,'Cornerback',22),(1667,'Nickell','Robey-
Coleman',29,1,8,'Cornerback',22),(1668,'Saivion','Smith',24,19,1,'Cornerback',22),
(1669,'Daryl','Worley',26,33,5,'Cornerback',22),
(1670,'Brady','Breeze',24,15,0,'Safety',22),
(1671,'Will','Harris',26,25,2,'Safety',22),
(1672,'Dean','Marlowe',29,31,6,'Safety',22),
(1673,'Tracy','Walker',26,21,3,'Safety',22),
(1674,'Aldrick','Rosas',27,5,4,'Kicker',22),
(1675,'Austin','Seibert',25,4,2,'Kicker',22),
(1676,'Jack','Fox',25,3,1,'Punter',22),(1677,'Ryan','Santoso',26,5,2,'Punter',22),
(1678,'Scott','Daly',27,47,3,'Long Snapper',22),
(1679,'Kurt','Benkert',26,6,0,'Quarterback',23),
(1680,'Jordan','Love',23,10,0,'Quarterback',23),
(1681,'Aaron','Rodgers',38,12,16,'Quarterback',23),
(1682,'AJ','Dillon',23,28,1,'Runningback',23),
(1683,'Kylin','Hill',23,32,0,'Runningback',23),
(1684,'Aaron','Jones',27,33,4,'Runningback',23),
(1685,'Patrick','Taylor',23,27,0,'Runningback',23),
(1686,'Davante','Adams',29,17,7,'Wide Reciever',23),
(1687,'Randall','Cobb',31,18,10,'Wide Reciever',23),
(1688,'Allen','Lazard',26,13,3,'Wide Reciever',23),
(1689,'David','Moore',26,82,4,'Wide Reciever',23),
(1690,'Amari','Rodgers',22,8,0,'Wide Reciever',23),(1691,'Equanimeous','St. 
Brown',25,19,3,'Wide Reciever',23),(1692,'Malik','Taylor',26,86,1,'Wide 
Reciever',23),(1693,'Marquez','Valdes-Scantling',27,83,3,'Wide Reciever',23),
(1694,'Juwann','Winfree',25,88,2,'Wide Reciever',23),
(1695,'Dominique','Dafney',24,49,1,'Tight End',23),
(1696,'Tyler','Davis',24,84,1,'Tight End',23),
(1697,'Josiah','Deguara',24,81,1,'Tight End',23),
(1698,'Marcedes','Lewis',37,89,15,'Tight End',23),
(1699,'Robert','Tonyan',27,85,3,'Tight End',23),
(1700,'David','Bakhtiari',30,69,8,'Offensive Lineman',23),
(1701,'Dennis','Kelly',31,79,9,'Offensive Lineman',23),
(1702,'Billy','Turner',30,77,7,'Offensive Lineman',23),
(1703,'Ben','Braden',27,64,3,'Offensive Lineman',23),
(1704,'Jake','Hanson',24,67,0,'Offensive Lineman',23),
(1705,'Elgton','Jenkins',26,74,2,'Offensive Lineman',23),
(1706,'Josh','Myers',23,71,0,'Offensive Lineman',23),
(1707,'Royce','Newman',24,70,0,'Offensive Lineman',23),
(1708,'Yosuah','Nijman',25,73,1,'Offensive Lineman',23),
(1709,'Jon','Runyan',24,76,1,'Offensive Lineman',23),
(1710,'Lucas','Patrick',28,62,4,'Offensive Lineman',23),(1711,'Cole','Van 
Lanen',23,78,0,'Offensive Lineman',23),(1712,'Jonathan','Garvin',22,53,1,'Defensive
Lineman',23),(1713,'Rashan','Gary',24,52,2,'Defensive Lineman',23),
(1714,'Kingsley','Keke',25,96,2,'Defensive Lineman',23),
(1715,'Tyler','Lancaster',27,95,3,'Defensive Lineman',23),
(1716,'Tipa','Galeai',24,40,1,'Defensive Lineman',23),
(1717,'Dean','Lowry',27,94,5,'Defensive Lineman',23),
(1718,'Whitney','Mercilus',31,50,9,'Defensive Lineman',23),
(1719,'Chauncey','Rivers',24,47,1,'Defensive Lineman',23),
(1720,'Preston','Smith',29,91,6,'Defensive Lineman',23),
(1721,'Za\'Darius','Smith',29,55,6,'Defensive Lineman',23),
(1722,'Abdullah','Anderson',25,98,2,'Defensive Lineman',23),
(1723,'Kenny','Clark',26,97,5,'Defensive Lineman',23),
(1724,'Jack','Heflin',23,90,0,'Defensive Lineman',23),
(1725,'Tedarrell','Slaton',24,93,0,'Defensive Lineman',23),
(1726,'De\'Vondre','Campbell',28,59,5,'Linebacker',23),
(1727,'Jaylon','Smith',26,9,4,'Linebacker',23),
(1728,'Oren','Burks',26,42,3,'Linebacker',23),
(1729,'Krys','Barnes',23,51,1,'Linebacker',23),
(1730,'Ladarius','Hamilton',23,54,0,'Linebacker',23),
(1731,'Isaiah','McDuffie',22,58,0,'Linebacker',23),
(1732,'Ty','Summers',26,44,2,'Linebacker',23),
(1733,'Henry','Black',24,41,1,'Linebacker',23),
(1734,'Shawn','Davis',23,30,0,'LInebacker',23),
(1735,'Innis','Gaines',23,38,0,'LInebacker',23),
(1736,'Jaire','Alexander',24,23,3,'Cornerback',23),
(1737,'Rasul','Douglas',27,29,4,'Cornerback',23),(1738,'Shemar','Jean-
Charles',23,22,0,'Cornerback',23),(1739,'Kevin','King',26,20,4,'Cornerback',23),
(1740,'Eric','Stokes',22,21,0,'Cornerback',23),
(1741,'Chandon','Sullivan',25,39,3,'Cornerback',23),
(1742,'Isaac','Yiadom',25,24,3,'Cornerback',23),(1743,'Darnell','Savage 
Jr.',24,26,2,'Safety',23),(1744,'Vernon','Scott',24,36,1,'Safety',23),
(1745,'Adrian','Amos',28,31,6,'Safety',23),
(1746,'Mason','Crosby',37,2,14,'Kicker',23),
(1747,'Corey','Bojorquez',25,7,3,'Punter',23),
(1748,'Hunter','Bradley',27,43,3,'Long Snapper',23),
(1749,'Joe','Fortunato',27,47,0,'Long Snapper',23),
(1750,'Steven','Wirtel',24,46,0,'Long Snapper',23),
(1751,'Kirk','Cousins',33,8,9,'Quarterback',24),
(1752,'Sean','Mannion',29,14,6,'Quarterback',24),
(1753,'Kellen','Mond',22,11,0,'Quarterback',24),
(1754,'Ameer','Abdullah',28,31,6,'Runningback',24),
(1755,'Jake','Bargas',25,34,1,'Runningback',24),
(1756,'Dalvin','Cook',26,33,4,'Runningback',24),
(1757,'Wayne','Gallman',27,31,4,'Runningback',24),
(1758,'C.J.','Ham',28,30,4,'Runningback',24),
(1759,'Alexander','Mattison',23,25,2,'Runningback',24),
(1760,'Kene','Nwangwu',23,26,0,'Runningback',24),
(1761,'Dan','Chisena',24,85,1,'Wide Reciever',24),
(1762,'Justin','Jefferson',22,18,1,'Wide Reciever',24),
(1763,'Myron','Mitchell',23,87,0,'Wide Reciever',24),
(1764,'K.J.','Osborn',24,17,1,'Wide Reciever',24),(1765,'Ihmir','Smith-
Marsette',22,15,0,'Wide Reciever',24),(1766,'Adam','Thielen',31,19,8,'Wide 
Reciever',24),(1767,'Dede','Westbrook',28,12,4,'Wide Reciever',24),
(1768,'Tyler','Conklin',26,83,3,'Tight End',24),
(1769,'Brandon','Dillon',24,86,2,'Tight End',24),
(1770,'Ben','Ellefson',25,82,1,'Tight End',24),
(1771,'Chris','Herndon',25,89,3,'TIght End',24),
(1772,'Luke','Stocker',33,35,10,'TIght End',24),
(1773,'Dakota','Dozier',30,78,7,'Offensive Lineman',24),
(1774,'Brian','O\'Neill',26,75,3,'Offensive Lineman',24),
(1775,'Garrett','Bradbury',26,56,2,'Offensive Lineman',24),
(1776,'Ezra','Cleveland',23,72,1,'Offensive Lineman',24),
(1777,'Christian','Darrisaw',22,71,0,'Offensive Lineman',24),
(1778,'Wyatt','Davis',22,51,0,'Offensive Lineman',24),
(1779,'Mason','Cole',25,52,3,'Offensive Lineman',24),(1780,'Patrick','Jones 
II',23,93,0,'Defensive Lineman',24),(1781,'James','Lynch',22,92,1,'Defensive 
Lineman',24),(1782,'Armon','Watts',25,96,2,'Defensive Lineman',24),
(1783,'Kenny','Willekes',24,79,0,'Defensive Lineman',24),
(1784,'D.J.','Wonnum',24,98,1,'Defensive
 Lineman',24),(1785,'Everson','Griffen',34,97,11,'Defensive Lineman',24),
(1786,'Danielle','Hunter',27,99,6,'Defensive Lineman',24),
(1787,'Eddie','Yarbrough',28,66,4,'Defensive Lineman',24),
(1788,'T.Y.','McGill',29,91,6,'Defensive Lineman',24),
(1789,'Michael','Pierce',29,58,5,'Defensive Lineman',24),
(1790,'Sheldon','Richardson',31,90,8,'Defensive Lineman',24),
(1791,'T.J.','Smith',24,50,0,'Defensive Lineman',24),
(1792,'Dalvin','Tomlinson',27,94,4,'Defensive Lineman',24),
(1793,'Blake','Brandel',24,64,0,'Defensive Lineman',24),
(1794,'Rashod','Hill',29,69,5,'Defensive Lineman',24),
(1795,'Oli','Udoh',24,74,2,'Defensive Lineman',24),
(1796,'Anthony','Barr',29,55,7,'Linebacker',24),
(1797,'Tashawn','Bower',26,73,4,'Linebacker',24),
(1798,'Stephen','Weatherly',27,91,5,'Linebacker',24),
(1799,'Eric','Kendricks',29,54,6,'Linebacker',24),
(1800,'Nick','Vigil',28,59,5,'Linebacker',24),
(1801,'Tuf','Borland',23,47,0,'Linebacker',24),
(1802,'Ryan','Connelly',26,57,2,'Linebacker',24),
(1803,'Troy','Dye',25,45,1,'Linebacker',24),
(1804,'Blake','Lynch',24,48,1,'Linebacker',24),
(1805,'Chazz','Surratt',24,41,0,'Linebacker',24),
(1806,'Myles','Dorn',23,46,0,'Linebacker',24),
(1807,'Bryan','Mills',22,0,0,'Linebacker',24),
(1808,'Mackensie','Alexander',28,24,5,'Cornerback',24),
(1809,'Kris','Boyd',25,29,2,'Cornerback',24),
(1810,'Bashaud','Breeland',29,21,7,'Cornerback',24),
(1811,'Cameron','Dantzler',23,27,1,'Cornerback',24),
(1812,'Harrison','Hand',23,20,1,'Cornerback',24),
(1813,'Parry','Nickerson',27,39,3,'Cornerback',24),
(1814,'Patrick','Peterson',31,7,10,'Cornerback',24),
(1815,'Tye','Smith',28,5,6,'Cornerback',24),
(1816,'Camryn','Bynum',23,43,0,'Safety',24),
(1817,'Josh','Metellus',23,44,1,'Safety',24),
(1818,'Xavier','Woods',26,23,4,'Safety',24),
(1819,'Harrison','Smith',32,22,9,'Safety',24),
(1820,'Greg','Joseph',27,1,3,'Kicker',24),
(1821,'Jordan','Berry',30,3,6,'Punter',24),(1822,'Andrew','DePaola',34,42,7,'Long 
Snapper',24),(1823,'Feleipe','Franks',24,15,0,'Quarterback',25),
(1824,'Josh','Rosen',24,16,3,'Quarterback',25),
(1825,'Matt','Ryan',36,2,13,'Quarterback',25),
(1826,'Mike','Davis',28,28,6,'Runningback',25),
(1827,'Wayne','Gallman',27,25,4,'Runningback',25),
(1828,'Qadree','Ollison',25,30,2,'Runningback',25),
(1829,'Christian','Blake',25,13,3,'Wide Reciever',25),
(1830,'Frank','Darby',24,88,0,'Wide Reciever',25),
(1831,'Russell','Gage',25,14,3,'Wide Reciever',25),
(1832,'Marvin','Hall',28,9,4,'Wide Reciever',25),
(1833,'Cordarrelle','Patterson',30,84,8,'Wide Reciever',25),
(1834,'Calvin','Ridley',27,18,3,'Wide Reciever',25),
(1835,'Tajae','Sharpe',27,4,5,'Wide Reciever',25),
(1836,'Austin','Trammell',23,82,0,'Wide Reciever',25),
(1837,'Olamide','Zaccheaus',24,17,2,'Wide Reciever',25),
(1838,'Parker','Hesse',26,46,0,'Tight End',25),
(1839,'Hayden','Hurst',28,81,3,'Tight End',25),(1840,'Kyle','Pitts',21,8,0,'Tight 
End',25),(1841,'Lee','Smith',34,85,10,'Tight End',25),
(1842,'Rick','Leonard',25,71,3,'Offensive Lineman',25),
(1843,'Jake','Matthews',29,70,7,'Offensive Lineman',25),
(1844,'Jason','Spriggs',27,69,5,'Offensive Lineman',25),
(1845,'Drew','Dalman',23,67,0,'Offensive Lineman',25),
(1846,'Matt','Hennessy',24,61,1,'Offensive Lineman',25),
(1847,'Chris','Lindstrom',24,63,2,'Offensive Lineman',25),
(1848,'Jalen','Mayfield',21,77,0,'Offensive Lineman',25),
(1849,'Kaleb','McGary',26,76,2,'Offensive Lineman',25),
(1850,'Josh','Andrews',30,68,7,'Offensive Lineman',25),
(1851,'Colby','Gossett',26,66,3,'Offensive Lineman',25),
(1852,'Marlon','Davidson',23,90,1,'Defensive Lineman',25),
(1853,'Jonathan','Bullard',28,99,5,'Defensive Lineman',25),
(1854,'John','Cominsky',26,50,2,'Defensive Lineman',25),
(1855,'Steven','Means',31,55,8,'Defensive Lineman',25),
(1856,'Tyeler','Davison',29,96,6,'Defensive Lineman',25),
(1857,'Ta\'Quon','Graham',23,95,0,'Defensive Lineman',25),
(1858,'Grady','Jarrett',28,97,6,'Defensive Lineman',25),
(1859,'Mike','Pennel',30,98,7,'Defensive Lineman',25),
(1860,'Nick','Thurman',26,79,1,'Defensive Lineman',25),(1861,'Jacob','Tuioti-
Mariner',25,91,2,'Defensive Lineman',25),(1862,'Anthony','Rush',25,71,2,'Defensive 
Lineman',25),(1863,'Dante','Fowler',27,56,5,'Linebacker',25),
(1864,'Deion','Jones',27,45,5,'Linebacker',25),
(1865,'Adetokunbo','Ogundeji',23,92,0,'Linebacker',25),
(1866,'Avery','Williams',23,35,0,'Linebacker',25),
(1867,'Daren','Bates',31,53,8,'Linebacker',25),
(1868,'Brandon','Copeland',30,51,8,'Linebacker',25),
(1869,'Emmanuel','Ellerbee',25,52,3,'Linebacker',25),
(1870,'Dorian','Etheridge',23,48,0,'Linebacker',25),
(1871,'Foyesade','Oluokun',26,54,3,'Linebacker',25),
(1872,'Keith','Smith',29,40,7,'Linebacker',25),
(1873,'James','Vaughters',28,93,2,'Linebacker',25),
(1874,'Mykal','Walker',24,3,1,'Linebacker',25),
(1875,'Erik','Harris',31,23,5,'Linebacker',25),
(1876,'Luther','Kirk',25,33,0,'Linebacker',25),
(1877,'Darren','Hall',21,34,0,'Cornerback',25),
(1878,'Fabian','Moreau',27,22,4,'Cornerback',25),
(1879,'Isaiah','Oliver',25,26,3,'Cornerback',25),
(1880,'Kendall','Sheffield',25,20,2,'Cornerback',25),
(1881,'AJ','Terrell',23,24,1,'Cornerback',25),
(1882,'Chris','Williamson',24,29,0,'Cornerback',25),
(1883,'Richie','Grant',24,27,0,'Safety',25),
(1884,'Jaylinn','Hawkins',24,32,1,'Safety',25),
(1885,'Shawn','Williams',30,36,8,'Safety',25),
(1886,'T.J.','Green',26,39,5,'Safety',25),
(1887,'Duron','Harmon',30,21,8,'Safety',25),
(1888,'Younghoe','Koo',27,7,4,'Kicker',25),
(1889,'Dustin','Colquitt',39,12,16,'Punter',25),
(1890,'Thomas','Morstead',35,19,12,'Punter',25),
(1891,'Cameron','Nizialek',26,6,0,'Punter',25),(1892,'Josh','Harris',32,47,9,'Long 
Snapper',25),(1893,'Sam','Darnold',24,14,3,'Quarterback',26),
(1894,'Cam','Newton',32,1,10,'Quarterback',26),
(1895,'P.J.','Walker',26,6,3,'Quarterback',26),
(1896,'Ameer','Abdullah',28,20,6,'Runningback',26),
(1897,'Reggie','Bonnafon',25,39,2,'Runningback',26),
(1898,'Spencer','Brown',23,33,0,'Runningback',26),
(1899,'Royce','Freeman',25,32,3,'Runningback',26),
(1900,'Chuba','Hubbard',22,30,0,'Runningback',26),
(1901,'Christian','McCaffrey',25,22,4,'Runningback',26),
(1902,'Rodney','Smith',25,20,1,'Runningback',26),
(1903,'Robby','Anderson',28,11,5,'Wide Reciever',26),
(1904,'Dan','Arnold',26,85,3,'Wide Reciever',26),(1905,'Matt','Cole',25,83,1,'Wide 
Reciever',26),(1906,'Alex','Erickson',29,13,5,'Wide Reciever',26),
(1907,'Keith','Kirkwood',27,18,3,'Wide Reciever',26),(1908,'Terrace','Marshall 
Jr.',21,88,0,'Wide Reciever',26),(1909,'D.J.','Moore',24,2,3,'Wide Reciever',26),
(1910,'Aaron','Parker',23,19,0,'Wide Reciever',26),
(1911,'C.J.','Saunders',25,81,0,'Wide Reciever',26),
(1912,'Shi','Smith',23,12,0,'Wide Reciever',26),
(1913,'Willie','Snead',29,83,7,'Wide Reciever',26),
(1914,'Brandon','Zylstra',28,16,3,'Wide Reciever',26),
(1915,'Giovanni','Ricci',25,45,0,'Tight End',26),
(1916,'Stephen','Sullivan',25,84,1,'Tight End',26),
(1917,'Ian','Thomas',25,80,3,'Tight End',26),
(1918,'Colin','Thompson',28,86,1,'Tight End',26),
(1919,'Tommy','Tremble',21,82,0,'Tight End',26),
(1920,'Cameron','Erving',29,75,6,'Offensive Lineman',26),
(1921,'Taylor','Moton',27,72,4,'Offensive Lineman',26),
(1922,'John','Miller',28,67,6,'Offensive Lineman',26),
(1923,'Deonte','Brown',23,77,0,'Offensive Lineman',26),
(1924,'Dennis','Daley',25,65,2,'Offensive Lineman',26),
(1925,'Michael','Jordan',23,73,2,'Offensive Lineman',26),
(1926,'Mike','Horton',25,66,0,'Offensive Lineman',26),
(1927,'Patrick','Omameh',32,63,8,'Offensive Lineman',26),
(1928,'Pat','Elflein',27,60,4,'Offensive Lineman',26),
(1929,'J.J.','Jansen',35,44,12,'Offensive Lineman',26),
(1930,'Matt','Paradis',32,61,7,'Offensive Lineman',26),
(1931,'Sam','Tecklenburg',24,68,1,'Offensive Lineman',26),
(1932,'Derrick','Brown',23,95,1,'Defensive Lineman',26),
(1933,'Morgan','Fox',27,91,5,'Defensive Lineman',26),(1934,'Yetur','Gross-
Matos',23,97,1,'Defensive Lineman',26),(1935,'Frank','Herron',27,69,2,'Defensive 
Lineman',26),(1936,'Darryl','Johnson',24,92,2,'Defensive Lineman',26),
(1937,'Phil','Hoskins',24,71,0,'Defensive Lineman',26),
(1938,'DaQuan','Jones',30,90,7,'Defensive Lineman',26),
(1939,'Daviyon','Nixon',23,94,0,'Defensive Lineman',26),
(1940,'Bravvion','Roy',25,93,1,'Defensive Lineman',26),
(1941,'Brady','Christensen',25,70,0,'Defensive Lineman',26),
(1942,'Austen','Pleasants',24,74,0,'Defensive Lineman',26),
(1943,'Trenton','Scott',27,78,3,'Defensive Lineman',26),
(1944,'Brian','Burns',23,53,2,'Defensive Lineman',26),
(1945,'Sam','Franklin',25,42,1,'Linebacker',26),
(1946,'Marquis','Haynes',28,98,3,'Linebacker',26),
(1947,'Haason','Reddick',27,43,4,'Linebacker',26),
(1948,'Shaq','Thompson',27,54,6,'Linebacker',26),(1949,'Jermaine','Carter 
Jr.',26,4,3,'Linebacker',26),(1950,'Clay','Johnston',25,57,1,'Linebacker',26),
(1951,'Frankie','Luvu',25,49,3,'Linebacker',26),
(1952,'Kamal','Martin',23,47,1,'Linebacker',26),
(1953,'Julian','Stanford',31,50,9,'Linebacker',26),
(1954,'Madre','Harper',24,36,1,'Linebacker',26),
(1955,'Myles','Hartsfield',24,38,1,'Linebacker',26),
(1956,'A.J.','Bouye',30,24,8,'Cornerback',26),
(1957,'Juston','Burris',28,31,5,'Cornerback',26),
(1958,'Stephon','Gilmore',31,9,9,'Cornerback',26),
(1959,'C.J.','Henderson',23,15,1,'Cornerback',26),
(1960,'Jaycee','Horn',22,8,0,'Cornerback',26),
(1961,'Donte','Jackson',26,26,3,'Cornerback',26),
(1962,'Rashaan','Melvin',32,29,8,'Cornerback',26),
(1963,'Keith','Taylor',23,28,0,'Cornerback',26),(1964,'Stantley','Thomas-
Oliver',23,23,1,'Cornerback',26),(1965,'Jeremy','Chinn',23,21,1,'Safety',26),
(1966,'Kenny','Robinson Jr.',22,27,1,'Safety',26),
(1967,'Sean','Chandler',25,34,3,'Safety',26),
(1968,'Zane','Gonzalez',26,5,4,'Kicker',26),
(1969,'Lirim','Hajrullahu',31,3,0,'Kicker',26),
(1970,'Joseph','Charlton',24,3,1,'Punter',26),
(1971,'Lac','Edwards',29,10,5,'Punter',26),
(1972,'Ryan','Santoso',26,9,2,'Punter',26),
(1973,'Ryan','Winslow',27,10,2,'Punter',26),
(1974,'Ian','Book',24,16,0,'Quarterback',27),
(1975,'Andy','Dalton',34,14,12,'Quarterback',27),
(1976,'Jameis','Winston',28,2,8,'Quarterback',27),
(1977,'Josh','Adams',25,36,4,'Runningback',27),
(1978,'Mark','Ingram',32,14,12,'Runningback',27),
(1979,'Tony','Jones',24,21,1,'Runningback',27),
(1980,'Alvin','Kamara',26,41,6,'Runningback',27)
,(1981,'Dwayne','Washington',28,24,7,'Runningback',27),
(1982,'Adam','Prentice',25,46,0,'Fullback',27),(1983,'Kawaan','Baker',23,14,1,'Wide
Receiver',27),(1984,'Marquez','Callaway',24,1,2,'Wide Receiver',27),
(1985,'Deonte','Harris',24,11,3,'Wide Receiver',27),
(1986,'Lil\'Jordan','Humphrey',24,84,3,'Wide Receiver',27),
(1987,'Juwan','Johnson',25,83,3,'Wide Receiver',27),
(1988,'Jalen','McCleskey',24,17,1,'Wide Receiver',27),
(1989,'Kirk','Merritt',25,83,1,'Wide Receiver',27),
(1990,'Tre\'Quan','Smith',26,10,5,'Wide Receiver',27),
(1991,'Kenny','Stills',30,12,10,'Wide Receiver',27),
(1992,'Michael','Thomas',29,13,7,'Wide Receiver',27),
(1993,'Kevin','White',29,17,6,'Wide Receiver',27),
(1994,'Easop','Winston',25,18,1,'Wide Receiver',27),
(1995,'Taysom','Hill',31,7,5,'Tight End',27),(1996,'J.P.','Holtz',28,81,3,'Tight 
End',27),(1997,'Dylan','Soehner',24,89,2,'Tight End',27),
(1998,'Adam','Trautman',25,82,3,'Tight End',27),
(1999,'Nick','Vannett',29,81,7,'Tight End',27),(2000,'Ethan','Wolf',26,86,1,'Tight 
End',27),(2001,'Cohl','Cabral',24,63,1,'Offensive Lineman',27),
(2002,'Erik','McCoy',24,78,4,'Offensive Lineman',27),
(2003,'Cesar','Ruiz',22,51,3,'Offensive Lineman',27),
(2004,'Ethan','Greenidge',24,73,4,'Offensive Lineman',27),
(2005,'Jerald','Hawkins',28,65,6,'Offensive Lineman',27),
(2006,'James','Hurst',30,74,9,'Offensive Lineman',27),
(2007,'Jordan','Mills',31,79,9,'Offensive Lineman',27),
(2008,'Ryan','Ramczyk',28,71,6,'Offensive Lineman',27),
(2009,'Calvin','Throckmorton',25,76,1,'Offensive Lineman',27),
(2010,'Landon','Young',24,67,0,'Offensive Lineman',27),
(2011,'Caleb','Benenoch',27,65,6,'Offensive Lineman',27),
(2012,'James','Carpenter',33,77,12,'Offensive Lineman',27),
(2013,'Forrest','Lamp',28,66,5,'Offensive Lineman',27),
(2014,'Andrus','Peat',28,75,8,'Offensive Lineman',27),
(2015,'Taco','Charlton',27,98,6,'Defensive Lineman',27),
(2016,'Marcus','Davenport',25,92,5,'Defensive Lineman',27),
(2017,'Carl','Granderson',25,96,4,'Defensive Lineman',27),
(2018,'Cameron','Jordan',32,94,12,'Defensive Lineman',27),
(2019,'Kentavius','Ringo',30,70,5,'Defensive Lineman',27),
(2020,'Payton','Street',25,95,4,'Defensive Lineman',27),
(2021,'Payton','Turner',23,98,0,'Defensive Lineman',27),
(2022,'Jalen','Dalton',24,77,3,'Defensive Lineman',27),
(2023,'Braxton','Hoyett',26,0,1,'Defensive Lineman',27),
(2024,'Albert','Huggins',24,95,2,'Defensive Lineman',27),
(2025,'Jaleel','Johnson',27,93,6,'Defensive Lineman',27),
(2026,'David','Onyemata',29,93,6,'Defensive Lineman',27),
(2027,'Malcolm','Roach',23,97,3,'Defensive Lineman',27),
(2028,'Shy','Tuttle',26,99,3,'Defensive Lineman',27),
(2029,'Demario','Davis',33,56,11,'Linebacker',27),
(2030,'Zack','Baun',25,53,3,'Linebacker',27),
(2031,'Andrew','Dowell',25,50,2,'Linebacker',27),
(2032,'Kaden','Ellis',26,55,4,'Linebacker',27),
(2033,'Sharif','Finch',26,54,3,'Linebacker',27),
(2034,'Tanoh','Kpassagnon',27,90,6,'Linebacker',27),
(2035,'Pete','Werner',22,20,2,'Linebacker',27),
(2036,'Paulson','Adebo',22,29,0,'Cornerback',27),
(2037,'Ken','Crawley',29,25,7,'Cornerback',27),
(2038,'Marshon','Lattimore',25,23,6,'Cornerback',27),
(2039,'Bradley','Roby',30,21,9,'Cornerback',27),
(2040,'KeiVarae','Russell',28,34,4,'Cornerback',27),
(2041,'Bryce','Thompson',22,32,0,'Cornerback',27),
(2042,'P.J.','Williams',28,26,8,'Cornerback',27),
(2043,'J.T.','Gray',26,48,5,'Safety',27),
(2044,'Dylan','Mabin',25,37,3,'Safety',27),
(2045,'Jordan','Miller',25,36,3,'Safety',27),
(2046,'Daniel','Sorensen',32,49,9,'Safety',27),(2047,'Chauncey','Gardner-
Johnson',24,22,3,'Safety',27),(2048,'Marcus','Maye',29,0,6,'Safety',27),
(2049,'Justin','Evans',26,21,5,'Safety',27),(2050,'Wil','Lutz',27,3,7,'Kicker',27),
(2051,'Blake','Gillikin',24,4,3,'Punter',27),(2052,'Zach','Wood',29,49,6,'Long 
Snapper',27),(2053,'Tom','Brady',44,12,23,'Quarterback',28),
(2054,'Blaine','Gabbert',32,11,12,'Quarterback',28),
(2055,'Ryan','Griffin',32,4,8,'Quarterback',28),
(2056,'Kyle','Trask',24,2,0,'Quarterback',28),
(2057,'Kenjon','Barner',33,44,8,'Runningback',28),
(2058,'Giovani','Bernard',30,25,10,'Runningback',28),
(2059,'Leonard','Fournette',27,7,6,'Runningback',28),
(2060,'Ke\'Shawn','Vaughn',24,21,3,'Runningback',28),
(2061,'Jaelon','Darden',23,1,2,'Wide Receiver',28),
(2062,'Mike','Evans',28,13,9,'Wide Receiver',28),
(2063,'Russell','Gage',26,14,5,'Wide Receiver',28),
(2064,'Chris','Godwin',26,14,6,'Wide Receiver',28),
(2065,'Cyril','Grayson',28,15,2,'Wide Receiver',28),
(2066,'Tyler','Johnson',23,18,3,'Wide Receiver',28),
(2067,'Travis','Jonson',25,16,1,'Wide Receiver',28),
(2068,'Scott','Miller',24,10,4,'Wide Receiver',28),
(2069,'Breshad','Perriman',28,16,8,'Wide Receiver',28),
(2070,'Vyncint','Smith',25,17,4,'Wide Receiver',28),(2071,'Austin','Watkins 
Jr.',24,7,0,'Wide Receiver',28),(2072,'Cameron','Brate',30,84,8,'Tight End',28),
(2073,'Codey','McElroy',29,86,1,'Tight End',28),
(2074,'Ryan','Jensen',30,66,9,'Offensive Lineman',28),
(2075,'Robert','Hainsey',23,70,2,'Offensive Lineman',28),
(2076,'Jonathan','Hubbard',24,68,1,'Offensive Lineman',28),
(2077,'Fred','Johnson',24,74,4,'Offensive Lineman',28),
(2078,'Donovan','Smith',28,76,8,'Offensive Lineman',28),
(2079,'Brandon','Walton',24,73,1,'Offensive Lineman',28),
(2080,'Josh','Wells',31,72,8,'Offensive Lineman',28),
(2081,'Tristan','Wirfs',23,78,2,'Offensive Lineman',28),
(2082,'Nick','Leverett',25,60,2,'Offensive Lineman',28),
(2083,'Shaq','Mason',28,69,8,'Offensive Lineman',28),
(2084,'John','Molchon',25,75,3,'Offensive Lineman',28),
(2085,'Aaron','Stinnie',28,64,5,'Offensive Lineman',28),
(2086,'Pat','O\'Connor',28,79,4,'Defensive Lineman',28),
(2087,'Benning','Potoa\'e',25,91,1,'Defensive Lineman',28),
(2088,'William','Gholston',30,92,10,'Defensive Lineman',28),(2089,'Rakeem','Nunez-
Roches',28,56,8,'Defensive Lineman',28),
(2090,'Willington','Previlon',24,99,1,'Defensive Lineman',28),
(2091,'Deadrin','Senat',27,94,5,'Defensive Lineman',28),
(2092,'Kobe','Smith',23,71,1,'Defensive Lineman',28),
(2093,'Vita','Vea',27,50,5,'Defensive Lineman',28),
(2094,'Lavonte','David',32,54,11,'Linebacker',28),
(2095,'Shaquil','Barrett',29,58,9,'Linebacker',28),
(2096,'K.J.','Britt',22,52,0,'Linebacker',28),
(2097,'Cam','Gill',24,49,3,'Linebacker',28),
(2098,'Anthony','Nelson',25,98,3,'Linebacker',28),
(2099,'Elijah','Ponder',24,44,1,'Linebacker',28),
(2100,'Grant','Stuard',23,48,0,'Linebacker',28),
(2101,'Joe','Tryon',23,9,2,'Linebacker',28),
(2102,'Devin','White',24,45,4,'Linebacker',28),
(2103,'Carlton','Davis',25,24,5,'Cornerback',28),
(2104,'Pierre','Desir',31,29,9,'Cornerback',28),(2105,'Sean','Murphy-
Bunting',24,23,4,'Cornerback',28),
(2106,'Rashard','Robinson',26,28,6,'Cornerback',28),
(2107,'Logan','Ryan',31,23,10,'Cornerback',28),
(2108,'Ross','Cockrell',30,43,9,'Safety',28),
(2109,'Chris','Cooper',28,39,1,'Safety',28),
(2110,'Jamel','Dean',25,35,4,'Safety',28),
(2111,'Dee','Delaney',27,30,2,'Safety',28),
(2112,'Mike','Edwards',25,32,4,'Safety',28),
(2113,'Troy','Warner',23,38,1,'Safety',28),(2114,'Antoine','Winfield 
Jr.',23,31,3,'Safety',28),(2115,'Keanu','Neal',26,42,7,'Safety',28),
(2116,'Jose','Borregales',24,19,1,'Kicker',28),
(2117,'Ryan','Succop',35,3,14,'Kicker',28),
(2118,'Sterling','Hofrichter',25,19,2,'Punter',28),
(2119,'Bradley','Pinion',27,8,8,'Punter',28),(2120,'Zach','Triner',31,97,4,'Long 
Snapper',28),(2121,'Colt','McCoy',35,12,13,'Quarterback',29),
(2122,'Trace','McSorely',26,19,4,'Quarterback',29),
(2123,'Kyler','Murray',24,1,4,'Quarterback',29),
(2124,'Eno','Benjamin',23,26,3,'Runningback',29),
(2125,'James','Conner',26,6,6,'Runningback',29),
(2126,'Jaylen','Samuels',25,38,4,'Runningback',29),
(2127,'Jonathan','Ward',24,29,3,'Runningback',29),
(2128,'Andre','Baccellia',25,82,1,'Wide Receiver',29),
(2129,'Marquise','Brown',24,5,3,'Wide Receiver',29),
(2130,'Greg','Dortch',23,16,2,'Wide Receiver',29),
(2131,'A.J.','Green',33,18,12,'Wide Receiver',29),
(2132,'Andy','Isabella',25,17,4,'Wide Receiver',29),
(2133,'Rondale','Moore',21,4,0,'Wide Receiver',29),
(2134,'Antoine','Wesley',24,84,2,'Wide Receiver',29),
(2135,'Stephen','Anderson',29,82,5,'Tight End',29),
(2136,'Alex','Ellis',29,81,3,'Tight End',29),(2137,'Zach','Ertz',31,86,10,'Tight 
End',29),(2138,'Bernhard','Seikovits',24,43,1,'Tight End',29),
(2139,'David','Wells',27,41,3,'Tight End',29),
(2140,'Maxx','Williams',28,87,8,'Tight End',29),
(2141,'Deon','Yelder',27,85,4,'Tight End',29),
(2142,'Marcus','Henry',29,53,1,'Offensive Lineman',29),
(2143,'Rodney','Hudson',32,61,12,'Offensive Lineman',29),
(2144,'Kelvin','Beachum',32,68,11,'Offensive Lineman',29),
(2145,'D.J.','Humphries',28,74,8,'Offensive Lineman',29),
(2146,'Josh','Jones',24,79,3,'Offensive Lineman',29),
(2147,'Joshua','Miles',26,66,4,'Offensive Lineman',29),
(2148,'Justin','Murray',29,71,5,'Offensive Lineman',29),
(2149,'Eric','Smith',26,67,3,'Offensive Lineman',29),
(2150,'Sean','Harlow',27,64,3,'Offensive Lineman',29),
(2151,'Will','Hernandez',26,71,5,'Offensive Lineman',29),
(2152,'Danny','Isidora',27,63,4,'Offensive Lineman',29),
(2153,'Koda','Martin',26,60,2,'Offensive Lineman',29),
(2154,'Justin','Pugh',31,67,10,'Offensive Lineman',29),
(2155,'Zach','Allen',24,94,4,'Defensive Lineman',29),
(2156,'Matt','Dickerson',26,95,4,'Defensive Lineman',29),
(2157,'Markus','Golden',31,44,8,'Defensive Lineman',29),
(2158,'Jonathan','Ledbetter',24,94,2,'Defensive Lineman',29),
(2159,'J.J.','Watt',33,99,12,'Defensive Lineman',29),
(2160,'Leki','Fotu',23,95,2,'Defensive Lineman',29),
(2161,'Rashard','Lawrence',23,90,3,'Defensive Lineman',29),
(2162,'Devon','Kennard',30,42,9,'Linebacker',29),
(2163,'Nick','Vigil',28,59,7,'Linebacker',29),
(2164,'Ron\'Dell','Carter',24,75,2,'Linebacker',29),
(2165,'Zaven','Collins',22,25,2,'Linebacker',29),
(2166,'Victor','Dimukeje',22,52,2,'Linebacker',29),
(2167,'Dennis','Gardeck',27,45,5,'Linebacker',29),
(2168,'Isaiah','Simmons',23,9,2,'Linebacker',29),
(2169,'Zeke','Turner',25,47,5,'Linebacker',29),
(2170,'Tanner','Vallejo',27,51,6,'Linebacker',29),
(2171,'Breon','Border',26,21,4,'Cornerback',29),
(2172,'Jeff','Gladney',25,20,2,'Cornerback',29),
(2173,'Antonio','Hamilton',29,33,7,'Cornerback',29),
(2174,'Byron','Murphy',24,7,4,'Cornerback',29),(2175,'Jace','Whittak
er',26,39,1,'Cornerback',29),(2176,'Marco','Wilson',23,20,2,'Cornerback',29),
(2177,'Nate','Brooks',25,38,1,'Safety',29),
(2178,'Javon','Hagan',25,34,1,'Safety',29),
(2179,'Jalen','Thompson',23,34,4,'Safety',29),
(2180,'Charles','Washington',29,28,6,'Safety',29),
(2181,'Deionte','Thompson',25,22,4,'Safety',29),
(2182,'James','Wiggins',25,38,2,'Safety',29),
(2183,'Budda','Baker',26,3,6,'Safety',29),
(2184,'Matt','Prater',37,5,16,'Kicker',29),
(2185,'Nolan','Cooney',25,5,0,'Punter',29),
(2186,'Andy','Lee',39,14,19,'Punter',29),(2187,'Aaron','Brewer',31,46,11,'Long 
Snapper',29),(2188,'Bryce','Perkins',25,16,2,'Quarterback',30),
(2189,'Matthew','Stafford',34,9,14,'Quarterback',30),
(2190,'John','Wolford',26,13,2,'Quarterback',30),
(2191,'Cam','Akers',22,3,2,'Quarterback',30),
(2192,'Raymond','Calais',24,30,2,'Runningback',30),
(2193,'Jake','Funk',24,34,2,'Runningback',30),
(2194,'Javian','Hawkins',22,23,1,'Runningback',30),
(2195,'Darrell','Henderson',24,27,4,'Runningback',30),
(2196,'Xavier','Jones',24,25,2,'Runningback',30),
(2197,'Landen','Akers',24,84,1,'Wide Receiver',30),
(2198,'Tutu','Atwell',22,15,2,'Wide Receiver',30),
(2199,'Warren','Jackson',22,20,1,'Wide Receiver',30),
(2200,'Van','Jefferson',25,12,3,'Wide Receiver',30),
(2201,'J.J.','Koski',25,17,1,'Wide Receiver',30),
(2202,'Cooper','Kupp',28,10,6,'Wide Receiver',30),
(2203,'Brandon','Powell',26,19,5,'Wide Receiver',30),
(2204,'Allen','Robinson',28,12,9,'Wide Receiver',30),
(2205,'Ben','Skowronek',24,18,2,'Wide Receiver',30),
(2206,'Kendall','Blanton',26,86,2,'Tight End',30),
(2207,'Jacob','Harris',25,87,0,'Tight End',30),
(2208,'Tyler','Higbee',29,89,7,'Tight End',30),
(2209,'Brycen','Hopkins',25,88,2,'Tight End',30),
(2210,'Kyle','Markway',25,49,1,'Tight End',30),
(2211,'Brian','Allen',26,55,5,'Offensive Lineman',30),
(2212,'Chandler','Brewer',24,67,2,'Offensive Lineman',30),
(2213,'Adrian','Ealy',22,68,0,'Offensive Lineman',30),
(2214,'David','Edwards',25,73,4,'Offensive Lineman',30),
(2215,'Bobby','Evans',25,71,4,'Offensive Lineman',30),
(2216,'Rob','Havenstein',29,79,8,'Offensive Lineman',30),
(2217,'Alaric','Jackson',23,68,0,'Offensive Lineman',30),
(2218,'Joe','Noteboom',26,70,5,'Offensive Lineman',30),
(2219,'Max','Pircher',22,66,1,'Offensive Lineman',30),
(2220,'Tremayne','Anchrum',23,72,2,'Offensive Lineman',30),
(2221,'Jamil','Demby',25,64,3,'Offensive Lineman',30),
(2222,'Jeremiah','Kolone',27,61,1,'Offensive Lineman',30),(2223,'Earnest','Brown 
IV',23,90,1,'Defensive Lineman',30),(2224,'Aaron','Donald',30,99,9,'Defensive 
Lineman',30),(2225,'Jonah','Williams',26,92,1,'Defensive Lineman',30),
(2226,'Bobby','Brown III',21,95,2,'Defensive Lineman',30),
(2227,'Marquise','Copeland',24,93,2,'Defensive Lineman',30),
(2228,'Greg','Gaines',25,91,4,'Defensive Lineman',30),
(2229,'A\'Shawn','Robinson',27,94,7,'Defensive Lineman',30),
(2230,'Mike','Hoecht',24,96,1,'Defensive Lineman',30),
(2231,'Leonard','Floyd',29,54,7,'Linebacker',30),
(2232,'Bobby','Wagner',31,54,11,'Linebacker',30),
(2233,'Chris','Garrett',23,48,2,'Linebacker',30),(2234,'Anthony','Hines 
III',23,57,1,'Linebacker',30),(2235,'Justin','Hollins',26,58,4,'Linebacker',30),
(2236,'Travin','Howard',25,32,4,'Linebacker',30),
(2237,'Ernest','Jones',22,50,2,'Linebacker',30),
(2238,'Terrell','Lewis',23,52,3,'Linebacker',30),
(2239,'Christian','Rozeboom',25,56,1,'Linebacker',30),
(2240,'Tyler','Hall',23,33,2,'Cornerback',30),
(2241,'Troy','Hill',30,23,7,'Cornerback',30),
(2242,'Jalen','Ramsey',27,5,7,'Cornerback',30),
(2243,'Robert','Rochell',24,31,0,'Cornerback',30),
(2244,'Jake','Gervase',26,39,2,'Safety',30),
(2245,'Grant','Haley',26,46,3,'Safety',30),
(2246,'David','Long',24,22,4,'Safety',30),
(2247,'Terrell','Burgess',24,26,3,'Safety',30),
(2248,'Jordan','Fuller',24,4,2,'Safety',30),
(2249,'Taylor','Rapp',24,24,4,'Safety',30),
(2250,'Nick','Scott',26,33,4,'Safety',30),(2251,'Matt','Gay',28,8,4,'Kicker',30),
(2252,'Riley','Dixon',28,9,7,'Punter',30),(2253,'Matthew','Orzech',27,42,3,'Long 
Snapper',30),(2254,'Jimmy','Garoppolo',30,10,9,'Quarterback',31),
(2255,'Trey','Lance',21,5,2,'Quarterback',31),
(2256,'Nate','Sudfeld',28,7,6,'Quarterback',31),
(2257,'JaMycal','Hasty',25,23,2,'Runningback',31),
(2258,'Josh','Hokit',24,40,1,'Runningback',31),
(2259,'Elijah','Mitchell',24,25,2,'Runningback',31),
(2260,'Trey','Sermon',23,28,0,'Runningback',31),
(2261,'Jeff','Wilson',26,30,4,'Runningback',31),
(2262,'Kyle','Juszczyk',31,44,10,'Fullback',31),
(2263,'Brandon','Aiyuk',24,11,2,'Wide Receiver',31),
(2264,'Jauan','Jennings',24,15,1,'Wide Receiver',31),
(2265,'KeeSean','Johnson',25,19,3,'Wide Receiver',31),
(2266,'Marcus','Johnson',27,88,5,'Wide Receiver',31),
(2267,'Austin','Mack',24,81,2,'Wide Receiver',31),
(2268,'Jordan','Matthews',29,18,7,'Wide Receiver',31),(2269,'Ray-
Ray','McCloud',25,14,5,'Wide Receiver',31),(2270,'Deebo','Samuel',26,19,4,'Wide 
Receiver',31),(2271,'Malik','Turner',26,17,5,'Wide Receiver',31),
(2272,'Connor','Wedington',22,87,1,'Wide Receiver',31),
(2273,'Ross','Dwelley',27,82,5,'Tight End',31),
(2274,'Tanner','Hudson',27,84,3,'Tight End',31),
(2275,'George','Kittle',28,85,5,'Tight End',31),
(2276,'Charlie','Woerner',24,89,3,'Tight End',31),
(2277,'Jake','Brendel',29,64,4,'Offensive Lineman',31),
(2278,'Alex','Mack',36,50,14,'Offensive Lineman',31),
(2279,'Daniel','Brunskill',28,60,4,'Offensive Lineman',31),
(2280,'Alfredo','Gutierrez',26,77,1,'Offensive Lineman',31),
(2281,'Mike','McGlinchey',27,69,5,'Offensive Lineman',31),
(2282,'Colton','McKivitz',25,68,3,'Offensive Lineman',31),
(2283,'Jaylon','Moore',24,76,2,'Offensive Lineman',31),
(2284,'Justin','Skule',25,67,4,'Offensive Lineman',31),
(2285,'Trent','Williams',33,71,12,'Offensive Lineman',31),
(2286,'Aaron','Banks',24,65,2,'Offensive Lineman',31),
(2287,'Keaton','Sutherland',25,64,3,'Offensive Lineman',31),
(2288,'Arik','Armstead',28,91,8,'Defensive Lineman',31),
(2289,'Alex','Barrett',28,94,2,'Defensive Lineman',31),
(2290,'Nick','Bosa',24,97,4,'Defensive Lineman',31),
(2291,'Kerry','Hyder',31,51,7,'Defensive Lineman',31),
(2292,'Charles','Omenihu',24,92,4,'Defensive Lineman',31),
(2293,'Kemoko','Turay',26,57,5,'Defensive Lineman',31),
(2294,'Jordan','Willis',27,78,6,'Defensive Lineman',31),
(2295,'Kevin','Givens',25,90,2,'Defensive Lineman',31),
(2296,'Maurice','Hurst',26,96,5,'Defensive Lineman',31),
(2297,'Javon','Kinlaw',24,99,0,'Defensive Lineman',31),
(2298,'Hassan','Ridgeway',27,98,7,'Defensive Lineman',31),
(2299,'Chris','Slayton',25,79,1,'Defensive Lineman',31),
(2300,'Samson','Ebukam',26,56,6,'Linebacker',31),
(2301,'Dee','Ford',31,55,9,'Linebacker',31),
(2302,'Oren','Burks',27,42,5,'Linebacker',31),
(2303,'Fred','Warner',25,54,5,'Linebacker',31),(2304,'Azeez','Al-
Shaair',24,51,4,'Linebacker',31),(2305,'Dre','Greenlaw',24,57,4,'Linebacker',31),
(2306,'Curtis','Robinson',23,59,2,'Linebacker',31),
(2307,'Ka\'dar','Hollman',27,22,3,'Cornerback',31),
(2308,'Deommodore','Lenoir',22,38,0,'Cornerback',31),
(2309,'Ambry','Thomas',22,20,2,'Cornerback',31),
(2310,'Charvarius','Ward',25,35,5,'Cornerback',31),
(2311,'Jimmie','Ward',30,1,9,'Cornerback',31),
(2312,'Darqueze','Dennard',30,30,8,'Safety',31),(2313,'Demetrius','Flannigan-
Fowles',25,45,3,'Safety',31),(2314,'Dontae','Johnson',30,27,9,'Safety',31),
(2315,'Tarvarius','Moore',25,33,5,'Safety',31),
(2316,'Emmanuel','Moseley',26,4,5,'Safety',31),
(2317,'George','Odum',28,30,4,'Safety',31),
(2318,'Jason','Verrett',30,2,9,'Safety',31),
(2319,'Talanoa','Hufanga',23,29,2,'Safety',31),
(2320,'Robbie','Gould',39,9,18,'Kicker',31),
(2321,'Mitch','Wishnowsky',30,18,4,'Punter',31),
(2322,'Taybor','Pepper',27,46,5,'Long Snapper',31),
(2323,'Jacob','Eason',24,17,3,'Quarterback',32),
(2324,'Drew','Lock',25,2,4,'Quarterback',32),
(2325,'Geno','Smith',31,7,10,'Quarterback',32),
(2326,'Chris','Carson',27,32,5,'Runningback',32),
(2327,'DeeJay','Dallas',23,31,2,'Runningback',32),
(2328,'Travis','Homer',23,25,3,'Runningback',32),
(2329,'Josh','Johnson',24,34,1,'Runningback',32),
(2330,'Rashaad','Penny',26,20,5,'Runningback',32),
(2331,'Darwin','Thompson',25,34,3,'Runningback',32),
(2332,'Nick','Bellore',32,44,12,'Fullback',32),(2333,'Matt','Cole',25,85,1,'Wide 
Receiver',32),(2334,'D\'Wayne','Eskridge',25,1,2,'Wide Receiver',32),
(2335,'Aaron','Fuller',24,17,1,'Wide Receiver',32),
(2336,'Penny','Hart',25,19,3,'Wide Receiver',32),
(2337,'Cade','Johnson',24,88,1,'Wide Receiver',32),
(2338,'Tyler','Lockett',29,16,8,'Wide Receiver',32),
(2339,'DK','Metcalf',24,14,3,'Wide Receiver',32),
(2340,'Freddie','Swain',23,18,3,'Wide Receiver',32),
(2341,'Cody','Thompson',26,11,1,'Wide Receiver',32),
(2342,'John','Ursua',28,15,3,'Wide Receiver',32),(2343,'Noah','Fant',24,87,3,'Tight
End',32),(2344,'Tyler','Mabry',25,85,2,'Tight End',32),
(2345,'Colby','Parkinson',23,84,3,'Tight End',32),
(2346,'Austin','Blythe',29,66,7,'Offensive Lineman',32),
(2347,'Jake','Curhan',24,74,2,'Offensive Lineman',32),
(2348,'Greg','Eiland',24,75,1,'Offensive Lineman',32),
(2349,'Stone','Forsythe',24,78,0,'Offensive Lineman',32),
(2350,'Kyle','Fuller',28,61,4,'Offensive Lineman',32),
(2351,'Phil','Haynes',26,60,4,'Offensive Lineman',32),
(2352,'Gabe','Jackson',30,66,9,'Offensive Lineman',32),
(2353,'Damien','Lewis',25,68,3,'Offensive Lineman',32),
(2354,'Dakoda','Shepley',27,64,2,'Offensive Lineman',32),
(2355,'L.J.','Collier',26,91,4,'Defensive Lineman',32),
(2356,'Shelby','Harris',30,96,8,'Defensive Lineman',32),
(2357,'Quinton','Jefferson',29,77,7,'Defensive Lineman',32),
(2358,'Alton','Robinson',23,98,2,'Defensive Lineman',32),
(2359,'Darrell','Taylor',25,52,2,'Defensive Lineman',32),
(2360,'Alex','Tchangam',24,58,1,'Defensive Lineman',32),
(2361,'Myles','Adams',24,67,1,'Defensive Lineman',32),
(2362,'Poona','Ford',26,97,5,'Defensive Lineman',32),
(2363,'Jarrod','Hewitt',24,62,1,'Defensive Lineman',32),
(2364,'Marcus','Webb',24,48,2,'Defensive Lineman',32),
(2365,'Bryan','Mone',26,90,3,'Defensive Lineman',32),
(2366,'Niles','Scott',26,78,3,'Defensive Lineman',32),
(2367,'Cody','Barton',25,57,4,'Linebacker',32),
(2368,'Jordyn','Brooks',24,56,2,'Linebacker',32),(2369,'Ben','Burr-
Kirven',24,55,3,'Linebacker',32),(2370,'Aaron','Donkor',27,43,0,'Linebacker',32),
(2371,'Joel','Iyiegbuniwe
',26,45,5,'Linebacker',32),(2372,'Tanner','Muse',25,58,3,'Linebacker',32),
(2373,'Uchenna','Nwosu',25,42,5,'Linebacker',32),
(2374,'Jon','Rhattigan',23,59,0,'Linebacker',32),
(2375,'Lakiem','Williams',24,48,1,'Linebacker',32),
(2376,'Ugo','Amadi',24,28,4,'Cornerback',32),
(2377,'Tre','Brown',24,22,0,'Cornerback',32),
(2378,'Artie','Burns',27,25,7,'Cornerback',32),
(2379,'Justin','Coleman',29,27,8,'Cornerback',32),
(2380,'Mike','Jackson',25,30,2,'Cornerback',32),
(2381,'Sidney','Jones',25,23,5,'Cornerback',32),
(2382,'John','Reid',25,29,2,'Cornerback',32),
(2383,'Marquise','Blair',24,27,3,'Safety',32),
(2384,'Gavin','Heslop',24,38,1,'Safety',32),
(2385,'Ryan','Neal',26,26,3,'Safety',32),
(2386,'Jamal','Adams',26,33,5,'Safety',32),
(2387,'Quandre','Diggs',29,6,8,'Safety',32),
(2388,'Jason','Myers',30,5,8,'Kicker',32),
(2389,'Michael','Dickson',26,4,5,'Punter',32),(2390,'Tyler','Ott',30,69,8,'Long 
Snapper',32);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `stadium`
--
DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stadium` (
  `stadium_id` int NOT NULL,
  `stadium_name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `stadium_capacity` varchar(45) NOT NULL,
  PRIMARY KEY (`stadium_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `stadium`
--
LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES (0,'','','','',''),(1,'State Farm Stadium','1 
Cardinals Dr','Glendale','Arizona','63,400'),(2,'Mercedes-Benz Stadium','1 AMB Dr 
NW','Atlanta','Georgia','71,000'),(3,'M&T Bank Stadium','1101 Russell 
St','Baltimore,','Maryland','71,008'),(4,'Bills Stadium','1 Bills Dr','Orchard 
Park','New York','71,608'),(5,'Bank of America Stadium','800 S Mint 
St','Charlotte','North Carolina','75,523'),(6,'Soldier Field','1410 S. Museum 
Campus Drive','Chicago','Illinois','61,500'),(7,'Paul Brown Stadium','1 Paul Brown 
Stadium','Cincinnati','Ohio','65,515'),(8,'First Energy Stadium','100 Alfred Lerner
Way','Cleveland','Ohio','67,895'),(9,'AT&T Stadium','One AT&T 
Way','Arlington','Texas','80,000'),(10,'Empower Field at Mile High','1701 Bryant 
St','Denver','Colorado','76,125'),(11,'Ford Field','2000 Brush 
St','Detroit','Michigan','65,000'),(12,'Lambeau Field','1265 Lombardi Ave','Green 
Bay','Wisconsin','81,441'),(13,'NRG Stadium','NRG 
Pkwy','Houston','Texas','72,220'),(14,'Lucas Oil Stadium','500 S Capitol 
Ave','Indianapolis','Indiana','67,000'),(15,'TIAA Bank Field','1 TIAA Bank Field 
Dr','Jacksonville','Florida','69,132'),(16,'Arrowhead Stadium','1 Arrowhead 
Dr','Kansas City','Missouri','76,416'),(17,'Allegiant Stadium','3333 Al Davis 
Way','Paradise','Nevada','65,000'),(18,'SoFi Stadium','1001 Stadium 
Dr','Inglewood','California','70,240'),(19,'Hard Rock Stadium','347 Don Shula 
Dr','Miami Gardens','Florida','65,326'),(20,'U.S. Bank Stadium','401 Chicago 
Ave','Minneapolis','Minnesota','66,655'),(21,'Gillette Stadium','1 Patriot 
Pl','Foxborough','Massachusetts','66,829'),(22,'Mercedes-Benz Superdome','1500 
Sugar Bowl Dr','New Orleans','Louisiana','73,208'),(23,'MetLife Stadium','1 MetLife
Stadium Dr','East Rutherford','New Jersey','82,500'),(24,'Lincoln Financial 
Field','One Lincoln Financial Field Way','Philadelphia','Pennsylvania','69,596'),
(25,'Heinz Field','100 Art Rooney Ave','Pittsburgh','Pennsylvania','68,400'),
(26,'Levi\'s Stadium','4900 Marie P DeBartolo Way','Santa 
Clara','California','68,500'),(27,'CenturyLink Field','800 Occidental Ave 
S','Seattle','Washington','69,000'),(28,'Raymond James Stadium','4201 N Dale Mabry 
Hwy','Tampa','Florida','65,890'),(29,'Nissan Stadium','1 Titans 
Way','Nashville','Tennessee','69,143'),(30,'FedExField','1600 Fedex Way','North 
Englewood','Maryland','82,000');
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `stadium_limits`
--
DROP TABLE IF EXISTS `stadium_limits`;
/*!50001 DROP VIEW IF EXISTS `stadium_limits`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `stadium_limits` AS SELECT 
 1 AS `stadium_name`,
 1 AS `address`,
 1 AS `stadium_capacity`,
 1 AS `team_name`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `super_bowl`
--
DROP TABLE IF EXISTS `super_bowl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `super_bowl` (
  `super_bowl_id` int NOT NULL,
  `year` varchar(5) NOT NULL,
  `score` varchar(45) NOT NULL,
  `mvp` varchar(45) NOT NULL,
  `winner` varchar(45) NOT NULL,
  PRIMARY KEY (`super_bowl_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `super_bowl`
--
LOCK TABLES `super_bowl` WRITE;
/*!40000 ALTER TABLE `super_bowl` DISABLE KEYS */;
INSERT INTO `super_bowl` VALUES (1,'1967','(35 - 10)','Bart Starr','Green Bay 
Packers'),(2,'1968','(33 - 14)','Bart Starr','Green Bay Packers'),(3,'1969','(16 - 
7)','Joe Namath','New York Jets'),(4,'1970','(23 - 7)','Len Dawson','Kansas City 
Chiefs'),(5,'1971','(16 - 13)','Chuck Howley','Indianapolis Colts'),(6,'1972','(24 
- 3)','Roger Staubach','Dallas Cowboys'),(7,'1973','(14 - 7)','Jake Scott','Miami 
Dolphins'),(8,'1974','(24 - 7)','Larry Csonka','Miami Dolphins'),(9,'1975','(16 - 
6)','Franco Harris','Pittsburgh Steelers'),(10,'1976','(21 - 17)','Lynn 
Swann','Pittsburgh Steelers'),(11,'1977','(32 - 14)','Fred Biletnikoff','Las Vegas 
Raiders'),(12,'1978','(27 - 10)','Harvey Martin & Randy White','Dallas Cowboys'),
(13,'1979','(35 - 31)','Terry Bradshaw','Pittsburgh Steelers'),(14,'1980','(31 - 
19)','Terry Bradshaw','Pittsburgh Steelers'),(15,'1981','(27 - 10)','Jim 
Plunkett','Las Vegas Raiders'),(16,'1982','(26 - 21)','Joe Montana','San Francisco 
49ers'),(17,'1983','(27 - 17)','John Riggins','Washington Football Team'),
(18,'1984','(38 - 9)','Marcus Allen','Las Vegas Raiders'),(19,'1985','(38 - 
16)','Joe Montana','San Francisco 49ers'),(20,'1986','(46 - 10)','Richard 
Dent','Chicago Bears'),(21,'1987','(39 - 20)','Phil Simms','New York Giants'),
(22,'1988','(42 - 10)','Doug Williams','Washington Football Team'),(23,'1989','(20 
- 16)','Jerry Rice','San Francisco 49ers'),(24,'1990','(55 - 10)','Joe 
Montana','San Francisco 49ers'),(25,'1991','(20 - 19)','Ottis Anderson','New York 
Giants'),(26,'1992','(37 - 24)','Mark Rypien','Washington Football Team'),
(27,'1993','(52 - 17)','Troy Aikman','Dallas Cowboys'),(28,'1994','(30 - 
13)','Emmitt Smith','Dallas Cowboys'),(29,'1995','(49 - 26)','Steve Young','San 
Francisco 49ers'),(30,'1996','(27 - 17)','Larry Brown','Dallas Cowboys'),
(31,'1997','(35 - 21)','Desmond Howard','Green Bay Packers'),(32,'1998','(31 - 
24)','Terrell Davis','Denver Broncos'),(33,'1999','(34 - 19)','John Elway','Denver 
Broncos'),(34,'2000','(23 - 16)','Kurt Warner','Los Angeles Rams'),(35,'2001','(34 
- 7)','Ray Lewis','Baltimore Ravens'),(36,'2002','(20 - 17)','Tom Brady','New 
England Patriots'),(37,'2003','(48 - 21)','Dexter Jackson','Tampa Bay Buccaneers'),
(38,'2004','(32 - 29)','Tom Brady','New England Patriots'),(39,'2005','(24 - 
21)','Deion Branch','New England Patriots'),(40,'2006','(21 - 10)','Hines 
Ward','Pittsburgh Steelers'),(41,'2007','(29 - 17)','Peyton Manning','Indiannapolis
Colts'),(42,'2008','(17 - 14)','Eli Manning','New York Giants'),(43,'2009','(27 - 
23)','Santonio Holmes','Pittsburgh Steelers'),(44,'2010','(31 - 17)','Drew 
Brees','New Orleans Saints'),(45,'2011','(31 - 25)','Aaron Rodgers','Green Bay 
Packers'),(46,'2012','(21 - 17)','Eli Manning','New York Giants'),(47,'2013','(34 -
31)','Joe Flacco','Baltimore Ravens'),(48,'2014','(43 - 8)','Malcolm 
Smith','Seattle Seahawks'),(49,'2015','(28 - 24)','Tom Brady','New England 
Patriots'),(50,'2016','(24 - 10)','Von Miller','Denver Broncos'),(51,'2017','(34 - 
28)','Tom Brady','New England Patriots'),(52,'2018','(41 - 33)','Nick 
Foles','Philadelphia Eagles'),(53,'2019','(13 - 3)','Julian Edelman','New England 
Patriots'),(54,'2020','(31 - 20)','Patrick Mahomes','Kansas City Chiefs'),
(55,'2021','(31 - 9)','Tom Brady','Tampa Bay Buccaneers'),(56,'2022','(23 - 
20)','Cooper Kupp','Los Angeles Rams');
/*!40000 ALTER TABLE `super_bowl` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `super_bowl_count`
--
DROP TABLE IF EXISTS `super_bowl_count`;
/*!50001 DROP VIEW IF EXISTS `super_bowl_count`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `super_bowl_count` AS SELECT 
 1 AS `team_name`,
 1 AS `times`*/;
SET character_set_client = @saved_cs_client;
--
-- Table structure for table `teams`
--
DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `teams_id` int NOT NULL,
  `team_name` varchar(45) NOT NULL,
  `found_year` varchar(45) NOT NULL,
  `wins` int NOT NULL,
  `losses` int NOT NULL,
  `win_percentage` varchar(20) NOT NULL,
  `owner` varchar(45) NOT NULL,
  `coaches_id` int NOT NULL,
  `stadium_id` int NOT NULL,
  `games_played` int NOT NULL,
  `ties` int NOT NULL,
  PRIMARY KEY (`teams_id`),
  KEY `fk_teams_coaches1_idx` (`coaches_id`),
  KEY `fk_teams_stadium1_idx` (`stadium_id`),
  CONSTRAINT `fk_teams_coaches1` FOREIGN KEY (`coaches_id`) REFERENCES `coaches` 
(`coaches_id`),
  CONSTRAINT `fk_teams_stadium1` FOREIGN KEY (`stadium_id`) REFERENCES `stadium` 
(`stadium_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `teams`
--
LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Buffalo Bills','1960',449,492,'0.477','Kim 
Pegula',4,4,949,8),(2,'Miami Dolphins','1966',476,384,'0.553','Stephen M. 
Ross',20,19,863,3),(3,'New England Patriots','1960',529,411,'0.563','Robert Kenneth
Kraft',22,21,949,9),(4,'New York Jets','1960',414,527,'0.44','Woody 
Johnson',25,23,949,8),(5,'Baltimore Ravens','1996',233,183,'0.56','Steve 
Bisciotti',3,3,417,1),(6,'Cincinnati Bengals','1967',373,459,'0.449','Mike 
Brown',7,7,837,5),(7,'Cleveland Browns','1946',541,518,'0.511','Jimmy 
Haslam',8,8,1073,14),(8,'Pittsburgh Steelers','1933',652,563,'0.537','Art 
Rooney',27,25,1237,22),(9,'Houston Texans','1999',139,182,'0.433','Janice 
McNair',13,13,321,0),(10,'Indianapolis Colts','1953',543,481,'0.53','Jim 
Irsay',14,14,1031,7),(11,'Jacksonville Jaguars','1993',180,253,'0.416','Shahid 
Khan',15,15,433,0),(12,'Tennessee Titans','1959',463,480,'0.491','Amy Adams 
Strunk',31,29,949,6),(13,'Denver Broncos','1960',495,444,'0.527','Pat 
Bowlen',10,10,949,10),(14,'Kansas City Chiefs','1960',507,430,'0.541','Clark 
Hunt',16,16,949,12),(15,'Las Vegas Raiders','1960',491,447,'0.523','Mark 
Davis',17,17,949,11),(16,'Los Angeles Chargers','1960',468,470,'0.499','Dean 
Spanos',18,18,949,11),(17,'Dallas Cowboys','1960',538,403,'0.572','Jerry 
Jones',9,9,947,6),(18,'New York Giants','1925',706,631,'0.528','John 
Mara',24,23,1370,33),(19,'Philadelphia Eagles','1933',599,627,'0.489','Jeffrey 
Lurie',26,24,1253,27),(20,'Washington Football Team','1932',617,622,'0.498','Daniel
Snyder',32,30,1267,28),(21,'Chicago Bears','1920',783,610,'0.562','Virginia Halas 
McCaskey',6,6,1435,42),(22,'Detroit Lions','1929',570,694,'0.451','Sheila Ford 
Hamp',11,11,1298,34),(23,'Green Bay Packers','1919',782,581,'0.573','Green Bay 
Packers, Inc.',12,12,1401,38),(24,'Minnesota Vikings','1960',503,421,'0.544','Zygi 
Wilf',21,20,935,11),(25,'Atlanta Falcons','1965',376,483,'0.438','Arthur 
Blank',2,2,865,6),(26,'Carolina Panthers','1993',205,227,'0.475','David 
Tepper',5,5,433,1),(27,'New Orleans Saints','1967',396,450,'0.468','Gayle 
Benson',23,22,851,5),(28,'Tampa Bay Buccaneers','1976',291,433,'0.402','Edward 
Glazer',30,28,725,1),(29,'Arizona Cardinals','1898',577,777,'0.426','Michael 
Bidwill',1,1,1395,41),(30,'Los Angeles Rams','1936',599,580,'0.508','Stan 
Kroenke',19,18,1200,21),(31,'San Francisco 49ers','1946',599,506,'0.542','Marie 
Denise DeBartolo',28,26,1121,16),(32,'Seattle 
Seahawks','1974',374,350,'0.517','Jody Allen',29,27,725,1);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Table structure for table `teams_has_super_bowl`
--
DROP TABLE IF EXISTS `teams_has_super_bowl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams_has_super_bowl` (
  `teams_id` int NOT NULL,
  `super_bowl_id` int NOT NULL,
  KEY `fk_teams_has_super_bowl_super_bowl1_idx` (`super_bowl_id`),
  KEY `fk_teams_has_super_bowl_teams1_idx` (`teams_id`),
  CONSTRAINT `fk_teams_has_super_bowl_super_bowl1` FOREIGN KEY (`super_bowl_id`) 
REFERENCES `super_bowl` (`super_bowl_id`),
  CONSTRAINT `fk_teams_has_super_bowl_teams1` FOREIGN KEY (`teams_id`) REFERENCES 
`teams` (`teams_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `teams_has_super_bowl`
--
LOCK TABLES `teams_has_super_bowl` WRITE;
/*!40000 ALTER TABLE `teams_has_super_bowl` DISABLE KEYS */;
INSERT INTO `teams_has_super_bowl` VALUES (23,1),(14,1),(23,2),(15,2),(4,3),(10,3),
(14,4),(24,4),(10,5),(17,5),(17,6),(2,6),(2,7),(20,7),(2,8),(24,8),(8,9),(24,9),
(8,10),(17,10),(15,11),(24,11),(17,12),(13,12),(8,13),(17,13),(8,14),(30,14),
(15,15),(19,15),(31,16),(6,16),(20,17),(2,17),(15,18),(20,18),(31,19),(2,19),
(21,20),(3,20),(18,21),(13,21),(20,22),(13,22),(31,23),(6,23),(31,24),(13,24),
(18,25),(1,25),(20,26),(1,26),(17,27),(1,27),(17,28),(1,28),(31,29),(16,29),
(17,30),(8,30),(23,31),(3,31),(13,32),(23,32),(13,33),(25,33),(30,34),(12,34),
(5,35),(18,35),(3,36),(30,36),(28,37),(15,37),(3,38),(26,38),(3,39),(19,39),(8,40),
(32,40),(10,41),(21,41),(18,42),(3,42),(8,43),(29,43),(27,44),(10,44),(23,45),
(8,45),(18,46),(3,46),(5,47),(31,47),(32,48),(13,48),(3,49),(32,49),(13,50),
(26,50),(3,51),(25,51),(19,52),(3,52),(3,53),(30,53),(14,54),(31,54),(28,55),
(14,55),(30,56),(6,56);
/*!40000 ALTER TABLE `teams_has_super_bowl` ENABLE KEYS */;
UNLOCK TABLES;
--
-- Temporary view structure for view `teams_point`
--
DROP TABLE IF EXISTS `teams_point`;
/*!50001 DROP VIEW IF EXISTS `teams_point`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teams_point` AS SELECT 
 1 AS `team_name`,
 1 AS `point_differential`,
 1 AS `playoff_appearance`*/;
SET character_set_client = @saved_cs_client;
--
-- Final view structure for view `coaches_more_wins`
--
/*!50001 DROP VIEW IF EXISTS `coaches_more_wins`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `coaches_more_wins` AS select concat(`coaches`.`coaches_fname`,' 
',`coaches`.`coaches_lname`) AS `name`,concat((`coaches`.`wins` / 
`coaches`.`losses`)) AS `percentage`,`teams`.`team_name` AS `team_name` from 
(`coaches` join `teams` on((`coaches`.`coaches_id` = `teams`.`coaches_id`))) where 
((`coaches`.`wins` / `coaches`.`losses`) >= '1') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
--
-- Final view structure for view `fantasy_greater_avg_touchdown`
--
/*!50001 DROP VIEW IF EXISTS `fantasy_greater_avg_touchdown`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `fantasy_greater_avg_touchdown` AS select 
concat(`players`.`players_fname`,' ',`players`.`players_lname`) AS 
`player_name`,`teams`.`team_name` AS `team_name`,`fantasy`.`touchdowns` AS 
`touchdowns` from ((`fantasy` join `players` on((`fantasy`.`players_id` = 
`players`.`players_id`))) join `teams` on((`players`.`teams_id` = 
`teams`.`teams_id`))) where (`fantasy`.`touchdowns` > (select 
avg(`fantasy`.`touchdowns`) from `fantasy` where (`fantasy`.`touchdowns` > 0))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
--
-- Final view structure for view `stadium_limits`
--
/*!50001 DROP VIEW IF EXISTS `stadium_limits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `stadium_limits` AS select `stadium`.`stadium_name` AS 
`stadium_name`,concat(`stadium`.`address`,', ',`stadium`.`city`,', 
',`stadium`.`state`) AS `address`,`stadium`.`stadium_capacity` AS 
`stadium_capacity`,`teams`.`team_name` AS `team_name` from (`stadium` join `teams` 
on((`stadium`.`stadium_id` = `teams`.`stadium_id`))) where 
(`stadium`.`stadium_capacity` > '70,000') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
--
-- Final view structure for view `super_bowl_count`
--
/*!50001 DROP VIEW IF EXISTS `super_bowl_count`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `super_bowl_count` AS select `teams`.`team_name` AS 
`team_name`,count(`teams_has_super_bowl`.`super_bowl_id`) AS `times` from 
((`teams_has_super_bowl` join `teams` on((`teams_has_super_bowl`.`teams_id` = 
`teams`.`teams_id`))) join `super_bowl` on((`teams_has_super_bowl`.`super_bowl_id` 
= `super_bowl`.`super_bowl_id`))) group by `teams`.`team_name` order by 
`teams`.`team_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
--
-- Final view structure for view `teams_point`
--
/*!50001 DROP VIEW IF EXISTS `teams_point`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teams_point` AS select `teams`.`team_name` AS 
`team_name`,`2021_season`.`point_differential` AS 
`point_differential`,`2021_season`.`playoff_appearance` AS `playoff_appearance` 
from (`2021_season` join `teams` on((`2021_season`.`teams_id` = 
`teams`.`teams_id`))) */;
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
-- Dump completed on 2022-05-10 16:19:23