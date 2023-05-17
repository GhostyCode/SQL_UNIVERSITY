CREATE DATABASE  IF NOT EXISTS `biblioteca2023` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `biblioteca2023`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca2023
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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add usuario',7,'add_usuario'),(26,'Can change usuario',7,'change_usuario'),(27,'Can delete usuario',7,'delete_usuario'),(28,'Can view usuario',7,'view_usuario'),(29,'Can add prestar',8,'add_prestar'),(30,'Can change prestar',8,'change_prestar'),(31,'Can delete prestar',8,'delete_prestar'),(32,'Can view prestar',8,'view_prestar'),(33,'Can add ejemplar',9,'add_ejemplar'),(34,'Can change ejemplar',9,'change_ejemplar'),(35,'Can delete ejemplar',9,'delete_ejemplar'),(36,'Can view ejemplar',9,'view_ejemplar'),(37,'Can add publicacion',10,'add_publicacion'),(38,'Can change publicacion',10,'change_publicacion'),(39,'Can delete publicacion',10,'delete_publicacion'),(40,'Can view publicacion',10,'view_publicacion'),(41,'Can add libro',11,'add_libro'),(42,'Can change libro',11,'change_libro'),(43,'Can delete libro',11,'delete_libro'),(44,'Can view libro',11,'view_libro'),(45,'Can add autor',12,'add_autor'),(46,'Can change autor',12,'change_autor'),(47,'Can delete autor',12,'delete_autor'),(48,'Can view autor',12,'view_autor');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$600000$Ltn3mEG2TH4DqroOmSmeu1$/6plg//D0qJTGZEnP9vGul0yMBZNuuxPk/+hcL7tAXs=','2023-05-17 01:52:00.367135',1,'admin','','','admin@gmail.com',1,1,'2023-05-17 01:51:34.751060');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca_autor`
--

DROP TABLE IF EXISTS `biblioteca_autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biblioteca_autor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombreAutor` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca_autor`
--

