CREATE DATABASE  IF NOT EXISTS `inaenq` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `inaenq`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: inaenq
-- ------------------------------------------------------
-- Server version	5.6.16-enterprise-commercial-advanced

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
-- Table structure for table `activeenquete`
--

DROP TABLE IF EXISTS `activeenquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activeenquete` (
  `userName` varchar(50) DEFAULT NULL,
  `enqueteName` varchar(50) DEFAULT NULL,
  `lastQuestion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activeenquete`
--

LOCK TABLES `activeenquete` WRITE;
/*!40000 ALTER TABLE `activeenquete` DISABLE KEYS */;
INSERT INTO `activeenquete` VALUES ('Ines2','Supernatural',1),('Ines3','Supernatural',1),('Bob','Supernatural',4),('BobSaggot','BreakingBad',1),('Ines','Dexter',1);
/*!40000 ALTER TABLE `activeenquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `completeenquete`
--

DROP TABLE IF EXISTS `completeenquete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `completeenquete` (
  `userName` varchar(50) DEFAULT NULL,
  `enqueteName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `completeenquete`
--

LOCK TABLES `completeenquete` WRITE;
/*!40000 ALTER TABLE `completeenquete` DISABLE KEYS */;
INSERT INTO `completeenquete` VALUES ('Ines','Supernatural'),('BobSaggot','Supernatural');
/*!40000 ALTER TABLE `completeenquete` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enqueteanswers`
--

DROP TABLE IF EXISTS `enqueteanswers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enqueteanswers` (
  `userName` varchar(50) DEFAULT NULL,
  `enqueteName` varchar(50) DEFAULT NULL,
  `questionNumber` int(11) DEFAULT NULL,
  `questionType` varchar(30) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `extraAnswer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enqueteanswers`
--

LOCK TABLES `enqueteanswers` WRITE;
/*!40000 ALTER TABLE `enqueteanswers` DISABLE KEYS */;
INSERT INTO `enqueteanswers` VALUES ('Ines','Supernatural',1,'multi','Yes',''),('Ines2','Supernatural',1,'multi','Yes',''),('Ines2','Dexter',1,'multi','Yes','we'),('Ines3','Supernatural',2,'rate','3','Dean is awesome'),('Bamby','Supernatural',1,'multi','Yes',''),('Bamby','Supernatural',2,'rate','5',''),('Ines','Supernatural',2,'rate','4',''),('Ines','Supernatural',3,'open','Yes',''),('Ines','Supernatural',4,'multi','Yes',''),('Bob','Supernatural',1,'multi','Yes',''),('Bob','Supernatural',2,'rate','5',''),('Bob','Supernatural',3,'open','Yes',''),('Bob','Supernatural',4,'multi','Yes',''),('Ines','Dexter',1,'multi','No',''),('Ines','Dexter',2,'multi','No',''),('BobSaggot','Supernatural',1,'multi','Yes',''),('BobSaggot','Supernatural',2,'rate','5',''),('BobSaggot','Supernatural',3,'open','Yes',''),('BobSaggot','Supernatural',4,'multi','Yes','');
/*!40000 ALTER TABLE `enqueteanswers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquetelist`
--

DROP TABLE IF EXISTS `enquetelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquetelist` (
  `enqueteID` int(11) NOT NULL AUTO_INCREMENT,
  `enqueteName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`enqueteID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquetelist`
--

LOCK TABLES `enquetelist` WRITE;
/*!40000 ALTER TABLE `enquetelist` DISABLE KEYS */;
INSERT INTO `enquetelist` VALUES (1,'Supernatural'),(2,'Dexter'),(3,'BreakingBad');
/*!40000 ALTER TABLE `enquetelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquetequestions`
--

DROP TABLE IF EXISTS `enquetequestions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enquetequestions` (
  `enqueteName` varchar(50) DEFAULT NULL,
  `questionNumber` int(11) DEFAULT NULL,
  `question` varchar(100) DEFAULT NULL,
  `questionType` varchar(50) DEFAULT NULL,
  `option1` varchar(30) DEFAULT NULL,
  `option2` varchar(30) DEFAULT NULL,
  `option3` varchar(30) DEFAULT NULL,
  `option4` varchar(30) DEFAULT NULL,
  `option5` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquetequestions`
--

LOCK TABLES `enquetequestions` WRITE;
/*!40000 ALTER TABLE `enquetequestions` DISABLE KEYS */;
INSERT INTO `enquetequestions` VALUES ('Supernatural',1,'Do you like Dean?','multi','Yes','No','|x|','|x|','|x|'),('Supernatural',2,'How awesome is supernatural?','rate','1','2','3','4','5'),('Supernatural',3,'Should Supernatural go on to season 19?','open','Yes','No','|x|','|x|','|x|'),('Supernatural',4,'Is Dean the cooler brother?','multi','Yes','No','|x|','|x|','|x|'),('Dexter',1,'Was the ending of Dexter cool?','multi','Yes','No','|x|','|x|','|x|'),('Dexter',2,'Did you like Dexters wife Rita?','multi','Yes','No','|x|','|x|','|x|'),('Dexter',3,'How strong is Dexter?','Rate','1','2','3','4','5'),('Dexter',4,'How much do you miss doax?','Rate','1','2','3','4','5'),('BreakingBad',3,'How much did you like Walter White?','Rate','1','2','3','4','5'),('BreakingBad',2,'How much did you like Jesse Pinkman?','Rate','1','2','3','4','5'),('BreakingBad',1,'Do you want Breaking Bad to come back?','multi','|Yes|','|No|','|x|','|x|','|x|'),('BreakingBad',4,'Do you like Heisenberg?','multi','|Yes|','|No|','|x|','|x|','|x|');
/*!40000 ALTER TABLE `enquetequestions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `userName` varchar(50) DEFAULT NULL,
  `pwd` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('Ines','test123'),('Ines2','test123'),('Ines3','test123'),('Bamby','cuko'),('Bob','bobsburgers'),('BobSaggot','test');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-15 15:45:54
