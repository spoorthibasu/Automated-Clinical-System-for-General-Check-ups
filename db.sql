/*
SQLyog Community v9.32 GA
MySQL - 5.1.61-community : Database - health
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`health` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `health`;

/*Table structure for table `admintable` */

DROP TABLE IF EXISTS `admintable`;

CREATE TABLE `admintable` (
  `aid` int(5) NOT NULL AUTO_INCREMENT,
  `aname` varchar(15) NOT NULL,
  `apwd` varchar(15) NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `admintable` */

insert  into `admintable`(`aid`,`aname`,`apwd`) values (1,'admin','admin');

/*Table structure for table `appointment` */

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `Aid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(100) DEFAULT NULL,
  `pid` int(20) DEFAULT NULL,
  `problem` varchar(100) DEFAULT NULL,
  `cdate` varchar(20) DEFAULT NULL,
  `atime` varchar(20) DEFAULT '00:00',
  `isactive` int(10) DEFAULT '0',
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `appointment` */

insert  into `appointment`(`Aid`,`did`,`pid`,`problem`,`cdate`,`atime`,`isactive`) values (2,1,2,'fever','2017-04-16 08:22:47','14:59',1);

/*Table structure for table `doctorpresc` */

DROP TABLE IF EXISTS `doctorpresc`;

CREATE TABLE `doctorpresc` (
  `DocPres_Pkid` int(11) NOT NULL AUTO_INCREMENT,
  `Doc_Patientid` varchar(200) DEFAULT NULL,
  `Doc_date` varchar(200) DEFAULT NULL,
  `Doc_Desc` varchar(255) DEFAULT NULL,
  `Doc_docid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DocPres_Pkid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `doctorpresc` */

insert  into `doctorpresc`(`DocPres_Pkid`,`Doc_Patientid`,`Doc_date`,`Doc_Desc`,`Doc_docid`) values (1,'1','345','werw','2'),(2,'1','31-2-12','fdfdgfdbfdgfd\nccvcvcccv','2'),(3,'1','12-6-12','fluctuation in heart beat.\npulse rate=78bps','2'),(4,'1','12-6-16','Patient is sufering from high dental pain. Suggested for teeth cleansing. No giddyness found.','2');

/*Table structure for table `doctorreg` */

DROP TABLE IF EXISTS `doctorreg`;

CREATE TABLE `doctorreg` (
  `did` int(5) NOT NULL AUTO_INCREMENT,
  `dname` varchar(20) DEFAULT NULL,
  `dpass` varchar(20) DEFAULT NULL,
  `demail` varchar(50) DEFAULT NULL,
  `dphone` varchar(30) DEFAULT NULL,
  `dspec` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `dcity` varchar(50) DEFAULT NULL,
  `pincode` varchar(11) DEFAULT NULL,
  `isactive` int(5) DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `doctorreg` */

insert  into `doctorreg`(`did`,`dname`,`dpass`,`demail`,`dphone`,`dspec`,`address`,`dcity`,`pincode`,`isactive`) values (1,'roopa','22222','roopa@gmail.com','9916236784','dentist','mysore','mysore','570063',1),(2,'Spoorthi','123','spoorthibau@gmail.com','8095306965','ENT','VIVEKANADANAGAR','MYSORE','570062',1),(3,'Komala','1234','komalaspooru@gmail.com','8095306967','surgeon','kuvempunagar','mysore','560034',1);

/*Table structure for table `pregistration` */

DROP TABLE IF EXISTS `pregistration`;

CREATE TABLE `pregistration` (
  `pid` int(5) NOT NULL AUTO_INCREMENT,
  `pname` varchar(20) DEFAULT NULL,
  `ppass` varchar(20) DEFAULT NULL,
  `pemail` varchar(20) DEFAULT NULL,
  `pphone` varchar(20) DEFAULT NULL,
  `age` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `pcity` varchar(20) DEFAULT NULL,
  `pincode` varchar(20) DEFAULT NULL,
  `isactive` int(5) DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `pregistration` */

insert  into `pregistration`(`pid`,`pname`,`ppass`,`pemail`,`pphone`,`age`,`address`,`pcity`,`pincode`,`isactive`) values (1,'Archana','22222','achana@gmail.com','9966332255','25','mysore','hebbal','570009',0),(2,'RUCHITHA','11111','abc@gmail.com','6475899899','23','VIVEKANADANAGAR','mysore','570062',0);

/*Table structure for table `prescriptions` */

DROP TABLE IF EXISTS `prescriptions`;

CREATE TABLE `prescriptions` (
  `Presc_Pk_id` int(11) NOT NULL AUTO_INCREMENT,
  `Presc_Patientid` varchar(100) DEFAULT NULL,
  `Presc_Docid` varchar(100) DEFAULT NULL,
  `Prescriptions` varchar(100) DEFAULT NULL,
  `PatientName` varchar(100) DEFAULT NULL,
  `Presc_type` varchar(100) DEFAULT NULL,
  `Presc_qty` varchar(100) DEFAULT NULL,
  `presc_times` varchar(100) DEFAULT NULL,
  `pharmacy_id` varchar(200) DEFAULT NULL,
  `deltype` varchar(200) DEFAULT NULL,
  `Presc_date` date DEFAULT NULL,
  `isactive` int(5) DEFAULT '1',
  PRIMARY KEY (`Presc_Pk_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `prescriptions` */

insert  into `prescriptions`(`Presc_Pk_id`,`Presc_Patientid`,`Presc_Docid`,`Prescriptions`,`PatientName`,`Presc_type`,`Presc_qty`,`presc_times`,`pharmacy_id`,`deltype`,`Presc_date`,`isactive`) values (1,'1','2','crocin',NULL,'Tablet','12','1-1-1','3','homedelivery','2017-03-31',0),(2,'1','2','Rosumac',NULL,'Tablet','14','1-1-1','3','homedelivery','2017-04-05',1);

/*Table structure for table `specialist` */

DROP TABLE IF EXISTS `specialist`;

CREATE TABLE `specialist` (
  `Filed Id` decimal(3,0) unsigned zerofill NOT NULL,
  `Field` char(120) DEFAULT NULL,
  PRIMARY KEY (`Filed Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `specialist` */

insert  into `specialist`(`Filed Id`,`Field`) values ('001','Audiologist'),('002','Alergist'),('003','Chardiologist'),('004','Dentist'),('005','Dermetologist'),('006','Endocrinologist'),('007','Epidemiologist'),('008','Gynecologist'),('009','Immunologist'),('010','Infectious disease specialist'),('011','Internal medicine specialist'),('012','Medical geneticist'),('013','peadiatrition'),('014','Neurologist'),('015','Oncologist'),('016','Orthorpedics'),('017','ENT specialist'),('018','Physiologist'),('019','Psychiatrist'),('020','Uerologist'),('021','Others');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
