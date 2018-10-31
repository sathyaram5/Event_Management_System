-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: epms_project_team_27
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `Admin_Id` varchar(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  PRIMARY KEY (`Admin_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES ('Super_user','SuperUser','Admin','Sudo_123');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attendee`
--

DROP TABLE IF EXISTS `attendee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `attendee` (
  `Attendee_Id` varchar(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Phone_Number` varchar(20) NOT NULL,
  `Event_Id` int(10) NOT NULL,
  PRIMARY KEY (`Attendee_Id`),
  KEY `Event_Id` (`Event_Id`),
  CONSTRAINT `attendee_ibfk_1` FOREIGN KEY (`Event_Id`) REFERENCES `event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendee`
--

LOCK TABLES `attendee` WRITE;
/*!40000 ALTER TABLE `attendee` DISABLE KEYS */;
INSERT INTO `attendee` VALUES ('rkoushal','Rishi','Koushal','rkoushal@uncc.edu','rkousha','7415289674',3),('svenkat','Sathya','Ram','svenka@uncc.edu','svenka','9475368760',2),('vsivarav','Vikas','Ravi','vsivarav@uncc.edu','vsivarav','9874568529',1);
/*!40000 ALTER TABLE `attendee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `Event_id` int(10) NOT NULL AUTO_INCREMENT,
  `Event_Name` varchar(100) NOT NULL,
  `Event_Details` varchar(100) NOT NULL,
  `Organizer_Id` varchar(100) NOT NULL,
  `Volunteer_Id` varchar(100) NOT NULL,
  `Sponsor_Id` varchar(100) NOT NULL,
  `Event_Date` date NOT NULL,
  PRIMARY KEY (`Event_id`),
  KEY `Organizer_Id` (`Organizer_Id`),
  KEY `Volunteer_Id` (`Volunteer_Id`),
  KEY `Sponsor_Id` (`Sponsor_Id`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`Organizer_Id`) REFERENCES `organizer` (`Organizer_Id`),
  CONSTRAINT `event_ibfk_2` FOREIGN KEY (`Volunteer_Id`) REFERENCES `volunteer` (`Volunteer_Id`),
  CONSTRAINT `event_ibfk_3` FOREIGN KEY (`Sponsor_Id`) REFERENCES `sponsor` (`Sponsor_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Introduction to Statistics','An Introduction to DataScience and Statistics','jlancer','h_jeyaraj','h_ramprasad','2018-09-10'),(2,'Thermo Dynamics - First Step','An Introduction to ThermoDynamics by Dr.Ramakrishnan','rwillis','v_waran','w_pennell','2018-04-11'),(3,'BlockChain - The Future Step','An Introduction to BlockChain COncepts by Dr.RishiKanth','pheman','s_ramakrishnan','j_wayne','2018-03-10');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organizer`
--

DROP TABLE IF EXISTS `organizer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `organizer` (
  `Organizer_Id` varchar(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Phone_Number` varchar(20) NOT NULL,
  PRIMARY KEY (`Organizer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organizer`
--

LOCK TABLES `organizer` WRITE;
/*!40000 ALTER TABLE `organizer` DISABLE KEYS */;
INSERT INTO `organizer` VALUES ('jlancer','John','Lancer','jlancer@gmail.com','johnlancer','9677927814'),('pheman','Paul','Heman','pheman@gmail.com','paulheman','7896541230'),('rwillis','Rick','Willis','rwillis@gmail.com','rickwillis','9842250202');
/*!40000 ALTER TABLE `organizer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `sponsor` (
  `Sponsor_Id` varchar(100) NOT NULL,
  `Organization_Name` varchar(100) NOT NULL,
  `Point_Of_Contact` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone_Number` varchar(100) NOT NULL,
  PRIMARY KEY (`Sponsor_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES ('h_ramprasad','CCI','Harini Ramprasad','hramapra@gmail.com','8526932147'),('j_wayne','Oracle Private Ltd','John Wayne','jwayne@gmail.com','9789065432'),('w_pennell','Conti Tyres Pvt Ltd','Wayne Pennell','wpennell@gmail.com','9802029114');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `volunteer`
--

DROP TABLE IF EXISTS `volunteer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `volunteer` (
  `Volunteer_Id` varchar(100) NOT NULL,
  `First_Name` varchar(100) NOT NULL,
  `Last_Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone_Number` varchar(15) NOT NULL,
  PRIMARY KEY (`Volunteer_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
INSERT INTO `volunteer` VALUES ('h_jeyaraj','Harris','Jeyaraj','hjeyaraj@gmail.com','5654321345'),('s_ramakrishnan','Stnahu','Ramakrishnan','sthanu@gmail.com','85479632145'),('v_waran','Vignesh','Waran','vwaran@gmail.com','5654321345');
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-23 20:31:12
