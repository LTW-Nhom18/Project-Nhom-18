CREATE DATABASE  IF NOT EXISTS `qlmc` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `qlmc`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: qlmc
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `mucmc`
--

DROP TABLE IF EXISTS `mucmc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mucmc` (
  `IDmucmc` int(11) NOT NULL,
  `TenMucmc` varchar(100) DEFAULT NULL,
  `Mota` varchar(200) DEFAULT NULL,
  `NguoiTao` varchar(50) DEFAULT NULL,
  `NgayTao` date DEFAULT NULL,
  `IDRoot` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDmucmc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mucmc`
--

LOCK TABLES `mucmc` WRITE;
/*!40000 ALTER TABLE `mucmc` DISABLE KEYS */;
INSERT INTO `mucmc` VALUES (1,'Minh Chứng','','Nguyễn Thanh Bình','2016-10-15',NULL),(2,'1. MTCL','','Nguyễn Thanh Bình','2016-10-15',1),(3,'2016','','Nguyễn Thanh Bình','2016-10-15',2),(4,'HKI','','Nguyễn Thanh Bình','2016-10-15',3),(5,'Hoạt động giảng dạy','','Nguyễn Thanh Bình','2016-10-15',4),(6,'100% giảng viên dạy đủ số tiết','test','Nguyễn Thanh Bình','2016-10-15',5),(7,'90% giảng viên đạt loại giỏi',' cccccc','Nguyễn Thanh Bình','2016-10-17',5),(8,'Hoạt động CTXH','','Nguyễn Thanh Bình','2016-10-18',4),(9,'Tổ chức mùa hè xanh','to chuc mua he xanh','Nguyễn Thanh Bình','2016-10-18',8),(10,'2. QT ISO','','Nguyễn Thanh Bình','2016-10-25',1),(11,'2016','','Nguyễn Thanh Bình','2016-10-25',10),(12,'HKI','','Nguyễn Thanh Bình','2016-10-25',11),(13,'Hoạt động NCKH','','Nguyễn Thanh Bình','2016-10-25',12),(14,'Tham gia nghiên cứu khoa học','','Nguyễn Thanh Bình','2016-10-25',13),(15,'HKII','','Nguyễn Thanh Bình','2016-10-25',11),(16,'Tham gia nghiên cứu khoa học','tham gia nghiên cứu khoa học HK2','Nguyễn Thanh Bình','2016-10-25',15);
/*!40000 ALTER TABLE `mucmc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phancong`
--

DROP TABLE IF EXISTS `phancong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phancong` (
  `IDmucmc` int(11) NOT NULL,
  `NguoiDuocGiao` varchar(50) DEFAULT NULL,
  `DuongDan` varchar(200) DEFAULT NULL,
  `TrangThai` varchar(20) DEFAULT NULL,
  `NgayHoanThanh` date DEFAULT NULL,
  `NgayNhap` date DEFAULT NULL,
  `IDnguoiduocgiao` varchar(45) DEFAULT NULL,
  `File` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IDmucmc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phancong`
--

LOCK TABLES `phancong` WRITE;
/*!40000 ALTER TABLE `phancong` DISABLE KEYS */;
INSERT INTO `phancong` VALUES (6,'Trần Thị D','minhchung/cvf.jpg','Hoàn thành','2016-10-29','2016-11-15','TTD@gmail.com','Image'),(7,'Trần Thị D','minhchung/Source.zip','Hoàn thành','2017-01-20','2016-11-21','TTD@gmail.com','Document'),(9,'Bùi Văn Mạnh','minhchung/bcd.jpg','Hoàn thành','2016-10-31','2016-11-21','BVM@gmail.com','Image'),(14,'Bùi Văn Mạnh','','chưa hoàn thành','2016-10-31',NULL,'BVM@gmail.com',''),(16,'Trần Thị D','minhchung/Source.txt','Hoàn thành','2017-01-20','2016-11-21','TTD@gmail.com','Document');
/*!40000 ALTER TABLE `phancong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `ID` varchar(45) NOT NULL,
  `PASS` varchar(45) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `GTINH` varchar(3) NOT NULL,
  `TEL` varchar(11) NOT NULL,
  `KHOA` varchar(50) NOT NULL,
  `CHUCVU` varchar(50) NOT NULL,
  `ROLE` varchar(50) NOT NULL,
  `DATE` date DEFAULT NULL,
  `IDROLE` varchar(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('BVM@gmail.com','12345','Bùi Văn Mạnh','Nam','0125689578','Công nghệ thông tin','CBVC','Người nhập','1989-03-28','1'),('NVA@gmail.com','12345','Nguyễn Văn A','Nam','0125689547','Công nghệ thông tin','Trưởng khoa','Người giao','1974-11-12','2'),('NVE@gmail.com','12345','Nguyễn Văn E','Nam','0124895689','Phòng đào tạo','Khác','Admin','1988-06-09','0'),('PTC@gmail.com','12345','Phạm Thị C','Nữ','0123568957','Phòng đảm bảo chất lượng','Thanh tra','Người kiểm tra','1979-03-29','4'),('TMD@gmail.com','12345','Trần Minh Đại','Nam','0125468957','Phòng đào tạo','Khác','Admin','1988-06-08','0'),('TTD@gmail.com','12345','Trần Thị D','Nữ','015896545','Công nghệ thông tin','CBVC','Người nhập','1987-06-06','1'),('TVB@gmail.com','12345','Trần Văn Bình','Nam','0124568975','Phòng đảm bảo chất lượng','Trưởng phòng','Người quy định','1965-09-29','3');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'qlmc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-22 21:49:48
