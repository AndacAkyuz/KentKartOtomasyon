-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: proje
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `bakiye_gecmisi`
--

DROP TABLE IF EXISTS `bakiye_gecmisi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bakiye_gecmisi` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tarih` date DEFAULT NULL,
  `Islem_Turu` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Tutar` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bakiye_gecmisi`
--

LOCK TABLES `bakiye_gecmisi` WRITE;
/*!40000 ALTER TABLE `bakiye_gecmisi` DISABLE KEYS */;
INSERT INTO `bakiye_gecmisi` VALUES (1,'2023-04-04','ogrenci1',5.4),(2,'2023-04-04','ogrenci2',6.2),(3,'2023-04-04','ogrenci3',8.7);
/*!40000 ALTER TABLE `bakiye_gecmisi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `geri_bildirim`
--

DROP TABLE IF EXISTS `geri_bildirim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `geri_bildirim` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `gonderen_adi` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `gonderen_soyadi` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `mesaj` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `geri_bildirim`
--

LOCK TABLES `geri_bildirim` WRITE;
/*!40000 ALTER TABLE `geri_bildirim` DISABLE KEYS */;
INSERT INTO `geri_bildirim` VALUES (1,'ahmet','deniz','mal'),(2,'andac','akyuz','adam');
/*!40000 ALTER TABLE `geri_bildirim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hatlar`
--

DROP TABLE IF EXISTS `hatlar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hatlar` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Adi` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Guzergah` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Seferler_ID` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Hatlar_Seferler1_idx` (`Seferler_ID`),
  CONSTRAINT `fk_Hatlar_Seferler1` FOREIGN KEY (`Seferler_ID`) REFERENCES `seferler` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hatlar`
--

LOCK TABLES `hatlar` WRITE;
/*!40000 ALTER TABLE `hatlar` DISABLE KEYS */;
INSERT INTO `hatlar` VALUES (6,'Bagcilar','Bagcilar-Kocaeli',13),(7,'Topcular','Topcular-Antalya',14),(8,'PAŞA','PAŞA-PAŞA',15),(9,'Bagci','Kocaeli',16),(10,'Bag','Koc',17),(11,'B','k',18);
/*!40000 ALTER TABLE `hatlar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `işlemler`
--

DROP TABLE IF EXISTS `işlemler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `işlemler` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Tarih` date DEFAULT NULL,
  `Tutar` double DEFAULT NULL,
  `Islem_turu` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `işlemler`
--

LOCK TABLES `işlemler` WRITE;
/*!40000 ALTER TABLE `işlemler` DISABLE KEYS */;
INSERT INTO `işlemler` VALUES (1,'2023-04-12',5,'ogrenci1'),(2,'2023-02-11',6,'ogrenci2'),(3,'2023-01-01',7,'ogrenci3'),(4,'2023-04-12',5,'ogrenci1'),(5,'2023-02-11',6,'ogrenci2'),(6,'2023-01-01',7,'ogrenci3');
/*!40000 ALTER TABLE `işlemler` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kent_kart`
--

DROP TABLE IF EXISTS `kent_kart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kent_kart` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Kart_no` int DEFAULT NULL,
  `Son_kullanma_tarihi` int DEFAULT NULL,
  `Bakiye` double DEFAULT NULL,
  `İşlemler_ID` int NOT NULL,
  `Kullanıcılar_ID` int NOT NULL,
  `Bakiye_gecmisi_ID` int NOT NULL,
  `Hatlar_ID` int NOT NULL,
  `geri_bildirim_ID` int unsigned NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `fk_Kent_Kart_İşlemler1_idx` (`İşlemler_ID`),
  KEY `fk_Kent_Kart_Kullanıcılar1_idx` (`Kullanıcılar_ID`),
  KEY `fk_Kent_Kart_Bakiye_gecmisi1_idx` (`Bakiye_gecmisi_ID`),
  KEY `fk_Kent_Kart_Hatlar1_idx` (`Hatlar_ID`),
  KEY `fk_Kent_Kart_geri bildirim1_idx` (`geri_bildirim_ID`),
  CONSTRAINT `fk_Kent_Kart_Bakiye_gecmisi1` FOREIGN KEY (`Bakiye_gecmisi_ID`) REFERENCES `bakiye_gecmisi` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_Kent_Kart_Hatlar1` FOREIGN KEY (`Hatlar_ID`) REFERENCES `hatlar` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_Kent_Kart_İşlemler1` FOREIGN KEY (`İşlemler_ID`) REFERENCES `işlemler` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `fk_Kent_Kart_Kullanıcılar1` FOREIGN KEY (`Kullanıcılar_ID`) REFERENCES `kullanıcılar` (`ID`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kent_kart`
--

LOCK TABLES `kent_kart` WRITE;
/*!40000 ALTER TABLE `kent_kart` DISABLE KEYS */;
INSERT INTO `kent_kart` VALUES (1,31313131,2016,3100000,1,1,1,6,1),(2,535645,2040,5000000,2,2,2,7,2),(3,535647,2079,69696969,3,3,3,8,2);
/*!40000 ALTER TABLE `kent_kart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kullanıcılar`
--

DROP TABLE IF EXISTS `kullanıcılar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kullanıcılar` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Adi` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Soyadi` varchar(45) DEFAULT NULL,
  `Adres` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `Telefon_no` int DEFAULT NULL,
  `sifre` int DEFAULT NULL,
  `TCkimlik` int DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kullanıcılar`
--

LOCK TABLES `kullanıcılar` WRITE;
/*!40000 ALTER TABLE `kullanıcılar` DISABLE KEYS */;
INSERT INTO `kullanıcılar` VALUES (1,'Andac','Akyuz','asdf',55555555,1234,5555555),(2,'Octane','Cakar','asdf',6666666,NULL,6666666),(3,'Furkan','Uzun','asdf',77777,NULL,7777777);
/*!40000 ALTER TABLE `kullanıcılar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seferler`
--

DROP TABLE IF EXISTS `seferler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seferler` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Baslangic_id` int DEFAULT NULL,
  `Varis_id` int DEFAULT NULL,
  `Tarih` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seferler`
--

LOCK TABLES `seferler` WRITE;
/*!40000 ALTER TABLE `seferler` DISABLE KEYS */;
INSERT INTO `seferler` VALUES (13,1,6,'2023-04-04'),(14,1,6,'2023-04-04'),(15,3,4,'2023-04-04'),(16,14,8,'2023-04-04'),(17,24,16,'2023-04-04'),(18,20,8,'2023-04-04');
/*!40000 ALTER TABLE `seferler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-13 17:57:02
