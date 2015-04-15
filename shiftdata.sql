-- MySQL dump 10.13
--
-- Host: localhost    Database: lab
-- ------------------------------------------------------
-- Server version	5.1.22-rc-community

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
-- Table structure for table `bio_chemistery_report`
--

DROP TABLE IF EXISTS `bio_chemistery_report`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `bio_chemistery_report` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fasting_blood_sugar` varchar(100) DEFAULT NULL,
  `post_lunch_blood_sugar` varchar(100) DEFAULT NULL,
  `random_blood_sugar` varchar(100) DEFAULT NULL,
  `blood_urea` varchar(100) DEFAULT NULL,
  `serum_creatinine` varchar(100) DEFAULT NULL,
  `serum_calcium` varchar(100) DEFAULT NULL,
  `serum_amylase` varchar(100) DEFAULT NULL,
  `serum_uric_acid` varchar(100) DEFAULT NULL,
  `serum_electrolytes_na` varchar(45) DEFAULT NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `created_date` datetime NOT NULL,
  `serum_electrolytes_cl` varchar(45) DEFAULT NULL,
  `serum_electrolytes_k` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `first_table`
--

DROP TABLE IF EXISTS `first_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `first_table` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Hemoglobin` varchar(45) DEFAULT NULL,
  `platelet_count` varchar(45) DEFAULT NULL,
  `malaria_pf_pv` varchar(45) DEFAULT NULL,
  `widal_dilution_o` varchar(45) DEFAULT NULL,
  `widal_dilution_h` varchar(45) DEFAULT NULL,
  `widal_dilution_ah` varchar(45) DEFAULT NULL,
  `widal_dilution_oh` varchar(45) DEFAULT NULL,
  `patient_id` int(10) unsigned DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hematology_report`
--

DROP TABLE IF EXISTS `hematology_report`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `hematology_report` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `hemoglobin` varchar(50) DEFAULT NULL,
  `wbccount` varchar(45) DEFAULT NULL,
  `rbccount` varchar(45) DEFAULT NULL,
  `esristhour` varchar(45) DEFAULT NULL,
  `aeccount` varchar(45) DEFAULT NULL,
  `bt` varchar(45) DEFAULT NULL,
  `ct` varchar(45) DEFAULT NULL,
  `bloodgroup` varchar(45) DEFAULT NULL,
  `neutrophils` varchar(45) DEFAULT NULL,
  `lymphocytes` varchar(45) DEFAULT NULL,
  `eosinophils` varchar(45) DEFAULT NULL,
  `monocytes` varchar(45) DEFAULT NULL,
  `basophils` varchar(45) DEFAULT NULL,
  `malaria_pf_pv` varchar(45) DEFAULT NULL,
  `Patient_ID` int(10) unsigned NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `first_table_ref` int(10) unsigned NOT NULL,
  `rhfactor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `lipid_profile`
--

DROP TABLE IF EXISTS `lipid_profile`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `lipid_profile` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serum_cholestrol` varchar(100) DEFAULT NULL,
  `hdl_cholestrol` varchar(100) DEFAULT NULL,
  `ldl_cholestrol` varchar(100) DEFAULT NULL,
  `vldl_cholestrol` varchar(100) DEFAULT NULL,
  `trigly_cerides` varchar(100) DEFAULT NULL,
  `ratio` varchar(100) DEFAULT NULL,
  `patient_id` int(10) unsigned DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `liver_function_test`
--

DROP TABLE IF EXISTS `liver_function_test`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `liver_function_test` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `serum_total_bilirubin` varchar(100) DEFAULT NULL,
  `serum_direct_bilirubin` varchar(100) DEFAULT NULL,
  `serum_indirect_bilirubin` varchar(100) DEFAULT NULL,
  `serum_total_proteins` varchar(100) DEFAULT NULL,
  `albumin` varchar(100) DEFAULT NULL,
  `globulin` varchar(100) DEFAULT NULL,
  `sgpt` varchar(100) DEFAULT NULL,
  `sgot` varchar(100) DEFAULT NULL,
  `serum_alkaline_phosphates` varchar(100) DEFAULT NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `created_date` datetime NOT NULL,
  `bio_chemistery_report_ref` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `patient_details`
--

DROP TABLE IF EXISTS `patient_details`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `patient_details` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(65) DEFAULT NULL,
  `age` int(10) unsigned DEFAULT NULL,
  `ref_by_dr` varchar(65) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `sex` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `serology`
--

DROP TABLE IF EXISTS `serology`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `serology` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `widal_dilution_o` varchar(45) DEFAULT NULL,
  `widal_dilution_h` varchar(45) DEFAULT NULL,
  `widal_dilution_ah` varchar(45) DEFAULT NULL,
  `widal_dilution_bh` varchar(45) DEFAULT NULL,
  `vdrl` varchar(45) DEFAULT NULL,
  `rafactor` varchar(45) DEFAULT NULL,
  `asotitre` varchar(45) DEFAULT NULL,
  `asotitle_dilution` varchar(45) DEFAULT NULL,
  `hiv1andhiv2` varchar(45) DEFAULT NULL,
  `hbsag` varchar(45) DEFAULT NULL,
  `patient_id` int(10) unsigned DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `lipid_profile_ref` int(10) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `sputum_for_afb`
--

DROP TABLE IF EXISTS `sputum_for_afb`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `sputum_for_afb` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `others` varchar(200) DEFAULT NULL,
  `patient_id` int(10) unsigned DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `lipid_profile_ref` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `urine_exam_report`
--

DROP TABLE IF EXISTS `urine_exam_report`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `urine_exam_report` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appearance` varchar(45) DEFAULT NULL,
  `color` varchar(45) DEFAULT NULL,
  `sugar` varchar(45) DEFAULT NULL,
  `albumin` varchar(45) DEFAULT NULL,
  `bile_salts` varchar(45) DEFAULT NULL,
  `bile_pigments` varchar(45) DEFAULT NULL,
  `ph` varchar(45) DEFAULT NULL,
  `sp_gravity` varchar(45) DEFAULT NULL,
  `ketonbodies` varchar(45) DEFAULT NULL,
  `urine_for_gravendex` varchar(45) DEFAULT NULL,
  `pus_cells` varchar(45) DEFAULT NULL,
  `rbcs` varchar(45) DEFAULT NULL,
  `epithelial_cells` varchar(45) DEFAULT NULL,
  `casts` varchar(45) DEFAULT NULL,
  `crystals` varchar(45) DEFAULT NULL,
  `Other_Findings` varchar(100) DEFAULT NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `created_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
SET character_set_client = @saved_cs_client;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-10-21  5:53:55
