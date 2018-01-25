-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: NESTDB
-- ------------------------------------------------------
-- Server version	5.5.57-0+deb8u1

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
-- Table structure for table `BoardsTable`
--

DROP TABLE IF EXISTS `BoardsTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BoardsTable` (
  `boardid` char(255) DEFAULT NULL,
  `workorderid` char(255) DEFAULT NULL,
  `batchid` char(255) DEFAULT NULL,
  `ItemId` char(255) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `batchQuantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BoardsTable`
--

LOCK TABLES `BoardsTable` WRITE;
/*!40000 ALTER TABLE `BoardsTable` DISABLE KEYS */;
INSERT INTO `BoardsTable` VALUES ('ekaneec001',NULL,'ekaneec001','abc1234',NULL,NULL),('ekaneec002',NULL,'ekaneec001','abc1234',NULL,NULL),('ekaneec003',NULL,'ekaneec001','abc1234',NULL,NULL),('ekaneec004',NULL,'ekaneec001','abc1234',NULL,NULL),('ekaneec005',NULL,'ekaneec001','abc1234',NULL,NULL),('ekaneec006',NULL,'ekaneec001','abc1234',NULL,NULL),('ekaneec007',NULL,'ekaneec001','abc1234',NULL,NULL),('ekaneec008',NULL,'ekaneec001','abc1234',NULL,NULL),('ekaneec009',NULL,'ekaneec001','abc1234',NULL,NULL),('00.A0.F4.50.71.01',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.02',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.03',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.04',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.05',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.06',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.07',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.08',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.09',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.0A',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.0B',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.0C',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.0D',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.0E',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.0F',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.10',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.11',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.12',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.13',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.14',NULL,'ekaneec002','abc1244',NULL,NULL),('00.A0.F4.50.71.15',NULL,'ekaneec002','abc1244',NULL,NULL);
/*!40000 ALTER TABLE `BoardsTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ItemsTable`
--

DROP TABLE IF EXISTS `ItemsTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ItemsTable` (
  `ItemId` char(255) DEFAULT NULL,
  `Description` char(255) DEFAULT NULL,
  `ordermultiple` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ItemsTable`
--

LOCK TABLES `ItemsTable` WRITE;
/*!40000 ALTER TABLE `ItemsTable` DISABLE KEYS */;
INSERT INTO `ItemsTable` VALUES ('abc1234',NULL,3),('abc1244',NULL,5);
/*!40000 ALTER TABLE `ItemsTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bayout`
--

DROP TABLE IF EXISTS `bayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bayout` (
  `name` char(255) DEFAULT NULL,
  `boardid` char(255) DEFAULT NULL,
  `scanposition` char(255) DEFAULT NULL,
  `deviceid` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bayout`
--

LOCK TABLES `bayout` WRITE;
/*!40000 ALTER TABLE `bayout` DISABLE KEYS */;
INSERT INTO `bayout` VALUES ('abhi','ekaneec001',NULL,NULL),('abhi','ekaneec002',NULL,NULL),('abhi','ekaneec003',NULL,NULL),('abhi','ekaneec004',NULL,NULL),('abhi','ekaneec005',NULL,NULL),('abhi','ekaneec006',NULL,NULL),('abhi','ekaneec007',NULL,NULL),('abhi','ekaneec008',NULL,NULL),('abhi','ekaneec009',NULL,NULL),('abhijith','ekaneec001',NULL,NULL),('abhijith','ekaneec002',NULL,NULL),('abhijith','ekaneec003',NULL,NULL),('abhijith','ekaneec004',NULL,NULL),('abhijith','ekaneec005',NULL,NULL),('abhijith','ekaneec006',NULL,NULL),('abhijith','ekaneec007',NULL,NULL),('abhijith','ekaneec008',NULL,NULL),('abhijith','ekaneec009',NULL,NULL),('abhijith','ekaneec007',NULL,NULL),('abhijith','ekaneec008',NULL,NULL),('abhijith','ekaneec009',NULL,NULL),('abhijith','ekaneec004',NULL,NULL),('abhijith','ekaneec005',NULL,NULL),('abhijith','ekaneec006',NULL,NULL),('abhijith','ekaneec001',NULL,NULL),('abhijith','ekaneec002',NULL,NULL),('abhijith','ekaneec003',NULL,NULL),('abhi','ekaneec001',NULL,NULL),('abhi','ekaneec002',NULL,NULL),('abhi','ekaneec003',NULL,NULL),('abhi','ekaneec006',NULL,NULL),('abhi','ekaneec007',NULL,NULL),('abhi','ekaneec008',NULL,NULL),('abhi','ekaneec001',NULL,NULL),('abhi','ekaneec002',NULL,NULL),('abhi','ekaneec003',NULL,NULL),('abhi','ekaneec006',NULL,NULL),('abhi','ekaneec007',NULL,NULL),('abhi','ekaneec008',NULL,NULL),('abi','ekaneec001',NULL,NULL),('abi','ekaneec002',NULL,NULL),('abi','0',NULL,NULL),('abi','ekaneec006',NULL,NULL),('abi','ekaneec007',NULL,NULL),('abi','ekaneec008',NULL,NULL),('abi','ekaneec001',NULL,NULL),('abi','ekaneec002',NULL,NULL),('abi','0',NULL,NULL),('abi','ekaneec006',NULL,NULL),('abi','ekaneec007',NULL,NULL),('abi','ekaneec008',NULL,NULL),('abiji','ekaneec001',NULL,NULL),('abiji','ekaneec002',NULL,NULL),('abiji','0',NULL,NULL),('abiji','ekaneec006',NULL,NULL),('abiji','ekaneec007',NULL,NULL),('abiji','0',NULL,NULL),('abiji','ekaneec008',NULL,NULL),('abiji','0',NULL,NULL),('abiji','0',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.01',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.02',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.03',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.04',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.05',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.06',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.07',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.08',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.09',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.0A',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.0B',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.0C',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.0D',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.0E',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.0F',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.10',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.11',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','0',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.12',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.13',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.14',NULL,NULL),('abhiiiiii','00.A0.F4.50.71.15',NULL,NULL),('abhiiiiii','0',NULL,NULL),('apj','ekaneec006',NULL,NULL),('apj','ekaneec007',NULL,NULL),('apj','0',NULL,NULL),('apj','ekaneec001',NULL,NULL),('apj','ekaneec002',NULL,NULL),('apj','0',NULL,NULL),('apj','ekaneec008',NULL,NULL),('apj','0',NULL,NULL),('apj','0',NULL,NULL),('abj','ekaneec001',NULL,NULL),('abj','ekaneec002',NULL,NULL),('abj','0',NULL,NULL),('abj','ekaneec006',NULL,NULL),('abj','ekaneec007',NULL,NULL),('abj','0',NULL,NULL),('abj','ekaneec008',NULL,NULL),('abj','0',NULL,NULL),('abj','0',NULL,NULL),('abjj','ekaneec001',NULL,NULL),('abjj','ekaneec002',NULL,NULL),('abjj','0',NULL,NULL),('abjj','ekaneec006',NULL,NULL),('abjj','ekaneec007',NULL,NULL),('abjj','0',NULL,NULL),('abjj','ekaneec008',NULL,NULL),('abjj','0',NULL,NULL),('abjj','0',NULL,NULL),('abbb','ekaneec001',NULL,NULL),('abbb','ekaneec002',NULL,NULL),('abbb','0',NULL,NULL),('abbb','ekaneec006',NULL,NULL),('abbb','ekaneec007',NULL,NULL),('abbb','0',NULL,NULL),('abbb','ekaneec008',NULL,NULL),('abbb','0',NULL,NULL),('abbb','0',NULL,NULL),('abbbb','ekaneec001',NULL,NULL),('abbbb','ekaneec006',NULL,NULL),('abbbb','ekaneec008',NULL,NULL),('abppp','ekaneec001',NULL,NULL),('abppp','ekaneec006',NULL,NULL),('abppp','ekaneec008',NULL,NULL),('abppp','ekaneec001',NULL,NULL),('abppp','ekaneec006',NULL,NULL),('abppp','ekaneec008',NULL,NULL),('apbk','ekaneec001',NULL,NULL),('apbk','ekaneec006',NULL,NULL),('apbk','ekaneec008',NULL,NULL),('abiii','ekaneec001',NULL,NULL),('abiii','ekaneec006',NULL,NULL),('abiii','ekaneec008',NULL,NULL),('apjjk','ekaneec001',NULL,NULL),('apjjk','ekaneec002',NULL,NULL),('apjjk','0',NULL,NULL),('apjjk','ekaneec006',NULL,NULL),('apjjk','ekaneec007',NULL,NULL),('apjjk','0',NULL,NULL),('apjjk','ekaneec008',NULL,NULL),('apjjk','0',NULL,NULL),('apjjk','0',NULL,NULL),('slkdjf','ekaneec001',NULL,NULL),('slkdjf','ekaneec002',NULL,NULL),('slkdjf','0',NULL,NULL),('slkdjf','ekaneec006',NULL,NULL),('slkdjf','ekaneec007',NULL,NULL),('slkdjf','0',NULL,NULL),('slkdjf','ekaneec008',NULL,NULL),('slkdjf','0',NULL,NULL),('slkdjf','0',NULL,NULL),('slkdf','ekaneec008',NULL,NULL),('slkdf','0',NULL,NULL),('slkdf','0',NULL,NULL),('slkdf','ekaneec006',NULL,NULL),('slkdf','ekaneec007',NULL,NULL),('slkdf','0',NULL,NULL),('slkdf','ekaneec001',NULL,NULL),('slkdf','ekaneec002',NULL,NULL),('slkdf','0',NULL,NULL),('slkdf','ekaneec001',NULL,NULL),('slkdf','ekaneec002',NULL,NULL),('slkdf','0',NULL,NULL),('slkdf','ekaneec006',NULL,NULL),('slkdf','ekaneec007',NULL,NULL),('slkdf','0',NULL,NULL),('slkdf','ekaneec008',NULL,NULL),('slkdf','0',NULL,NULL),('slkdf','0',NULL,NULL),('sldkfj','ekaneec001',NULL,NULL),('sldkfj','ekaneec002',NULL,NULL),('sldkfj','0',NULL,NULL),('sldkfj','ekaneec006',NULL,NULL),('sldkfj','ekaneec007',NULL,NULL),('sldkfj','0',NULL,NULL),('sldkfj','ekaneec008',NULL,NULL),('sldkfj','0',NULL,NULL),('sldkfj','0',NULL,NULL),('awesome','ekaneec001',NULL,NULL),('awesome','ekaneec002',NULL,NULL),('awesome','0',NULL,NULL),('awesome','ekaneec006',NULL,NULL),('awesome','ekaneec007',NULL,NULL),('awesome','0',NULL,NULL),('awesome','ekaneec008',NULL,NULL),('awesome','0',NULL,NULL),('awesome','0',NULL,NULL),('awesome','ekaneec001',NULL,NULL),('awesome','ekaneec002',NULL,NULL),('awesome','0',NULL,NULL),('awesome','ekaneec006',NULL,NULL),('awesome','ekaneec007',NULL,NULL),('awesome','0',NULL,NULL),('awesome','ekaneec008',NULL,NULL),('awesome','0',NULL,NULL),('awesome','0',NULL,NULL),('awesome','ekaneec001',NULL,NULL),('awesome','ekaneec002',NULL,NULL),('awesome','0',NULL,NULL),('awesome','ekaneec006',NULL,NULL),('awesome','ekaneec007',NULL,NULL),('awesome','0',NULL,NULL),('awesome','ekaneec008',NULL,NULL),('awesome','0',NULL,NULL),('awesome','0',NULL,NULL),('awesome','ekaneec001',NULL,NULL),('awesome','ekaneec002',NULL,NULL),('awesome','0',NULL,NULL),('awesome','ekaneec006',NULL,NULL),('awesome','ekaneec007',NULL,NULL),('awesome','0',NULL,NULL),('Abhijith','ekaneec001',NULL,NULL),('Abhijith','ekaneec002',NULL,NULL),('Abhijith','0',NULL,NULL),('Abhijith','ekaneec008',NULL,NULL),('Abhijith','0',NULL,NULL),('Abhijith','0',NULL,NULL),('Abhijith','ekaneec006',NULL,NULL),('Abhijith','ekaneec007',NULL,NULL),('Abhijith','0',NULL,NULL),('slkdf','ekaneec001',NULL,NULL),('slkdf','ekaneec002',NULL,NULL),('slkdf','ekaneec003',NULL,NULL),('skdlf','ekaneec001',NULL,NULL),('skdlf','ekaneec002',NULL,NULL),('skdlf','0',NULL,NULL),('skdlf','ekaneec006',NULL,NULL),('skdlf','ekaneec007',NULL,NULL),('skdlf','0',NULL,NULL),('skdlf','ekaneec008',NULL,NULL),('skdlf','0',NULL,NULL),('skdlf','0',NULL,NULL),('sdfklsd','ekaneec001',NULL,NULL),('sdfklsd','ekaneec002',NULL,NULL),('sdfklsd','0',NULL,NULL),('sdfklsd','ekaneec006',NULL,NULL),('sdfklsd','ekaneec007',NULL,NULL),('sdfklsd','0',NULL,NULL),('sdfklsd','ekaneec008',NULL,NULL),('sdfklsd','0',NULL,NULL),('sdfklsd','0',NULL,NULL),('sldkf','ekaneec001',NULL,NULL),('sldkf','ekaneec002',NULL,NULL),('sldkf','0',NULL,NULL),('sldkf','ekaneec006',NULL,NULL),('sldkf','ekaneec007',NULL,NULL),('sldkf','0',NULL,NULL),('sldkf','ekaneec008',NULL,NULL),('sldkf','0',NULL,NULL),('sldkf','0',NULL,NULL),('awesomeusr','ekaneec001',NULL,NULL),('awesomeusr','ekaneec002',NULL,NULL),('awesomeusr','0',NULL,NULL),('awesomeusr','ekaneec006',NULL,NULL),('awesomeusr','ekaneec007',NULL,NULL),('awesomeusr','0',NULL,NULL),('awesomeusr','ekaneec008',NULL,NULL),('awesomeusr','0',NULL,NULL),('awesomeusr','0',NULL,NULL);
/*!40000 ALTER TABLE `bayout` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-25  9:42:07
