-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cardio
-- ------------------------------------------------------
-- Server version	8.0.16

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
  `idMedicine` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(45) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idMedicine`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `idPatient` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `obs` varchar(50) DEFAULT NULL,
  `surgeryType` varchar(50) DEFAULT NULL,
  `historyCardioRisk` varchar(255) DEFAULT NULL,
  `historyACP` varchar(255) DEFAULT NULL,
  `historyLee` varchar(255) DEFAULT NULL,
  `historyGoldman` varchar(255) DEFAULT NULL,
  `obsCR` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPatient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_header`
--

LOCK TABLES `patient_header` WRITE;
/*!40000 ALTER TABLE `patient_header` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patient_medicine`
--

DROP TABLE IF EXISTS `patient_medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `patient_medicine` (
  `idPatientMedicine` int(11) NOT NULL AUTO_INCREMENT,
  `fk_idPatient` int(11) NOT NULL,
  `fk_idMedicine` int(11) NOT NULL,
  PRIMARY KEY (`idPatientMedicine`),
  KEY `fk_idMedicine` (`fk_idMedicine`),
  KEY `fk_idPatient` (`fk_idPatient`),
  CONSTRAINT `fk_idMedicine` FOREIGN KEY (`fk_idMedicine`) REFERENCES `medicine` (`idMedicine`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_idPatient2` FOREIGN KEY (`fk_idPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patient_medicine`
--

LOCK TABLES `patient_medicine` WRITE;
/*!40000 ALTER TABLE `patient_medicine` DISABLE KEYS */;
/*!40000 ALTER TABLE `patient_medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_acp`
--

DROP TABLE IF EXISTS `tbl_acp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_acp` (
  `idTblACP` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `thresholdMyocardialInfaction` int(11) DEFAULT NULL,
  `thresholdPrevMyocardialInfarction` int(11) DEFAULT NULL,
  `anginaIII` int(11) DEFAULT NULL,
  `anginaIV` int(11) DEFAULT NULL,
  `thresholdEdemaLungLW` int(11) DEFAULT NULL,
  `thresholdEdemaLungPrev` int(11) DEFAULT NULL,
  `severeAorticStenosis` int(11) DEFAULT NULL,
  `preOpDRSinusalExtraSystSVECG` int(11) DEFAULT NULL,
  `thresholdDocExtraSystSVECG` int(11) DEFAULT NULL,
  `thresholdCompounds` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `emergencySurgery` int(11) DEFAULT NULL,
  `dMellitus` int(11) DEFAULT NULL,
  `QwavesECG` int(11) DEFAULT NULL,
  `congestiveHeartFailure` int(11) DEFAULT NULL,
  `ischemiaVarSTECG` int(11) DEFAULT NULL,
  `highBPLeftVentr` int(11) DEFAULT NULL,
  `fk_idPatient` int(11) NOT NULL,
  `highRisk` varchar(255) DEFAULT NULL,
  `mediumRisk` varchar(255) DEFAULT NULL,
  `lowRisk` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTblACP`),
  UNIQUE KEY `fk_idPatient` (`fk_idPatient`) /*!80000 INVISIBLE */,
  CONSTRAINT `fk_idPatient` FOREIGN KEY (`fk_idPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_acp`
--

LOCK TABLES `tbl_acp` WRITE;
/*!40000 ALTER TABLE `tbl_acp` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_acp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_cardio_risk`
--

DROP TABLE IF EXISTS `tbl_cardio_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_cardio_risk` (
  `idTblCardioRisk` int(11) NOT NULL AUTO_INCREMENT,
  `PAS` varchar(255) DEFAULT NULL,
  `treatedPAS` varchar(255) DEFAULT NULL,
  `CT` varchar(255) DEFAULT NULL,
  `smoke` varchar(50) DEFAULT NULL,
  `HDLc` varchar(255) DEFAULT NULL,
  `statin` varchar(255) DEFAULT NULL,
  `fk_idPatient` int(11) NOT NULL DEFAULT '0',
  `lowRisk` varchar(255) DEFAULT NULL,
  `mediumRisk` varchar(255) DEFAULT NULL,
  `highRisk` varchar(255) DEFAULT NULL,
  `veryHighRisk` varchar(50) DEFAULT NULL,
  `outcome` varchar(255) DEFAULT NULL,
  `goalPercentDecrease` varchar(50) DEFAULT NULL,
  `goalPercentDecreaseBottom` varchar(255) DEFAULT NULL,
  `goalLDLc` varchar(255) DEFAULT NULL,
  `goalNHDLc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTblCardioRisk`),
  UNIQUE KEY `fk_idPatient` (`fk_idPatient`),
  CONSTRAINT `fk_idPatient3` FOREIGN KEY (`fk_idPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_cardio_risk`
--

LOCK TABLES `tbl_cardio_risk` WRITE;
/*!40000 ALTER TABLE `tbl_cardio_risk` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_cardio_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_goldman`
--

DROP TABLE IF EXISTS `tbl_goldman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tbl_goldman` (
  `idTblGoldman` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `thresholdMyocardialInfaction` int(11) DEFAULT NULL,
  `thirdSoundJugularStasis` int(11) DEFAULT NULL,
  `severeAorticStenosis` int(11) DEFAULT NULL,
  `preOpDRSinusalExtraSystSVECG` int(11) DEFAULT NULL,
  `thresholdDocExtraSystSVECG` int(11) DEFAULT NULL,
  `thresholdCompounds` int(11) DEFAULT NULL,
  `transHepatic` int(11) DEFAULT NULL,
  `bed` int(11) DEFAULT NULL,
  `surgeryAortaIPIT` int(11) DEFAULT NULL,
  `emergencySurgery` int(11) DEFAULT NULL,
  `fk_idPatient` int(11) NOT NULL,
  `classI` varchar(255) DEFAULT NULL,
  `classII` varchar(255) DEFAULT NULL,
  `classIII` varchar(255) DEFAULT NULL,
  `classIV` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idTblGoldman`),
  UNIQUE KEY `fk_idPatient` (`fk_idPatient`),
  CONSTRAINT `fk_idPatient4` FOREIGN KEY (`fk_idPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `idTblLee` int(11) NOT NULL AUTO_INCREMENT,
  `surgeryITVSI` int(11) DEFAULT NULL,
  `coronaryArterialDisease` int(11) DEFAULT NULL,
  `congestiveHeartFailure` int(11) DEFAULT NULL,
  `cerebrovascularDisease` int(11) DEFAULT NULL,
  `thresholdPreOpCreatinine` int(11) DEFAULT NULL,
  `fk_idPatient` int(11) NOT NULL,
  `classI` varchar(255) DEFAULT NULL,
  `classII` varchar(255) DEFAULT NULL,
  `classIII` varchar(255) DEFAULT NULL,
  `classIV` varchar(255) DEFAULT NULL,
  `dMellitus` int(11) DEFAULT '0',
  PRIMARY KEY (`idTblLee`),
  UNIQUE KEY `fk_idPatient` (`fk_idPatient`),
  CONSTRAINT `fk_idPatient5` FOREIGN KEY (`fk_idPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_lee`
--

LOCK TABLES `tbl_lee` WRITE;
/*!40000 ALTER TABLE `tbl_lee` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_lee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trial_patient`
--

DROP TABLE IF EXISTS `trial_patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `trial_patient` (
  `idTrial` int(11) NOT NULL AUTO_INCREMENT,
  `noSymptoms` varchar(255) DEFAULT NULL,
  `dyspnea` varchar(255) DEFAULT NULL,
  `headache` varchar(255) DEFAULT NULL,
  `toraxPain` varchar(255) DEFAULT NULL,
  `edemaMMII` varchar(255) DEFAULT NULL,
  `syncope` varchar(255) DEFAULT NULL,
  `palpitations` varchar(50) DEFAULT NULL,
  `recordHighBP` varchar(255) DEFAULT NULL,
  `recordThyroidDisease` varchar(255) DEFAULT NULL,
  `recordAshtmaBronchus` varchar(255) DEFAULT NULL,
  `recordPVM` varchar(255) DEFAULT NULL,
  `recordArrhythmia` varchar(255) DEFAULT NULL,
  `recordDyslipidemia` varchar(255) DEFAULT NULL,
  `recordDrugAlergy` varchar(255) DEFAULT NULL,
  `recordDMellitus` varchar(255) DEFAULT NULL,
  `recordCoronaryDisease` varchar(255) DEFAULT NULL,
  `recordCardCong` varchar(255) DEFAULT NULL,
  `CPETAS` varchar(255) DEFAULT NULL,
  `CPETAD` varchar(255) DEFAULT NULL,
  `CPEACV` varchar(255) DEFAULT NULL,
  `CPEAR` varchar(255) DEFAULT NULL,
  `CPEMMII` varchar(255) DEFAULT NULL,
  `ECG` varchar(255) DEFAULT NULL,
  `fk_IdPatient` int(11) DEFAULT '0',
  PRIMARY KEY (`idTrial`),
  UNIQUE KEY `fk_IdPatient` (`fk_IdPatient`),
  CONSTRAINT `fk_idPatient6` FOREIGN KEY (`fk_IdPatient`) REFERENCES `patient_header` (`idPatient`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trial_patient`
--

LOCK TABLES `trial_patient` WRITE;
/*!40000 ALTER TABLE `trial_patient` DISABLE KEYS */;
/*!40000 ALTER TABLE `trial_patient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-28 11:34:18
