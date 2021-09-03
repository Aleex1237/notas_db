-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: notas_db
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Youbridge'),(2,'Skippad'),(3,'Oyoloo'),(4,'Oyondu'),(5,'Wikizz'),(6,'Gabcube'),(7,'Jaxworks'),(8,'Lazz'),(9,'Jaxworks'),(10,'Rooxo');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias_notas`
--

DROP TABLE IF EXISTS `categorias_notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias_notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nota_id` int NOT NULL,
  `categoria_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `categorias_notas_idx` (`nota_id`),
  KEY `notas_categorias_idx` (`categoria_id`),
  CONSTRAINT `categorias_notas` FOREIGN KEY (`nota_id`) REFERENCES `notas` (`id`),
  CONSTRAINT `notas_categorias` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias_notas`
--

LOCK TABLES `categorias_notas` WRITE;
/*!40000 ALTER TABLE `categorias_notas` DISABLE KEYS */;
INSERT INTO `categorias_notas` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10);
/*!40000 ALTER TABLE `categorias_notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notas`
--

DROP TABLE IF EXISTS `notas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `usuario_id` int NOT NULL,
  `esconder_nota` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_notas_idx` (`usuario_id`),
  CONSTRAINT `usuario_notas` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notas`
--

LOCK TABLES `notas` WRITE;
/*!40000 ALTER TABLE `notas` DISABLE KEYS */;
INSERT INTO `notas` VALUES (1,'Asoka','Alphazap','2021-07-19 17:10:38','2021-02-04 16:00:41',1,0),(2,'Cardify','Sub-Ex','2021-01-09 20:28:27','2021-06-18 18:12:56',2,0),(3,'Y-Solowarm','Sonair','2021-02-05 22:49:36','2021-04-27 20:27:18',3,0),(4,'Tres-Zap','Tampflex','2021-07-24 11:55:58','2020-12-29 22:59:10',4,0),(5,'Stringtough','Mat Lam Tam','2021-02-25 06:57:27','2020-12-23 02:15:37',5,0),(6,'Tres-Zap','Treeflex','2021-04-16 20:18:23','2020-09-13 18:37:29',6,0),(7,'Konklux','Tin','2021-05-14 11:07:38','2021-08-19 21:03:00',7,0),(8,'Tampflex','Vagram','2020-11-10 06:57:36','2020-11-03 18:26:14',8,0),(9,'Domainer','Alpha','2020-11-04 17:21:19','2021-08-08 15:52:30',9,0),(10,'Bitwolf','Solarbreeze','2020-11-27 08:40:48','2020-12-23 05:36:36',10,0);
/*!40000 ALTER TABLE `notas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Bessy','bstringman0@redcross.org'),(2,'Anitra','akingsly1@tiny.cc'),(3,'Maryellen','mbevans2@ca.gov'),(4,'Susanne','srichardson3@bbb.org'),(5,'Robbin','rearthfield4@alibaba.com'),(6,'Colas','csheerin5@chicagotribune.com'),(7,'Eddy','edobeson6@w3.org'),(8,'Dave','dhestrop7@trellian.com'),(9,'Arte','agiacobillo8@chicagotribune.com'),(10,'Marla','mbeavors9@rakuten.co.jp');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'notas_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-03 12:13:55
