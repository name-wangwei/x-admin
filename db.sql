/*
SQLyog Ultimate v10.00 Beta1
MySQL - 5.7.28-log : Database - laydb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laydb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `laydb`;

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4;

/*Data for the table `dept` */

insert  into `dept`(`dept_id`,`dept_name`) values (100,'开发一部'),(200,'开发二部'),(300,'运营一部');

/*Table structure for table `emp` */

DROP TABLE IF EXISTS `emp`;

CREATE TABLE `emp` (
  `emp_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `sal` decimal(17,0) DEFAULT NULL,
  `birthday` date NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`emp_id`,`birthday`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

/*Data for the table `emp` */

insert  into `emp`(`emp_id`,`name`,`sex`,`age`,`sal`,`birthday`,`address`,`dept_id`) values (1,'张三疯','M',99,'9999','2021-07-06','长沙市岳麓区咸嘉湖西路888号',100),(2,'李四疯','F',18,'2800','2021-07-06','长沙市岳麓区咸嘉湖西路888号',200),(3,'王五疯','M',23,'3500','2021-07-06','长沙市岳麓区咸嘉湖西路888号',100),(4,'赵六疯','M',30,'6500','2021-07-01','长沙市岳麓区咸嘉湖西路888号',200),(5,'张德华','M',58,'8800','2021-07-06','长沙市岳麓区咸嘉湖西路888号',300),(6,'陈晓友','M',60,'9800','2021-07-06','长沙市岳麓区咸嘉湖西路888号',100),(8,'赵二狗','M',40,'3000','2021-08-01','长沙市雨花区XX路88号',200);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `ch_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`ch_name`) values (1,'admin','$2a$10$RHZ.ZlwSbKlCqYKvEIHEhOWWZOSZ/y9OV0kD5YdD5lOkSeXgydCIu','管理员'),(2,'zhangsan','$2a$10$RHZ.ZlwSbKlCqYKvEIHEhOWWZOSZ/y9OV0kD5YdD5lOkSeXgydCIu','张三');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
