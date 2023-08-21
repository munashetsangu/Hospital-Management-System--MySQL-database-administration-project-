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
-- Table structure for table `patientaddressmapping`
--

DROP TABLE IF EXISTS `patientaddressmapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patientaddressmapping` (
  `PatientAddressMapping_id` int NOT NULL AUTO_INCREMENT,
  `AddressType_id` int DEFAULT NULL,
  `Address_id` int DEFAULT NULL,
  `Index` int DEFAULT NULL,
  `CreatedOn` date DEFAULT NULL,
  `ModifiedOn` date DEFAULT NULL,
  `patient_Patient_Id` int NOT NULL,
  PRIMARY KEY (`PatientAddressMapping_id`),
  KEY `Address_id_idx` (`Address_id`),
  KEY `AddressType_idx` (`AddressType_id`),
  KEY `fk_patientaddressmapping_patient1_idx` (`patient_Patient_Id`),
  CONSTRAINT `Address_id` FOREIGN KEY (`Address_id`) REFERENCES `address` (`Address_id`),
  CONSTRAINT `AddressType` FOREIGN KEY (`AddressType_id`) REFERENCES `address_type` (`AddressType_id`),
  CONSTRAINT `fk_patientaddressmapping_patient1` FOREIGN KEY (`patient_Patient_Id`) REFERENCES `patient` (`Patient_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patientaddressmapping`
--

LOCK TABLES `patientaddressmapping` WRITE;
/*!40000 ALTER TABLE `patientaddressmapping` DISABLE KEYS */;
INSERT INTO `patientaddressmapping` VALUES (1,1,1,3,'2023-04-01','2023-05-09',2),(2,2,5,2,'2023-03-27','3023-05-10',1),(3,2,6,3,'2023-05-07','2023-05-11',3);
/*!40000 ALTER TABLE `patientaddressmapping` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-01 14:27:53
