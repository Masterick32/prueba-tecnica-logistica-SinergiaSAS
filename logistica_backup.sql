-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: logistica
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan Pérez','Calle 123, Ibagué','3001234567');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envios_maritimos`
--

DROP TABLE IF EXISTS `envios_maritimos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envios_maritimos` (
  `id_envio` bigint NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `tipo_producto` varchar(255) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `puerto_entrega` varchar(255) DEFAULT NULL,
  `precio_envio` double DEFAULT NULL,
  `numero_flotilla` varchar(8) DEFAULT NULL,
  `numero_guia` varchar(10) DEFAULT NULL,
  `descuento` double NOT NULL,
  `precio_con_descuento` double DEFAULT NULL,
  PRIMARY KEY (`id_envio`),
  UNIQUE KEY `numero_guia` (`numero_guia`),
  KEY `id_cliente` (`id_cliente`),
  CONSTRAINT `envios_maritimos_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envios_maritimos`
--

LOCK TABLES `envios_maritimos` WRITE;
/*!40000 ALTER TABLE `envios_maritimos` DISABLE KEYS */;
INSERT INTO `envios_maritimos` VALUES (1,1,'Ropa',20,'2025-02-05','2025-02-10','Puerto de Ibagué',150,'ABC1234D','ABC1234567',3,145.5);
/*!40000 ALTER TABLE `envios_maritimos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `envios_terrestres`
--

DROP TABLE IF EXISTS `envios_terrestres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `envios_terrestres` (
  `id_envio` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `tipo_producto` varchar(255) DEFAULT NULL,
  `cantidad` int DEFAULT NULL,
  `fecha_registro` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `bodega_entrega` varchar(255) DEFAULT NULL,
  `precio_envio` double NOT NULL,
  `placa_vehiculo` varchar(255) DEFAULT NULL,
  `numero_guia` varchar(255) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `precio_con_descuento` decimal(10,2) DEFAULT NULL,
  `cliente_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id_envio`),
  UNIQUE KEY `numero_guia` (`numero_guia`),
  KEY `id_cliente` (`id_cliente`),
  KEY `FKplfms3xhiuddmvre0cmn4ulm7` (`cliente_id`),
  CONSTRAINT `envios_terrestres_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  CONSTRAINT `FKplfms3xhiuddmvre0cmn4ulm7` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `envios_terrestres`
--

LOCK TABLES `envios_terrestres` WRITE;
/*!40000 ALTER TABLE `envios_terrestres` DISABLE KEYS */;
INSERT INTO `envios_terrestres` VALUES (2,1,'Electrónica',15,'2025-02-05','2025-02-07','Bodega Central',100,'ABC123','ABC1234567',5.00,95.00,NULL);
/*!40000 ALTER TABLE `envios_terrestres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-06  9:49:22
