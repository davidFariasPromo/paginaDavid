-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: paginadavidnegocio
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `precio_ahora` varchar(45) DEFAULT NULL,
  `precio_antes` varchar(45) DEFAULT NULL,
  `descripcion` longtext,
  `imagen` varchar(45) DEFAULT NULL,
  `stock` varchar(45) DEFAULT NULL,
  `slug` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Conjunto de 3 piñata de unicornio','450','500','Conjunto de tres piñatas de unicornio, elaboradas de carton y forradas con papel crepe blanco. Las piñatas no son del mismo tamaño, su tamaño es escalable','cabezaUnicornioTres','5 en stock','conjunto-unicornios'),(2,'Piñata de 5 picos tradicional','170','200','Piñata tradicional de 5 picos, elaborada con base de papel, forrada con papeles crepe de distintos colores, mide aproximadamente 1.20 m ','cincoPicosColores','4 en stock','tradicional-5-picos-colorida'),(3,'Piñata de 5 picos tradicional dorada','190','230','Piñata tradicional de picos, elaborada en base papel y forrada con papeles china amarillos y rojos, picos forrados con papel metalicos dorados. Mide aproximadamente 1.30 m','cincoPicosdorada','7 en stock','cinco-picos-dorada-tradicional'),(4,'Piñata de 5 picos tradicional roja','190','230','Piñata tradicional de 5 picos, elaborada en base de papel, forrada con papeles china verdes y rojos simulando una noche buena, picos forrados en papel metalico rojo. Mide aproximadamente 1.30m','cincoPicosRoja','6 en stock','cinco-picos-roja-tradicional'),(17,'Piñata de picos de distitntos colores','260','300','Piñata  de 7 picos elaborada con base carton y forrada con papeles crepe y chinas de diferentes colores, simulando lo que es un arcoiris. Mide aproximadamente 1.50 m','coloridadPicos','3 en stock','7-picos-colorida'),(18,'Piñata tradicional de 6 picos','150','170','Piñata tradicional de 6 pciso con base de papel, picos forrados con papek metalicos de disintos colores, cuenta con un diseño de noche buena en la parte central. Mide aproximadamente 1.30 m','navidadColores','7 en stock','tradicional-6-picos-noche-buena'),(19,'Piñata del numero dos estilo unicornio','150','180','Piñata del numero dos elaborada con base de carton, forrada con papel crepe blanco en su totalidad, y adornada al estilo unicornio. Mide aproximadamente 1.40m.','numeroDosUnicornio','4 en stock','numero-dos-unicornio'),(20,'Piñata de 7 picos de distintos colores','200','240','Piñata tradicional de 7 picos intercalados en toda la base, forrado con papel china de colores mesclados en su totalidad. Mide aproximadamente 1.60 m','sietePicosColoresEncendidos','3 en stock','siete-picos-colores-encendidos'),(25,'Piñata de silueta de unicornio','160','180','Piñata de silueta de unicornio, elaborada con base de carton, cuerpo forrado con papel crepe blanco, mechas de papel china de disitintos colores. Mide aproximadamente 1.50 m','unicornioFigura','4 en stock','silueta-de-unicornio'),(26,'Piñata de tambor estilo unicornio','130','179','Piñata de tambor estilo unicornio, elaborada en base redonda de carton de 1m, forrada con papel crepe blanco en su totalidad.','unicornioTambor','3 en stock','tambor-unicornio'),(27,'Piñata de 7 picos tradicional de colores','170','190','Piñata tradicional de 7 picos elaborada en base de papel, cuerpo forrado con papel crepe picado en su totalidad, mide aproximadamente 1.40m','sietePicosColorida','3 en stock','siete-picos-colores-encendidos'),(28,'Piñata de tambor estilo unicornio','150','180','Piñata de tambor estilo unicornio, elaborada en base redonda de carton de 1m, forrada con papel crepe blanco en su totalidad, tiene pompones de papel china en la parte frontal.','unicornioTambordos','4 en stock','tambor-unicornio-grande');
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimoniales`
--

DROP TABLE IF EXISTS `testimoniales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testimoniales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(60) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `mensaje` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimoniales`
--

LOCK TABLES `testimoniales` WRITE;
/*!40000 ALTER TABLE `testimoniales` DISABLE KEYS */;
INSERT INTO `testimoniales` VALUES (3,'Mirna','Contreras Solano','mirna@gmail.com','2893456789',' Las piñatas son super hermosas y de buena calidad.'),(4,'Armando ','Colon Medina','amandoColon345@gmail.com','2283543513','Son de my buena calidad, y el precio se ajusta a las necesidades.'),(5,'Lea michele','Gutierrez Maldonado','lea34mn@gmail.com','8903457896','Hermosas piñatas, se las recomiendo. Son de muy buena calidad.'),(6,'Armando','Contreras Solano','armando345@gmail.com','2881241689','Son unas hermosas piñatas, recomendadas 100%.');
/*!40000 ALTER TABLE `testimoniales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-15 15:12:24
