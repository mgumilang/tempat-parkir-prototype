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
-- Table structure for table `Lokasi`
--

DROP TABLE IF EXISTS `Lokasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lokasi` (
  `LokasiID` int(11) NOT NULL AUTO_INCREMENT,
  `Lokasi` varchar(50) DEFAULT NULL,
  `Kapasitas` int(11) DEFAULT NULL,
  `Slot` int(11) DEFAULT NULL,
  `SatpamID` int(11) DEFAULT NULL,
  PRIMARY KEY (`LokasiID`),
  KEY `SatpamID` (`SatpamID`),
  CONSTRAINT `lokasi_ibfk_1` FOREIGN KEY (`SatpamID`) REFERENCES `Satpam` (`SatpamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lokasi`
--

LOCK TABLES `Lokasi` WRITE;
/*!40000 ALTER TABLE `Lokasi` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lokasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Pelanggaran`
--

DROP TABLE IF EXISTS `Pelanggaran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Pelanggaran` (
  `PelanggaranID` int(11) NOT NULL AUTO_INCREMENT,
  `SatpamID` int(11) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PelanggaranID`),
  KEY `SatpamID` (`SatpamID`),
  CONSTRAINT `pelanggaran_ibfk_1` FOREIGN KEY (`SatpamID`) REFERENCES `Satpam` (`SatpamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Pelanggaran`
--

LOCK TABLES `Pelanggaran` WRITE;
/*!40000 ALTER TABLE `Pelanggaran` DISABLE KEYS */;
/*!40000 ALTER TABLE `Pelanggaran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Petugas`
--

DROP TABLE IF EXISTS `Petugas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Petugas` (
  `PetugasID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PetugasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Petugas`
--

LOCK TABLES `Petugas` WRITE;
/*!40000 ALTER TABLE `Petugas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Petugas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Satpam`
--

DROP TABLE IF EXISTS `Satpam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Satpam` (
  `SatpamID` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) DEFAULT NULL,
  `Telepon` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`SatpamID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Satpam`
--

LOCK TABLES `Satpam` WRITE;
/*!40000 ALTER TABLE `Satpam` DISABLE KEYS */;
/*!40000 ALTER TABLE `Satpam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Staff`
--

DROP TABLE IF EXISTS `Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Staff` (
  `StaffID` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) DEFAULT NULL,
  `Telepon` varchar(50) DEFAULT NULL,
  `Kepentingan` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Staff`
--

LOCK TABLES `Staff` WRITE;
/*!40000 ALTER TABLE `Staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tamu`
--

DROP TABLE IF EXISTS `Tamu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tamu` (
  `TamuID` int(11) NOT NULL AUTO_INCREMENT,
  `Nama` varchar(50) DEFAULT NULL,
  `Telepon` varchar(50) DEFAULT NULL,
  `Kepentingan` varchar(50) DEFAULT NULL,
  `Instansi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TamuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tamu`
--

LOCK TABLES `Tamu` WRITE;
/*!40000 ALTER TABLE `Tamu` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tamu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TransaksiMahasiswaUmum`
--

DROP TABLE IF EXISTS `TransaksiMahasiswaUmum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TransaksiMahasiswaUmum` (
  `TransaksiMahasiswaUmumID` int(11) NOT NULL AUTO_INCREMENT,
  `JamMasuk` datetime DEFAULT NULL,
  `JamKeluar` datetime DEFAULT NULL,
  `Tagihan` int(11) DEFAULT NULL,
  `PetugasID` int(11) DEFAULT NULL,
  `NomorPlat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`TransaksiMahasiswaUmumID`),
  KEY `PetugasID` (`PetugasID`),
  CONSTRAINT `transaksimahasiswaumum_ibfk_1` FOREIGN KEY (`PetugasID`) REFERENCES `Petugas` (`PetugasID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransaksiMahasiswaUmum`
--

LOCK TABLES `TransaksiMahasiswaUmum` WRITE;
/*!40000 ALTER TABLE `TransaksiMahasiswaUmum` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransaksiMahasiswaUmum` ENABLE KEYS */;
UNLOCK TABLES;

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
  `StaffID` int(11) DEFAULT NULL,
  `TamuID` int(11) DEFAULT NULL,
  `PetugasID` int(11) DEFAULT NULL,
  `LokasiID` int(11) DEFAULT NULL,
  `PelanggaranID` int(11) DEFAULT NULL,
  PRIMARY KEY (`TransaksiStaffTamuID`),
  KEY `StaffID` (`StaffID`),
  KEY `TamuID` (`TamuID`),
  KEY `PetugasID` (`PetugasID`),
  KEY `LokasiID` (`LokasiID`),
  KEY `PelanggaranID` (`PelanggaranID`),
  CONSTRAINT `transaksistafftamu_ibfk_1` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`),
  CONSTRAINT `transaksistafftamu_ibfk_2` FOREIGN KEY (`TamuID`) REFERENCES `Tamu` (`TamuID`),
  CONSTRAINT `transaksistafftamu_ibfk_3` FOREIGN KEY (`PetugasID`) REFERENCES `Petugas` (`PetugasID`),
  CONSTRAINT `transaksistafftamu_ibfk_4` FOREIGN KEY (`LokasiID`) REFERENCES `Lokasi` (`LokasiID`),
  CONSTRAINT `transaksistafftamu_ibfk_5` FOREIGN KEY (`PelanggaranID`) REFERENCES `Pelanggaran` (`PelanggaranID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TransaksiStaffTamu`
--

LOCK TABLES `TransaksiStaffTamu` WRITE;
/*!40000 ALTER TABLE `TransaksiStaffTamu` DISABLE KEYS */;
/*!40000 ALTER TABLE `TransaksiStaffTamu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-02 17:18:14
