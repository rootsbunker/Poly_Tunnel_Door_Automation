-- MySQL dump 10.18  Distrib 10.3.27-MariaDB, for debian-linux-gnueabihf (armv8l)
--
-- Host: localhost    Database: poly
-- ------------------------------------------------------
-- Server version	10.3.27-MariaDB-0+deb10u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `string_vars`
--

DROP TABLE IF EXISTS `string_vars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `string_vars` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `value` varchar(64) NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `string_vars`
--

LOCK TABLES `string_vars` WRITE;
/*!40000 ALTER TABLE `string_vars` DISABLE KEYS */;
INSERT INTO `string_vars` VALUES (2,'east_door','open','2021-03-28 13:14:36'),(3,'west_door','open','2021-03-27 17:53:45'),(4,'east_door_status','opened','0000-00-00 00:00:00'),(5,'west_door_status','opened','0000-00-00 00:00:00'),(6,'max_temp_east','20','0000-00-00 00:00:00'),(7,'max_temp_west','20','0000-00-00 00:00:00'),(8,'min_temp_west','18','0000-00-00 00:00:00'),(9,'min_temp_east','18','0000-00-00 00:00:00'),(10,'logging','on','0000-00-00 00:00:00'),(11,'max_temp_override','35','2021-03-30 11:14:13'),(12,'east_man_override','off','2021-03-31 09:56:01'),(13,'west_man_override','off','2021-03-31 09:56:09'),(14,'average_temp','18.6','2021-04-19 15:59:46');
/*!40000 ALTER TABLE `string_vars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_readings`
--

DROP TABLE IF EXISTS `temp_readings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp_readings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temp` float NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15004 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_readings`
--

