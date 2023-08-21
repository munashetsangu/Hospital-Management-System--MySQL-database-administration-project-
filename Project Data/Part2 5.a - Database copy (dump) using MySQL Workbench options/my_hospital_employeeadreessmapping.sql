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
-- Table structure for table `employeeadreessmapping`
--

DROP TABLE IF EXISTS `employeeadreessmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeeadreessmapping` (
  `EmployeeadreessMapping_id` int NOT NULL AUTO_INCREMENT,
  `AddressTypeID` int DEFAULT NULL,
  `Index` int DEFAULT NULL,
  `CreatedON` datetime(6) DEFAULT NULL,
  `ModifiedON` datetime(6) DEFAULT NULL,
  `employee_details_EmployeeDetails_id` int NOT NULL,
  `address_Address_id` int NOT NULL,
  PRIMARY KEY (`EmployeeadreessMapping_id`),
  KEY `AddressType_id_idx` (`AddressTypeID`),
  KEY `fk_employeeadreessmapping_employee_details1_idx` (`employee_details_EmployeeDetails_id`),
  KEY `fk_employeeadreessmapping_address1_idx` (`address_Address_id`),
  CONSTRAINT `AddressType_id` FOREIGN KEY (`AddressTypeID`) REFERENCES `address_type` (`AddressType_id`),
  CONSTRAINT `fk_employeeadreessmapping_address1` FOREIGN KEY (`address_Address_id`) REFERENCES `address` (`Address_id`),
  CONSTRAINT `fk_employeeadreessmapping_employee_details1` FOREIGN KEY (`employee_details_EmployeeDetails_id`) REFERENCES `employee_details` (`EmployeeDetails_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeeadreessmapping`
--

LOCK TABLES `employeeadreessmapping` WRITE;
/*!40000 ALTER TABLE `employeeadreessmapping` DISABLE KEYS */;
INSERT INTO `employeeadreessmapping` VALUES (1,1,3,'2022-10-11 00:00:00.000000','2023-03-01 00:00:00.000000',2,2),(2,1,1,'2022-11-16 00:00:00.000000','2023-03-01 00:00:00.000000',3,4),(3,2,2,'2022-12-24 00:00:00.000000','2023-03-01 00:00:00.000000',1,3);
/*!40000 ALTER TABLE `employeeadreessmapping` ENABLE KEYS */;
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
