CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `idAutor` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` char(60) NOT NULL,
  PRIMARY KEY (`idAutor`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (100,'gabriel'),(101,'rafael'),(102,'homero'),(103,'chespiare'),(104,'jose');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejemplares`
--

DROP TABLE IF EXISTS `ejemplares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejemplares` (
  `idEjemplares` int(11) NOT NULL AUTO_INCREMENT,
  `id_libros` int(11) NOT NULL,
  `Localizacion` char(70) DEFAULT NULL,
  PRIMARY KEY (`idEjemplares`),
  KEY `id_libros_idx` (`id_libros`),
  CONSTRAINT `id_libros` FOREIGN KEY (`id_libros`) REFERENCES `libros` (`idLibro`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplares`
--

LOCK TABLES `ejemplares` WRITE;
/*!40000 ALTER TABLE `ejemplares` DISABLE KEYS */;
INSERT INTO `ejemplares` VALUES (1000,1,'riohacha'),(1001,2,'camarones'),(1002,4,'dibulla'),(1003,3,'la flores'),(1004,5,'riohacha');
/*!40000 ALTER TABLE `ejemplares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escribir`
--

DROP TABLE IF EXISTS `escribir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escribir` (
  `idEscribir` int(11) NOT NULL AUTO_INCREMENT,
  `dia_mes_anio` date NOT NULL,
  `idAutor` int(11) NOT NULL,
  `idLibro` int(11) NOT NULL,
  PRIMARY KEY (`idEscribir`),
  KEY `idLibros_idx` (`idLibro`),
  KEY `idAutor_idx` (`idAutor`),
  CONSTRAINT `idAutor` FOREIGN KEY (`idAutor`) REFERENCES `autor` (`idAutor`),
  CONSTRAINT `idLibro` FOREIGN KEY (`idLibro`) REFERENCES `libros` (`idLibro`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escribir`
--

LOCK TABLES `escribir` WRITE;
/*!40000 ALTER TABLE `escribir` DISABLE KEYS */;
INSERT INTO `escribir` VALUES (1,'2019-03-14',100,1),(2,'2021-12-17',102,2),(3,'2023-08-18',101,5),(4,'2023-07-30',104,3),(5,'2022-05-01',103,4),(6,'2023-09-24',100,6),(7,'2023-05-20',104,7);
/*!40000 ALTER TABLE `escribir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `idLibro` int(11) NOT NULL AUTO_INCREMENT,
  `Titulo` char(70) NOT NULL,
  `Numero_pagina` char(100) NOT NULL,
  `Editorial` char(70) NOT NULL,
  `ISBN` char(100) NOT NULL,
  PRIMARY KEY (`idLibro`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'La hiliada','200','escribe','123456788909'),(2,'Romeo y Julieta','180','santillana','123456788910'),(3,'La Maria','150','santillana','123456788911'),(4,'Capericita Roja','178','escribe','123456788912'),(5,'El Titanic','235','mundopalabras','123456788913'),(6,'El mundo de Sofia','900','sanbook','123456788914'),(7,'Ser para hacer','1500','crisbook','123456788915');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestar`
--

DROP TABLE IF EXISTS `prestar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestar` (
  `idPrestar` int(11) NOT NULL AUTO_INCREMENT,
  `idUsuario` int(11) NOT NULL,
  `idEjemplares` int(11) NOT NULL,
  `fecha_dev` date NOT NULL,
  `fecha_pres` date NOT NULL,
  PRIMARY KEY (`idPrestar`),
  KEY `idEjemplares_idx` (`idEjemplares`),
  KEY `idUsuario_idx` (`idUsuario`),
  CONSTRAINT `idEjemplares` FOREIGN KEY (`idEjemplares`) REFERENCES `ejemplares` (`idEjemplares`),
  CONSTRAINT `idUsuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuarios` (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestar`
--

LOCK TABLES `prestar` WRITE;
/*!40000 ALTER TABLE `prestar` DISABLE KEYS */;
INSERT INTO `prestar` VALUES (1,2,1000,'2023-03-10','2023-02-10'),(2,1,1004,'2023-03-10','2023-02-10'),(3,3,1003,'2023-03-12','2023-02-12'),(4,4,1002,'2023-03-16','2023-02-16'),(5,2,1001,'2023-03-15','2023-02-15');
/*!40000 ALTER TABLE `prestar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `idUsuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` char(50) NOT NULL,
  `Apellidos` char(50) NOT NULL,
  `Direccion` char(80) NOT NULL,
  `Telefono` char(12) NOT NULL,
  PRIMARY KEY (`idUsuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'diego','maradona','clle 34','3934565677'),(2,'james','rodriges','clle 45','3109878685'),(3,'pepe','palacio','cra 34','3453436575'),(4,'juan','julio','km4','343123455644'),(5,'daniel','perez','clle 1','236456854');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'biblioteca'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-10 10:50:31
