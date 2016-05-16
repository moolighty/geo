# ************************************************************
# Sequel Pro SQL dump
# Version 
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 101.200.77.107 (MySQL 5.6.14-log)
# Database: learn_job
# Generation Time: 2016-05-16 03:09:43 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table continent
# ------------------------------------------------------------

DROP TABLE IF EXISTS `continent`;

CREATE TABLE `continent` (
  `id` int(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `cn_name` varchar(16) DEFAULT NULL COMMENT '中文名',
  `en_name` varchar(16) DEFAULT NULL COMMENT '英文名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `continent` WRITE;
/*!40000 ALTER TABLE `continent` DISABLE KEYS */;

INSERT INTO `continent` (`id`, `cn_name`, `en_name`)
VALUES
	(1,'亚洲','Asia'),
	(2,'欧洲','Europe'),
	(3,'非洲','Africa'),
	(4,'大洋洲','Oceania'),
	(5,'南极洲','Antarctica'),
	(6,'北美洲','North America'),
	(7,'南美洲','South America');

/*!40000 ALTER TABLE `continent` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
