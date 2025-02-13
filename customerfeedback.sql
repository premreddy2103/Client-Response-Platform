/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.0.67-community-nt : Database - cfeedback
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`cfeedback` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `cfeedback`;

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(1000) default NULL,
  `productid` varchar(1000) default NULL,
  `productname` varchar(1000) default NULL,
  `status1` varchar(1000) default NULL,
  `status2` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `cart` */

/*Table structure for table `ontimeuser` */

DROP TABLE IF EXISTS `ontimeuser`;

CREATE TABLE `ontimeuser` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `password` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `ontimeuser` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(11) NOT NULL auto_increment,
  `sname` varchar(1000) default NULL,
  `category` varchar(1000) default NULL,
  `scategory` varchar(1000) default NULL,
  `pname` varchar(1000) default NULL,
  `noofproducts` varchar(1000) default NULL,
  `description` varchar(1000) default NULL,
  `date` varchar(1000) default NULL,
  `ambassador` longblob,
  `product` longblob,
  `avgrating` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

/*Table structure for table `startupreg` */

DROP TABLE IF EXISTS `startupreg`;

CREATE TABLE `startupreg` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(1000) default NULL,
  `email` varchar(1000) default NULL,
  `mobile` varchar(1000) default NULL,
  `address` varchar(1000) default NULL,
  `username` varchar(1000) default NULL,
  `password` varchar(1000) default NULL,
  `status` varchar(1000) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `startupreg` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