LOCK TABLES `biblioteca_autor` WRITE;
/*!40000 ALTER TABLE `biblioteca_autor` DISABLE KEYS */;
INSERT INTO `biblioteca_autor` VALUES (1,'Stephen King'),(2,'Jostein Gaarder'),(3,'Homero');
/*!40000 ALTER TABLE `biblioteca_autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca_ejemplar`
--

DROP TABLE IF EXISTS `biblioteca_ejemplar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biblioteca_ejemplar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `localizacionEjemplar` varchar(150) NOT NULL,
  `libro_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `biblioteca_ejemplar_libro_id_be75ba6c_fk_biblioteca_libro_id` (`libro_id`),
  CONSTRAINT `biblioteca_ejemplar_libro_id_be75ba6c_fk_biblioteca_libro_id` FOREIGN KEY (`libro_id`) REFERENCES `biblioteca_libro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca_ejemplar`
--

LOCK TABLES `biblioteca_ejemplar` WRITE;
/*!40000 ALTER TABLE `biblioteca_ejemplar` DISABLE KEYS */;
INSERT INTO `biblioteca_ejemplar` VALUES (1,'Hector Salah Zuleta',1),(2,'Biblioteca Padilla',2),(3,'Biblioteca virtual el pollo',3);
/*!40000 ALTER TABLE `biblioteca_ejemplar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca_libro`
--

DROP TABLE IF EXISTS `biblioteca_libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biblioteca_libro` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tituloLibro` varchar(100) NOT NULL,
  `numeroPaginaLibro` varchar(100) NOT NULL,
  `editorialLibro` varchar(100) NOT NULL,
  `isbnLibro` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca_libro`
--

LOCK TABLES `biblioteca_libro` WRITE;
/*!40000 ALTER TABLE `biblioteca_libro` DISABLE KEYS */;
INSERT INTO `biblioteca_libro` VALUES (1,'El mundo de Sofía','700','PolloBooks','9950'),(2,'It (Eso)','1000','Casa del libro','9874125'),(3,'Ilíada','400','GreciaArriba','0000');
/*!40000 ALTER TABLE `biblioteca_libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `biblioteca_publicacion`
--

DROP TABLE IF EXISTS `biblioteca_publicacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biblioteca_publicacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fechaPublicacion` date NOT NULL,
  `autor_id` bigint(20) NOT NULL,
  `libro_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `biblioteca_publicacion_autor_id_6c77b32f_fk_biblioteca_autor_id` (`autor_id`),
  KEY `biblioteca_publicacion_libro_id_393f936c_fk_biblioteca_libro_id` (`libro_id`),
  CONSTRAINT `biblioteca_publicacion_autor_id_6c77b32f_fk_biblioteca_autor_id` FOREIGN KEY (`autor_id`) REFERENCES `biblioteca_autor` (`id`),
  CONSTRAINT `biblioteca_publicacion_libro_id_393f936c_fk_biblioteca_libro_id` FOREIGN KEY (`libro_id`) REFERENCES `biblioteca_libro` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biblioteca_publicacion`
--

LOCK TABLES `biblioteca_publicacion` WRITE;
/*!40000 ALTER TABLE `biblioteca_publicacion` DISABLE KEYS */;
INSERT INTO `biblioteca_publicacion` VALUES (1,'1991-01-01',2,1),(2,'1986-09-15',1,2),(3,'1598-02-05',3,3);
/*!40000 ALTER TABLE `biblioteca_publicacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2023-05-17 01:58:42.537788','1','Stephen King',1,'[{\"added\": {}}]',12,1),(2,'2023-05-17 01:59:21.983078','2','Jostein Gaarder',1,'[{\"added\": {}}]',12,1),(3,'2023-05-17 01:59:42.803160','3','Homero',1,'[{\"added\": {}}]',12,1),(4,'2023-05-17 02:02:01.618638','1','El mundo de Sofía',1,'[{\"added\": {}}]',11,1),(5,'2023-05-17 02:03:31.813944','2','It (Eso)',1,'[{\"added\": {}}]',11,1),(6,'2023-05-17 02:04:42.950708','3','Ilíada',1,'[{\"added\": {}}]',11,1),(7,'2023-05-17 02:06:00.838941','1','El mundo de Sofía por Jostein Gaarder',1,'[{\"added\": {}}]',10,1),(8,'2023-05-17 02:06:38.674931','2','It (Eso) por Stephen King',1,'[{\"added\": {}}]',10,1),(9,'2023-05-17 02:07:26.970964','3','Ilíada por Homero',1,'[{\"added\": {}}]',10,1),(10,'2023-05-17 02:09:51.410541','1','Ejemplar del libro El mundo de Sofía',1,'[{\"added\": {}}]',9,1),(11,'2023-05-17 02:10:09.969046','2','Ejemplar del libro It (Eso)',1,'[{\"added\": {}}]',9,1),(12,'2023-05-17 02:10:23.632012','3','Ejemplar del libro Ilíada',1,'[{\"added\": {}}]',9,1),(13,'2023-05-17 02:11:04.196536','1','Michael',1,'[{\"added\": {}}]',7,1),(14,'2023-05-17 02:11:39.472129','2','Jonathan',1,'[{\"added\": {}}]',7,1),(15,'2023-05-17 02:12:08.415958','3','Jose',1,'[{\"added\": {}}]',7,1),(16,'2023-05-17 02:12:38.745934','1','Prestar object (1)',1,'[{\"added\": {}}]',8,1),(17,'2023-05-17 02:13:03.189883','2','Prestar object (2)',1,'[{\"added\": {}}]',8,1),(18,'2023-05-17 02:15:03.615481','3','Jose: presto un Ejemplar del libro Ilíada',1,'[{\"added\": {}}]',8,1),(19,'2023-05-17 02:15:15.280089','1','Michael: presto un Ejemplar del libro El mundo de Sofía',2,'[{\"changed\": {\"fields\": [\"FechaDevPrestar\", \"FechaPresPrestar\"]}}]',8,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(12,'biblioteca','autor'),(9,'biblioteca','ejemplar'),(11,'biblioteca','libro'),(10,'biblioteca','publicacion'),(5,'contenttypes','contenttype'),(8,'prestamos','prestar'),(6,'sessions','session'),(7,'usuarios','usuario');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2023-05-17 01:05:45.073252'),(2,'auth','0001_initial','2023-05-17 01:05:45.855054'),(3,'admin','0001_initial','2023-05-17 01:05:46.035009'),(4,'admin','0002_logentry_remove_auto_add','2023-05-17 01:05:46.046004'),(5,'admin','0003_logentry_add_action_flag_choices','2023-05-17 01:05:46.063005'),(6,'contenttypes','0002_remove_content_type_name','2023-05-17 01:05:46.188003'),(7,'auth','0002_alter_permission_name_max_length','2023-05-17 01:05:46.254513'),(8,'auth','0003_alter_user_email_max_length','2023-05-17 01:05:46.296533'),(9,'auth','0004_alter_user_username_opts','2023-05-17 01:05:46.306531'),(10,'auth','0005_alter_user_last_login_null','2023-05-17 01:05:46.386554'),(11,'auth','0006_require_contenttypes_0002','2023-05-17 01:05:46.391552'),(12,'auth','0007_alter_validators_add_error_messages','2023-05-17 01:05:46.401549'),(13,'auth','0008_alter_user_username_max_length','2023-05-17 01:05:46.486587'),(14,'auth','0009_alter_user_last_name_max_length','2023-05-17 01:05:46.620718'),(15,'auth','0010_alter_group_name_max_length','2023-05-17 01:05:46.646720'),(16,'auth','0011_update_proxy_permissions','2023-05-17 01:05:46.664719'),(17,'auth','0012_alter_user_first_name_max_length','2023-05-17 01:05:46.737738'),(18,'sessions','0001_initial','2023-05-17 01:05:46.790738'),(19,'biblioteca','0001_initial','2023-05-17 01:49:32.834061'),(20,'usuarios','0001_initial','2023-05-17 01:49:32.859067'),(21,'prestamos','0001_initial','2023-05-17 01:49:33.033062');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('cf9g1vdjtjpuxezvy93aa6w5d0owfel3','.eJxVjMsOwiAQRf-FtSG8CujSvd9AhpmpVA0kpV0Z_92QdKHbe865b5Fg30raO69pIXERWpx-twz45DoAPaDem8RWt3XJcijyoF3eGvHrerh_BwV6GXVAc47e2GCZp4zBexWJwSkLUSnQSGaaMWogq4NzzpKaDZrIBjQ4FJ8v2Is3tw:1pz6Ke:AN_XVZcJ_VzXu9sAQQZNrOdixUgDHykiHdGzOp83i1o','2023-05-31 01:52:00.371134');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamos_prestar`
--

DROP TABLE IF EXISTS `prestamos_prestar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamos_prestar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fechaDevPrestar` date NOT NULL,
  `fechaPresPrestar` date NOT NULL,
  `ejemplar_id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prestamos_prestar_ejemplar_id_676944e7_fk_biblioteca_ejemplar_id` (`ejemplar_id`),
  KEY `prestamos_prestar_usuario_id_cd0c00c8_fk_usuarios_usuario_id` (`usuario_id`),
  CONSTRAINT `prestamos_prestar_ejemplar_id_676944e7_fk_biblioteca_ejemplar_id` FOREIGN KEY (`ejemplar_id`) REFERENCES `biblioteca_ejemplar` (`id`),
  CONSTRAINT `prestamos_prestar_usuario_id_cd0c00c8_fk_usuarios_usuario_id` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios_usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamos_prestar`
--

LOCK TABLES `prestamos_prestar` WRITE;
/*!40000 ALTER TABLE `prestamos_prestar` DISABLE KEYS */;
INSERT INTO `prestamos_prestar` VALUES (1,'2023-05-27','2023-05-17',1,1),(2,'2023-05-18','2023-05-17',2,2),(3,'2023-05-25','2023-05-16',3,3);
/*!40000 ALTER TABLE `prestamos_prestar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_usuario`
--

DROP TABLE IF EXISTS `usuarios_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombreUsuario` varchar(100) NOT NULL,
  `apellidosUsuario` varchar(100) NOT NULL,
  `direccionUsuario` varchar(100) NOT NULL,
  `telefonoUsuario` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_usuario`
--

LOCK TABLES `usuarios_usuario` WRITE;
/*!40000 ALTER TABLE `usuarios_usuario` DISABLE KEYS */;
INSERT INTO `usuarios_usuario` VALUES (1,'Michael','Curvelo Moscote','Km 1','3122587412'),(2,'Jonathan','Iglesias Diaz','km 52','3658522145'),(3,'Jose','Pushaina Epiayu','Km 44','3211478526');
/*!40000 ALTER TABLE `usuarios_usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-16 21:17:59
