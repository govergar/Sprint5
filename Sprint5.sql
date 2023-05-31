-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: sprint_5
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
-- Table structure for table `operario`
--

DROP TABLE IF EXISTS `operario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operario` (
  `ID_operario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `Numero_soporte` int DEFAULT NULL,
  PRIMARY KEY (`ID_operario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operario`
--

LOCK TABLES `operario` WRITE;
/*!40000 ALTER TABLE `operario` DISABLE KEYS */;
INSERT INTO `operario` VALUES (1,'Raul','Martinez',23,'raul@martinez.cl',14),(2,'sebastian','Gonzalez',19,'sebastian@gonzalez.cl',2),(3,'Alan','Brito',55,'Alan@brito.cl',32),(4,'Adolfo','Aedo',46,'Adolfo@aedo.cl',28),(5,'Pedro','Perez',27,'Pedro@perez.cl',17);
/*!40000 ALTER TABLE `operario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soporte`
--

DROP TABLE IF EXISTS `soporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soporte` (
  `ID_soporte` int NOT NULL AUTO_INCREMENT,
  `ID_operario` varchar(50) DEFAULT NULL,
  `ID_usuario` varchar(50) DEFAULT NULL,
  `Fecha` date DEFAULT NULL,
  `Evaluacion` int DEFAULT NULL,
  PRIMARY KEY (`ID_soporte`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soporte`
--

LOCK TABLES `soporte` WRITE;
/*!40000 ALTER TABLE `soporte` DISABLE KEYS */;
INSERT INTO `soporte` VALUES (1,'4','5','2023-01-02',5),(2,'4','1','2023-02-14',5),(3,'1','5','2023-03-18',5),(4,'2','2','2023-04-25',7),(5,'4','4','2023-05-11',9),(6,'3','2','2023-01-29',3),(7,'4','4','2023-02-12',6),(8,'3','4','2023-03-04',6),(9,'2','2','2023-04-10',4),(10,'5','1','2023-05-23',1);
/*!40000 ALTER TABLE `soporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `ID_usuario` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellido` varchar(50) DEFAULT NULL,
  `Edad` int DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `Numero_peticiones` int DEFAULT NULL,
  PRIMARY KEY (`ID_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Gonzalo','Vergara',50,'gonzalo@Vergara.cl',2),(2,'Gonzalo','Vergara',50,'gonzalo@Vergara.cl',2),(3,'Lalo','Landa',31,'lalo@landa.cl',0),(4,'Iñigo','Montoya',32,'iñigo@montoya.cl',4),(5,'Claudia','Lopez',29,'claudia@lopez.cl',6),(6,'Ivan','zamorano',23,'Ivan@zamorano.cl',14);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-31  0:02:13
