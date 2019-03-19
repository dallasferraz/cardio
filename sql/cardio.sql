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
  `patientCardioRisk` int(11) DEFAULT NULL,
  `patientLee` int(11) DEFAULT NULL,
  `patientGoldman` int(11) DEFAULT NULL,
  `patientACP` int(11) DEFAULT NULL,
  `obs` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idPatient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_header`
--

LOCK TABLES `patient_header` WRITE;
/*!40000 ALTER TABLE `patient_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblacp`
--

DROP TABLE IF EXISTS `tblacp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblacp` (
  `idTblACP` int(11) NOT NULL,
  `patientACP` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`idTblACP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblacp`
--

LOCK TABLES `tblacp` WRITE;
/*!40000 ALTER TABLE `tblacp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblacp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcardiorisk`
--

DROP TABLE IF EXISTS `tblcardiorisk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblcardiorisk` (
  `idTblCardioRisk` int(11) NOT NULL,
  `patientCardioRisk` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`idTblCardioRisk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcardiorisk`
--

LOCK TABLES `tblcardiorisk` WRITE;
/*!40000 ALTER TABLE `tblcardiorisk` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblcardiorisk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblgoldman`
--

DROP TABLE IF EXISTS `tblgoldman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tblgoldman` (
  `idTblGoldman` int(11) NOT NULL,
  `patientGoldman` int(11) DEFAULT NULL,
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
  PRIMARY KEY (`idTblGoldman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblgoldman`
--

LOCK TABLES `tblgoldman` WRITE;
/*!40000 ALTER TABLE `tblgoldman` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblgoldman` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbllee`
--

DROP TABLE IF EXISTS `tbllee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbllee` (
  `idTblLee` int(11) NOT NULL,
  `patientLee` int(11) DEFAULT NULL,
  `surgeryITVSI` tinyint(4) DEFAULT NULL,
  `coronaryArterialDisease` tinyint(4) DEFAULT NULL,
  `congestiveHeartFailure` tinyint(4) DEFAULT NULL,
  `cerebrovascularDisease` tinyint(4) DEFAULT NULL,
  `thresholdPreOpCreatinine` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`idTblLee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbllee`
--

LOCK TABLES `tbllee` WRITE;
/*!40000 ALTER TABLE `tbllee` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbllee` ENABLE KEYS */;
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

-- Dump completed on 2019-03-19 11:54:57
