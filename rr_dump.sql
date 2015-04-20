-- MySQL dump 10.13  Distrib 5.1.69, for redhat-linux-gnu (x86_64)
--
-- Host: localhost    Database: thompsonk
-- ------------------------------------------------------
-- Server version	5.1.69

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
-- Table structure for table `bathroom`
--

DROP TABLE IF EXISTS `bathroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bathroom` (
  `id` smallint(6) NOT NULL DEFAULT '0',
  `building_id` smallint(6) DEFAULT NULL,
  `floor` varchar(10) DEFAULT NULL,
  `type` varchar(1) DEFAULT NULL,
  `label` varchar(30) DEFAULT NULL,
  `room_no` varchar(20) DEFAULT NULL,
  `no_toilets` smallint(2) DEFAULT NULL,
  `changing_table` smallint(1) DEFAULT NULL,
  `lactation` smallint(1) DEFAULT NULL,
  `sharps` smallint(1) DEFAULT NULL,
  `accessible_sink` smallint(1) DEFAULT NULL,
  `stall_coverage` smallint(1) DEFAULT NULL,
  `support_bar` smallint(1) DEFAULT NULL,
  `wheelchair_access` smallint(1) DEFAULT NULL,
  `braille_sign` smallint(1) DEFAULT NULL,
  `no_wheelchair_stalls` smallint(2) DEFAULT NULL,
  `wheelchair_stall_width` smallint(3) DEFAULT NULL,
  `notes` varchar(550) DEFAULT NULL,
  `private` smallint(1) DEFAULT NULL,
  `shower` smallint(1) DEFAULT NULL,
  `no_urinals` smallint(2) DEFAULT NULL,
  `urinal_type` varchar(20) DEFAULT NULL,
  `one_side_bar` smallint(1) DEFAULT NULL,
  `two_side_bar` smallint(1) DEFAULT NULL,
  `rear_bar` smallint(1) DEFAULT NULL,
  `least_bar` smallint(1) DEFAULT NULL,
  `least_deep` smallint(1) DEFAULT NULL,
  `least_wide` smallint(1) DEFAULT NULL,
  `toe_clear` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `building_id` (`building_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bathroom`
--

LOCK TABLES `bathroom` WRITE;
/*!40000 ALTER TABLE `bathroom` DISABLE KEYS */;
INSERT INTO `bathroom` VALUES (0,0,'1','n','Any Gender',NULL,1,0,0,1,0,1,0,0,0,0,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(1,0,'2','n','Any Gender',NULL,1,0,0,0,0,1,0,0,0,0,NULL,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,1,'1','n','Any Gender',NULL,1,0,0,0,1,1,1,1,1,1,36,NULL,1,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,1,'2','f','Women',NULL,5,0,0,1,1,1,1,1,1,1,36,NULL,0,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,1,'2','m','Men',NULL,5,0,0,1,1,1,1,1,1,1,36,NULL,0,0,2,'unknown',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,2,'1','f','Women',NULL,10,0,0,0,1,0,NULL,1,1,1,NULL,'This building has an accessible entrance and elevator. The door to the restroom is 34 inches wide and the handle is 36 inches high.',0,0,0,NULL,1,0,1,0,1,1,0),(6,2,'1','m','Men',NULL,4,0,0,0,1,0,NULL,1,1,1,NULL,'This building has an accessible entrance and elevator. The bathroom door is 34 inches wide and the handle is 37 inches high.',0,0,5,'Wall Hung',1,0,1,0,1,1,0),(7,2,'2','f','Women',NULL,2,0,0,1,1,0,NULL,1,1,1,NULL,'There is an accessible entrance and elevator in this building. The bathroom door is 34 inches wide and the handle is 36 inches high.',0,0,0,NULL,1,0,1,0,1,1,0),(8,2,'2','m','Men',NULL,1,0,0,1,1,0,NULL,1,1,1,NULL,'There is an accessible entrance and elevator in this building. The bathroom door is 40 inches wide and the handle is 38 inches high.',0,0,2,NULL,1,0,1,0,1,1,0),(9,2,'3','f','Women',NULL,2,0,1,1,1,0,NULL,1,1,1,NULL,'This building has an accessible entrance and elevator. The bathroom door is 34 inches wide and the door handle is 37 inches high. The lactation room is an unlabeled room inside the main door to the bathroom and to the right. The lactation room is not wheelchair accessible.',0,0,0,NULL,1,0,1,0,1,1,0),(10,2,'3','m','Men',NULL,1,0,0,1,1,0,NULL,1,1,1,NULL,'This building has an accessible entrance and elevator. The bathroom door is 40 inches wide and the door handle is 38 inches high. The stall in this bathroom is only 58 inches wide.',0,0,2,'Wall Hung',1,0,1,0,1,0,0),(11,2,'4','f','Women',NULL,2,0,0,0,1,0,NULL,1,1,1,NULL,'There is an accessible entrance and elevator in this building. The bathroom door is 34 inches wide and the door handle is 38 inches high. The larger stall in this bathroom is only 57 inches wide.',0,0,0,NULL,1,0,1,0,1,0,0),(12,2,'4','m','Men',NULL,1,0,0,0,1,0,NULL,1,1,1,NULL,'This building has an accessible entrance and elevator. The bathroom door is 40 inches wide and the door handle is 38 inches high. The stall in this bathroom is only 59 inches wide.',0,0,2,'Wall Hung',1,0,1,0,1,0,0),(13,3,'1','f','Women',NULL,6,0,0,1,1,0,NULL,1,1,1,NULL,'Near Room 106, in the center of the floor near the study area. Not available when the building is closed.',0,0,0,NULL,1,0,1,1,1,1,1),(14,3,'Basement','f','Women',NULL,1,1,1,0,1,0,NULL,1,1,1,NULL,'There is a lactation room, with a breast pump and materials.  It is within the single bathroom, which is lockable for privacy.  There is also a list of other lactation spaces on campus. Next to Room #13. Not available when building is closed.  A key card is needed to access the stairs before 7AM and after 7PM.',1,0,0,NULL,1,0,1,1,1,1,0),(15,3,'Basement','m','Men',NULL,1,0,0,0,1,0,NULL,1,1,1,NULL,'A key card is needed to access the stairwells before 7AM and after 7PM. Next to Room #19. Not available when building is closed.',1,0,0,NULL,1,0,1,1,1,1,0),(16,4,'2','f','Women','209',4,0,0,1,0,0,NULL,1,1,1,NULL,'On Main Floor.',0,0,0,NULL,1,0,1,0,0,0,0),(17,4,'2','m','Men','207',4,0,0,1,0,0,NULL,1,1,1,NULL,'On Main Floor.',0,0,0,'Stall Type',1,0,1,0,0,0,0),(18,4,'2','f','Women',NULL,4,0,0,0,0,0,NULL,1,0,1,NULL,'By N. Gym ',0,0,0,NULL,1,0,1,0,0,0,0),(19,4,'2','m','Men',NULL,4,0,0,0,0,0,NULL,1,0,1,NULL,'By N. Gym',0,0,3,'Stall Type',1,0,1,0,0,0,0),(20,4,'4','f','Women',NULL,3,0,0,0,0,0,NULL,1,0,1,NULL,'On North side of the track.',0,0,0,NULL,1,0,1,0,0,0,0),(21,4,'4','m','Men','456a',2,0,0,0,0,0,NULL,1,0,1,NULL,'On North side of the track.',0,0,2,'Stall Type',1,0,1,0,0,0,0),(22,4,'4','f','Women',NULL,3,0,0,0,0,0,NULL,1,0,1,NULL,'On South side of track.',0,0,0,NULL,1,0,1,0,0,0,0),(23,4,'4','m','Men','457a',2,0,0,0,0,0,NULL,1,0,1,NULL,'On South side of track.',0,0,2,'Stall Type',1,0,1,0,0,0,0),(24,4,'3','m','Men','306',1,0,0,0,0,0,NULL,1,1,1,NULL,'On 300 level north by classrooms.',0,0,1,'Stall Type',1,0,1,0,0,0,0),(25,4,'3','f','Women','350',3,0,0,1,0,0,NULL,1,0,1,NULL,'On 300 level north by classrooms.',0,0,0,NULL,1,0,1,0,0,0,0),(26,4,'2','m','Men','224',2,0,0,0,0,0,NULL,0,0,0,NULL,'On 200 level by Health and Physical Activity Skills Office.',0,0,2,'Stall Type',0,0,0,0,0,0,0),(27,4,'1','f','Women','E138',2,0,0,0,0,0,NULL,0,1,0,NULL,'This is in office areas and is only accessible during business hours ',0,0,0,NULL,0,0,0,0,0,0,0),(28,4,'1','m','Men','E136',2,0,0,0,0,0,NULL,0,0,0,NULL,'This is in an office area and only accessible during business hours ',0,0,1,'Stall Type',0,0,0,0,0,0,0),(29,4,'Basement','f','Women','Women Locker Room ',4,0,0,1,0,0,NULL,1,0,1,NULL,'Entrance is by the N. gym. Need a student ID to enter',0,1,0,NULL,0,1,0,0,0,0,0),(30,4,'Basement','m','Men','Men Locker Room ',4,0,0,0,0,0,NULL,1,0,1,NULL,'Entrance is by the N. gym.',0,0,6,'Stall Type',0,1,0,0,0,0,0),(31,5,'1','m','Men','108',2,0,0,0,0,0,NULL,0,0,0,NULL,NULL,0,0,1,'Wall Hung',0,0,0,0,0,0,0),(32,5,'1','f','Women','109',3,0,0,0,0,0,NULL,0,0,0,NULL,NULL,0,0,0,NULL,0,0,0,0,0,0,0),(33,5,'2','m','Men','209',3,0,0,0,0,0,NULL,1,0,1,NULL,'Stall doors less than 60\" wide.',0,0,1,'Wall Hung',0,0,0,0,0,0,0),(34,5,'3','f','Women',NULL,3,0,0,0,0,0,NULL,1,0,1,NULL,'Accessible stall is 42\" wide.',0,0,0,NULL,0,0,0,0,0,0,0),(35,5,'4','m','Men','412',3,0,0,0,0,0,NULL,0,0,0,NULL,'Not accessible.',0,0,1,'Wall Hung',0,0,0,0,0,0,0),(36,5,'4','f','Women','414',5,0,0,0,0,0,NULL,0,0,0,NULL,'Not accessible.',0,0,0,NULL,0,0,0,0,0,0,0),(38,5,'3','m','Men','312',3,0,0,0,0,0,NULL,1,0,1,NULL,NULL,0,0,1,'Wall Hung',0,0,0,0,0,0,0),(39,5,'2','f','Women','210',4,0,0,0,0,0,NULL,0,0,0,NULL,'Stall doors 38\" wide.',0,0,0,NULL,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `bathroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building`
--

DROP TABLE IF EXISTS `building`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `building` (
  `building_id` smallint(6) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `lat` varchar(10) DEFAULT NULL,
  `lon` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`building_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building`
--

LOCK TABLES `building` WRITE;
/*!40000 ALTER TABLE `building` DISABLE KEYS */;
INSERT INTO `building` VALUES (0,'WRAC','41.66353','-91.53729'),(1,'Main Library','41.65963','-91.53843'),(2,'Schaeffer Hall','41.660854','-91.535667'),(3,'Biology Building East','41.661799','-91.532755'),(4,'Field House','41.658525','-91.546648'),(5,'North Hall (School of Social Work)','41.666388','-91.536673'),(6,'English-Philosophy Building (EPB)','41.66113','-91.539956'),(7,'Seamens Center','41.66004','-91.536781');
/*!40000 ALTER TABLE `building` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-15 12:03:44
