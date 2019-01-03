-- MySQL dump 10.13  Distrib 8.0.12, for Win64 (x86_64)
--
-- Host: localhost    Database: epms_project_team_27_sprint3
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
-- Table structure for table `accomodation`
--

DROP TABLE IF EXISTS `accomodation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `accomodation` (
  `Registration_Id` int(10) NOT NULL,
  `Accomodation_Details` varchar(500) NOT NULL,
  `Check_In_Date` date DEFAULT NULL,
  `Check_In_Time` time DEFAULT NULL,
  `Check_Out_Date` date DEFAULT NULL,
  `Check_Out_Time` time DEFAULT NULL,
  PRIMARY KEY (`Registration_Id`),
  KEY `CheckInDate` (`Check_In_Date`),
  KEY `CheckOutDate` (`Check_Out_Date`),
  KEY `AccomodationDetails` (`Accomodation_Details`),
  CONSTRAINT `accomodation_ibfk_1` FOREIGN KEY (`Registration_Id`) REFERENCES `registration_details` (`registration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accomodation`
--

LOCK TABLES `accomodation` WRITE;
/*!40000 ALTER TABLE `accomodation` DISABLE KEYS */;
INSERT INTO `accomodation` VALUES (1000,'Room No:729, Hotel iStay, Atlanta, USA, PIN-23456','2018-09-09','18:00:00','2018-09-11','11:00:00'),(1001,'Room No:10, 4th Floor, Hotel Royal Palace, Connecticut, USA, PIN-90809','2018-04-10','18:00:00','2018-04-12','11:00:00'),(1002,'Room No:500, Le Royal Suite, New York, USA, PIN-90809','2018-08-31','18:00:00','2018-09-01','11:00:00'),(1003,'Room No:111, Hotel Highway Heaven, Charlotte, USA, PIN-28262','2018-10-10','18:00:00','2018-10-12','11:00:00'),(1004,'Room No:89, Hotel Park Plaza, Atlanta, USA, PIN-11223','2018-09-09','18:00:00','2018-09-11','11:00:00'),(1005,'Room No: 444, Dr.Atkins Library','2018-09-09','15:00:00','2018-09-15','11:00:00'),(1006,'Room no: 789, Palo Alto, California, USA, PIN-234','2018-10-10','18:00:00','2018-10-12','11:00:00'),(1007,'Room no:222, Waltson Street, Atlanta, PIN - 222','2018-09-09','18:00:00','2018-09-11','11:00:00'),(1008,'Room no:118, Williamson Avenue, Philadelphia, PIN-28262','2018-10-29','18:00:00','2018-10-31','11:00:00'),(1009,'Room no:789LM, Tyron St., North Avenue, Charlotte, USA','2019-10-10','19:00:00','2018-10-12','11:00:00');
/*!40000 ALTER TABLE `accomodation` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `admin` VALUES ('Super_user','SuperUser','Admin','Sudo_123'),('vikas_sra','Vikas','Sivaravindran','vikas3110');
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
  PRIMARY KEY (`Attendee_Id`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  UNIQUE KEY `Phone_Number_UNIQUE` (`Phone_Number`),
  KEY `FirstName` (`First_Name`),
  KEY `LastName` (`Last_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendee`
--

LOCK TABLES `attendee` WRITE;
/*!40000 ALTER TABLE `attendee` DISABLE KEYS */;
INSERT INTO `attendee` VALUES ('a_angamuthu','Abinesh','Angamuthu','aangamuthu@gmail.com','aa12345','7043456980'),('r_koushal','Rishi','Koushal','rkoushal@gmail.com','rkoushal','9802029114'),('s_sivaram','Sageetha','Sivaraman','ssivaraman@gmail.com','ssivaraman','8965478932'),('s_venka','Sathya','Ram','svenka@uncc.edu','svenka','9475368760'),('v_sivarav','Vikas','Ravi','vsivarav@uncc.edu','vsivarav','9874568529');
/*!40000 ALTER TABLE `attendee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `certificate`
--

DROP TABLE IF EXISTS `certificate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `certificate` (
  `certificate_id` int(5) NOT NULL AUTO_INCREMENT,
  `Registration_Id` int(10) NOT NULL,
  PRIMARY KEY (`certificate_id`),
  KEY `Registration_Id` (`Registration_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `certificate`
--

