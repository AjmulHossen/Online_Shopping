-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.45-community-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema shop
--

CREATE DATABASE IF NOT EXISTS shop;
USE shop;

--
-- Definition of table `billingaddress`
--

DROP TABLE IF EXISTS `billingaddress`;
CREATE TABLE `billingaddress` (
  `addressid` int(10) unsigned NOT NULL auto_increment,
  `addresslineone` varchar(255) NOT NULL,
  `addresslinetwo` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `statename` varchar(255) NOT NULL,
  PRIMARY KEY  (`addressid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `billingaddress`
--

/*!40000 ALTER TABLE `billingaddress` DISABLE KEYS */;
INSERT INTO `billingaddress` (`addressid`,`addresslineone`,`addresslinetwo`,`city`,`country`,`emailid`,`phone`,`statename`) VALUES 
 (1,'mirpur','dhaka','dhaka','bangladesh','tuhin@gmail.com','+880940565857','hdjfh'),
 (2,'mirpur','dhaka','dhaka','bangladesh','tuhin@gmail.com','+8887888','hdjfh'),
 (3,'KollanPur','dhaka','dhaka','bangladesh','tuhin@gmail.com','+885454654','hdjfh'),
 (4,'KollanPur','dhaka','dhaka','Ingland','tuhin@gmail.com','1454544','hdjfh'),
 (5,'fgfg','fgf','fgfg','gfg','tuhin@gmail.com','325635','fgf'),
 (6,'mirpur','fgf','dhaka','Ingland','tuhin@gmail.com','325635','hdjfh'),
 (7,'mirpur','dhaka','dhaka','bangladesh','tuhin@gmail.com','1454544','hdjfh'),
 (8,'mirpur','fgf','dhaka','Ingland','tuhin@gmail.com','325635','hdjfh'),
 (9,'Bagerhat','Khulna','khulna','Bangladesh','tuhin@gmail.com','01940565857','No'),
 (10,'Gabtoli','Gabtiok','home','Bangladesh','tuhin@gmail.com','01623922594','bakjsilf');
/*!40000 ALTER TABLE `billingaddress` ENABLE KEYS */;


--
-- Definition of table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `pid` int(10) unsigned NOT NULL auto_increment,
  `pname` varchar(200) NOT NULL,
  `qty` int(10) unsigned NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL,
  PRIMARY KEY  (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;


--
-- Definition of table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `catid` varchar(255) NOT NULL,
  `catname` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  PRIMARY KEY  (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`catid`,`catname`,`description`) VALUES 
 ('001','Mobile','Mobile'),
 ('002','Laptop','Laptop'),
 ('003','Camera','Camera');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;


--
-- Definition of table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
CREATE TABLE `orderdetails` (
  `ordetailid` int(10) unsigned NOT NULL auto_increment,
  `orderid` varchar(45) NOT NULL,
  `price` double NOT NULL,
  `productid` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`ordetailid`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orderdetails`
--

/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
INSERT INTO `orderdetails` (`ordetailid`,`orderid`,`price`,`productid`,`quantity`) VALUES 
 (1,'1',20000,6,1),
 (2,'1',150000,5,1),
 (3,'2',20000,6,1),
 (4,'5',150000,5,1),
 (5,'6',200000,1,1),
 (6,'8',600000,2,1),
 (7,'9',200000,1,1),
 (8,'9',600000,2,1),
 (9,'13',600000,2,1),
 (10,'15',600000,2,1),
 (11,'16',0,3,1),
 (12,'19',200000,1,1),
 (13,'19',600000,2,1),
 (14,'21',600000,2,1),
 (15,'22',600000,2,1),
 (16,'23',600000,2,1),
 (17,'26',200000,1,1),
 (18,'27',600000,2,1),
 (19,'29',0,3,1),
 (20,'32',0,3,1),
 (21,'33',0,3,1),
 (22,'33',130000,5,1),
 (23,'34',25000,6,1),
 (24,'34',20000,7,1),
 (25,'35',130000,5,1),
 (26,'35',0,3,1),
 (27,'36',35000,8,1),
 (28,'37',600000,2,1);
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;


--
-- Definition of table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `productid` int(10) unsigned NOT NULL auto_increment,
  `catid` varchar(255) default NULL,
  `supplierid` varchar(255) default NULL,
  `productdescription` varchar(255) default NULL,
  `productname` varchar(100) default NULL,
  `productprice` double default NULL,
  `productquantity` int(10) unsigned default NULL,
  `purchasedate` date default NULL,
  `saleprice` double default NULL,
  PRIMARY KEY  (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`productid`,`catid`,`supplierid`,`productdescription`,`productname`,`productprice`,`productquantity`,`purchasedate`,`saleprice`) VALUES 
 (9,'001','101','Samsung Galaxy S6','Mobile',30000,10,'2018-12-13',35000),
 (10,'002','102','HP Laptop','Laptop',40000,10,'2018-11-28',45000);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


--
-- Definition of table `productorder`
--

DROP TABLE IF EXISTS `productorder`;
CREATE TABLE `productorder` (
  `orderid` int(10) unsigned NOT NULL auto_increment,
  `addressid` int(10) unsigned NOT NULL,
  `orderdate` datetime default NULL,
  `useremail` varchar(255) default NULL,
  `orderstatus` varchar(255) default NULL,
  PRIMARY KEY  (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productorder`
--

/*!40000 ALTER TABLE `productorder` DISABLE KEYS */;
INSERT INTO `productorder` (`orderid`,`addressid`,`orderdate`,`useremail`,`orderstatus`) VALUES 
 (1,1,'2018-12-09 17:09:30','tuhin@gmail.com','ordered'),
 (2,1,'2018-12-09 17:10:40','tuhin@gmail.com','ordered'),
 (3,1,'2018-12-09 17:11:39','tuhin@gmail.com','ordered'),
 (4,1,'2018-12-09 17:12:00','tuhin@gmail.com','ordered'),
 (5,1,'2018-12-09 17:15:20','tuhin@gmail.com','ordered'),
 (6,2,'2018-12-09 17:59:07','tuhin@gmail.com','ordered'),
 (7,2,'2018-12-09 18:38:36',NULL,'ordered'),
 (8,3,'2018-12-10 18:12:11','tuhin@gmail.com','ordered'),
 (9,3,'2018-12-10 18:14:51','tuhin@gmail.com','ordered'),
 (10,3,'2018-12-10 18:15:16','tuhin@gmail.com','ordered'),
 (11,3,'2018-12-10 18:16:12','tuhin@gmail.com','ordered'),
 (12,3,'2018-12-10 18:16:45','tuhin@gmail.com','ordered'),
 (13,3,'2018-12-10 18:36:47','tuhin@gmail.com','ordered'),
 (14,3,'2018-12-10 18:37:11','tuhin@gmail.com','ordered'),
 (15,3,'2018-12-13 16:11:05','tuhin@gmail.com','ordered'),
 (16,4,'2018-12-13 16:12:00','tuhin@gmail.com','ordered'),
 (17,4,'2018-12-13 16:13:57','tuhin@gmail.com','ordered'),
 (18,3,'2018-12-13 16:14:06','tuhin@gmail.com','ordered'),
 (19,2,'2018-12-15 17:48:20','tuhin@gmail.com','ordered'),
 (20,2,'2018-12-15 17:48:56','tuhin@gmail.com','ordered'),
 (21,3,'2018-12-15 18:08:50','tuhin@gmail.com','ordered'),
 (22,3,'2018-12-15 18:13:34','tuhin@gmail.com','ordered'),
 (23,4,'2018-12-15 18:28:39','tuhin@gmail.com','ordered'),
 (24,4,'2018-12-15 18:29:02','tuhin@gmail.com','ordered'),
 (25,4,'2018-12-15 18:29:16','tuhin@gmail.com','ordered'),
 (26,5,'2018-12-17 17:29:33','tuhin@gmail.com','ordered'),
 (27,5,'2018-12-17 17:29:57','tuhin@gmail.com','ordered'),
 (28,5,'2018-12-17 17:30:01','tuhin@gmail.com','ordered'),
 (29,3,'2018-12-17 17:32:49','tuhin@gmail.com','ordered'),
 (30,3,'2018-12-17 17:33:00','tuhin@gmail.com','ordered'),
 (31,5,'2018-12-17 17:33:32','tuhin@gmail.com','ordered'),
 (32,3,'2018-12-18 00:00:00','tuhin@gmail.com','ordered'),
 (33,7,'2018-12-19 00:00:00','tuhin@gmail.com','ordered'),
 (34,9,'2018-12-19 00:00:00','tuhin@gmail.com','ordered'),
 (35,1,'2018-12-19 00:00:00','tuhin@gmail.com','ordered'),
 (36,10,'2018-12-19 00:00:00','tuhin@gmail.com','ordered'),
 (37,10,'2018-12-20 00:00:00','tuhin@gmail.com','ordered'),
 (38,10,'2018-12-20 00:00:00','tuhin@gmail.com','ordered');
/*!40000 ALTER TABLE `productorder` ENABLE KEYS */;


--
-- Definition of table `productsale`
--

DROP TABLE IF EXISTS `productsale`;
CREATE TABLE `productsale` (
  `saleid` int(10) unsigned NOT NULL auto_increment,
  `orderid` int(10) unsigned NOT NULL,
  `deleverydate` date NOT NULL,
  `salestatus` varchar(255) NOT NULL,
  PRIMARY KEY  (`saleid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productsale`
--

/*!40000 ALTER TABLE `productsale` DISABLE KEYS */;
INSERT INTO `productsale` (`saleid`,`orderid`,`deleverydate`,`salestatus`) VALUES 
 (1,1,'2018-12-27','ordered'),
 (2,2,'2018-12-27','ordered'),
 (3,3,'2018-12-30','ordered'),
 (4,5,'2018-12-30','ordered'),
 (5,1,'2018-12-30','ordered'),
 (6,2,'2018-12-30','ordered'),
 (7,5,'2018-12-30','ordered'),
 (8,10,'2018-12-30','ordered');
/*!40000 ALTER TABLE `productsale` ENABLE KEYS */;


--
-- Definition of table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier` (
  `supplierid` varchar(255) NOT NULL,
  `suppliername` varchar(255) default NULL,
  `supplieraddress` varchar(255) default NULL,
  `supplierphone` varchar(255) default NULL,
  PRIMARY KEY  (`supplierid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` (`supplierid`,`suppliername`,`supplieraddress`,`supplierphone`) VALUES 
 ('101','Niloy','Mirpur,Dhaka','01718965123'),
 ('102','Kamal','KajiPara, Dhaka','01731748596'),
 ('103','Jamal','Bagerhat','0178652369');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `emailid` varchar(255) NOT NULL,
  `phone` varchar(255) default NULL,
  `username` varchar(255) default NULL,
  `phonenumber` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`emailid`,`phone`,`username`,`phonenumber`) VALUES 
 ('ajmultuhin@gmail.com','+8801940565857','ajmul',NULL),
 ('apu@gmail.com','+8884844','Apu',NULL),
 ('tuhin@gmail.com','+88332435','ajmul',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `userfeedback`
--

DROP TABLE IF EXISTS `userfeedback`;
CREATE TABLE `userfeedback` (
  `feedbackid` int(10) unsigned NOT NULL auto_increment,
  `feedback` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY  (`feedbackid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userfeedback`
--

/*!40000 ALTER TABLE `userfeedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `userfeedback` ENABLE KEYS */;


--
-- Definition of table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
CREATE TABLE `userrole` (
  `emailid` varchar(255) NOT NULL,
  `password` varchar(255) default NULL,
  `role` varchar(255) default NULL,
  `status` varchar(255) default NULL,
  PRIMARY KEY  (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userrole`
--

/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` (`emailid`,`password`,`role`,`status`) VALUES 
 ('ajmultuhin@gmail.com','565857','ROLE_USER','True'),
 ('apu@gmail.com','123','ROLE_USER','True'),
 ('tuhin@gmail.com','123','ROLE_USER','True');
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
