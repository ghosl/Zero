CREATE DATABASE  IF NOT EXISTS `zero` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `zero`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: zero
-- ------------------------------------------------------
-- Server version	5.5.28

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
-- Table structure for table `sys_info`
--

DROP TABLE IF EXISTS `sys_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_info` (
  `si_id` int(11) NOT NULL AUTO_INCREMENT,
  `si_dname` varchar(64) DEFAULT NULL,
  `si_root` varchar(16) DEFAULT NULL,
  `si_intro` varchar(32) DEFAULT NULL,
  `si_copyright` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`si_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_info`
--

LOCK TABLES `sys_info` WRITE;
/*!40000 ALTER TABLE `sys_info` DISABLE KEYS */;
INSERT INTO `sys_info` VALUES (1,'http://www.work.com','/zero','Zero - 一个零距离问答互动平台','Copyright&nbsp;&copy;&nbsp;2017&nbsp;By&nbsp;Zero.');
/*!40000 ALTER TABLE `sys_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notice` (
  `sn_id` int(11) NOT NULL AUTO_INCREMENT,
  `sn_title` varchar(32) DEFAULT NULL,
  `sn_content` varchar(2048) DEFAULT NULL,
  PRIMARY KEY (`sn_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_answer`
--

DROP TABLE IF EXISTS `user_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_answer` (
  `uas_id` int(11) NOT NULL AUTO_INCREMENT,
  `uq_id` int(11) DEFAULT NULL,
  `ua_user` varchar(32) DEFAULT NULL,
  `uas_content` varchar(128) DEFAULT NULL,
  `uas_support` int(11) DEFAULT NULL,
  `uas_oppose` int(11) DEFAULT NULL,
  `uas_publish_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`uas_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_answer`
--

LOCK TABLES `user_answer` WRITE;
/*!40000 ALTER TABLE `user_answer` DISABLE KEYS */;
INSERT INTO `user_answer` VALUES (1,1,'admin',NULL,1,0,1508033491),(2,2,'zero',NULL,1,0,1508033493),(3,1,'zero',NULL,2,1,1508033495),(4,3,'admin',NULL,0,0,1508033600),(5,2,'demo',NULL,1,0,1508033800);
/*!40000 ALTER TABLE `user_answer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_ask`
--

DROP TABLE IF EXISTS `user_ask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_ask` (
  `uq_id` int(11) NOT NULL AUTO_INCREMENT,
  `ua_user` varchar(32) DEFAULT NULL,
  `uq_title` varchar(64) DEFAULT NULL,
  `uq_desc` varchar(2048) DEFAULT NULL,
  `uq_publish_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`uq_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_ask`
--

LOCK TABLES `user_ask` WRITE;
/*!40000 ALTER TABLE `user_ask` DISABLE KEYS */;
INSERT INTO `user_ask` VALUES (1,'zero','测试','测试提问',1508033491),(2,'zero','测试2','测试提问2',1508033496),(3,'zero','什么是PHP？','php',1508047218),(4,'zero','Java 环境怎么搭建？','',1508052646),(5,'zero','daskdla','dasdsadsa',1508052950),(6,'zero','测试1','',1508053100),(7,'zero','测试2','',1508053106),(8,'zero','测试3','',1508053110),(9,'zero','测试4','',1508053113),(10,'zero','测试5','',1508053116),(11,'zero','测试6','',1508053118),(12,'zero','测试7','',1508053121),(13,'zero','测试8','',1508053123),(14,'zero','测试9','',1508053127),(15,'zero','测试10','',1508053130),(16,'zero','测试11','',1508053136),(17,'zero','测试12','',1508053142),(18,'zero','测试12','',1508053143),(19,'zero','测试12','',1508053149),(20,'zero','测试12','',1508053150),(21,'zero','测试12','',1508053151),(22,'zero','测试12','',1508053152),(23,'zero','测试12','',1508053153),(24,'zero','题目','',1508053341),(25,'zero','q','',1508053392),(26,'zero','w','',1508053524),(27,'zero','asdsad','',1508053586),(28,'zero','666','',1508076744),(29,'zero','666','',1508076745),(30,'zero','666','',1508076746),(31,'zero','000','',1508077128),(32,'zero','000','',1508077130),(33,'zero','YUI测试','yui测试内容',1508470710);
/*!40000 ALTER TABLE `user_ask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_auth`
--

DROP TABLE IF EXISTS `user_auth`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_auth` (
  `ua_id` int(11) NOT NULL AUTO_INCREMENT,
  `ua_user` varchar(32) DEFAULT NULL,
  `ua_pwd` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ua_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_auth`
--

LOCK TABLES `user_auth` WRITE;
/*!40000 ALTER TABLE `user_auth` DISABLE KEYS */;
INSERT INTO `user_auth` VALUES (29,'zero','e10adc3949ba59abbe56e057f20f883e'),(30,'admin','670b14728ad9902aecba32e22fa4f6bd'),(31,'root','f379eaf3c831b04de153469d1bec345e'),(32,'test','e10adc3949ba59abbe56e057f20f883e'),(33,'demo','e10adc3949ba59abbe56e057f20f883e'),(34,'ceshi','e10adc3949ba59abbe56e057f20f883e'),(35,'ze','e10adc3949ba59abbe56e057f20f883e'),(36,'z','e10adc3949ba59abbe56e057f20f883e'),(37,'qwertt','d8578edf8458ce06fbc5bb76a58c5ca4'),(38,'qqqqqq','a127fd1f86e4ab650f2216f09992afa4'),(39,'ie','e10adc3949ba59abbe56e057f20f883e'),(40,'adminx','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `user_auth` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_info`
--

DROP TABLE IF EXISTS `user_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_info` (
  `ui_id` int(11) NOT NULL AUTO_INCREMENT,
  `ua_user` varchar(32) DEFAULT NULL,
  `ui_nickname` varchar(48) DEFAULT NULL,
  `ui_avatar` varchar(128) DEFAULT NULL,
  `ui_reg_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`ui_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_info`
--

LOCK TABLES `user_info` WRITE;
/*!40000 ALTER TABLE `user_info` DISABLE KEYS */;
INSERT INTO `user_info` VALUES (29,'zero','超级用户','/src/images/avatar.jpg',1507476396),(30,'admin','超级管理员','/src/images/avatar.jpg',1507476697),(31,'root','linux','/src/images/avatar.jpg',1507476766),(32,'test','测试','/src/images/avatar.jpg',1507711514),(33,'demo','1232456','/src/images/avatar.jpg',1507711736),(34,'ceshi','','/src/images/avatar.jpg',1507811854),(35,'ze','z','/src/images/avatar.jpg',1507868096),(36,'z','z','/src/images/avatar.jpg',1507868244),(37,'qwertt','qwerty','/src/images/avatar.jpg',1507961927),(38,'qqqqqq','qqqqqq','/src/images/avatar.jpg',1507963053),(39,'ie','ie浏览器','/src/images/avatar.jpg',1507967919),(40,'adminx','','/src/images/avatar.jpg',1507968175);
/*!40000 ALTER TABLE `user_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_login`
--

DROP TABLE IF EXISTS `user_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_login` (
  `ul_id` int(11) NOT NULL AUTO_INCREMENT,
  `ua_user` varchar(32) DEFAULT NULL,
  `ul_login_time` int(11) DEFAULT NULL,
  `ul_last_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`ul_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_login`
--

LOCK TABLES `user_login` WRITE;
/*!40000 ALTER TABLE `user_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_login` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-20 22:53:16