LOCK TABLES `temp_readings` WRITE;
/*!40000 ALTER TABLE `temp_readings` DISABLE KEYS */;
INSERT INTO `temp_readings` VALUES (14717,21.8,'2021-04-18 16:06:16'),(14718,20.9,'2021-04-18 16:11:17'),(14719,19.7,'2021-04-18 16:16:18'),(14720,18.8,'2021-04-18 16:21:20'),(14721,18.1,'2021-04-18 16:26:21'),(14722,17.7,'2021-04-18 16:31:23'),(14723,16.9,'2021-04-18 16:36:24'),(14724,16.6,'2021-04-18 16:41:26'),(14725,16.4,'2021-04-18 16:46:27'),(14726,16.2,'2021-04-18 16:51:28'),(14727,15.8,'2021-04-18 16:56:29'),(14728,15.5,'2021-04-18 17:01:31'),(14729,15.4,'2021-04-18 17:06:35'),(14730,14.9,'2021-04-18 17:11:36'),(14731,14.5,'2021-04-18 17:16:37'),(14732,14.2,'2021-04-18 17:21:39'),(14733,14,'2021-04-18 17:26:40'),(14734,13.7,'2021-04-18 17:31:41'),(14735,13.2,'2021-04-18 17:36:42'),(14736,13.1,'2021-04-18 17:41:44'),(14737,13.1,'2021-04-18 17:51:06'),(14738,12.8,'2021-04-18 17:56:07'),(14739,12.6,'2021-04-18 18:01:09'),(14740,12.3,'2021-04-18 18:06:10'),(14741,12.2,'2021-04-18 18:11:11'),(14742,12.1,'2021-04-18 18:16:12'),(14743,11.8,'2021-04-18 18:21:14'),(14744,11.5,'2021-04-18 18:26:15'),(14745,11.1,'2021-04-18 18:31:16'),(14746,10.8,'2021-04-18 18:36:18'),(14747,10.6,'2021-04-18 18:41:19'),(14748,10.2,'2021-04-18 18:46:20'),(14749,9.9,'2021-04-18 18:51:22'),(14750,9.6,'2021-04-18 18:56:23'),(14751,9.2,'2021-04-18 19:01:24'),(14752,8.9,'2021-04-18 19:06:26'),(14753,8.5,'2021-04-18 19:11:27'),(14754,8.2,'2021-04-18 19:16:28'),(14755,7.7,'2021-04-18 19:21:29'),(14756,7.5,'2021-04-18 19:26:30'),(14757,7.3,'2021-04-18 19:31:32'),(14758,7.1,'2021-04-18 19:36:33'),(14759,6.7,'2021-04-18 19:41:34'),(14760,6.4,'2021-04-18 19:46:36'),(14761,6.2,'2021-04-18 19:51:37'),(14762,6.1,'2021-04-18 19:56:39'),(14763,5.9,'2021-04-18 20:01:40'),(14764,5.8,'2021-04-18 20:06:41'),(14765,5.5,'2021-04-18 20:11:42'),(14766,5.2,'2021-04-18 20:16:43'),(14767,5.2,'2021-04-18 20:21:45'),(14768,5.1,'2021-04-18 20:26:46'),(14769,4.9,'2021-04-18 20:31:47'),(14770,4.7,'2021-04-18 20:36:49'),(14771,4.6,'2021-04-18 20:41:50'),(14772,4.4,'2021-04-18 20:46:52'),(14773,4.2,'2021-04-18 20:51:53'),(14774,4.2,'2021-04-18 20:56:54'),(14775,4.1,'2021-04-18 21:01:55'),(14776,4,'2021-04-18 21:06:57'),(14777,3.9,'2021-04-18 21:11:58'),(14778,3.6,'2021-04-18 21:16:59'),(14779,3.5,'2021-04-18 21:22:00'),(14780,3.4,'2021-04-18 21:27:02'),(14781,3.2,'2021-04-18 21:32:03'),(14782,3.1,'2021-04-18 21:37:05'),(14783,3.1,'2021-04-18 21:42:06'),(14784,2.8,'2021-04-18 21:47:07'),(14785,2.7,'2021-04-18 21:52:08'),(14786,2.6,'2021-04-18 21:57:09'),(14787,2.6,'2021-04-18 22:02:11'),(14788,2.6,'2021-04-18 22:07:12'),(14789,2.6,'2021-04-18 22:12:14'),(14790,2.4,'2021-04-18 22:17:15'),(14791,2.2,'2021-04-18 22:22:16'),(14792,2.1,'2021-04-18 22:27:18'),(14793,1.9,'2021-04-18 22:32:19'),(14794,1.9,'2021-04-18 22:37:20'),(14795,2,'2021-04-18 22:42:22'),(14796,1.8,'2021-04-18 22:47:23'),(14797,1.6,'2021-04-18 22:52:24'),(14798,1.8,'2021-04-18 22:57:26'),(14799,1.6,'2021-04-18 23:02:27'),(14800,1.8,'2021-04-18 23:07:28'),(14801,1.7,'2021-04-18 23:12:29'),(14802,1.7,'2021-04-18 23:17:31'),(14803,1.5,'2021-04-18 23:22:32'),(14804,1.2,'2021-04-18 23:27:33'),(14805,1.4,'2021-04-18 23:32:35'),(14806,1.2,'2021-04-18 23:37:36'),(14807,1.1,'2021-04-18 23:42:37'),(14808,1,'2021-04-18 23:47:38'),(14809,0.9,'2021-04-18 23:52:39'),(14810,0.9,'2021-04-18 23:57:41'),(14811,0.9,'2021-04-19 00:02:42'),(14812,0.8,'2021-04-19 00:07:43'),(14813,0.8,'2021-04-19 00:12:45'),(14814,0.7,'2021-04-19 00:17:46'),(14815,0.6,'2021-04-19 00:22:47'),(14816,0.8,'2021-04-19 00:27:48'),(14817,0.6,'2021-04-19 00:32:50'),(14818,0.5,'2021-04-19 00:37:51'),(14819,0.5,'2021-04-19 00:42:52'),(14820,0.6,'2021-04-19 00:47:53'),(14821,0.6,'2021-04-19 00:52:55'),(14822,0.3,'2021-04-19 00:57:56'),(14823,0.4,'2021-04-19 01:02:57'),(14824,0.4,'2021-04-19 01:07:59'),(14825,0.6,'2021-04-19 01:13:00'),(14826,0.4,'2021-04-19 01:18:01'),(14827,0.2,'2021-04-19 01:23:03'),(14828,0.2,'2021-04-19 01:28:04'),(14829,0.1,'2021-04-19 01:33:05'),(14830,0.1,'2021-04-19 01:38:07'),(14831,0.1,'2021-04-19 01:43:08'),(14832,-0.1,'2021-04-19 01:48:09'),(14833,-0.1,'2021-04-19 01:53:10'),(14834,0,'2021-04-19 01:58:12'),(14835,-0.1,'2021-04-19 02:03:13'),(14836,-0.2,'2021-04-19 02:08:14'),(14837,0,'2021-04-19 02:13:16'),(14838,-0.2,'2021-04-19 02:18:17'),(14839,-0.2,'2021-04-19 02:23:18'),(14840,-0.4,'2021-04-19 02:28:20'),(14841,-0.4,'2021-04-19 02:33:21'),(14842,-0.2,'2021-04-19 02:38:22'),(14843,-0.4,'2021-04-19 02:43:24'),(14844,-0.6,'2021-04-19 02:48:25'),(14845,-0.6,'2021-04-19 02:53:26'),(14846,-0.6,'2021-04-19 02:58:28'),(14847,-0.6,'2021-04-19 03:03:29'),(14848,-0.5,'2021-04-19 03:08:30'),(14849,-0.8,'2021-04-19 03:13:31'),(14850,-0.8,'2021-04-19 03:18:33'),(14851,-0.9,'2021-04-19 03:23:34'),(14852,-0.9,'2021-04-19 03:28:36'),(14853,-0.9,'2021-04-19 03:33:37'),(14854,-0.8,'2021-04-19 03:38:38'),(14855,-0.7,'2021-04-19 03:43:39'),(14856,-0.8,'2021-04-19 03:48:41'),(14857,-0.8,'2021-04-19 03:53:42'),(14858,-0.8,'2021-04-19 03:58:43'),(14859,-1.1,'2021-04-19 04:03:45'),(14860,-1.2,'2021-04-19 04:08:46'),(14861,-0.9,'2021-04-19 04:13:47'),(14862,-0.9,'2021-04-19 04:18:49'),(14863,-1,'2021-04-19 04:23:50'),(14864,-1.2,'2021-04-19 04:28:51'),(14865,-1.3,'2021-04-19 04:33:53'),(14866,-1.3,'2021-04-19 04:38:54'),(14867,-1.5,'2021-04-19 04:43:56'),(14868,-1.3,'2021-04-19 04:48:57'),(14869,-1.4,'2021-04-19 04:53:58'),(14870,-1.2,'2021-04-19 04:58:59'),(14871,-1.4,'2021-04-19 05:04:01'),(14872,-1.3,'2021-04-19 05:09:02'),(14873,-1.2,'2021-04-19 05:14:03'),(14874,-1.3,'2021-04-19 05:19:07'),(14875,-1.2,'2021-04-19 05:24:08'),(14876,-1.1,'2021-04-19 05:29:09'),(14877,-1.1,'2021-04-19 05:34:11'),(14878,-1,'2021-04-19 05:39:12'),(14879,-0.8,'2021-04-19 05:44:13'),(14880,-0.6,'2021-04-19 05:49:14'),(14881,-0.7,'2021-04-19 05:54:16'),(14882,-0.6,'2021-04-19 05:59:18'),(14883,-0.4,'2021-04-19 06:04:19'),(14884,-0.2,'2021-04-19 06:09:20'),(14885,0,'2021-04-19 06:14:21'),(14886,0.7,'2021-04-19 06:19:22'),(14887,1.2,'2021-04-19 06:24:24'),(14888,2.7,'2021-04-19 06:29:25'),(14889,3.9,'2021-04-19 06:34:26'),(14890,4.9,'2021-04-19 06:39:28'),(14891,5.6,'2021-04-19 06:44:29'),(14892,6.2,'2021-04-19 06:49:30'),(14893,6.8,'2021-04-19 06:54:32'),(14894,7.3,'2021-04-19 06:59:33'),(14895,7.5,'2021-04-19 07:04:34'),(14896,8.1,'2021-04-19 07:09:35'),(14897,8.6,'2021-04-19 07:14:37'),(14898,8.9,'2021-04-19 07:19:38'),(14899,9.4,'2021-04-19 07:24:39'),(14900,9.7,'2021-04-19 07:29:40'),(14901,10.1,'2021-04-19 07:34:42'),(14902,10.6,'2021-04-19 07:39:43'),(14903,11.2,'2021-04-19 07:44:44'),(14904,11.7,'2021-04-19 07:49:46'),(14905,12,'2021-04-19 07:54:47'),(14906,12.7,'2021-04-19 07:59:48'),(14907,13.1,'2021-04-19 08:04:50'),(14908,13.6,'2021-04-19 08:09:51'),(14909,14.4,'2021-04-19 08:14:52'),(14910,15,'2021-04-19 08:19:54'),(14911,15.6,'2021-04-19 08:24:55'),(14912,16.2,'2021-04-19 08:29:56'),(14913,16.5,'2021-04-19 08:34:58'),(14914,17.4,'2021-04-19 08:39:59'),(14915,17.9,'2021-04-19 08:45:00'),(14916,18.3,'2021-04-19 08:50:02'),(14917,18.9,'2021-04-19 08:55:03'),(14918,19.4,'2021-04-19 09:00:04'),(14919,19.7,'2021-04-19 09:05:05'),(14920,20.2,'2021-04-19 09:10:07'),(14921,21.1,'2021-04-19 09:15:08'),(14922,21.2,'2021-04-19 09:20:09'),(14923,21.7,'2021-04-19 09:25:11'),(14924,22.1,'2021-04-19 09:30:12'),(14925,22.4,'2021-04-19 09:35:14'),(14926,22.3,'2021-04-19 09:40:15'),(14927,21.9,'2021-04-19 09:49:37'),(14928,21.2,'2021-04-19 09:54:39'),(14929,20.9,'2021-04-19 09:59:40'),(14930,21.1,'2021-04-19 10:04:42'),(14931,21.2,'2021-04-19 10:09:43'),(14932,21.8,'2021-04-19 10:14:45'),(14933,21.4,'2021-04-19 10:19:46'),(14934,21.9,'2021-04-19 10:24:48'),(14935,22.4,'2021-04-19 10:29:49'),(14936,22.4,'2021-04-19 10:34:50'),(14937,22.9,'2021-04-19 10:39:52'),(14938,23.2,'2021-04-19 10:44:54'),(14939,23.1,'2021-04-19 10:49:55'),(14940,23.7,'2021-04-19 10:54:57'),(14941,24.1,'2021-04-19 10:59:58'),(14942,24.2,'2021-04-19 11:05:00'),(14943,24.3,'2021-04-19 11:10:01'),(14944,24.3,'2021-04-19 11:15:03'),(14945,24.9,'2021-04-19 11:20:04'),(14946,25.1,'2021-04-19 11:25:06'),(14947,25.7,'2021-04-19 11:30:07'),(14948,25.6,'2021-04-19 11:35:09'),(14949,25.5,'2021-04-19 11:40:10'),(14950,26.2,'2021-04-19 11:45:11'),(14951,26.4,'2021-04-19 11:50:13'),(14952,26.5,'2021-04-19 11:55:15'),(14953,27.2,'2021-04-19 12:00:16'),(14954,26.8,'2021-04-19 12:05:18'),(14955,26.6,'2021-04-19 12:10:19'),(14956,26.7,'2021-04-19 12:15:20'),(14957,26.4,'2021-04-19 12:20:22'),(14958,27.1,'2021-04-19 12:25:24'),(14959,26.9,'2021-04-19 12:30:25'),(14960,27.6,'2021-04-19 12:35:26'),(14961,27.4,'2021-04-19 12:40:28'),(14962,27.6,'2021-04-19 12:41:11'),(14963,27.6,'2021-04-19 12:42:01'),(14964,27.9,'2021-04-19 12:47:02'),(14965,27.6,'2021-04-19 12:52:04'),(14966,25.8,'2021-04-19 12:57:05'),(14967,25.6,'2021-04-19 13:02:06'),(14968,23.6,'2021-04-19 13:24:02'),(14969,23.9,'2021-04-19 13:25:07'),(14970,23.8,'2021-04-19 13:29:26'),(14971,23.9,'2021-04-19 13:29:37'),(14972,23.9,'2021-04-19 13:32:19'),(14973,24.6,'2021-04-19 13:33:48'),(14974,24.7,'2021-04-19 13:34:08'),(14975,25.8,'2021-04-19 13:39:10'),(14976,26.4,'2021-04-19 13:44:11'),(14977,26.7,'2021-04-19 13:49:12'),(14978,26.2,'2021-04-19 13:54:14'),(14979,28.2,'2021-04-19 13:59:15'),(14980,28.9,'2021-04-19 14:04:16'),(14981,29.1,'2021-04-19 14:09:17'),(14982,28.9,'2021-04-19 14:14:19'),(14983,29.4,'2021-04-19 14:19:20'),(14984,28.9,'2021-04-19 14:24:21'),(14985,28.1,'2021-04-19 14:29:23'),(14986,27.2,'2021-04-19 14:34:24'),(14987,26.2,'2021-04-19 14:39:25'),(14988,25.1,'2021-04-19 14:44:27'),(14989,24.8,'2021-04-19 14:49:28'),(14990,24.1,'2021-04-19 14:54:29'),(14991,23.3,'2021-04-19 14:59:30'),(14992,22.6,'2021-04-19 15:04:32'),(14993,22.8,'2021-04-19 15:09:33'),(14994,22.7,'2021-04-19 15:14:35'),(14995,21.6,'2021-04-19 15:19:36'),(14996,21.8,'2021-04-19 15:24:37'),(14997,20.5,'2021-04-19 15:29:39'),(14998,19.6,'2021-04-19 15:34:40'),(14999,18.6,'2021-04-19 15:39:42'),(15000,18.2,'2021-04-19 15:44:43'),(15001,17.5,'2021-04-19 15:49:44'),(15002,18.3,'2021-04-19 15:54:45'),(15003,19.1,'2021-04-19 15:59:46');
/*!40000 ALTER TABLE `temp_readings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 17:00:57
