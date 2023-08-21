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
-- Table structure for table `patient_register`
--

DROP TABLE IF EXISTS `patient_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient_register` (
  `iPatient_regester_id` int NOT NULL AUTO_INCREMENT,
  `admittedOn` date DEFAULT NULL,
  `discargeOn` date DEFAULT NULL,
  `patietisurance_id` int DEFAULT NULL,
  `RoomNumber` varchar(45) DEFAULT NULL,
  `patient_Patient_Id` int NOT NULL,
  PRIMARY KEY (`iPatient_regester_id`),
  KEY `ientinsurance_id_idx` (`patietisurance_id`),
  KEY `fk_patient_register_patient1_idx` (`patient_Patient_Id`),
  CONSTRAINT `fk_patient_register_patient1` FOREIGN KEY (`patient_Patient_Id`) REFERENCES `patient` (`Patient_Id`),
  CONSTRAINT `ientinsurance_id` FOREIGN KEY (`patietisurance_id`) REFERENCES `patient_insurance` (`PatientInsurance_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_register`
--

LOCK TABLES `patient_register` WRITE;
/*!40000 ALTER TABLE `patient_register` DISABLE KEYS */;
INSERT INTO `patient_register` VALUES (1,'2023-04-24','2023-04-26',1,'12A',1),(2,'2023-05-14','2023-05-19',2,'105C',2),(3,'2023-03-06','2023-03-10',3,'!D',3);
/*!40000 ALTER TABLE `patient_register` ENABLE KEYS */;
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
