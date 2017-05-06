/*
SQLyog v10.2 
MySQL - 5.7.11-log : Database - healthroom
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`healthroom` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `healthroom`;

/*Table structure for table `tb_bloodpresure` */

DROP TABLE IF EXISTS `tb_bloodpresure`;

CREATE TABLE `tb_bloodpresure` (
  `dataID` bigint(20) NOT NULL AUTO_INCREMENT,
  `familyCode` varchar(255) DEFAULT NULL,
  `familyName` varchar(255) DEFAULT NULL,
  `orgCode` varchar(255) DEFAULT NULL,
  `orgName` varchar(255) DEFAULT NULL,
  `dataSource` tinyint(4) DEFAULT NULL,
  `machineID` varchar(255) DEFAULT NULL,
  `examDate` datetime NOT NULL,
  `residentEMPI` varchar(255) NOT NULL,
  `residentName` varchar(255) DEFAULT NULL,
  `examDoctorEMPI` varchar(255) DEFAULT NULL,
  `examDoctorName` varchar(255) DEFAULT NULL,
  `auditDoctorEMPI` varchar(255) DEFAULT NULL,
  `auditDoctorName` varchar(255) DEFAULT NULL,
  `SBP` float DEFAULT NULL,
  `DBP` float DEFAULT NULL,
  `MBP` float DEFAULT NULL,
  `pulse` int(11) DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bloodpresure` */

insert  into `tb_bloodpresure`(`dataID`,`familyCode`,`familyName`,`orgCode`,`orgName`,`dataSource`,`machineID`,`examDate`,`residentEMPI`,`residentName`,`examDoctorEMPI`,`examDoctorName`,`auditDoctorEMPI`,`auditDoctorName`,`SBP`,`DBP`,`MBP`,`pulse`,`conclusion`) values (5,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,80,'aaabbbcccdddeeefff');

/*Table structure for table `tb_bloodsugar` */

DROP TABLE IF EXISTS `tb_bloodsugar`;

CREATE TABLE `tb_bloodsugar` (
  `dataID` bigint(20) NOT NULL AUTO_INCREMENT,
  `familyCode` varchar(255) DEFAULT NULL,
  `familyName` varchar(255) DEFAULT NULL,
  `orgCode` varchar(255) DEFAULT NULL,
  `orgName` varchar(255) DEFAULT NULL,
  `dataSource` tinyint(4) DEFAULT NULL,
  `machineID` varchar(255) DEFAULT NULL,
  `examDate` datetime NOT NULL,
  `residentEMPI` varchar(255) NOT NULL,
  `residentName` varchar(255) DEFAULT NULL,
  `examDoctorEMPI` varchar(255) DEFAULT NULL,
  `examDoctorName` varchar(255) DEFAULT NULL,
  `auditDoctorEMPI` varchar(255) DEFAULT NULL,
  `auditDoctorName` varchar(255) DEFAULT NULL,
  `FastingBloodGlucose` float DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bloodsugar` */

insert  into `tb_bloodsugar`(`dataID`,`familyCode`,`familyName`,`orgCode`,`orgName`,`dataSource`,`machineID`,`examDate`,`residentEMPI`,`residentName`,`examDoctorEMPI`,`examDoctorName`,`auditDoctorEMPI`,`auditDoctorName`,`FastingBloodGlucose`,`conclusion`) values (5,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,'aaabbbcccdddeeefff'),(6,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,'aaabbbcccdddeeefff'),(7,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,'aaabbbcccdddeeefff'),(8,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,'aaabbbcccdddeeefff');

/*Table structure for table `tb_bodycompositiondata` */

DROP TABLE IF EXISTS `tb_bodycompositiondata`;

CREATE TABLE `tb_bodycompositiondata` (
  `dataID` bigint(20) NOT NULL AUTO_INCREMENT,
  `familyCode` varchar(255) DEFAULT NULL,
  `familyName` varchar(255) DEFAULT NULL,
  `orgCode` varchar(255) DEFAULT NULL,
  `orgName` varchar(255) DEFAULT NULL,
  `dataSource` tinyint(4) DEFAULT NULL,
  `machineID` varchar(255) DEFAULT NULL,
  `examDate` datetime NOT NULL,
  `residentEMPI` varchar(255) NOT NULL,
  `residentName` varchar(255) DEFAULT NULL,
  `examDoctorEMPI` varchar(255) DEFAULT NULL,
  `examDoctorName` varchar(255) DEFAULT NULL,
  `auditDoctorEMPI` varchar(255) DEFAULT NULL,
  `auditDoctorName` varchar(255) DEFAULT NULL,
  `abdominalBodyFatmass` varchar(32) DEFAULT NULL,
  `abdominalBodyFatmassAdjust` varchar(32) DEFAULT NULL,
  `trunkSoftleanmassFlag` varchar(32) DEFAULT NULL,
  `visceralFatArea` varchar(32) DEFAULT NULL,
  `visceralFatmass` varchar(32) DEFAULT NULL,
  `weight` varchar(32) DEFAULT NULL,
  `weightAdjust` varchar(32) DEFAULT NULL,
  `weightHighLimit` varchar(32) DEFAULT NULL,
  `weightlowlimit` varchar(32) DEFAULT NULL,
  `whr` varchar(32) DEFAULT NULL,
  `abdominalBodyFatmassHighLimit` varchar(32) DEFAULT NULL,
  `abdominalBodyFatmassLowLimit` varchar(32) DEFAULT NULL,
  `adbominalSoftleanmass` varchar(32) DEFAULT NULL,
  `basicMetabolicrate` varchar(32) DEFAULT NULL,
  `bmi` varchar(32) DEFAULT NULL,
  `bmiHighLimit` varchar(32) DEFAULT NULL,
  `bmiLowLimit` varchar(32) DEFAULT NULL,
  `bodyAge` varchar(32) DEFAULT NULL,
  `bodyFatRate` varchar(32) DEFAULT NULL,
  `bodyFatHeighLimit` varchar(32) DEFAULT NULL,
  `bodyFatLowLimit` varchar(32) DEFAULT NULL,
  `bodyType` varchar(32) DEFAULT NULL,
  `extracellularFluid` varchar(32) DEFAULT NULL,
  `impedance` varchar(32) DEFAULT NULL,
  `intracellularFluid` varchar(32) DEFAULT NULL,
  `leanBodymass` varchar(32) DEFAULT NULL,
  `leanBodymassHighLimit` varchar(32) DEFAULT NULL,
  `leanBodymassLowLimit` varchar(32) DEFAULT NULL,
  `leftArmBodyFatmass` varchar(32) DEFAULT NULL,
  `leftArmSoftleanmass` varchar(32) DEFAULT NULL,
  `leftArmsoftleanmassFlag` varchar(32) DEFAULT NULL,
  `leftLegBodyFatmass` varchar(32) DEFAULT NULL,
  `leftLegSoftleanmass` varchar(32) DEFAULT NULL,
  `leftLegSoftleanmassFlag` varchar(32) DEFAULT NULL,
  `massOfBodyFat` varchar(32) DEFAULT NULL,
  `mineral` varchar(32) DEFAULT NULL,
  `mineralHighLimit` varchar(32) DEFAULT NULL,
  `mineralLowLimit` varchar(32) DEFAULT NULL,
  `obesexaxis` varchar(32) DEFAULT NULL,
  `protein` varchar(32) DEFAULT NULL,
  `proteinHighLimit` varchar(32) DEFAULT NULL,
  `proteinLowLimit` varchar(32) DEFAULT NULL,
  `rightArmbodyFatmass` varchar(32) DEFAULT NULL,
  `rightArmSoftleanmassFlag` varchar(32) DEFAULT NULL,
  `rightLegBodyFatmass` varchar(32) DEFAULT NULL,
  `rightLegSoftleanmassFlag` varchar(32) DEFAULT NULL,
  `rigtArmSoftleanmass` varchar(32) DEFAULT NULL,
  `rigtLegSoftleanmass` varchar(32) DEFAULT NULL,
  `softleanmass` varchar(32) DEFAULT NULL,
  `softleanmassAdjust` varchar(32) DEFAULT NULL,
  `softleanmassHighLimit` varchar(32) DEFAULT NULL,
  `softleanmassLowLimit` varchar(32) DEFAULT NULL,
  `standardWeight` varchar(32) DEFAULT NULL,
  `subcutaneousFatmass` varchar(32) DEFAULT NULL,
  `totalBodyWater` varchar(32) DEFAULT NULL,
  `totalBodyWaterHighLimit` varchar(32) DEFAULT NULL,
  `totalBodyWaterLowLimit` varchar(32) DEFAULT NULL,
  `totalEnergyConsumption` varchar(32) DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bodycompositiondata` */

insert  into `tb_bodycompositiondata`(`dataID`,`familyCode`,`familyName`,`orgCode`,`orgName`,`dataSource`,`machineID`,`examDate`,`residentEMPI`,`residentName`,`examDoctorEMPI`,`examDoctorName`,`auditDoctorEMPI`,`auditDoctorName`,`abdominalBodyFatmass`,`abdominalBodyFatmassAdjust`,`trunkSoftleanmassFlag`,`visceralFatArea`,`visceralFatmass`,`weight`,`weightAdjust`,`weightHighLimit`,`weightlowlimit`,`whr`,`abdominalBodyFatmassHighLimit`,`abdominalBodyFatmassLowLimit`,`adbominalSoftleanmass`,`basicMetabolicrate`,`bmi`,`bmiHighLimit`,`bmiLowLimit`,`bodyAge`,`bodyFatRate`,`bodyFatHeighLimit`,`bodyFatLowLimit`,`bodyType`,`extracellularFluid`,`impedance`,`intracellularFluid`,`leanBodymass`,`leanBodymassHighLimit`,`leanBodymassLowLimit`,`leftArmBodyFatmass`,`leftArmSoftleanmass`,`leftArmsoftleanmassFlag`,`leftLegBodyFatmass`,`leftLegSoftleanmass`,`leftLegSoftleanmassFlag`,`massOfBodyFat`,`mineral`,`mineralHighLimit`,`mineralLowLimit`,`obesexaxis`,`protein`,`proteinHighLimit`,`proteinLowLimit`,`rightArmbodyFatmass`,`rightArmSoftleanmassFlag`,`rightLegBodyFatmass`,`rightLegSoftleanmassFlag`,`rigtArmSoftleanmass`,`rigtLegSoftleanmass`,`softleanmass`,`softleanmassAdjust`,`softleanmassHighLimit`,`softleanmassLowLimit`,`standardWeight`,`subcutaneousFatmass`,`totalBodyWater`,`totalBodyWaterHighLimit`,`totalBodyWaterLowLimit`,`totalEnergyConsumption`,`conclusion`) values (1,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(2,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(3,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(4,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa');

/*Table structure for table `tb_bonedensitydata` */

DROP TABLE IF EXISTS `tb_bonedensitydata`;

CREATE TABLE `tb_bonedensitydata` (
  `dataID` bigint(20) NOT NULL AUTO_INCREMENT,
  `familyCode` varchar(255) DEFAULT NULL,
  `familyName` varchar(255) DEFAULT NULL,
  `orgCode` varchar(255) DEFAULT NULL,
  `orgName` varchar(255) DEFAULT NULL,
  `dataSource` tinyint(4) DEFAULT NULL,
  `machineID` varchar(255) DEFAULT NULL,
  `examDate` datetime NOT NULL,
  `residentEMPI` varchar(255) NOT NULL,
  `residentName` varchar(255) DEFAULT NULL,
  `examDoctorEMPI` varchar(255) DEFAULT NULL,
  `examDoctorName` varchar(255) DEFAULT NULL,
  `auditDoctorEMPI` varchar(255) DEFAULT NULL,
  `auditDoctorName` varchar(255) DEFAULT NULL,
  `acousticveLocity` varchar(32) DEFAULT NULL,
  `tValue` varchar(32) DEFAULT NULL,
  `zValue` varchar(32) DEFAULT NULL,
  `thScale` varchar(32) DEFAULT NULL,
  `toScale` varchar(32) DEFAULT NULL,
  `zYear` varchar(32) DEFAULT NULL,
  `riskLeavel` varchar(32) DEFAULT NULL,
  `oi` varchar(32) DEFAULT NULL,
  `youngAdult` varchar(32) DEFAULT NULL,
  `ageMatched` varchar(32) DEFAULT NULL,
  `bua` varchar(32) DEFAULT NULL,
  `opr` varchar(32) DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bonedensitydata` */

insert  into `tb_bonedensitydata`(`dataID`,`familyCode`,`familyName`,`orgCode`,`orgName`,`dataSource`,`machineID`,`examDate`,`residentEMPI`,`residentName`,`examDoctorEMPI`,`examDoctorName`,`auditDoctorEMPI`,`auditDoctorName`,`acousticveLocity`,`tValue`,`zValue`,`thScale`,`toScale`,`zYear`,`riskLeavel`,`oi`,`youngAdult`,`ageMatched`,`bua`,`opr`,`conclusion`) values (1,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(2,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(3,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(4,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(5,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(6,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa');

/*Table structure for table `tb_bwhdata` */

DROP TABLE IF EXISTS `tb_bwhdata`;

CREATE TABLE `tb_bwhdata` (
  `dataID` bigint(20) NOT NULL AUTO_INCREMENT,
  `familyCode` varchar(255) DEFAULT NULL,
  `familyName` varchar(255) DEFAULT NULL,
  `orgCode` varchar(255) DEFAULT NULL,
  `orgName` varchar(255) DEFAULT NULL,
  `dataSource` tinyint(4) DEFAULT NULL,
  `machineID` varchar(255) DEFAULT NULL,
  `examDate` datetime NOT NULL,
  `residentEMPI` varchar(255) NOT NULL,
  `residentName` varchar(255) DEFAULT NULL,
  `examDoctorEMPI` varchar(255) DEFAULT NULL,
  `examDoctorName` varchar(255) DEFAULT NULL,
  `auditDoctorEMPI` varchar(255) DEFAULT NULL,
  `auditDoctorName` varchar(255) DEFAULT NULL,
  `hip` float DEFAULT NULL,
  `bust` float DEFAULT NULL,
  `waist` float DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_bwhdata` */

insert  into `tb_bwhdata`(`dataID`,`familyCode`,`familyName`,`orgCode`,`orgName`,`dataSource`,`machineID`,`examDate`,`residentEMPI`,`residentName`,`examDoctorEMPI`,`examDoctorName`,`auditDoctorEMPI`,`auditDoctorName`,`hip`,`bust`,`waist`,`conclusion`) values (1,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,'aaabbbcccdddeeefff'),(2,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,'aaabbbcccdddeeefff'),(3,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,'aaabbbcccdddeeefff'),(4,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,'aaabbbcccdddeeefff');

/*Table structure for table `tb_ecg` */

DROP TABLE IF EXISTS `tb_ecg`;

CREATE TABLE `tb_ecg` (
  `dataID` bigint(20) NOT NULL AUTO_INCREMENT,
  `familyCode` varchar(255) DEFAULT NULL,
  `familyName` varchar(255) DEFAULT NULL,
  `orgCode` varchar(255) DEFAULT NULL,
  `orgName` varchar(255) DEFAULT NULL,
  `dataSource` tinyint(4) DEFAULT NULL,
  `machineID` varchar(255) DEFAULT NULL,
  `examDate` datetime NOT NULL,
  `residentEMPI` varchar(255) NOT NULL,
  `residentName` varchar(255) DEFAULT NULL,
  `examDoctorEMPI` varchar(255) DEFAULT NULL,
  `examDoctorName` varchar(255) DEFAULT NULL,
  `auditDoctorEMPI` varchar(255) DEFAULT NULL,
  `auditDoctorName` varchar(255) DEFAULT NULL,
  `HR` int(11) DEFAULT NULL,
  `PR` int(11) DEFAULT NULL,
  `P_Duration` int(11) DEFAULT NULL,
  `T_Duration` int(11) DEFAULT NULL,
  `QT_Duration` int(11) DEFAULT NULL,
  `QTc_Duration` int(11) DEFAULT NULL,
  `P_Axis` int(11) DEFAULT NULL,
  `R_V5` int(11) DEFAULT NULL,
  `S_V1` int(11) DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `tb_ecg` */

insert  into `tb_ecg`(`dataID`,`familyCode`,`familyName`,`orgCode`,`orgName`,`dataSource`,`machineID`,`examDate`,`residentEMPI`,`residentName`,`examDoctorEMPI`,`examDoctorName`,`auditDoctorEMPI`,`auditDoctorName`,`HR`,`PR`,`P_Duration`,`T_Duration`,`QT_Duration`,`QTc_Duration`,`P_Axis`,`R_V5`,`S_V1`,`conclusion`) values (5,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,23,23,23,23,23,23,'aaabbbcccdddeeefff'),(6,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,23,23,23,23,23,23,'aaabbbcccdddeeefff'),(7,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,23,23,23,23,23,23,'aaabbbcccdddeeefff'),(8,'familyCode','familyName','orgCode','orgName',0,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,23,23,23,23,23,23,'aaabbbcccdddeeefff');

/*Table structure for table `tb_electronicvisiondata` */

DROP TABLE IF EXISTS `tb_electronicvisiondata`;

CREATE TABLE `tb_electronicvisiondata` (
  `dataID` bigint(20) NOT NULL AUTO_INCREMENT,
  `familyCode` varchar(255) DEFAULT NULL,
  `familyName` varchar(255) DEFAULT NULL,
  `orgCode` varchar(255) DEFAULT NULL,
  `orgName` varchar(255) DEFAULT NULL,
  `dataSource` tinyint(4) DEFAULT NULL,
  `machineID` varchar(255) DEFAULT NULL,
  `examDate` datetime NOT NULL,
  `residentEMPI` varchar(255) NOT NULL,
  `residentName` varchar(255) DEFAULT NULL,
  `checkType` varchar(255) DEFAULT NULL,
  `leftEye` float DEFAULT NULL,
  `rightEye` float DEFAULT NULL,
  `examDoctorEMPI` varchar(255) DEFAULT NULL,
  `examDoctorName` varchar(255) DEFAULT NULL,
  `auditDoctorEMPI` varchar(255) DEFAULT NULL,
  `auditDoctorName` varchar(255) DEFAULT NULL,
  `leftEyeHeight` varchar(32) DEFAULT NULL,
  `righteyeheight` varchar(32) DEFAULT NULL,
  `bothEyesHeight` varchar(32) DEFAULT NULL,
  `leftEyeHeightLog` varchar(32) DEFAULT NULL,
  `rightEyeHeightLog` varchar(32) DEFAULT NULL,
  `bothEyesHeightLog` varchar(32) DEFAULT NULL,
  `leftEyeHeightSpeed` varchar(32) DEFAULT NULL,
  `rightEyeHeightSpeed` varchar(32) DEFAULT NULL,
  `bothEyesHeightSpeed` varchar(32) DEFAULT NULL,
  `leftEyeLow` varchar(32) DEFAULT NULL,
  `rightEyeLow` varchar(32) DEFAULT NULL,
  `bothEyesLow` varchar(32) DEFAULT NULL,
  `leftEyeLowLog` varchar(32) DEFAULT NULL,
  `rightEyeLowLog` varchar(32) DEFAULT NULL,
  `bothEyesLowLog` varchar(32) DEFAULT NULL,
  `leftEyeLowSpeed` varchar(32) DEFAULT NULL,
  `rightEyeLowSpeed` varchar(32) DEFAULT NULL,
  `bothEyesLowSpeed` varchar(32) DEFAULT NULL,
  `leftEyeBright` varchar(32) DEFAULT NULL,
  `rightEyeBright` varchar(32) DEFAULT NULL,
  `bothEyesBright` varchar(32) DEFAULT NULL,
  `leftEyeBrightLog` varchar(32) DEFAULT NULL,
  `rightEyeBrightLog` varchar(32) DEFAULT NULL,
  `bothEyesBrightLog` varchar(32) DEFAULT NULL,
  `leftEyeBrightSpeed` varchar(32) DEFAULT NULL,
  `rightEyeBrightSpeed` varchar(32) DEFAULT NULL,
  `bothEyesBrightSpeed` varchar(32) DEFAULT NULL,
  `leftEyeHeightAvl` varchar(32) DEFAULT NULL,
  `rightEyeHeightAvl` varchar(32) DEFAULT NULL,
  `bothEyesHeightAvl` varchar(32) DEFAULT NULL,
  `leftEyeLowAvl` varchar(32) DEFAULT NULL,
  `rightEyeLowAvl` varchar(32) DEFAULT NULL,
  `bothEyesLowAvl` varchar(32) DEFAULT NULL,
  `leftEyeBrightAvl` varchar(32) DEFAULT NULL,
  `rightEyeBrightAvl` varchar(32) DEFAULT NULL,
  `bothEyesBrightAvl` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`dataID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tb_electronicvisiondata` */

insert  into `tb_electronicvisiondata`(`dataID`,`familyCode`,`familyName`,`orgCode`,`orgName`,`dataSource`,`machineID`,`examDate`,`residentEMPI`,`residentName`,`checkType`,`leftEye`,`rightEye`,`examDoctorEMPI`,`examDoctorName`,`auditDoctorEMPI`,`auditDoctorName`,`leftEyeHeight`,`righteyeheight`,`bothEyesHeight`,`leftEyeHeightLog`,`rightEyeHeightLog`,`bothEyesHeightLog`,`leftEyeHeightSpeed`,`rightEyeHeightSpeed`,`bothEyesHeightSpeed`,`leftEyeLow`,`rightEyeLow`,`bothEyesLow`,`leftEyeLowLog`,`rightEyeLowLog`,`bothEyesLowLog`,`leftEyeLowSpeed`,`rightEyeLowSpeed`,`bothEyesLowSpeed`,`leftEyeBright`,`rightEyeBright`,`bothEyesBright`,`leftEyeBrightLog`,`rightEyeBrightLog`,`bothEyesBrightLog`,`leftEyeBrightSpeed`,`rightEyeBrightSpeed`,`bothEyesBrightSpeed`,`leftEyeHeightAvl`,`rightEyeHeightAvl`,`bothEyesHeightAvl`,`leftEyeLowAvl`,`rightEyeLowAvl`,`bothEyesLowAvl`,`leftEyeBrightAvl`,`rightEyeBrightAvl`,`bothEyesBrightAvl`) values (1,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(2,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(3,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa'),(4,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa','aaa');

/*Table structure for table `tb_heighweightdata` */

DROP TABLE IF EXISTS `tb_heighweightdata`;

CREATE TABLE `tb_heighweightdata` (
  `dataID` bigint(20) NOT NULL AUTO_INCREMENT,
  `familyCode` varchar(255) DEFAULT NULL,
  `familyName` varchar(255) DEFAULT NULL,
  `orgCode` varchar(255) DEFAULT NULL,
  `orgName` varchar(255) DEFAULT NULL,
  `dataSource` tinyint(4) DEFAULT NULL,
  `machineID` varchar(255) DEFAULT NULL,
  `examDate` datetime NOT NULL,
  `residentEMPI` varchar(255) NOT NULL,
  `residentName` varchar(255) DEFAULT NULL,
  `examDoctorEMPI` varchar(255) DEFAULT NULL,
  `examDoctorName` varchar(255) DEFAULT NULL,
  `auditDoctorEMPI` varchar(255) DEFAULT NULL,
  `auditDoctorName` varchar(255) DEFAULT NULL,
  `heigh` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `bmi` float DEFAULT NULL,
  `conclusion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dataID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `tb_heighweightdata` */

insert  into `tb_heighweightdata`(`dataID`,`familyCode`,`familyName`,`orgCode`,`orgName`,`dataSource`,`machineID`,`examDate`,`residentEMPI`,`residentName`,`examDoctorEMPI`,`examDoctorName`,`auditDoctorEMPI`,`auditDoctorName`,`heigh`,`weight`,`bmi`,`conclusion`) values (7,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,'aaabbbcccdddeeefff'),(8,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,'aaabbbcccdddeeefff'),(9,'familyCode','familyName','orgCode','orgName',1,'12341234','2017-11-11 11:11:11','residentEMPI','residentName',NULL,NULL,NULL,NULL,180,55,23,'aaabbbcccdddeeefff');

/*Table structure for table `tb_resident` */

DROP TABLE IF EXISTS `tb_resident`;

CREATE TABLE `tb_resident` (
  `dataStatus` tinyint(4) DEFAULT NULL,
  `EMPI` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` tinyint(4) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `cardNo` varchar(32) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `contactsName` varchar(255) DEFAULT NULL,
  `contactsPhone` varchar(32) DEFAULT NULL,
  `residenceType` tinyint(4) DEFAULT NULL,
  `nation` varchar(32) DEFAULT NULL,
  `bloodType` tinyint(4) DEFAULT NULL,
  `RH` tinyint(4) DEFAULT NULL,
  `education` tinyint(4) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `maritalStatus` tinyint(4) DEFAULT NULL,
  `paymentMode` tinyint(4) DEFAULT NULL,
  `paymentModeAddition` varchar(255) DEFAULT NULL,
  `drugAllergyHistory` tinyint(4) DEFAULT NULL,
  `drugAllergyHistoryAddtional` varchar(255) DEFAULT NULL,
  `exposureHistory` tinyint(4) DEFAULT NULL,
  `disease` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `traumatism` varchar(255) DEFAULT NULL,
  `transfusion` varchar(255) DEFAULT NULL,
  `familyHistory` varchar(255) DEFAULT NULL,
  `geneticDiseaseHistory` varchar(255) DEFAULT NULL,
  `disability` varchar(255) DEFAULT NULL,
  `disabilityAddition` varchar(255) DEFAULT NULL,
  `livestockBar` tinyint(4) DEFAULT NULL,
  `toilet` tinyint(4) DEFAULT NULL,
  `drinkingWater` tinyint(4) DEFAULT NULL,
  `fuelType` tinyint(4) DEFAULT NULL,
  `ventilationFacilities` tinyint(4) DEFAULT NULL,
  `race` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dataSource` tinyint(4) DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `isVerified` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`EMPI`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `tb_resident` */

insert  into `tb_resident`(`dataStatus`,`EMPI`,`name`,`gender`,`birthday`,`cardNo`,`company`,`phone`,`contactsName`,`contactsPhone`,`residenceType`,`nation`,`bloodType`,`RH`,`education`,`occupation`,`maritalStatus`,`paymentMode`,`paymentModeAddition`,`drugAllergyHistory`,`drugAllergyHistoryAddtional`,`exposureHistory`,`disease`,`operation`,`traumatism`,`transfusion`,`familyHistory`,`geneticDiseaseHistory`,`disability`,`disabilityAddition`,`livestockBar`,`toilet`,`drinkingWater`,`fuelType`,`ventilationFacilities`,`race`,`address`,`mail`,`password`,`status`,`dataSource`,`createTime`,`updateTime`,`isVerified`) values (1,'123456789','Tim Cook',1,'1988-10-10','111222333','ZTEICT','13412344321','Jobs','13412344321',1,'Han',2,1,2,'Programer',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'gaoxinnan6','admin@163.com','123456',NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
