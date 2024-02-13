/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.1.39-community : Database - health
*********************************************************************
Server version : 5.1.39-community
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `health`;

USE `health`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `billing` */

DROP TABLE IF EXISTS `billing`;

CREATE TABLE `billing` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `disease` varchar(40) DEFAULT NULL,
  `consulted_doctor` varchar(40) DEFAULT NULL,
  `bcharge` varchar(30) DEFAULT NULL,
  `mcharge` varchar(30) DEFAULT NULL,
  `ccharge` varchar(30) DEFAULT NULL,
  `total` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `billing` */

insert  into `billing`(`id`,`name`,`dob`,`address`,`contact`,`email`,`gender`,`disease`,`consulted_doctor`,`bcharge`,`mcharge`,`ccharge`,`total`) values (1,'sam','30-06-1984','tumkur','8956235689','ffasd','male','cancer','1','500','200','300','1000'),(5,'fasd','30-06-1984','fasd','4565','s@gmail.com','male','fasd','1','500','10000','null','11000'),(1,'fasdf','30-06-1984','fasf','9731929530','fsd','male','fasd','1','500','20000','null','21000'),(6,'fasd','30-06-1984','fas','5456','s@gmail.com','male','fas','1','500','10000','null','11000'),(2,'ramesh','30-06-1984','fasd','6545454','s@gmail.com','male','fas','1','500','150000','null','151000'),(4,'fasdfas','30-06-1984','fsdfa','42423','s@gmail.com','null','fasd','1','500','2000','null','3000'),(3,'fsadfas','30-06-1984','fasdf','4654654654','s@gmail.com','male','fasd','1','500','5000','null','6000'),(10,'chandan','12-12-1995','tumkur','8745748754','ch@gmail.com','male','fever','5','500','20000','null','21000'),(13,'chandra','12-12-1995','tumkur','6786899701','chand111@gmail.com','female','achne problem','8','500','5000','null','6000'),(9,'vzx','30-06-1984','vzxc','5464566456','s@gmail.com','male','fa','1','500','9000','null','10000'),(12,'d','14-5-1956','tumkur','5678678077','poo@gmail.com','male','fever','7','500','2000',NULL,'3000'),(15,'chandru','12-09-1999','tumkur','9874845424','chandru@mail.com','male','fever','10','500','12000','null','13000'),(15,'chandru','12-09-1999','tumkur','9874845424','chandru@mail.com','male','fever','10','500','20000','null','21000'),(16,'preethi','12-01-1998','tumkur','9842313146','preethi@mail,com','female','fever','11','500','30000','null','31000');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `specialization` varchar(40) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `gender` varchar(40) DEFAULT NULL,
  `available_time` varchar(40) DEFAULT NULL,
  `treatment` varchar(40) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `experience` varchar(30) DEFAULT NULL,
  `salary` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert  into `doctor`(`id`,`name`,`specialization`,`dob`,`address`,`contact`,`email`,`gender`,`available_time`,`treatment`,`photo`,`experience`,`salary`) values (2,'fasd','fad','2000-20-06','fasd','4455667788','fasd','male','10:30-12:30','fasd','Lighthouse.jpg',NULL,NULL),(3,'fasd','fasd','30-06-1984','fsad','4342342342','s@gmail.com','male','10:30-12:30','fasd','Desert.jpg','3years',NULL),(4,'fasd','fasd','30-06-1984','vzxcvz','5465456465','fasd@gmail.com','male','12:30-2:30','fasd','Penguins.jpg','3year','10000'),(6,'poornima','pedeatrist','17-10-1975','tumkur','6668768978','poo@gmail.com','female','10-1:30','fever','20150217_181905.jpg','23','15000'),(7,'hfdjk','pedeatrist','17-10-1975','tumkur','6576098989','vcn@gmail.com','female','10.30-1.30','fever','20131127_200806-1-1-1.jpg','20','15000'),(8,'rajiv','dermatalogist','17-10-1975','tumkur','7578698989','rajiv123@gmail.com','male','10.30-1.30','skin problems','_20160708_201009.jpg','23','15000'),(9,'david','dermatalogist','17-10-1975','tumkur','7868899955','david123@gmail.com','male','10.30-1.30','skin problems','_20160708_201020.jpg','20','15000'),(10,'ajay','orthpedistrian','12-02-1986','tumkur','9876543424','ajay@mail.com','male','00:00','fever','profile.png','2','50000');

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `designation` varchar(40) DEFAULT NULL,
  `salary` varchar(40) DEFAULT NULL,
  `duty_hours` varchar(40) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `employee` */

