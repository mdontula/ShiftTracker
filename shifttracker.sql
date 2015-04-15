DROP TABLE IF EXISTS `lab`.`bio_chemistery_report`;
CREATE TABLE  `lab`.`bio_chemistery_report` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `fasting_blood_sugar` varchar(100) default NULL,
  `post_lunch_blood_sugar` varchar(100) default NULL,
  `random_blood_sugar` varchar(100) default NULL,
  `blood_urea` varchar(100) default NULL,
  `serum_creatinine` varchar(100) default NULL,
  `serum_calcium` varchar(100) default NULL,
  `serum_amylase` varchar(100) default NULL,
  `serum_uric_acid` varchar(100) default NULL,
  `serum_electrolytes_na` varchar(45) default NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `created_date` datetime NOT NULL,
  `serum_electrolytes_cl` varchar(45) default NULL,
  `serum_electrolytes_k` varchar(45) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `lab`.`first_table`;
CREATE TABLE  `lab`.`first_table` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `Hemoglobin` varchar(45) default NULL,
  `platelet_count` varchar(45) default NULL,
  `malaria_pf_pv` varchar(45) default NULL,
  `widal_dilution_o` varchar(45) default NULL,
  `widal_dilution_h` varchar(45) default NULL,
  `widal_dilution_ah` varchar(45) default NULL,
  `widal_dilution_oh` varchar(45) default NULL,
  `patient_id` int(10) unsigned default NULL,
  `created_date` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `lab`.`hematology_report`;
CREATE TABLE  `lab`.`hematology_report` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `hemoglobin` varchar(50) default NULL,
  `wbccount` varchar(45) default NULL,
  `rbccount` varchar(45) default NULL,
  `esristhour` varchar(45) default NULL,
  `aeccount` varchar(45) default NULL,
  `bt` varchar(45) default NULL,
  `ct` varchar(45) default NULL,
  `bloodgroup` varchar(45) default NULL,
  `neutrophils` varchar(45) default NULL,
  `lymphocytes` varchar(45) default NULL,
  `eosinophils` varchar(45) default NULL,
  `monocytes` varchar(45) default NULL,
  `basophils` varchar(45) default NULL,
  `malaria_pf_pv` varchar(45) default NULL,
  `Patient_ID` int(10) unsigned NOT NULL,
  `created_date` datetime default NULL,
  `first_table_ref` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `lab`.`lipid_profile`;
CREATE TABLE  `lab`.`lipid_profile` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `serum_cholestrol` varchar(100) default NULL,
  `hdl_cholestrol` varchar(100) default NULL,
  `ldl_cholestrol` varchar(100) default NULL,
  `vldl_cholestrol` varchar(100) default NULL,
  `trigly_cerides` varchar(100) default NULL,
  `ratio` varchar(100) default NULL,
  `patient_id` int(10) unsigned default NULL,
  `created_date` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `lab`.`liver_function_test`;
CREATE TABLE  `lab`.`liver_function_test` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `serum_total_bilirubin` varchar(100) default NULL,
  `serum_direct_bilirubin` varchar(100) default NULL,
  `serum_indirect_bilirubin` varchar(100) default NULL,
  `serum_total_proteins` varchar(100) default NULL,
  `albumin` varchar(100) default NULL,
  `globulin` varchar(100) default NULL,
  `sgpt` varchar(100) default NULL,
  `sgot` varchar(100) default NULL,
  `serum_alkaline_phosphates` varchar(100) default NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `created_date` datetime NOT NULL,
  `bio_chemistery_report_ref` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `lab`.`patient_details`;
CREATE TABLE  `lab`.`patient_details` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(65) default NULL,
  `age` int(10) unsigned default NULL,
  `ref_by_dr` varchar(65) default NULL,
  `date` datetime default NULL,
  `sex` varchar(45) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `lab`.`serology`;
CREATE TABLE  `lab`.`serology` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `widal_dilution_o` varchar(45) default NULL,
  `widal_dilution_h` varchar(45) default NULL,
  `widal_dilution_ah` varchar(45) default NULL,
  `widal_dilution_bh` varchar(45) default NULL,
  `vdrl` varchar(45) default NULL,
  `rafactor` varchar(45) default NULL,
  `asotitre` varchar(45) default NULL,
  `asotitle_dilution` varchar(45) default NULL,
  `hiv1andhiv2` varchar(45) default NULL,
  `hbsag` varchar(45) default NULL,
  `patient_id` int(10) unsigned default NULL,
  `created_date` datetime default NULL,
  `lipid_profile_ref` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `lab`.`sputum_for_afb`;
CREATE TABLE  `lab`.`sputum_for_afb` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `others` varchar(200) default NULL,
  `patient_id` int(10) unsigned default NULL,
  `created_date` datetime default NULL,
  `lipid_profile_ref` int(10) unsigned default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

DROP TABLE IF EXISTS `lab`.`urine_exam_report`;
CREATE TABLE  `lab`.`urine_exam_report` (
  `ID` int(10) unsigned NOT NULL auto_increment,
  `appearance` varchar(45) default NULL,
  `color` varchar(45) default NULL,
  `sugar` varchar(45) default NULL,
  `albumin` varchar(45) default NULL,
  `bile_salts` varchar(45) default NULL,
  `bile_pigments` varchar(45) default NULL,
  `ph` varchar(45) default NULL,
  `sp_gravity` varchar(45) default NULL,
  `ketonbodies` varchar(45) default NULL,
  `urine_for_gravendex` varchar(45) default NULL,
  `pus_cells` varchar(45) default NULL,
  `rbcs` varchar(45) default NULL,
  `epithelial_cells` varchar(45) default NULL,
  `casts` varchar(45) default NULL,
  `crystals` varchar(45) default NULL,
  `Other_Findings` varchar(100) default NULL,
  `patient_id` int(10) unsigned NOT NULL,
  `created_date` datetime default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;