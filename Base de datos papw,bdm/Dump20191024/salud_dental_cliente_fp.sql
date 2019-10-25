CREATE DATABASE  IF NOT EXISTS `salud_dental` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `salud_dental`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: salud_dental
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `cliente_fp`
--

DROP TABLE IF EXISTS `cliente_fp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_fp` (
  `clienteFP_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Cliente_Id` int(11) NOT NULL,
  `Historial_Id` int(11) NOT NULL,
  `FP_Id` int(11) NOT NULL,
  PRIMARY KEY (`clienteFP_Id`),
  KEY `Cliente_Id` (`Cliente_Id`),
  KEY `Historial_Id` (`Historial_Id`),
  KEY `FP_Id` (`FP_Id`),
  CONSTRAINT `cliente_fp_ibfk_1` FOREIGN KEY (`Cliente_Id`) REFERENCES `cliente` (`Cliente_Id`),
  CONSTRAINT `cliente_fp_ibfk_2` FOREIGN KEY (`Historial_Id`) REFERENCES `historial_compras` (`Historial_Id`),
  CONSTRAINT `cliente_fp_ibfk_3` FOREIGN KEY (`FP_Id`) REFERENCES `forma_pago` (`FP_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_fp`
--

LOCK TABLES `cliente_fp` WRITE;
/*!40000 ALTER TABLE `cliente_fp` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente_fp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-24 21:03:43