insert  into `employee`(`id`,`name`,`dob`,`address`,`contact`,`email`,`gender`,`designation`,`salary`,`duty_hours`,`image`) values (8002,'ramesh','30-06-1984','tumkur','8956235689','s@gmail.com','male','hjh','5000','2hrs','Penguins.jpg'),(8003,'sdfasfd','2000-20-30','fsd','8956235689','s@gmail.com','male','fs','5000','8hr','Chrysanthemum.jpg'),(8004,'bk','18-07-1995','tumkur','4578795475','bk@mail.com','male','nuse','10000','8','20160901_000323.jpg'),(8005,'varun','11-01-1985','tumkue','9878765857','varu@mail.com','male','wardboy','10000','23:00','profle7.jpg'),(8006,'swathi','14-05-1989','tumkur','9568741231','swathi@mail.com','female','nurse','20000','14:01','prifle6.png');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`password`,`type`) values (111,'aaa','Admin');

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `id` int(10) DEFAULT NULL,
  `name` varchar(40) DEFAULT NULL,
  `dob` varchar(40) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `disease` varchar(40) DEFAULT NULL,
  `consulted_doctor` varchar(40) DEFAULT NULL,
  `priscribed_medicine` varchar(100) DEFAULT NULL,
  `current_condition` varchar(40) DEFAULT NULL,
  `duration` varchar(40) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `prescription` varchar(40) DEFAULT NULL,
  `btype` varchar(30) DEFAULT NULL,
  `ptime` varchar(50) DEFAULT NULL,
  `xray` varchar(50) DEFAULT NULL,
  `oldpre` varchar(100) DEFAULT NULL,
  `cons` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient` */

insert  into `patient`(`id`,`name`,`dob`,`address`,`contact`,`email`,`gender`,`disease`,`consulted_doctor`,`priscribed_medicine`,`current_condition`,`duration`,`photo`,`prescription`,`btype`,`ptime`,`xray`,`oldpre`,`cons`) values (10,'chandan','10-9-1995','tumkur','7868907899','ch12@gmail.com','male','fever','5','crocin','normal','Thu Mar 02 16:45:24 IST 2017','20160901_000219.jpg','new','normal','null','20160901_000239.jpg','new','2'),(11,'dhh','12-12-1995','tumkur','5769870909','hghjj@gmail','male','fever','5','crocin','normal','Thu Mar 02 22:18:34 IST 2017','_20160708_201020.jpg','new','normal','null','2015-12-18-19-08-53-196.jpg','new','2'),(12,'bjbkj','14-5-1956','tumkur','5678678077','poo@gmail.com','male','fever','7','crocin','high fever','Thu Mar 02 22:25:52 IST 2017','_20160708_201020.jpg','new','normal','10.30','2015-12-18-19-08-18-911.jpg','new','2'),(13,'poornima','12-12-1995','tumkur','7657587897','poo1@gmail.com','female','amanisia','10','surgery','serious','Fri Mar 03 03:16:23 IST 2017','_20160708_201009.jpg','new','normal','null','_20160708_200954.jpg','new','2'),(14,'gh','12-12-1995','khh','5464984884','fd@mail.com','male','gfg','6','j','nb','Fri Mar 03 07:00:12 IST 2017','_20160708_201020.jpg','new','special','null','2015-12-18-19-08-18-911.jpg','new','hfc'),(15,'chandru','12-09-1999','tumkur','9874845424','chandru@mail.com','male','fever','10','qdfsd','dfd','Wed Nov 08 18:46:02 IST 2017','prifle6.png','poiuytre','normal','null','bird4.jpg','poiuytre','123'),(16,'preethi','12-01-1998','tumkur','9842313146','preethi@mail,com','female','fever','11','hgbvf','normal','Wed Nov 08 19:00:59 IST 2017','prifle6.png','new','normal','null','bird4.jpg','new','123');

/*Table structure for table `patient_req` */

DROP TABLE IF EXISTS `patient_req`;

CREATE TABLE `patient_req` (
  `u_from` int(5) DEFAULT NULL,
  `u_to` int(5) DEFAULT NULL,
  `request` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `patient_req` */

insert  into `patient_req`(`u_from`,`u_to`,`request`) values (5043,5009,'Accepted !!!'),(5009,5043,'Accepted !!!'),(5009,5010,'Accepted !!!'),(5010,5009,'Accepted !!!'),(10,9,'Accepted !!!'),(9,10,'Accepted !!!');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