LOCK TABLES `certificate` WRITE;
/*!40000 ALTER TABLE `certificate` DISABLE KEYS */;
INSERT INTO `certificate` VALUES (1,1000),(2,1001),(3,1002),(4,1003),(5,1004),(6,1005),(7,1006),(8,1007),(9,1008),(10,1009);
/*!40000 ALTER TABLE `certificate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `certificate_details`
--

DROP TABLE IF EXISTS `certificate_details`;
/*!50001 DROP VIEW IF EXISTS `certificate_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `certificate_details` AS SELECT 
 1 AS `certificate_id`,
 1 AS `Event_Name`,
 1 AS `Participant_Name`,
 1 AS `Event_Date`*/;
SET character_set_client = @saved_cs_client;

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
  `Event_Start_Time` time DEFAULT NULL,
  `Event_End_Time` time DEFAULT NULL,
  `Event_Venue` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Event_id`),
  KEY `Organizer_Id` (`Organizer_Id`),
  KEY `Volunteer_Id` (`Volunteer_Id`),
  KEY `Sponsor_Id` (`Sponsor_Id`),
  KEY `EventName` (`Event_Name`),
  KEY `EventDate` (`Event_Date`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`Organizer_Id`) REFERENCES `organizer` (`organizer_id`),
  CONSTRAINT `event_ibfk_2` FOREIGN KEY (`Volunteer_Id`) REFERENCES `volunteer` (`volunteer_id`),
  CONSTRAINT `event_ibfk_3` FOREIGN KEY (`Sponsor_Id`) REFERENCES `sponsor` (`sponsor_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Introduction to Statistics','An Introduction to DataScience and Statistics','jlancer','h_jeyaraj','h_ramprasad','2018-09-10','08:00:00','09:00:00','Robinson Hall, JW Clay Drive, Atlanta, PIN - 23456'),(2,'Thermo Dynamics - First Step','An Introduction to ThermoDynamics by Dr.Ramakrishnan','rwillis','v_waran','w_pennell','2018-04-11','09:30:00','10:30:00','AmpiTheatre Square Hall, West Coast Bolulevard, Connecticut, PIN - 70903'),(12,'An Introduction to Microservices','Experts Opinion on Micro services Architecture Presented by Oracle Corporation','rwillis','v_waran','w_pennell','2018-08-31','11:00:00','14:00:00','Dr. Atkins Centennial Hall, Premier Circle Layout, NewYork, USA, PIN - 13451'),(13,'Introduction to Computer Vision ','An Event that focuses primarily on the developments of Computer Vision and applied cryptography','rwillis','v_waran','w_pennell','2018-10-30','08:00:00','10:00:00','Centre City Premium Hall, Tyron Street Corner, Philadelphia, USA, PIN - 200900'),(15,'Introduction to TDD','Spring Cloud Team\'s Introduction to TDD','rwillis','v_waran','w_pennell','2018-09-10','09:00:00','10:00:00','Leeland Stanford Hall, Stanford University, California, USA, PIN - 90809'),(16,'Machine Learning Best Practices by SME','An Overview of the best practices in Machine Learning','pheman','s_ramakrishnan','j_wayne','2018-10-11','10:00:00','11:00:00','Cato Hall, University of North Carolina Charlotte, City Blvd, Charlotte, USA, PIN - 28260');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `notification` (
  `notification_id` int(10) NOT NULL AUTO_INCREMENT,
  `Registration_Id` int(10) NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `Registration_Id` (`Registration_Id`),
  CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`Registration_Id`) REFERENCES `registration_details` (`registration_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,1000),(2,1001),(3,1002),(4,1003),(5,1004),(6,1005),(7,1006),(8,1007),(9,1008),(10,1009);
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `notification_details`
--

DROP TABLE IF EXISTS `notification_details`;
/*!50001 DROP VIEW IF EXISTS `notification_details`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `notification_details` AS SELECT 
 1 AS `notification_id`,
 1 AS `Event_Name`,
 1 AS `Event_Venue`,
 1 AS `First_Name`,
 1 AS `Last_Name`,
 1 AS `Accomodation_Details`,
 1 AS `Check_In_Date`,
 1 AS `Check_In_Time`,
 1 AS `Check_Out_Date`,
 1 AS `Check_Out_Time`*/;
SET character_set_client = @saved_cs_client;

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
  PRIMARY KEY (`Organizer_Id`),
  UNIQUE KEY `Phone_Number_UNIQUE` (`Phone_Number`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `FirstName` (`First_Name`),
  KEY `LastName` (`Last_Name`)
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
-- Table structure for table `registration_details`
--

DROP TABLE IF EXISTS `registration_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registration_details` (
  `Registration_Id` int(10) NOT NULL,
  `Event_id` int(10) NOT NULL,
  `Attendee_Id` varchar(100) NOT NULL,
  PRIMARY KEY (`Event_id`,`Attendee_Id`),
  UNIQUE KEY `Registration_Id_UNIQUE` (`Registration_Id`),
  KEY `Event_id` (`Event_id`),
  KEY `Attendee_Id` (`Attendee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registration_details`
--

LOCK TABLES `registration_details` WRITE;
/*!40000 ALTER TABLE `registration_details` DISABLE KEYS */;
INSERT INTO `registration_details` VALUES (1000,1,'a_angamuthu'),(1001,2,'v_sivarav'),(1002,12,'v_sivarav'),(1003,16,'s_venka'),(1004,1,'s_venka'),(1005,12,'s_sivaram'),(1006,15,'r_koushal'),(1007,1,'r_koushal'),(1008,13,'s_sivaram'),(1009,16,'v_sivarav');
/*!40000 ALTER TABLE `registration_details` ENABLE KEYS */;
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
  PRIMARY KEY (`Sponsor_Id`),
  UNIQUE KEY `Phone_Number_UNIQUE` (`Phone_Number`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `SponsorPointOfContact` (`Point_Of_Contact`),
  KEY `SponsorName` (`Organization_Name`)
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
  PRIMARY KEY (`Volunteer_Id`),
  UNIQUE KEY `Phone_Number_UNIQUE` (`Phone_Number`),
  UNIQUE KEY `Email_UNIQUE` (`Email`),
  KEY `FirstName` (`First_Name`),
  KEY `LastName` (`Last_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `volunteer`
--

LOCK TABLES `volunteer` WRITE;
/*!40000 ALTER TABLE `volunteer` DISABLE KEYS */;
INSERT INTO `volunteer` VALUES ('h_jeyaraj','Harris','Jeyaraj','hjeyaraj@gmail.com','5654321345'),('s_ramakrishnan','Stnahu','Ramakrishnan','sthanu@gmail.com','85479632145'),('v_waran','Vignesh','Waran','vwaran@gmail.com','7043456983');
/*!40000 ALTER TABLE `volunteer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `certificate_details`
--

/*!50001 DROP VIEW IF EXISTS `certificate_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `certificate_details` AS select `n1`.`certificate_id` AS `certificate_id`,`e1`.`Event_Name` AS `Event_Name`,concat(`b1`.`First_Name`,' ',`b1`.`Last_Name`) AS `Participant_Name`,`e1`.`Event_Date` AS `Event_Date` from (((`certificate` `n1` join `registration_details` `r1` on((`n1`.`Registration_Id` = `r1`.`Registration_Id`))) join `attendee` `b1` on((`r1`.`Attendee_Id` = `b1`.`Attendee_Id`))) join `event` `e1` on((`r1`.`Event_id` = `e1`.`Event_id`))) order by `n1`.`certificate_id` asc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notification_details`
--

/*!50001 DROP VIEW IF EXISTS `notification_details`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `notification_details` AS select `n1`.`notification_id` AS `notification_id`,`e1`.`Event_Name` AS `Event_Name`,`e1`.`Event_Venue` AS `Event_Venue`,`b1`.`First_Name` AS `First_Name`,`b1`.`Last_Name` AS `Last_Name`,`a1`.`Accomodation_Details` AS `Accomodation_Details`,`a1`.`Check_In_Date` AS `Check_In_Date`,`a1`.`Check_In_Time` AS `Check_In_Time`,`a1`.`Check_Out_Date` AS `Check_Out_Date`,`a1`.`Check_Out_Time` AS `Check_Out_Time` from ((((`notification` `n1` join `registration_details` `r1` on((`n1`.`Registration_Id` = `r1`.`Registration_Id`))) join `accomodation` `a1` on((`a1`.`Registration_Id` = `r1`.`Registration_Id`))) join `attendee` `b1` on((`r1`.`Attendee_Id` = `b1`.`Attendee_Id`))) join `event` `e1` on((`r1`.`Event_id` = `e1`.`Event_id`))) order by `n1`.`notification_id` asc */;
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

-- Dump completed on 2018-12-02 19:54:01
