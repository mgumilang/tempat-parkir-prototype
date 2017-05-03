-- MySQL dump 10.13  Distrib 5.7.18, for osx10.12 (x86_64)
--
-- Host: localhost    Database: parkir
-- ------------------------------------------------------
-- Server version	5.7.17

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
-- Table structure for table `TransaksiStaffTamu`
--

DROP TABLE IF EXISTS `TransaksiStaffTamu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransaksiStaffTamu` (
  `TransaksiStaffTamuID` int(11) NOT NULL AUTO_INCREMENT,
  `JamMasuk` datetime DEFAULT NULL,
  `JamKeluar` datetime DEFAULT NULL,
  `LokasiID` int(11) DEFAULT NULL,
  `PelanggaranID` int(11) DEFAULT NULL,
  `PetugasID` int(11) DEFAULT NULL,
  `StaffID` int(11) DEFAULT NULL,
  `TamuID` int(11) DEFAULT NULL,
  `Kepentingan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TransaksiStaffTamuID`),
  KEY `TamuID` (`TamuID`),
  KEY `LokasiID` (`LokasiID`),
  KEY `PelanggaranID` (`PelanggaranID`),
  KEY `StaffID` (`StaffID`),
  KEY `PetugasID` (`PetugasID`),
  CONSTRAINT `transaksistafftamu_ibfk_1` FOREIGN KEY (`TamuID`) REFERENCES `tamu` (`ID`),
  CONSTRAINT `transaksistafftamu_ibfk_2` FOREIGN KEY (`LokasiID`) REFERENCES `lokasi` (`LokasiID`),
  CONSTRAINT `transaksistafftamu_ibfk_3` FOREIGN KEY (`PelanggaranID`) REFERENCES `pelanggaran` (`PelanggaranID`),
  CONSTRAINT `transaksistafftamu_ibfk_4` FOREIGN KEY (`StaffID`) REFERENCES `staff` (`StaffID`),
  CONSTRAINT `transaksistafftamu_ibfk_5` FOREIGN KEY (`PetugasID`) REFERENCES `petugas` (`PetugasID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransaksiStaffTamu`
--

LOCK TABLES `TransaksiStaffTamu` WRITE;
/*!40000 ALTER TABLE `TransaksiStaffTamu` DISABLE KEYS */;
INSERT INTO `TransaksiStaffTamu` VALUES (3,'2017-05-03 13:56:55','2017-05-03 14:01:29',NULL,NULL,1,NULL,9,NULL),(4,'2017-05-03 14:13:18','2017-05-03 14:13:39',NULL,NULL,1,1,NULL,'Modol');
/*!40000 ALTER TABLE `TransaksiStaffTamu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokasi`
--

DROP TABLE IF EXISTS `lokasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lokasi` (
  `LokasiID` int(11) NOT NULL AUTO_INCREMENT,
  `Lokasi` varchar(50) DEFAULT NULL,
  `Kapasitas` int(11) DEFAULT NULL,
  `Slot` int(11) DEFAULT NULL,
  `SatpamID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LokasiID`),
  KEY `SatpamID` (`SatpamID`),
  CONSTRAINT `lokasi_ibfk_1` FOREIGN KEY (`SatpamID`) REFERENCES `satpam` (`SatpamID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokasi`
--

LOCK TABLES `lokasi` WRITE;
/*!40000 ALTER TABLE `lokasi` DISABLE KEYS */;
INSERT INTO `lokasi` VALUES (1,'Labtek V',10,10,1),(2,'Labtek VIII',10,10,2),(3,'GKU Timur',10,10,3),(4,'Aula Barat',10,10,4),(5,'Aula Timur',10,10,5),(6,'SBM',10,10,6),(7,'PLN',10,10,7);
/*!40000 ALTER TABLE `lokasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mahasiswaumum`
--

DROP TABLE IF EXISTS `mahasiswaumum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mahasiswaumum` (
  `NomorPlat` varchar(50) NOT NULL,
  PRIMARY KEY (`NomorPlat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mahasiswaumum`
--

LOCK TABLES `mahasiswaumum` WRITE;
/*!40000 ALTER TABLE `mahasiswaumum` DISABLE KEYS */;
/*!40000 ALTER TABLE `mahasiswaumum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pelanggaran`
--

DROP TABLE IF EXISTS `pelanggaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pelanggaran` (
  `PelanggaranID` int(11) NOT NULL AUTO_INCREMENT,
  `SatpamID` int(11) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PelanggaranID`),
  KEY `SatpamID` (`SatpamID`),
  CONSTRAINT `pelanggaran_ibfk_1` FOREIGN KEY (`SatpamID`) REFERENCES `satpam` (`SatpamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pelanggaran`
--

LOCK TABLES `pelanggaran` WRITE;
/*!40000 ALTER TABLE `pelanggaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelanggaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petugas`
--

DROP TABLE IF EXISTS `petugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petugas` (
  `PetugasID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PetugasID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petugas`
--

LOCK TABLES `petugas` WRITE;
/*!40000 ALTER TABLE `petugas` DISABLE KEYS */;
INSERT INTO `petugas` VALUES (1,'Asep');
/*!40000 ALTER TABLE `petugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `satpam`
--

DROP TABLE IF EXISTS `satpam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `satpam` (
  `SatpamID` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) DEFAULT NULL,
  `Telepon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SatpamID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `satpam`
--

LOCK TABLES `satpam` WRITE;
/*!40000 ALTER TABLE `satpam` DISABLE KEYS */;
INSERT INTO `satpam` VALUES (1,'Atep Suratep','085656565656'),(2,'Tatang Suratang','081008811'),(3,'Jajat Sudrajat','0227515751'),(4,'Dadang Daradang','12345678'),(5,'Tuti Tukang Tipu','09909009'),(6,'Atep Suratep','666666'),(7,'Nicki Minaj','69696969');
/*!40000 ALTER TABLE `satpam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff` (
  `StaffID` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) DEFAULT NULL,
  `Telepon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Rodiyah','12345668');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tamu`
--

DROP TABLE IF EXISTS `tamu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tamu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) DEFAULT NULL,
  `Telepon` varchar(50) DEFAULT NULL,
  `Instansi` varchar(50) DEFAULT NULL,
  `TamuID` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tamu`
--

LOCK TABLES `tamu` WRITE;
/*!40000 ALTER TABLE `tamu` DISABLE KEYS */;
INSERT INTO `tamu` VALUES (9,'Garmastewira','0811221906','ITB','12345');
/*!40000 ALTER TABLE `tamu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaksimahasiswaumum`
--

DROP TABLE IF EXISTS `transaksimahasiswaumum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaksimahasiswaumum` (
  `TransaksiMahasiswaUmumID` int(11) NOT NULL AUTO_INCREMENT,
  `JamMasuk` datetime DEFAULT NULL,
  `JamKeluar` datetime DEFAULT NULL,
  `Tagihan` int(11) DEFAULT NULL,
  `PetugasID` int(11) DEFAULT NULL,
  `NomorPlat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TransaksiMahasiswaUmumID`),
  KEY `PetugasID` (`PetugasID`),
  KEY `NomorPlat` (`NomorPlat`),
  CONSTRAINT `transaksimahasiswaumum_ibfk_1` FOREIGN KEY (`PetugasID`) REFERENCES `petugas` (`PetugasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaksimahasiswaumum`
--

LOCK TABLES `transaksimahasiswaumum` WRITE;
/*!40000 ALTER TABLE `transaksimahasiswaumum` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaksimahasiswaumum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-03 14:14:34
