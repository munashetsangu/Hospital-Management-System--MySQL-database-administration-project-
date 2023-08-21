-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: my_hospital
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `Address_id` int NOT NULL AUTO_INCREMENT,
  `Address1` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `PostCode` varchar(45) DEFAULT NULL,
  `CreatedOn` datetime(6) DEFAULT NULL,
  `ModifiedOn` datetime(6) DEFAULT NULL,
  `Addresscol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Akadamiska 5','Lublin','20-006','2021-03-15 00:00:00.000000','2022-03-02 00:00:00.000000',NULL),(2,'Kollataja 3','Lublin','20-011','2022-04-24 00:00:00.000000','2023-02-03 00:00:00.000000',NULL),(3,'Prusa 8','Lublin','20-023','2022-05-18 00:00:00.000000','2022-02-03 00:00:00.000000',NULL),(4,'Centrum 7','Lublin','20-001','2022-04-01 00:00:00.000000','2022-02-03 00:00:00.000000',NULL),(5,'Mariana 26','Lublin','20-066','2022-03-16 00:00:00.000000','2022-03-02 00:00:00.000000',NULL),(6,'Wspa 2','Lublin','20-012','2022-11-12 00:00:00.000000','2022-03-02 00:00:00.000000',NULL);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01 14:27:54
