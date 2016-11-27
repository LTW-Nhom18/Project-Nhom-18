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
  `id` int(11) DEFAULT NULL,
  PRIMARY KEY (`IDmucmc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mucmc`
--

LOCK TABLES `mucmc` WRITE;
/*!40000 ALTER TABLE `mucmc` DISABLE KEYS */;
INSERT INTO `mucmc` VALUES (1,'Minh chứng','Gốc Minh Chứng','Nguyễn Thanh Bình','2016-10-15',NULL,1),(2,'1. MTCL','mô tả của MTLC','Nguyễn Thanh Bình','2016-10-15',1,2),(3,'2016','mô tả của 2016','Nguyễn Thanh Bình','2016-10-15',2,3),(4,'HKI','mô tả của HK1','Nguyễn Thanh Bình','2016-10-15',3,4),(5,'Hoạt động giảng dạy','mô tả của Hoạt động giảng dạy','Nguyễn Thanh Bình','2016-10-15',4,5),(6,'100% giảng viên dạy đủ số tiết','mo ta 100% giang vien day du tiet','Nguyễn Thanh Bình','2016-10-15',5,6),(7,'90% giảng viên đạt loại giỏi','mo ta 90% giang vien dat loai gioi','Nguyễn Thanh Bình','2016-10-17',5,7),(8,'Hoạt động CTXH','mô tả Hoạt động CTXH','Nguyễn Thanh Bình','2016-10-18',4,8),(9,'Tổ chức mùa hè xanh','mô tả','Nguyễn Thanh Bình','2016-10-18',8,9),(10,'2. QT ISO','mô tả  QT ISO','Nguyễn Thanh Bình','2016-10-25',1,10),(11,'2016','mô tả của 2016','Nguyễn Thanh Bình','2016-10-25',10,11),(12,'HKI','mô tả của HK1','Nguyễn Thanh Bình','2016-10-25',11,12),(13,'Hoạt động NCKH','mô tả Hoạt động NCKH','Nguyễn Thanh Bình','2016-10-25',12,13),(14,'Tham gia nghiên cứu khoa học','mo ta tham gia nghien cuu khoa hoc','Nguyễn Thanh Bình','2016-10-25',13,14),(15,'HKII','mô tả của HK2','Nguyễn Thanh Bình','2016-10-25',11,15),(16,'Tham gia nghiên cứu khoa học hk2','mo ta tham gia nghien cuu khoa hoc hk2','Nguyễn Thanh Bình','2016-10-25',15,16);
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
  `NgayNhap` varchar(10) DEFAULT NULL,
  `IDnguoiduocgiao` varchar(45) DEFAULT NULL,
  `File` varchar(45) DEFAULT NULL,
  `flag` varchar(2) DEFAULT '0',
  PRIMARY KEY (`IDmucmc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phancong`
--

LOCK TABLES `phancong` WRITE;
/*!40000 ALTER TABLE `phancong` DISABLE KEYS */;
INSERT INTO `phancong` VALUES (4,'Trần Thị D','','chưa hoàn thành','2016-12-15','','TTD@gmail.com','','1'),(6,'Trần Thị D','','chưa hoàn thành','2016-12-15','','TTD@gmail.com','','0'),(7,'Bùi Văn Mạnh','','chưa hoàn thành','2016-12-12','','BVM@gmail.com','','0'),(9,'Trần Thị D','','chưa hoàn thành','2016-12-15','','TTD@gmail.com','','0'),(13,'Bùi Văn Mạnh','','chưa hoàn thành','2016-12-20','','BVM@gmail.com','','1'),(14,'Bùi Văn Mạnh','','chưa hoàn thành','2016-12-20','','BVM@gmail.com','','0'),(16,'Bùi Văn Mạnh','','chưa hoàn thành','2016-12-20','','BVM@gmail.com','','0');
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

-- Dump completed on 2016-11-26 13:46:59
