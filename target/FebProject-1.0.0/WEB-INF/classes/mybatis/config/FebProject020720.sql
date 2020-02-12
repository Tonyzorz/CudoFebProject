-- MySQL dump 10.13  Distrib 8.0.19, for macos10.15 (x86_64)
--
-- Host: localhost    Database: FebProject
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `febboard`
--

DROP TABLE IF EXISTS `febboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `febboard` (
  `febid` int NOT NULL AUTO_INCREMENT,
  `febtitle` varchar(40) NOT NULL,
  `febcontent` varchar(200) DEFAULT NULL,
  `febcolumnid` int DEFAULT NULL,
  `febmaintitle` varchar(40) NOT NULL,
  `febcolumncategoryid` int DEFAULT NULL,
  PRIMARY KEY (`febid`),
  KEY `febboard_ibfk_1` (`febcolumnid`),
  KEY `febboard_ibfk_2` (`febcolumncategoryid`),
  CONSTRAINT `febboard_ibfk_1` FOREIGN KEY (`febcolumnid`) REFERENCES `febcolumn` (`febcolumnid`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `febboard_ibfk_2` FOREIGN KEY (`febcolumncategoryid`) REFERENCES `febcolumncategory` (`febColumnCategoryId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `febboard`
--

LOCK TABLES `febboard` WRITE;
/*!40000 ALTER TABLE `febboard` DISABLE KEYS */;
INSERT INTO `febboard` VALUES (1,'카메라 센서 리스즈 오류','감시 대상에서 카메라와 센서가 보이지 않을때는 PC를 재부팅해 주세요',1,'FAQ 테스트 #002',1),(2,'카메라 센서 리스즈 오류2','감시 대상에서 카메라와 센서가 보이지 않을때는 PC를 재부팅해 주세요2',2,'FAQ 테스트 #002',7),(3,'FAQ 테스트','연동시험 test용 공지사항',3,'FAQ 테스트 #002',8),(4,'카메라 센서 리스즈 오류4','감시 대상에서 카메라와 센서가 보이지 않을때는 PC를 재부팅해 주세요4',4,'FAQ 테스트 #002',9),(5,'카메라 센서 리스즈 오류5','감시 대상에서 카메라와 센서가 보이지 않을때는 PC를 재부팅해 주세요5',5,'FAQ 테스트 #002',10),(6,'카메라 센서 리스즈 오류3','감시 대상에서 카메라와 센서가 보이지 않을때는 PC를 재부팅해 주세요6',6,'FAQ 테스트 #002',11),(7,'FAQ 테스트','연동시험 test용 공지사항7',7,'FAQ 테스트 #002',12),(8,'Teest','weeee',NULL,'Testing',NULL),(9,'cv','cv',NULL,'Testing',NULL),(10,'ddd','ddd',NULL,'ddd',NULL),(11,'dd','dd',NULL,'dd',NULL),(12,'Teest','ãã¹ãã¹',NULL,'Testing',NULL),(13,'ãã¹','ãã¹',NULL,'ãã¹',NULL),(14,'df','df',NULL,'df',NULL),(15,'DD','DD',1,'DD',1),(16,'Teest','gkgkgkgkgk하하하하핳',3,'Testing',8),(17,'넵넵','넵넵넵',7,'넵',13);
/*!40000 ALTER TABLE `febboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `febcolumn`
--

DROP TABLE IF EXISTS `febcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `febcolumn` (
  `febcolumnid` int NOT NULL AUTO_INCREMENT,
  `febcolumntitle` varchar(40) NOT NULL,
  PRIMARY KEY (`febcolumnid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `febcolumn`
--

LOCK TABLES `febcolumn` WRITE;
/*!40000 ALTER TABLE `febcolumn` DISABLE KEYS */;
INSERT INTO `febcolumn` VALUES (1,'회원'),(2,'요금 및 결제'),(3,'사용자 설정'),(4,'제공 서비스'),(5,'설치 및 개통'),(6,'카메라 및 센서'),(7,'고객서비스'),(8,'전체');
/*!40000 ALTER TABLE `febcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `febColumnCategory`
--

DROP TABLE IF EXISTS `febColumnCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `febColumnCategory` (
  `febColumnCategoryId` int NOT NULL AUTO_INCREMENT,
  `febcolumnid` int DEFAULT NULL,
  `febColumnCategoryTitle` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`febColumnCategoryId`),
  KEY `febcolumncategory_ibfk_1` (`febcolumnid`),
  CONSTRAINT `febcolumncategory_ibfk_1` FOREIGN KEY (`febcolumnid`) REFERENCES `febcolumn` (`febcolumnid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `febColumnCategory`
--

LOCK TABLES `febColumnCategory` WRITE;
/*!40000 ALTER TABLE `febColumnCategory` DISABLE KEYS */;
INSERT INTO `febColumnCategory` VALUES (1,1,'카메라 및 센서'),(2,1,'카메라 및 센서2'),(3,1,'카메라 및 센서3'),(4,1,'카메라 및 센서4'),(5,1,'카메라 및 센서5'),(6,1,'카메라 및 센서6'),(7,2,'카메라 및 센서22'),(8,3,'사용자 설정'),(9,4,'카메라 및 센서44'),(10,5,'카메라 및 센서55'),(11,6,'카메라 및 센서66'),(12,7,'카메라 및 센서77'),(13,7,'카메라 및 센서73'),(14,6,'카메라 및 센서66'),(15,5,'카메라 및 센서123'),(16,4,'카메라 및 센서543'),(17,3,'카메라 및 센서785'),(18,2,'카메라 및 센서23'),(19,2,'카메라 및 센서444'),(20,3,'카메라 및 센서1212');
/*!40000 ALTER TABLE `febColumnCategory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-07 17:24:44
