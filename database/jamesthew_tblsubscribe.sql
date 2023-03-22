-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: jamesthew
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `tblsubscribe`
--

DROP TABLE IF EXISTS `tblsubscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsubscribe` (
  `subscribeId` int NOT NULL AUTO_INCREMENT,
  `userId` int DEFAULT NULL,
  `subscribeName` varchar(50) DEFAULT NULL,
  `subscribePayment` varchar(50) DEFAULT NULL,
  `subscribePrice` int DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`subscribeId`),
  KEY `userId` (`userId`),
  CONSTRAINT `tblsubscribe_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tbluser` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsubscribe`
--

LOCK TABLES `tblsubscribe` WRITE;
/*!40000 ALTER TABLE `tblsubscribe` DISABLE KEYS */;
INSERT INTO `tblsubscribe` VALUES (1,2,'3 months','Paypal',20,'2023-03-04 00:00:00'),(2,2,'1 month','Paypal',10,'2023-03-04 00:00:00'),(3,1,'3 months','Mastercard',20,'2023-03-04 00:00:00'),(4,8,'3 months','Paypal',20,'2023-03-04 00:00:00'),(5,8,'3 months','Visacard',20,'2023-03-04 00:00:00'),(6,8,'5 months','Mastercard',50,'2023-03-04 00:00:00'),(7,10,'3 months','Paypal',20,'2023-03-05 00:00:00'),(8,8,'3 months','Mastercard',20,'2023-03-06 00:00:00');
/*!40000 ALTER TABLE `tblsubscribe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-22 19:41:47
