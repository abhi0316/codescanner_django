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
  `scanposition` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bayout`
--

LOCK TABLES `bayout` WRITE;
/*!40000 ALTER TABLE `bayout` DISABLE KEYS */;
INSERT INTO `bayout` VALUES ('abhi','ekaneec001',NULL),('abhi','ekaneec002',NULL),('abhi','ekaneec003',NULL),('abhi','ekaneec004',NULL),('abhi','ekaneec005',NULL),('abhi','ekaneec006',NULL),('abhi','ekaneec007',NULL),('abhi','ekaneec008',NULL),('abhi','ekaneec009',NULL),('abhijith','ekaneec001',NULL),('abhijith','ekaneec002',NULL),('abhijith','ekaneec003',NULL),('abhijith','ekaneec004',NULL),('abhijith','ekaneec005',NULL),('abhijith','ekaneec006',NULL),('abhijith','ekaneec007',NULL),('abhijith','ekaneec008',NULL),('abhijith','ekaneec009',NULL),('abhijith','ekaneec007',NULL),('abhijith','ekaneec008',NULL),('abhijith','ekaneec009',NULL),('abhijith','ekaneec004',NULL),('abhijith','ekaneec005',NULL),('abhijith','ekaneec006',NULL),('abhijith','ekaneec001',NULL),('abhijith','ekaneec002',NULL),('abhijith','ekaneec003',NULL),('abhi','ekaneec001',NULL),('abhi','ekaneec002',NULL),('abhi','ekaneec003',NULL),('abhi','ekaneec006',NULL),('abhi','ekaneec007',NULL),('abhi','ekaneec008',NULL),('abhi','ekaneec001',NULL),('abhi','ekaneec002',NULL),('abhi','ekaneec003',NULL),('abhi','ekaneec006',NULL),('abhi','ekaneec007',NULL),('abhi','ekaneec008',NULL),('abi','ekaneec001',NULL),('abi','ekaneec002',NULL),('abi','0',NULL),('abi','ekaneec006',NULL),('abi','ekaneec007',NULL),('abi','ekaneec008',NULL),('abi','ekaneec001',NULL),('abi','ekaneec002',NULL),('abi','0',NULL),('abi','ekaneec006',NULL),('abi','ekaneec007',NULL),('abi','ekaneec008',NULL),('abiji','ekaneec001',NULL),('abiji','ekaneec002',NULL),('abiji','0',NULL),('abiji','ekaneec006',NULL),('abiji','ekaneec007',NULL),('abiji','0',NULL),('abiji','ekaneec008',NULL),('abiji','0',NULL),('abiji','0',NULL),('abhiiiiii','00.A0.F4.50.71.01',NULL),('abhiiiiii','00.A0.F4.50.71.02',NULL),('abhiiiiii','00.A0.F4.50.71.03',NULL),('abhiiiiii','00.A0.F4.50.71.04',NULL),('abhiiiiii','00.A0.F4.50.71.05',NULL),('abhiiiiii','00.A0.F4.50.71.06',NULL),('abhiiiiii','00.A0.F4.50.71.07',NULL),('abhiiiiii','0',NULL),('abhiiiiii','0',NULL),('abhiiiiii','0',NULL),('abhiiiiii','00.A0.F4.50.71.08',NULL),('abhiiiiii','00.A0.F4.50.71.09',NULL),('abhiiiiii','00.A0.F4.50.71.0A',NULL),('abhiiiiii','0',NULL),('abhiiiiii','0',NULL),('abhiiiiii','00.A0.F4.50.71.0B',NULL),('abhiiiiii','0',NULL),('abhiiiiii','0',NULL),('abhiiiiii','0',NULL),('abhiiiiii','0',NULL),('abhiiiiii','00.A0.F4.50.71.0C',NULL),('abhiiiiii','00.A0.F4.50.71.0D',NULL),('abhiiiiii','00.A0.F4.50.71.0E',NULL),('abhiiiiii','00.A0.F4.50.71.0F',NULL),('abhiiiiii','00.A0.F4.50.71.10',NULL),('abhiiiiii','00.A0.F4.50.71.11',NULL),('abhiiiiii','0',NULL),('abhiiiiii','0',NULL),('abhiiiiii','0',NULL),('abhiiiiii','0',NULL),('abhiiiiii','00.A0.F4.50.71.12',NULL),('abhiiiiii','00.A0.F4.50.71.13',NULL),('abhiiiiii','00.A0.F4.50.71.14',NULL),('abhiiiiii','00.A0.F4.50.71.15',NULL),('abhiiiiii','0',NULL),('apj','ekaneec006',NULL),('apj','ekaneec007',NULL),('apj','0',NULL),('apj','ekaneec001',NULL),('apj','ekaneec002',NULL),('apj','0',NULL),('apj','ekaneec008',NULL),('apj','0',NULL),('apj','0',NULL),('abj','ekaneec001',NULL),('abj','ekaneec002',NULL),('abj','0',NULL),('abj','ekaneec006',NULL),('abj','ekaneec007',NULL),('abj','0',NULL),('abj','ekaneec008',NULL),('abj','0',NULL),('abj','0',NULL),('abjj','ekaneec001',NULL),('abjj','ekaneec002',NULL),('abjj','0',NULL),('abjj','ekaneec006',NULL),('abjj','ekaneec007',NULL),('abjj','0',NULL),('abjj','ekaneec008',NULL),('abjj','0',NULL),('abjj','0',NULL),('abbb','ekaneec001',NULL),('abbb','ekaneec002',NULL),('abbb','0',NULL),('abbb','ekaneec006',NULL),('abbb','ekaneec007',NULL),('abbb','0',NULL),('abbb','ekaneec008',NULL),('abbb','0',NULL),('abbb','0',NULL),('abbbb','ekaneec001',NULL),('abbbb','ekaneec006',NULL),('abbbb','ekaneec008',NULL),('abppp','ekaneec001',NULL),('abppp','ekaneec006',NULL),('abppp','ekaneec008',NULL),('abppp','ekaneec001',NULL),('abppp','ekaneec006',NULL),('abppp','ekaneec008',NULL),('apbk','ekaneec001',NULL),('apbk','ekaneec006',NULL),('apbk','ekaneec008',NULL),('abiii','ekaneec001',NULL),('abiii','ekaneec006',NULL),('abiii','ekaneec008',NULL),('apjjk','ekaneec001',NULL),('apjjk','ekaneec002',NULL),('apjjk','0',NULL),('apjjk','ekaneec006',NULL),('apjjk','ekaneec007',NULL),('apjjk','0',NULL),('apjjk','ekaneec008',NULL),('apjjk','0',NULL),('apjjk','0',NULL),('slkdjf','ekaneec001',NULL),('slkdjf','ekaneec002',NULL),('slkdjf','0',NULL),('slkdjf','ekaneec006',NULL),('slkdjf','ekaneec007',NULL),('slkdjf','0',NULL),('slkdjf','ekaneec008',NULL),('slkdjf','0',NULL),('slkdjf','0',NULL),('slkdf','ekaneec008',NULL),('slkdf','0',NULL),('slkdf','0',NULL),('slkdf','ekaneec006',NULL),('slkdf','ekaneec007',NULL),('slkdf','0',NULL),('slkdf','ekaneec001',NULL),('slkdf','ekaneec002',NULL),('slkdf','0',NULL),('slkdf','ekaneec001',NULL),('slkdf','ekaneec002',NULL),('slkdf','0',NULL),('slkdf','ekaneec006',NULL),('slkdf','ekaneec007',NULL),('slkdf','0',NULL),('slkdf','ekaneec008',NULL),('slkdf','0',NULL),('slkdf','0',NULL),('sldkfj','ekaneec001',NULL),('sldkfj','ekaneec002',NULL),('sldkfj','0',NULL),('sldkfj','ekaneec006',NULL),('sldkfj','ekaneec007',NULL),('sldkfj','0',NULL),('sldkfj','ekaneec008',NULL),('sldkfj','0',NULL),('sldkfj','0',NULL),('awesome','ekaneec001',NULL),('awesome','ekaneec002',NULL),('awesome','0',NULL),('awesome','ekaneec006',NULL),('awesome','ekaneec007',NULL),('awesome','0',NULL),('awesome','ekaneec008',NULL),('awesome','0',NULL),('awesome','0',NULL),('awesome','ekaneec001',NULL),('awesome','ekaneec002',NULL),('awesome','0',NULL),('awesome','ekaneec006',NULL),('awesome','ekaneec007',NULL),('awesome','0',NULL),('awesome','ekaneec008',NULL),('awesome','0',NULL),('awesome','0',NULL),('awesome','ekaneec001',NULL),('awesome','ekaneec002',NULL),('awesome','0',NULL),('awesome','ekaneec006',NULL),('awesome','ekaneec007',NULL),('awesome','0',NULL),('awesome','ekaneec008',NULL),('awesome','0',NULL),('awesome','0',NULL),('awesome','ekaneec001',NULL),('awesome','ekaneec002',NULL),('awesome','0',NULL),('awesome','ekaneec006',NULL),('awesome','ekaneec007',NULL),('awesome','0',NULL),('Abhijith','ekaneec001',NULL),('Abhijith','ekaneec002',NULL),('Abhijith','0',NULL),('Abhijith','ekaneec008',NULL),('Abhijith','0',NULL),('Abhijith','0',NULL),('Abhijith','ekaneec006',NULL),('Abhijith','ekaneec007',NULL),('Abhijith','0',NULL),('slkdf','ekaneec001',NULL),('slkdf','ekaneec002',NULL),('slkdf','ekaneec003',NULL),('skdlf','ekaneec001',NULL),('skdlf','ekaneec002',NULL),('skdlf','0',NULL),('skdlf','ekaneec006',NULL),('skdlf','ekaneec007',NULL),('skdlf','0',NULL),('skdlf','ekaneec008',NULL),('skdlf','0',NULL),('skdlf','0',NULL),('sdfklsd','ekaneec001',NULL),('sdfklsd','ekaneec002',NULL),('sdfklsd','0',NULL),('sdfklsd','ekaneec006',NULL),('sdfklsd','ekaneec007',NULL),('sdfklsd','0',NULL),('sdfklsd','ekaneec008',NULL),('sdfklsd','0',NULL),('sdfklsd','0',NULL),('sldkf','ekaneec001',NULL),('sldkf','ekaneec002',NULL),('sldkf','0',NULL),('sldkf','ekaneec006',NULL),('sldkf','ekaneec007',NULL),('sldkf','0',NULL),('sldkf','ekaneec008',NULL),('sldkf','0',NULL),('sldkf','0',NULL),('awesomeusr','ekaneec001',NULL),('awesomeusr','ekaneec002',NULL),('awesomeusr','0',NULL),('awesomeusr','ekaneec006',NULL),('awesomeusr','ekaneec007',NULL),('awesomeusr','0',NULL),('awesomeusr','ekaneec008',NULL),('awesomeusr','0',NULL),('awesomeusr','0',NULL);
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

-- Dump completed on 2018-01-24 10:53:28
