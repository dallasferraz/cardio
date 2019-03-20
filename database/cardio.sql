-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: cardio
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `medicine` (
  `idMedicine` int(11) NOT NULL,
  `label` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMedicine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES (1,'med1'),(2,'med2'),(3,'med3');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_header`
--

DROP TABLE IF EXISTS `patient_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `patient_header` (
  `idPatient` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `nMedicines` int(11) DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idPatient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_header`
--

LOCK TABLES `patient_header` WRITE;
/*!40000 ALTER TABLE `patient_header` DISABLE KEYS */;
INSERT INTO `patient_header` VALUES (1,'john','M',35,2,'NA');
/*!40000 ALTER TABLE `patient_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_medicine`
--

DROP TABLE IF EXISTS `patient_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `patient_medicine` (
  `idPatientMedicine` int(11) NOT NULL,
  `fk_idPatient` int(11) NOT NULL,
  `fk_idMedicine` int(11) NOT NULL,
  PRIMARY KEY (`idPatientMedicine`),
  KEY `idPatient_idx` (`fk_idPatient`),
  KEY `idMedicine_idx` (`fk_idMedicine`),
  CONSTRAINT `patient_medicine_ibfk_1` FOREIGN KEY (`fk_idPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `patient_medicine_ibfk_2` FOREIGN KEY (`fk_idMedicine`) REFERENCES `medicine` (`idMedicine`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_medicine`
--

LOCK TABLES `patient_medicine` WRITE;
/*!40000 ALTER TABLE `patient_medicine` DISABLE KEYS */;
INSERT INTO `patient_medicine` VALUES (1,1,2),(2,1,3);
/*!40000 ALTER TABLE `patient_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_acp`
--

DROP TABLE IF EXISTS `tbl_acp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_acp` (
  `idTblACP` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `thresholdMyocardialInfaction` tinyint(4) DEFAULT NULL,
  `thresholdPrevMyocardialInfarction` tinyint(4) DEFAULT NULL,
  `anginaIII` tinyint(4) DEFAULT NULL,
  `anginaIV` tinyint(4) DEFAULT NULL,
  `thresholdEdemaLungLW` tinyint(4) DEFAULT NULL,
  `thresholdEdemaLungPrev` tinyint(4) DEFAULT NULL,
  `severeAorticStenosis` tinyint(4) DEFAULT NULL,
  `preOpDRSinusalExtraSystSVECG` tinyint(4) DEFAULT NULL,
  `thresholdDocExtraSystSVECG` tinyint(4) DEFAULT NULL,
  `thresholdCompounds` tinyint(4) DEFAULT NULL,
  `bed` tinyint(4) DEFAULT NULL,
  `emergencySurgery` tinyint(4) DEFAULT NULL,
  `dMellitus` tinyint(4) DEFAULT NULL,
  `QwavesECG` tinyint(4) DEFAULT NULL,
  `congestiveHeartFailure` tinyint(4) DEFAULT NULL,
  `ischemiaVarSTECG` tinyint(4) DEFAULT NULL,
  `highBPLeftVentr` tinyint(4) DEFAULT NULL,
  `fk_idPatient` int(11) NOT NULL,
  PRIMARY KEY (`idTblACP`),
  UNIQUE KEY `fk_patientACP_UNIQUE` (`fk_idPatient`),
  CONSTRAINT `idPatient` FOREIGN KEY (`fk_idPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_acp`
--

LOCK TABLES `tbl_acp` WRITE;
/*!40000 ALTER TABLE `tbl_acp` DISABLE KEYS */;
INSERT INTO `tbl_acp` VALUES (1,35,0,0,0,0,0,0,0,0,0,0,1,1,0,0,0,0,0,1);
/*!40000 ALTER TABLE `tbl_acp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cardio_risk`
--

DROP TABLE IF EXISTS `tbl_cardio_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_cardio_risk` (
  `idTblCardioRisk` int(11) NOT NULL,
  `thresholdAteroObstrIllness` tinyint(4) DEFAULT NULL,
  `dMellitus` tinyint(4) DEFAULT NULL,
  `dTypeI` tinyint(4) DEFAULT NULL,
  `dTypeII` tinyint(4) DEFAULT NULL,
  `plaqueCarotidUS` tinyint(4) DEFAULT NULL,
  `thresholdAnkleBrachialIndex` tinyint(4) DEFAULT NULL,
  `calciumCoronaryScore` tinyint(4) DEFAULT NULL,
  `abdominalAorticAneurysm` tinyint(4) DEFAULT NULL,
  `thresholdChronicKidneyDisease` tinyint(4) DEFAULT NULL,
  `thresholdLDLc` tinyint(4) DEFAULT NULL,
  `systolicBloodPressure` int(11) DEFAULT NULL,
  `treatedSystolicBloodPressure` int(11) DEFAULT NULL,
  `smoke` tinyint(4) DEFAULT NULL,
  `computerTomography` int(11) DEFAULT NULL,
  `HDLc` int(11) DEFAULT NULL,
  `statin` tinyint(4) DEFAULT NULL,
  `fk_idPatient` int(11) NOT NULL,
  PRIMARY KEY (`idTblCardioRisk`),
  UNIQUE KEY `fk_idPatient_UNIQUE` (`fk_idPatient`) /*!80000 INVISIBLE */,
  CONSTRAINT `tbl_cardio_risk_ibfk_1` FOREIGN KEY (`fk_idPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cardio_risk`
--

LOCK TABLES `tbl_cardio_risk` WRITE;
/*!40000 ALTER TABLE `tbl_cardio_risk` DISABLE KEYS */;
INSERT INTO `tbl_cardio_risk` VALUES (1,0,0,0,1,0,0,0,0,0,0,110,115,1,5,150,0,1);
/*!40000 ALTER TABLE `tbl_cardio_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_goldman`
--

DROP TABLE IF EXISTS `tbl_goldman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_goldman` (
  `idTblGoldman` int(11) NOT NULL,
  `age` int(11) DEFAULT NULL,
  `thresholdMyocardialInfaction` tinyint(4) DEFAULT NULL,
  `thirdSoundJugularStasis` tinyint(4) DEFAULT NULL,
  `severeAorticStenosis` tinyint(4) DEFAULT NULL,
  `preOpDRSinusalExtraSystSVECG` tinyint(4) DEFAULT NULL,
  `thresholdDocExtraSystSVECG` tinyint(4) DEFAULT NULL,
  `thresholdCompounds` tinyint(4) DEFAULT NULL,
  `transHepatic` tinyint(4) DEFAULT NULL,
  `bed` tinyint(4) DEFAULT NULL,
  `surgeryAortaIPIT` tinyint(4) DEFAULT NULL,
  `emergencySurgery` tinyint(4) DEFAULT NULL,
  `fk_idPatient` int(11) NOT NULL,
  PRIMARY KEY (`idTblGoldman`),
  UNIQUE KEY `fk_idPatient_UNIQUE` (`fk_idPatient`),
  CONSTRAINT `tbl_goldman_ibfk_1` FOREIGN KEY (`fk_idPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_goldman`
--

LOCK TABLES `tbl_goldman` WRITE;
/*!40000 ALTER TABLE `tbl_goldman` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_goldman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_lee`
--

DROP TABLE IF EXISTS `tbl_lee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_lee` (
  `idTblLee` int(11) NOT NULL,
  `surgeryITVSI` tinyint(4) DEFAULT NULL,
  `coronaryArterialDisease` tinyint(4) DEFAULT NULL,
  `congestiveHeartFailure` tinyint(4) DEFAULT NULL,
  `cerebrovascularDisease` tinyint(4) DEFAULT NULL,
  `thresholdPreOpCreatinine` tinyint(4) DEFAULT NULL,
  `fk_idPatient` int(11) NOT NULL,
  PRIMARY KEY (`idTblLee`),
  UNIQUE KEY `fk_idPatient_UNIQUE` (`fk_idPatient`),
  CONSTRAINT `tbl_lee_ibfk_1` FOREIGN KEY (`fk_idPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lee`
--

LOCK TABLES `tbl_lee` WRITE;
/*!40000 ALTER TABLE `tbl_lee` DISABLE KEYS */;
INSERT INTO `tbl_lee` VALUES (1,0,0,0,0,0,1);
/*!40000 ALTER TABLE `tbl_lee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'cardio'
--

--
-- Dumping routines for database 'cardio'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-20  9:54:55
