--create database
CREATE DATABASE `asconstruction` /*!40100 DEFAULT CHARACTER SET latin1 */;

-----------------------------------------------------------
--use asconstruction database

USE asconstruction

-----------------------------------------------------------
--1) create adminlogin table

CREATE TABLE `adminlogin` (
  `AdminId` int(11) NOT NULL AUTO_INCREMENT,
  `mailId` varchar(30) DEFAULT NULL,
  `password` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`AdminId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-----------------------------------------------------------
--2) create landlordsdetails table

CREATE TABLE `landlordsdetails` (
  `siteId` varchar(20) NOT NULL,
  `firstname` varchar(20) DEFAULT NULL,
  `lastname` varchar(20) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `sitelocation` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `eria` varchar(30) DEFAULT NULL,
  `totalpayment` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`siteId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-----------------------------------------------------------

--3) create materias table

CREATE TABLE `materials` (
  `materialId` int(11) NOT NULL AUTO_INCREMENT,
  `siteId` varchar(20) DEFAULT NULL,
  `materialName` varchar(30) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  `quantity` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `totalpayment` varchar(20) DEFAULT NULL,
  `supplier` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`materialId`),
  KEY `siteId_idx` (`siteId`),
  CONSTRAINT `siteId` FOREIGN KEY (`siteId`) REFERENCES `landlordsdetails` (`siteId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-------------------------------------------------------------

--4) create paymentdetails table

CREATE TABLE `paymentdetails` (
  `paymentDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `landlordSiteId` varchar(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` int(30) DEFAULT NULL,
  `amountType` varchar(45) DEFAULT NULL,
  `description` varchar(205) DEFAULT NULL,
  `remainingBalance` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`paymentDetailsId`),
  KEY `landlordSiteId_idx` (`landlordSiteId`),
  CONSTRAINT `paymentdetails_ibfk_1` FOREIGN KEY (`landlordSiteId`) REFERENCES `landlordsdetails` (`siteId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-------------------------------------------------------------

--5) create profitandlostaccount table

CREATE TABLE `profitandlostaccount` (
  `profitAndLostAccountId` int(11) NOT NULL,
  `AdminId` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `drAmount` int(30) DEFAULT NULL,
  `crAmount` int(30) DEFAULT NULL,
  `drParticulars` varchar(45) DEFAULT NULL,
  `crParticulars` varchar(45) DEFAULT NULL,
  `crTotalAmount` int(30) DEFAULT NULL,
  `drTotalAmount` int(30) DEFAULT NULL,
  PRIMARY KEY (`profitAndLostAccountId`),
  KEY `AdminId_idx` (`AdminId`),
  CONSTRAINT `AdminId` FOREIGN KEY (`AdminId`) REFERENCES `adminlogin` (`AdminId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-------------------------------------------------------------

--6) create userlogin table

CREATE TABLE `userlogin` (
  `mailId` varchar(45) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `landlordSiteId` varchar(20) DEFAULT NULL,
  KEY `landlordSiteId_idx` (`landlordSiteId`),
  CONSTRAINT `landlordSiteId` FOREIGN KEY (`landlordSiteId`) REFERENCES `landlordsdetails` (`siteId`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--------------------------------------------------------------

--7) create userregisteration table

CREATE TABLE `userregisteration` (
  `userRegisterationId` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `mailId` varchar(45) DEFAULT NULL,
  `password` varchar(15) DEFAULT NULL,
  `siteId` varchar(45) DEFAULT NULL,
  `address` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`userRegisterationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

---------------------------------------------------------------