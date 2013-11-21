-- MySQL dump 10.13  Distrib 5.5.32, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: turismo
-- ------------------------------------------------------
-- Server version	5.5.32-0ubuntu0.13.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `turismo`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `turismo` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `turismo`;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_bda51c3c` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `permission_id_refs_id_a7792de1` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can add group',2,'add_group'),(5,'Can change group',2,'change_group'),(6,'Can delete group',2,'delete_group'),(7,'Can add user',3,'add_user'),(8,'Can change user',3,'change_user'),(9,'Can delete user',3,'delete_user'),(10,'Can add content type',4,'add_contenttype'),(11,'Can change content type',4,'change_contenttype'),(12,'Can delete content type',4,'delete_contenttype'),(13,'Can add session',5,'add_session'),(14,'Can change session',5,'change_session'),(15,'Can delete session',5,'delete_session'),(16,'Can add site',6,'add_site'),(17,'Can change site',6,'change_site'),(18,'Can delete site',6,'delete_site'),(19,'Can add log entry',7,'add_logentry'),(20,'Can change log entry',7,'change_logentry'),(21,'Can delete log entry',7,'delete_logentry'),(22,'Can add lugar',8,'add_lugar'),(23,'Can change lugar',8,'change_lugar'),(24,'Can delete lugar',8,'delete_lugar'),(25,'Can add provincia',9,'add_provincia'),(26,'Can change provincia',9,'change_provincia'),(27,'Can delete provincia',9,'delete_provincia'),(28,'Can add actividad',10,'add_actividad'),(29,'Can change actividad',10,'change_actividad'),(30,'Can delete actividad',10,'delete_actividad'),(31,'Can add parque emblematico',11,'add_parqueemblematico'),(32,'Can change parque emblematico',11,'change_parqueemblematico'),(33,'Can delete parque emblematico',11,'delete_parqueemblematico'),(34,'Can add lugar arqueologico',12,'add_lugararqueologico'),(35,'Can change lugar arqueologico',12,'change_lugararqueologico'),(36,'Can delete lugar arqueologico',12,'delete_lugararqueologico'),(37,'Can add museo',13,'add_museo'),(38,'Can change museo',13,'change_museo'),(39,'Can delete museo',13,'delete_museo'),(40,'Can add vista lugar',14,'add_vistalugar'),(41,'Can change vista lugar',14,'change_vistalugar'),(42,'Can delete vista lugar',14,'delete_vistalugar'),(43,'Can add lugar natural',15,'add_lugarnatural'),(44,'Can change lugar natural',15,'change_lugarnatural'),(45,'Can delete lugar natural',15,'delete_lugarnatural'),(46,'Can add lugar atractivo',16,'add_lugaratractivo'),(47,'Can change lugar atractivo',16,'change_lugaratractivo'),(48,'Can delete lugar atractivo',16,'delete_lugaratractivo'),(49,'Can add danza',17,'add_danza'),(50,'Can change danza',17,'change_danza'),(51,'Can delete danza',17,'delete_danza'),(52,'Can add artesania',18,'add_artesania'),(53,'Can change artesania',18,'change_artesania'),(54,'Can delete artesania',18,'delete_artesania'),(55,'Can add evento',19,'add_evento'),(56,'Can change evento',19,'change_evento'),(57,'Can delete evento',19,'delete_evento');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'gabriel','','','gmauriciosss@gmail.com','pbkdf2_sha256$10000$esT5YM8bAcRW$wxqOMcXy+9Ml+p1KMrKF301DuYsgud3WJjfeRdzfakc=',1,1,1,'2013-10-23 15:14:43','2013-09-11 14:29:51');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_fbfc09f1` (`user_id`),
  KEY `auth_user_groups_bda51c3c` (`group_id`),
  CONSTRAINT `group_id_refs_id_f0ee9890` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `user_id_refs_id_831107f1` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_fbfc09f1` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`),
  CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `user_id_refs_id_f2045483` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_fbfc09f1` (`user_id`),
  KEY `django_admin_log_e4470c6e` (`content_type_id`),
  CONSTRAINT `content_type_id_refs_id_288599e6` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `user_id_refs_id_c8665aa` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2013-09-11 14:30:34',1,8,'1','Valle del Mantaro',1,''),(2,'2013-09-11 14:30:40',1,8,'2','Selva Central',1,''),(3,'2013-09-11 14:30:45',1,8,'3','Alto Andino',1,''),(4,'2013-09-11 14:31:06',1,9,'1','Huancayo',1,''),(5,'2013-09-11 14:31:28',1,9,'2','Concepción',1,''),(6,'2013-09-11 14:31:41',1,9,'3','Jauja',1,''),(7,'2013-09-11 14:31:57',1,9,'4','Chupaca',1,''),(8,'2013-09-11 14:32:08',1,9,'5','Chanchamayo',1,''),(9,'2013-09-11 14:32:22',1,9,'6','Satipo',1,''),(10,'2013-09-11 14:32:36',1,9,'7','Tarma',1,''),(11,'2013-09-11 14:32:48',1,9,'8','Junin',1,''),(12,'2013-09-11 14:32:58',1,9,'9','Yauli',1,''),(13,'2013-09-11 14:34:30',1,14,'1','Lugares Arqueológicos',1,''),(14,'2013-09-11 14:35:51',1,14,'2','Parques Emblemáticos',1,''),(15,'2013-09-11 14:36:02',1,14,'3','Museos',1,''),(16,'2013-09-11 14:38:42',1,12,'1','Warívilca',1,''),(17,'2013-09-11 14:39:04',1,12,'2','Torre Torre',1,'');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'permission','auth','permission'),(2,'group','auth','group'),(3,'user','auth','user'),(4,'content type','contenttypes','contenttype'),(5,'session','sessions','session'),(6,'site','sites','site'),(7,'log entry','admin','logentry'),(8,'lugar','principal','lugar'),(9,'provincia','principal','provincia'),(10,'actividad','principal','actividad'),(11,'parque emblematico','principal','parqueemblematico'),(12,'lugar arqueologico','principal','lugararqueologico'),(13,'museo','principal','museo'),(14,'vista lugar','principal','vistalugar'),(15,'lugar natural','principal','lugarnatural'),(16,'lugar atractivo','principal','lugaratractivo'),(17,'danza','principal','danza'),(18,'artesania','principal','artesania'),(19,'evento','principal','evento');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_c25c2c28` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('0c006abaa6b94fb997daf1cce9ea1128','NWRkNDM2MDJmOTQxOGQ1OGVkNTcxNWI0NDBkNDAxYjExOTgxYjk2MjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-09-26 02:59:23'),('1a8658da6243da15e9ef27ddd0510c1f','NDM0MWJhMjZjMDI1MDlkZDlkZGM2OWEyNmRlZGRmMjBhYzdiM2Q4ODqAAn1xAVUKdGVzdGNvb2tp\nZXECVQZ3b3JrZWRxA3Mu\n','2013-09-25 14:30:05'),('c660cb67018548c8236a57c4a7e6ce59','NWRkNDM2MDJmOTQxOGQ1OGVkNTcxNWI0NDBkNDAxYjExOTgxYjk2MjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-09-25 14:30:11'),('f429398ee2d502833bdf152ff4ada5bb','NWRkNDM2MDJmOTQxOGQ1OGVkNTcxNWI0NDBkNDAxYjExOTgxYjk2MjqAAn1xAShVEl9hdXRoX3Vz\nZXJfYmFja2VuZHECVSlkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZHED\nVQ1fYXV0aF91c2VyX2lkcQSKAQF1Lg==\n','2013-11-06 15:14:43');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_actividad`
--

DROP TABLE IF EXISTS `principal_actividad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_actividad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_actividad_bf663454` (`provincia_id`),
  CONSTRAINT `provincia_id_refs_id_df3618cf` FOREIGN KEY (`provincia_id`) REFERENCES `principal_provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_actividad`
--

LOCK TABLES `principal_actividad` WRITE;
/*!40000 ALTER TABLE `principal_actividad` DISABLE KEYS */;
/*!40000 ALTER TABLE `principal_actividad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_artesania`
--

DROP TABLE IF EXISTS `principal_artesania`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_artesania` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_artesania_bf663454` (`provincia_id`),
  CONSTRAINT `provincia_id_refs_id_89601cbc` FOREIGN KEY (`provincia_id`) REFERENCES `principal_provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_artesania`
--

LOCK TABLES `principal_artesania` WRITE;
/*!40000 ALTER TABLE `principal_artesania` DISABLE KEYS */;
/*!40000 ALTER TABLE `principal_artesania` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_danza`
--

DROP TABLE IF EXISTS `principal_danza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_danza` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `fecha` datetime NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_danza_bf663454` (`provincia_id`),
  CONSTRAINT `provincia_id_refs_id_9a51bc96` FOREIGN KEY (`provincia_id`) REFERENCES `principal_provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_danza`
--

LOCK TABLES `principal_danza` WRITE;
/*!40000 ALTER TABLE `principal_danza` DISABLE KEYS */;
/*!40000 ALTER TABLE `principal_danza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_evento`
--

DROP TABLE IF EXISTS `principal_evento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_evento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mes_evento` date NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_evento_bf663454` (`provincia_id`),
  CONSTRAINT `provincia_id_refs_id_6b108ab6` FOREIGN KEY (`provincia_id`) REFERENCES `principal_provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_evento`
--

LOCK TABLES `principal_evento` WRITE;
/*!40000 ALTER TABLE `principal_evento` DISABLE KEYS */;
/*!40000 ALTER TABLE `principal_evento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_lugar`
--

DROP TABLE IF EXISTS `principal_lugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_lugar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_lugar`
--

LOCK TABLES `principal_lugar` WRITE;
/*!40000 ALTER TABLE `principal_lugar` DISABLE KEYS */;
INSERT INTO `principal_lugar` VALUES (1,'Valle del Mantaro','dogf'),(2,'Selva Central','lkhjklh'),(3,'Alto Andino','lkhklh');
/*!40000 ALTER TABLE `principal_lugar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_lugararqueologico`
--

DROP TABLE IF EXISTS `principal_lugararqueologico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_lugararqueologico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_lugararqueologico_bf663454` (`provincia_id`),
  CONSTRAINT `provincia_id_refs_id_a225fbbb` FOREIGN KEY (`provincia_id`) REFERENCES `principal_provincia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_lugararqueologico`
--

LOCK TABLES `principal_lugararqueologico` WRITE;
/*!40000 ALTER TABLE `principal_lugararqueologico` DISABLE KEYS */;
INSERT INTO `principal_lugararqueologico` VALUES (1,'Warívilca','hklh','lugararquelogico/warivilca_2.jpg',1),(2,'Torre Torre','dsgreghrt','lugararquelogico/torre-torre_3.JPG',1);
/*!40000 ALTER TABLE `principal_lugararqueologico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_lugaratractivo`
--

DROP TABLE IF EXISTS `principal_lugaratractivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_lugaratractivo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_lugaratractivo_bf663454` (`provincia_id`),
  CONSTRAINT `provincia_id_refs_id_f03ddf95` FOREIGN KEY (`provincia_id`) REFERENCES `principal_provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_lugaratractivo`
--

LOCK TABLES `principal_lugaratractivo` WRITE;
/*!40000 ALTER TABLE `principal_lugaratractivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `principal_lugaratractivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_lugarnatural`
--

DROP TABLE IF EXISTS `principal_lugarnatural`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_lugarnatural` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_lugarnatural_bf663454` (`provincia_id`),
  CONSTRAINT `provincia_id_refs_id_37aafc0b` FOREIGN KEY (`provincia_id`) REFERENCES `principal_provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_lugarnatural`
--

LOCK TABLES `principal_lugarnatural` WRITE;
/*!40000 ALTER TABLE `principal_lugarnatural` DISABLE KEYS */;
/*!40000 ALTER TABLE `principal_lugarnatural` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_museo`
--

DROP TABLE IF EXISTS `principal_museo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_museo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_museo_bf663454` (`provincia_id`),
  CONSTRAINT `provincia_id_refs_id_bb0896f1` FOREIGN KEY (`provincia_id`) REFERENCES `principal_provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_museo`
--

LOCK TABLES `principal_museo` WRITE;
/*!40000 ALTER TABLE `principal_museo` DISABLE KEYS */;
/*!40000 ALTER TABLE `principal_museo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_parqueemblematico`
--

DROP TABLE IF EXISTS `principal_parqueemblematico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_parqueemblematico` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `descripcion` longtext NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_parqueemblematico_bf663454` (`provincia_id`),
  CONSTRAINT `provincia_id_refs_id_be4feb00` FOREIGN KEY (`provincia_id`) REFERENCES `principal_provincia` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_parqueemblematico`
--

LOCK TABLES `principal_parqueemblematico` WRITE;
/*!40000 ALTER TABLE `principal_parqueemblematico` DISABLE KEYS */;
/*!40000 ALTER TABLE `principal_parqueemblematico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_provincia`
--

DROP TABLE IF EXISTS `principal_provincia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_provincia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `ubicacion` longtext NOT NULL,
  `extension` longtext NOT NULL,
  `poblacion` longtext NOT NULL,
  `clima` longtext NOT NULL,
  `altitud` longtext NOT NULL,
  `ciudadcapital` longtext NOT NULL,
  `lugar_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_provincia_559e0e98` (`lugar_id`),
  CONSTRAINT `lugar_id_refs_id_aea88365` FOREIGN KEY (`lugar_id`) REFERENCES `principal_lugar` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_provincia`
--

LOCK TABLES `principal_provincia` WRITE;
/*!40000 ALTER TABLE `principal_provincia` DISABLE KEYS */;
INSERT INTO `principal_provincia` VALUES (1,'Huancayo','ñjñlh','ñlkhlk','klhkl','klhlk','klhl','kl',1),(2,'Concepción','ñmkñljhklh','lñlkh','jñlkhkl','lkñh','kl','kh',1),(3,'Jauja','khlkh','khlkgh','klgklj','gkjg','kjg','kj',1),(4,'Chupaca','gkjlg','kjgf','jk','gfk','j','fg',1),(5,'Chanchamayo','ñhlkh','lkghlk','g','kjlg','kj','jkg',2),(6,'Satipo','ñhlk','hlk','h','klgh','k','lg',2),(7,'Tarma','hlk','g','kjlg','kjg','j','kg',3),(8,'Junin','khkl','hklg','kjl','g','jlk','lkhk',3),(9,'Yauli','lj','ñlkhkl','h','k','lhlk','hgkl',3);
/*!40000 ALTER TABLE `principal_provincia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `principal_vistalugar`
--

DROP TABLE IF EXISTS `principal_vistalugar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `principal_vistalugar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(150) NOT NULL,
  `provincia_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `principal_vistalugar_bf663454` (`provincia_id`),
  CONSTRAINT `provincia_id_refs_id_ed0c15cf` FOREIGN KEY (`provincia_id`) REFERENCES `principal_provincia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `principal_vistalugar`
--

LOCK TABLES `principal_vistalugar` WRITE;
/*!40000 ALTER TABLE `principal_vistalugar` DISABLE KEYS */;
INSERT INTO `principal_vistalugar` VALUES (1,'Lugares Arqueológicos',1),(2,'Parques Emblemáticos',1),(3,'Museos',1);
/*!40000 ALTER TABLE `principal_vistalugar` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-28 12:18:27
