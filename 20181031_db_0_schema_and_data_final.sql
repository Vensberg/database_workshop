-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 34.220.13.73    Database: db_0
-- ------------------------------------------------------
-- Server version	5.5.61

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
-- Table structure for table `cohort`
--

DROP TABLE IF EXISTS `cohort`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cohort` (
  `cohort_id` varchar(45) NOT NULL,
  `cohort_parent_1` varchar(45) DEFAULT NULL,
  `cohort_parent_2` varchar(45) DEFAULT NULL,
  `cohort_cross_date` date DEFAULT NULL,
  `cohort_location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cohort_id`),
  UNIQUE KEY `cohort_id_UNIQUE` (`cohort_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cohort`
--

LOCK TABLES `cohort` WRITE;
/*!40000 ALTER TABLE `cohort` DISABLE KEYS */;
INSERT INTO `cohort` VALUES ('0s6i5j','w0e820','14dsvp','2012-01-08','pool_11'),('1c4cfu','80nrjl','gsowu0','2011-06-08','pool_4'),('1vek7g','9abmdn','ncq9hw','2012-05-16','pool_15'),('20gov9','32d0qm','yfq51c','2012-07-20','pool_17'),('2vjdu8','x1l7s5','o4sb7z','2011-10-12','pool_8'),('30ou9r','49gi1l','dyhfrw','2012-02-10','pool_12'),('5yrf9h','einr67','ov0tu5','2011-12-14','pool_10'),('81awij','3cpoas','p556nh','2011-04-06','pool_2'),('8wy60n','6meti8','b8yaa7','2011-07-09','pool_5'),('bo28zb','eie8r6','yink36','2011-08-10','pool_6'),('e1ssr2','wx265z','vqqe4i','2012-08-22','pool_18'),('ffg891','a1b1c1','r2d2sw','2011-03-05','pool_1'),('gs1din','mjsbjz','7vzzd0','2011-11-13','pool_9'),('h103d8','dkl1ex','71ik7z','2012-04-14','pool_14'),('jgg0sk','sfy1qv','p046uu','2011-09-11','pool_7'),('lnx2ye','xgdfi9','pi01l5','2012-09-24','pool_19'),('n0fm85','wm6mt3','ggfljt','2012-06-18','pool_16'),('qx5r6a','3uvtoz','46a9xb','2012-10-26','pool_20'),('t3cuwj','frojlq','ift5ll','2011-05-07','pool_3'),('ysqzpm','27eiun','x7cktt','2012-03-12','pool_13');
/*!40000 ALTER TABLE `cohort` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `individual`
--

DROP TABLE IF EXISTS `individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `individual` (
  `individual_id` varchar(45) NOT NULL,
  `ind_cohort_id` varchar(45) DEFAULT NULL,
  `ind_location` enum('tank_1','tank_2','tank_3','tank_4','tank_5','tank_6','tank_7','tank_8','tank_9','tank_10','tank_11','tank_12','tank_13','tank_14','tank_15','tank_16','tank_17','tank_18','tank_19','tank_20','tank_21','tank_22','tank_23','tank_24','tank_25') DEFAULT NULL,
  PRIMARY KEY (`individual_id`),
  UNIQUE KEY `individual_id_UNIQUE` (`individual_id`),
  KEY `cohort_key_idx` (`ind_cohort_id`),
  CONSTRAINT `cohort_key` FOREIGN KEY (`ind_cohort_id`) REFERENCES `cohort` (`cohort_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `individual`
--

LOCK TABLES `individual` WRITE;
/*!40000 ALTER TABLE `individual` DISABLE KEYS */;
INSERT INTO `individual` VALUES ('14dsvp','t3cuwj','tank_18'),('27eiun','bo28zb','tank_6'),('32d0qm','t3cuwj','tank_23'),('38szrk','2vjdu8','tank_13'),('3e67ng','e1ssr2','tank_13'),('3uvtoz','bo28zb','tank_1'),('46a9xb','8wy60n','tank_15'),('47rrsv','n0fm85','tank_16'),('49gi1l','8wy60n','tank_5'),('4cis0b','h103d8','tank_24'),('4ft1wm','30ou9r','tank_2'),('50ax1v','n0fm85','tank_1'),('5onq9i','n0fm85','tank_21'),('67t7np','n0fm85','tank_6'),('6l41w3','0s6i5j','tank_16'),('71ik7z','bo28zb','tank_21'),('7bec0f','gs1din','tank_19'),('7vzzd0','ffg891','tank_16'),('7wbixa','gs1din','tank_9'),('8450cy','e1ssr2','tank_18'),('95lpbn','30ou9r','tank_7'),('97a73h','lnx2ye','tank_9'),('9abmdn','ffg891','tank_21'),('9n82fe','h103d8','tank_9'),('abhfux','5yrf9h','tank_10'),('ahgxlh','ysqzpm','tank_3'),('c9xlm9','qx5r6a','tank_25'),('cce46z','2vjdu8','tank_18'),('ckyfsg','30ou9r','tank_12'),('cp8y2g','n0fm85','tank_11'),('cybzlq','ffg891','tank_6'),('d05cke','lnx2ye','tank_4'),('d21iac','t3cuwj','tank_8'),('dkl1ex','jgg0sk','tank_7'),('drjf9h','ysqzpm','tank_13'),('dyhfrw','1c4cfu','tank_19'),('eefw0m','jgg0sk','tank_12'),('eeh0br','20gov9','tank_22'),('einr67','t3cuwj','tank_3'),('elsmky','h103d8','tank_4'),('eoi6dr','qx5r6a','tank_20'),('euat6s','h103d8','tank_14'),('fteebk','gs1din','tank_24'),('ggfljt','ffg891','tank_11'),('ghwhtp','e1ssr2','tank_3'),('h6fjbv','5yrf9h','tank_25'),('i3fdqx','5yrf9h','tank_5'),('j35oss','e1ssr2','tank_23'),('jbhoqw','ysqzpm','tank_23'),('jhpvl6','1vek7g','tank_25'),('kgmcrw','20gov9','tank_17'),('khq54y','gs1din','tank_14'),('kjeqsj','ysqzpm','tank_8'),('km08tv','h103d8','tank_19'),('kz4kgx','30ou9r','tank_17'),('lcll8k','0s6i5j','tank_1'),('lmyau4','lnx2ye','tank_14'),('makeyl','bo28zb','tank_16'),('mfbg0y','0s6i5j','tank_11'),('mjsbjz','81awij','tank_2'),('mowb3f','5yrf9h','tank_20'),('ncq9hw','jgg0sk','tank_22'),('o4sb7z','jgg0sk','tank_2'),('o7op40','20gov9','tank_2'),('obs5v0','1c4cfu','tank_9'),('ov0tu5','81awij','tank_17'),('p08i7f','e1ssr2','tank_8'),('pi01l5','1c4cfu','tank_14'),('pmruhe','ysqzpm','tank_18'),('q8m1s8','1vek7g','tank_10'),('qa9l63','0s6i5j','tank_21'),('qb58ot','2vjdu8','tank_8'),('ru6wzb','bo28zb','tank_11'),('s4bwho','5yrf9h','tank_15'),('szt4da','81awij','tank_7'),('tabacd','20gov9','tank_12'),('taztfe','1vek7g','tank_15'),('trhunr','30ou9r','tank_22'),('tu7ysh','qx5r6a','tank_15'),('tw6tzk','jgg0sk','tank_17'),('uc6vn4','20gov9','tank_7'),('uxdjh6','lnx2ye','tank_19'),('uz853y','qx5r6a','tank_10'),('vjsz0l','8wy60n','tank_10'),('vnu9ld','1vek7g','tank_5'),('vqqe4i','t3cuwj','tank_13'),('w0e820','1c4cfu','tank_4'),('w29byd','lnx2ye','tank_24'),('wlg5ag','0s6i5j','tank_6'),('wm6mt3','81awij','tank_22'),('wn5vtm','2vjdu8','tank_3'),('wx265z','1c4cfu','tank_24'),('x1l7s5','ffg891','tank_1'),('x7cktt','8wy60n','tank_20'),('xfh49g','1vek7g','tank_20'),('xgdfi9','8wy60n','tank_25'),('yczwg1','gs1din','tank_4'),('yfq51c','81awij','tank_12'),('yjisq5','qx5r6a','tank_5'),('zy3hjg','2vjdu8','tank_23');
/*!40000 ALTER TABLE `individual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `physical_table`
--

DROP TABLE IF EXISTS `physical_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `physical_table` (
  `physical_auto_id` int(11) NOT NULL AUTO_INCREMENT,
  `physical_individual_id` varchar(45) DEFAULT NULL,
  `physical_cohort_id` varchar(45) DEFAULT NULL,
  `physical_date` date DEFAULT NULL,
  `physical_length_mm` double DEFAULT NULL,
  `physical_weight_g` double DEFAULT NULL,
  `physical_brilliance` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`physical_auto_id`),
  UNIQUE KEY `physical_auto_id_UNIQUE` (`physical_auto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physical_table`
--

LOCK TABLES `physical_table` WRITE;
/*!40000 ALTER TABLE `physical_table` DISABLE KEYS */;
INSERT INTO `physical_table` VALUES (1,'p08i7f','','2012-03-07',31,128.6,'average'),(2,'7bec0f','','2012-03-07',24,99.6,'average'),(3,'kz4kgx','','2012-03-07',16,66.4,'dull'),(4,'uz853y','','2012-03-07',30,124.5,'average'),(5,'x7cktt','','2012-03-07',34,141.1,'brigth'),(6,'7wbixa','','2012-03-07',45,186.7,'brilliant'),(7,'jhpvl6','','2012-03-07',23,95.4,'dull'),(8,'pmruhe','','2012-03-07',15,62.2,'dull'),(9,'eoi6dr','','2012-03-07',43,178.4,'briliant'),(10,'cp8y2g','','2012-03-07',36,149.4,'bright'),(11,'32d0qm','','2012-03-07',42,174.3,'briliant'),(12,'vnu9ld','','2012-03-07',31,128.6,'average'),(13,'khq54y','','2012-03-07',18,74.7,'dull'),(14,'d21iac','','2012-03-07',19,78.8,'dull'),(15,'49gi1l','','2012-03-07',46,190.9,'brilliant'),(16,'50ax1v','','2012-03-07',23,95.4,'dull'),(17,'vqqe4i','','2012-03-07',25,103.7,'average'),(18,'71ik7z','','2012-03-07',34,141.1,'brigth'),(19,'wn5vtm','','2012-03-07',41,170.1,'briliant'),(20,'7vzzd0','','2012-03-07',35,145.2,'bright'),(21,'jbhoqw','','2012-03-07',23,95.4,'dull'),(22,'5onq9i','','2012-03-07',14,58.1,'dull'),(23,'lcll8k','','2012-03-07',33,136.9,'average'),(24,'tabacd','','2012-03-07',35,145.2,'bright'),(25,'eefw0m','','2012-03-07',18,74.7,'dull'),(26,'ggfljt','','2012-03-07',27,112,'average'),(27,'6l41w3','','2012-03-07',16,66.4,'dull'),(28,'ov0tu5','','2012-03-07',34,141.1,'bright'),(29,'makeyl','','2012-03-07',25,103.7,'average'),(30,'14dsvp','','2012-03-07',34,141.1,'bright'),(31,'3uvtoz','','2012-03-07',41,170.1,'briliant'),(32,'qa9l63','','2012-03-07',23,95.4,'dull'),(33,'o7op40','','2012-03-07',23,95.4,'dull'),(34,'eeh0br','','2012-03-07',13,53.9,'faint'),(35,'ghwhtp','','2012-03-07',22,91.3,'dull'),(36,'euat6s','','2012-03-07',44,182.6,'brilliant'),(37,'szt4da','','2012-03-07',20,83,'dull'),(38,'fteebk','','2012-03-07',33,136.9,'brigth'),(39,'tu7ysh','','2012-03-07',35,145.2,'bright'),(40,'w29byd','','2012-03-07',11,45.6,'faint'),(41,'d05cke','','2012-05-08',22,91.3,'dull'),(42,'pi01l5','','2012-05-08',25,103.7,'average'),(43,'kjeqsj','','2012-05-08',38,157.7,'bright'),(44,'kgmcrw','','2012-05-08',43,178.4,'brilliant'),(45,'cybzlq','','2012-05-08',21,87.1,'dull'),(46,'67t7np','','2012-05-08',31,128.6,'average'),(47,'38szrk','','2012-05-08',18,74.7,'dull'),(48,'yfq51c','','2012-05-08',26,107.9,'average'),(49,'c9xlm9','','2012-05-08',10,41.5,'faint'),(50,'dyhfrw','','2012-05-08',34,141.1,'brigth'),(51,'yczwg1','','2013-04-19',40,166,'bright'),(52,'8450cy','','2013-04-19',43,178.4,'brilliant'),(53,'xfh49g','','2013-04-19',15,62.2,'dull'),(54,'q8m1s8','','2013-04-19',37,153.5,'bright'),(55,'mjsbjz','','2013-04-19',48,199.2,'brilliant'),(56,'wm6mt3','','2013-04-19',43,178.4,'briliant'),(57,'wx265z','','2013-04-19',42,174.3,'briliant'),(58,'uc6vn4','','2013-04-19',31,128.6,'average'),(59,'vjsz0l','','2013-04-19',19,78.8,'dull'),(60,'zy3hjg','','2013-04-19',34,141.1,'brigth'),(61,'mowb3f','','2013-04-19',24,99.6,'dull'),(62,'4ft1wm','','2013-04-19',32,132.8,'average'),(63,'einr67','','2013-04-19',48,199.2,'brilliant'),(64,'ckyfsg','','2013-04-19',44,182.6,'brilliant'),(65,'x1l7s5','','2013-04-19',53,219.9,'brilliant'),(66,'xgdfi9','','2013-04-19',42,174.3,'briliant'),(67,'w0e820','','2013-04-19',47,195,'brilliant'),(68,'yjisq5','','2013-04-19',21,87.1,'dull'),(69,'h6fjbv','','2013-04-19',33,136.9,'brigth'),(70,'qb58ot','','2013-04-19',45,186.7,'brilliant'),(71,'taztfe','','2013-04-19',43,178.4,'brilliant'),(72,'cce46z','','2013-04-19',24,99.6,'average'),(73,'9n82fe','','2013-04-19',38,157.7,'bright'),(74,'9abmdn','','2013-04-19',43,178.4,'briliant'),(75,'tw6tzk','','2013-04-19',24,99.6,'average'),(76,'s4bwho','','2013-04-19',17,70.5,'dull'),(77,'o4sb7z','','2013-04-19',41,170.1,'briliant'),(78,'abhfux','','2013-04-19',45,186.7,'brilliant'),(79,'ahgxlh','','2013-04-19',32,132.8,'average'),(80,'95lpbn','','2013-04-19',39,161.8,'bright'),(81,'97a73h','','2013-04-19',31,128.6,'average'),(82,'uxdjh6','','2013-04-19',43,178.4,'briliant'),(83,'ru6wzb','','2013-04-19',19,78.8,'dull'),(84,'3e67ng','','2013-04-19',35,145.2,'bright'),(85,'46a9xb','','2013-04-19',25,103.7,'average'),(86,'i3fdqx','','2013-04-19',40,166,'bright'),(87,'ncq9hw','','2013-04-19',34,141.1,'brigth'),(88,'27eiun','','2013-04-19',46,190.9,'brilliant'),(89,'4cis0b','','2013-04-19',23,95.4,'dull'),(90,'trhunr','','2013-04-19',23,95.4,'dull'),(91,'47rrsv','','2013-04-19',43,178.4,'brilliant'),(92,'km08tv','','2013-04-19',15,62.2,'dull'),(93,'j35oss','','2013-04-19',13,53.9,'faint'),(94,'obs5v0','','2013-04-19',19,78.8,'dull'),(95,'drjf9h','','2013-04-19',44,182.6,'brilliant'),(96,'elsmky','','2013-04-19',32,132.8,'average'),(97,'lmyau4','','2013-04-19',35,145.2,'bright'),(98,'mfbg0y','','2013-04-19',45,186.7,'brilliant'),(99,'wlg5ag','','2013-04-19',39,161.8,'bright'),(100,'dkl1ex','','2013-04-19',46,190.9,'brilliant'),(101,'','bo28zb','2013-09-23',179,742.7,'dull'),(102,'','n0fm85','2013-09-23',631,2618,'bright'),(103,'','h103d8','2013-09-23',434,1800.7,'average'),(104,'','2vjdu8','2013-09-23',327,1356.7,'average'),(105,'','jgg0sk','2013-09-23',714,2962.4,'bright'),(106,'','20gov9','2013-09-23',131,543.5,'dull'),(107,'','2vjdu8','2013-09-23',464,1925.1,'average'),(108,'','0s6i5j','2013-09-23',792,3286,'briliant'),(109,'','20gov9','2013-09-23',848,3518.4,'brilliant'),(110,'','8wy60n','2013-09-23',495,2053.8,'bright'),(111,'','ffg891','2013-09-23',763,3165.7,'briliant'),(112,'','0s6i5j','2013-09-23',265,1099.5,'average'),(113,'','8wy60n','2013-09-23',445,1846.3,'average'),(114,'','n0fm85','2013-09-23',477,1979.1,'brigth'),(115,'','e1ssr2','2013-09-23',427,1771.6,'average'),(116,'','5yrf9h','2013-09-23',171,709.5,'dull'),(117,'','20gov9','2013-09-23',428,1775.8,'average'),(118,'','bo28zb','2013-09-23',381,1580.8,'average'),(119,'','qx5r6a','2013-09-23',700,2904.3,'bright'),(120,'','8wy60n','2013-09-23',181,751,'dull'),(121,'','lnx2ye','2013-09-23',507,2103.5,'bright'),(122,'','1vek7g','2013-09-23',480,1991.5,'brigth'),(123,'','gs1din','2013-09-23',795,3298.5,'briliant'),(124,'','20gov9','2013-09-23',566,2348.3,'bright'),(125,'','qx5r6a','2013-09-23',108,448.1,'dull'),(126,'','1c4cfu','2013-09-23',692,2871.1,'bright'),(127,'','ffg891','2013-09-23',932,3866.9,'brilliant'),(128,'','5yrf9h','2013-09-23',268,1111.9,'average'),(129,'','1c4cfu','2013-09-23',305,1265.4,'average'),(130,'','1vek7g','2013-09-23',896,3717.5,'brilliant'),(131,'','h103d8','2013-09-23',634,2630.5,'bright'),(132,'','ysqzpm','2013-09-23',293,1215.7,'average'),(133,'','1c4cfu','2013-09-23',233,966.7,'dull'),(134,'','1vek7g','2013-09-23',520,2157.5,'bright'),(135,'','t3cuwj','2013-09-23',697,2891.9,'bright'),(136,'','gs1din','2013-09-23',177,734.4,'dull'),(137,'','qx5r6a','2013-09-23',561,2327.6,'bright'),(138,'','h103d8','2013-09-23',901,3738.2,'brilliant'),(139,'','30ou9r','2013-09-23',672,2788.1,'bright'),(140,'','30ou9r','2013-09-23',737,3057.8,'briliant'),(141,'','qx5r6a','2013-09-23',936,3883.5,'brilliant'),(142,'','e1ssr2','2013-09-23',626,2597.3,'bright'),(143,'','ysqzpm','2013-09-23',158,655.5,'dull'),(144,'','1c4cfu','2013-09-23',835,3464.4,'brilliant'),(145,'','20gov9','2013-09-23',455,1887.8,'average'),(146,'','jgg0sk','2013-09-23',834,3460.3,'brilliant'),(147,'','qx5r6a','2013-09-23',312,1294.5,'average'),(148,'','bo28zb','2013-09-23',445,1846.3,'average'),(149,'','0s6i5j','2013-09-23',438,1817.3,'average'),(150,'','h103d8','2013-09-23',321,1331.8,'average'),(151,'','ysqzpm','2013-09-23',569,2360.8,'bright'),(152,'','5yrf9h','2013-09-23',208,863,'dull'),(153,'','ysqzpm','2013-09-23',950,3941.6,'brilliant'),(154,'','1vek7g','2013-09-23',704,2920.9,'bright'),(155,'','bo28zb','2013-09-23',590,2447.9,'bright'),(156,'','30ou9r','2013-09-23',790,3277.7,'briliant'),(157,'','n0fm85','2013-09-23',778,3227.9,'briliant'),(158,'','20gov9','2013-09-23',941,3904.2,'brilliant'),(159,'','h103d8','2013-09-23',354,1468.7,'average'),(160,'','bo28zb','2013-09-23',544,2257.1,'bright'),(161,'','jgg0sk','2013-09-23',328,1360.9,'average'),(162,'','gs1din','2013-09-23',442,1833.9,'average'),(163,'','gs1din','2013-09-23',832,3452,'brilliant'),(164,'','n0fm85','2013-09-23',893,3705.1,'brilliant'),(165,'','lnx2ye','2013-09-23',285,1182.5,'average'),(166,'','1c4cfu','2013-09-23',758,3144.9,'briliant'),(167,'','8wy60n','2013-09-23',231,958.4,'dull'),(168,'','20gov9','2013-09-23',288,1194.9,'average'),(169,'','qx5r6a','2013-09-23',411,1705.2,'average'),(170,'','2vjdu8','2013-09-23',178,738.5,'dull'),(171,'','81awij','2013-09-23',608,2522.6,'bright'),(172,'','5yrf9h','2013-09-23',535,2219.7,'bright'),(173,'','8wy60n','2013-09-23',835,3464.4,'brilliant'),(174,'','20gov9','2013-09-23',253,1049.7,'dull'),(175,'','ffg891','2013-09-23',699,2900.2,'bright'),(176,'','1c4cfu','2013-09-23',804,3335.8,'briliant'),(177,'','ysqzpm','2013-09-23',823,3414.6,'briliant'),(178,'','ysqzpm','2013-09-23',668,2771.5,'bright'),(179,'','e1ssr2','2013-09-23',728,3020.5,'briliant'),(180,'','2vjdu8','2013-09-23',271,1124.4,'average'),(181,'','0s6i5j','2013-09-23',857,3555.7,'brilliant'),(182,'','h103d8','2013-09-23',292,1211.5,'average'),(183,'','2vjdu8','2013-09-23',645,2676.1,'bright'),(184,'','qx5r6a','2013-09-23',245,1016.5,'dull'),(185,'','0s6i5j','2013-09-23',463,1921,'average'),(186,'','gs1din','2013-09-23',861,3572.3,'brilliant'),(187,'','1vek7g','2013-09-23',433,1796.5,'average'),(188,'','0s6i5j','2013-09-23',906,3759,'brilliant'),(189,'','5yrf9h','2013-09-23',739,3066.1,'briliant'),(190,'','1vek7g','2013-09-23',633,2626.3,'bright'),(191,'','e1ssr2','2013-09-23',701,2908.4,'bright'),(192,'','ysqzpm','2013-09-23',356,1477,'average'),(193,'','81awij','2013-09-23',806,3344.1,'briliant'),(194,'','n0fm85','2013-09-23',316,1311.1,'average'),(195,'','e1ssr2','2013-09-23',940,3900.1,'brilliant'),(196,'','gs1din','2013-09-23',269,1116.1,'average'),(197,'','bo28zb','2013-09-23',646,2680.3,'bright'),(198,'','ysqzpm','2013-09-23',526,2182.4,'bright'),(199,'','ffg891','2013-09-23',474,1966.6,'brigth'),(200,'','gs1din','2013-09-23',681,2825.5,'bright'),(201,'','qx5r6a','2013-11-27',189,784.2,'dull'),(202,'','0s6i5j','2013-11-27',641,2659.5,'bright'),(203,'','jgg0sk','2013-11-27',444,1842.2,'average'),(204,'','81awij','2013-11-27',337,1398.2,'average'),(205,'','qx5r6a','2013-11-27',724,3003.9,'briliant'),(206,'','1vek7g','2013-11-27',141,585,'dull'),(207,'','qx5r6a','2013-11-27',474,1966.6,'brigth'),(208,'','8wy60n','2013-11-27',802,3327.5,'briliant'),(209,'','5yrf9h','2013-11-27',858,3559.8,'brilliant'),(210,'','ffg891','2013-11-27',505,2095.2,'bright'),(211,'','20gov9','2013-11-27',773,3207.2,'briliant'),(212,'','8wy60n','2013-11-27',275,1141,'average'),(213,'','n0fm85','2013-11-27',455,1887.8,'average'),(214,'','5yrf9h','2013-11-27',487,2020.6,'bright'),(215,'','ysqzpm','2013-11-27',437,1813.1,'average'),(216,'','1c4cfu','2013-11-27',181,751,'dull'),(217,'','30ou9r','2013-11-27',438,1817.3,'average'),(218,'','t3cuwj','2013-11-27',391,1622.3,'average'),(219,'','30ou9r','2013-11-27',710,2945.8,'bright'),(220,'','lnx2ye','2013-11-27',191,792.5,'dull'),(221,'','n0fm85','2013-11-27',517,2145,'bright'),(222,'','gs1din','2013-11-27',490,2033,'bright'),(223,'','t3cuwj','2013-11-27',805,3339.9,'briliant'),(224,'','n0fm85','2013-11-27',567,2352.5,'bright'),(225,'','lnx2ye','2013-11-27',118,489.6,'dull'),(226,'','n0fm85','2013-11-27',702,2912.6,'bright'),(227,'','n0fm85','2013-11-27',942,3908.4,'brilliant'),(228,'','1c4cfu','2013-11-27',278,1153.4,'average'),(229,'','e1ssr2','2013-11-27',315,1306.9,'average'),(230,'','30ou9r','2013-11-27',906,3759,'brilliant'),(231,'','gs1din','2013-11-27',644,2672,'bright'),(232,'','8wy60n','2013-11-27',303,1257.1,'average'),(233,'','ffg891','2013-11-27',243,1008.2,'dull'),(234,'','0s6i5j','2013-11-27',530,2199,'bright'),(235,'','h103d8','2013-11-27',707,2933.3,'bright'),(236,'','t3cuwj','2013-11-27',187,775.9,'dull'),(237,'','30ou9r','2013-11-27',571,2369.1,'bright'),(238,'','5yrf9h','2013-11-27',911,3779.7,'brilliant'),(239,'','2vjdu8','2013-11-27',682,2829.6,'bright'),(240,'','2vjdu8','2013-11-27',747,3099.3,'briliant'),(241,'','1vek7g','2013-11-27',946,3925,'brilliant'),(242,'','ysqzpm','2013-11-27',636,2638.8,'bright'),(243,'','0s6i5j','2013-11-27',168,697,'dull'),(244,'','e1ssr2','2013-11-27',845,3505.9,'brilliant'),(245,'','bo28zb','2013-11-27',465,1929.3,'average'),(246,'','qx5r6a','2013-11-27',844,3501.8,'brilliant'),(247,'','30ou9r','2013-11-27',322,1336,'average'),(248,'','e1ssr2','2013-11-27',455,1887.8,'average'),(249,'','81awij','2013-11-27',448,1858.8,'average'),(250,'','bo28zb','2013-11-27',331,1373.3,'average'),(251,'','gs1din','2013-11-27',579,2402.3,'bright'),(252,'','jgg0sk','2013-11-27',218,904.5,'dull'),(253,'','2vjdu8','2013-11-27',960,3983,'brilliant'),(254,'','2vjdu8','2013-11-27',714,2962.4,'bright'),(255,'','t3cuwj','2013-11-27',600,2489.4,'bright'),(256,'','bo28zb','2013-11-27',800,3319.2,'briliant'),(257,'','ysqzpm','2013-11-27',788,3269.4,'briliant'),(258,'','30ou9r','2013-11-27',951,3945.7,'brilliant'),(259,'','5yrf9h','2013-11-27',364,1510.2,'average'),(260,'','81awij','2013-11-27',554,2298.5,'bright'),(261,'','ffg891','2013-11-27',338,1402.4,'average'),(262,'','ffg891','2013-11-27',452,1875.3,'average'),(263,'','81awij','2013-11-27',842,3493.5,'brilliant'),(264,'','ysqzpm','2013-11-27',903,3746.5,'brilliant'),(265,'','0s6i5j','2013-11-27',295,1224,'average'),(266,'','lnx2ye','2013-11-27',768,3186.4,'briliant'),(267,'','81awij','2013-11-27',241,999.9,'dull'),(268,'','gs1din','2013-11-27',298,1236.4,'average'),(269,'','lnx2ye','2013-11-27',421,1746.7,'average'),(270,'','81awij','2013-11-27',188,780,'dull'),(271,'','qx5r6a','2013-11-27',618,2564.1,'bright'),(272,'','8wy60n','2013-11-27',545,2261.2,'bright'),(273,'','lnx2ye','2013-11-27',845,3505.9,'brilliant'),(274,'','ysqzpm','2013-11-27',263,1091.2,'average'),(275,'','ysqzpm','2013-11-27',709,2941.6,'bright'),(276,'','e1ssr2','2013-11-27',814,3377.3,'briliant'),(277,'','2vjdu8','2013-11-27',833,3456.1,'brilliant'),(278,'','5yrf9h','2013-11-27',678,2813,'bright'),(279,'','0s6i5j','2013-11-27',738,3062,'briliant'),(280,'','81awij','2013-11-27',281,1165.9,'average'),(281,'','1c4cfu','2013-11-27',867,3597.2,'brilliant'),(282,'','bo28zb','2013-11-27',302,1253,'average'),(283,'','81awij','2013-11-27',655,2717.6,'bright'),(284,'','n0fm85','2013-11-27',255,1058,'dull'),(285,'','81awij','2013-11-27',473,1962.5,'brigth'),(286,'','81awij','2013-11-27',871,3613.8,'brilliant'),(287,'','2vjdu8','2013-11-27',443,1838,'average'),(288,'','jgg0sk','2013-11-27',916,3800.5,'brilliant'),(289,'','bo28zb','2013-11-27',749,3107.6,'briliant'),(290,'','5yrf9h','2013-11-27',643,2667.8,'bright'),(291,'','5yrf9h','2013-11-27',711,2949.9,'bright'),(292,'','gs1din','2013-11-27',366,1518.5,'average'),(293,'','n0fm85','2013-11-27',816,3385.6,'briliant'),(294,'','gs1din','2013-11-27',326,1352.6,'average'),(295,'','h103d8','2013-11-27',950,3941.6,'brilliant'),(296,'','t3cuwj','2013-11-27',279,1157.6,'average'),(297,'','qx5r6a','2013-11-27',656,2721.7,'bright'),(298,'','gs1din','2013-11-27',536,2223.9,'bright'),(299,'','ysqzpm','2013-11-27',484,2008.1,'brigth'),(300,'','bo28zb','2013-11-27',691,2867,'bright'),(301,'','1vek7g','2014-01-15',199,825.7,'dull'),(302,'','8wy60n','2014-01-15',651,2701,'bright'),(303,'','lnx2ye','2014-01-15',454,1883.6,'average'),(304,'','20gov9','2014-01-15',347,1439.7,'average'),(305,'','ysqzpm','2014-01-15',734,3045.4,'briliant'),(306,'','h103d8','2014-01-15',151,626.5,'dull'),(307,'','30ou9r','2014-01-15',484,2008.1,'bright'),(308,'','lnx2ye','2014-01-15',812,3369,'briliant'),(309,'','t3cuwj','2014-01-15',868,3601.3,'brilliant'),(310,'','20gov9','2014-01-15',515,2136.7,'bright'),(311,'','h103d8','2014-01-15',783,3248.7,'briliant'),(312,'','qx5r6a','2014-01-15',285,1182.5,'average'),(313,'','8wy60n','2014-01-15',465,1929.3,'average'),(314,'','1c4cfu','2014-01-15',497,2062.1,'bright'),(315,'','1c4cfu','2014-01-15',447,1854.6,'average'),(316,'','e1ssr2','2014-01-15',191,792.5,'dull'),(317,'','t3cuwj','2014-01-15',448,1858.8,'average'),(318,'','81awij','2014-01-15',401,1663.7,'average'),(319,'','1c4cfu','2014-01-15',720,2987.3,'briliant'),(320,'','h103d8','2014-01-15',201,833.9,'dull'),(321,'','30ou9r','2014-01-15',527,2186.5,'bright'),(322,'','t3cuwj','2014-01-15',500,2074.5,'bright'),(323,'','20gov9','2014-01-15',815,3381.4,'briliant'),(324,'','1vek7g','2014-01-15',568,2356.6,'bright'),(325,'','e1ssr2','2014-01-15',128,531.1,'dull'),(326,'','gs1din','2014-01-15',712,2954.1,'bright'),(327,'','0s6i5j','2014-01-15',952,3949.8,'brilliant'),(328,'','e1ssr2','2014-01-15',288,1194.9,'average'),(329,'','5yrf9h','2014-01-15',325,1348.4,'average'),(330,'','2vjdu8','2014-01-15',916,3800.5,'brilliant'),(331,'','t3cuwj','2014-01-15',654,2713.4,'bright'),(332,'','lnx2ye','2014-01-15',313,1298.6,'average'),(333,'','e1ssr2','2014-01-15',253,1049.7,'dull'),(334,'','jgg0sk','2014-01-15',540,2240.5,'bright'),(335,'','bo28zb','2014-01-15',717,2974.8,'bright'),(336,'','20gov9','2014-01-15',197,817.4,'dull'),(337,'','2vjdu8','2014-01-15',581,2410.6,'bright'),(338,'','bo28zb','2014-01-15',921,3821.2,'brilliant'),(339,'','8wy60n','2014-01-15',692,2871.1,'bright'),(340,'','8wy60n','2014-01-15',757,3140.8,'briliant'),(341,'','5yrf9h','2014-01-15',956,3966.4,'brilliant'),(342,'','jgg0sk','2014-01-15',646,2680.3,'bright'),(343,'','jgg0sk','2014-01-15',178,738.5,'dull'),(344,'','30ou9r','2014-01-15',855,3547.4,'brilliant'),(345,'','e1ssr2','2014-01-15',475,1970.8,'brigth'),(346,'','h103d8','2014-01-15',854,3543.2,'brilliant'),(347,'','8wy60n','2014-01-15',332,1377.5,'average'),(348,'','jgg0sk','2014-01-15',465,1929.3,'average'),(349,'','ysqzpm','2014-01-15',458,1900.2,'average'),(350,'','qx5r6a','2014-01-15',341,1414.8,'average'),(351,'','jgg0sk','2014-01-15',589,2443.8,'bright'),(352,'','bo28zb','2014-01-15',228,946,'dull'),(353,'','t3cuwj','2014-01-15',970,4024.5,'brilliant'),(354,'','ffg891','2014-01-15',724,3003.9,'briliant'),(355,'','ffg891','2014-01-15',610,2530.9,'bright'),(356,'','qx5r6a','2014-01-15',810,3360.7,'briliant'),(357,'','2vjdu8','2014-01-15',798,3310.9,'briliant'),(358,'','jgg0sk','2014-01-15',961,3987.2,'brilliant'),(359,'','2vjdu8','2014-01-15',374,1551.7,'average'),(360,'','lnx2ye','2014-01-15',564,2340,'bright'),(361,'','n0fm85','2014-01-15',348,1443.9,'average'),(362,'','30ou9r','2014-01-15',462,1916.8,'average'),(363,'','n0fm85','2014-01-15',852,3534.9,'brilliant'),(364,'','gs1din','2014-01-15',913,3788,'brilliant'),(365,'','t3cuwj','2014-01-15',305,1265.4,'average'),(366,'','1vek7g','2014-01-15',778,3227.9,'briliant'),(367,'','lnx2ye','2014-01-15',251,1041.4,'dull'),(368,'','81awij','2014-01-15',308,1277.9,'average'),(369,'','n0fm85','2014-01-15',431,1788.2,'average'),(370,'','n0fm85','2014-01-15',198,821.5,'dull'),(371,'','20gov9','2014-01-15',628,2605.6,'bright'),(372,'','e1ssr2','2014-01-15',565,2344.2,'bright'),(373,'','ysqzpm','2014-01-15',855,3547.4,'brilliant'),(374,'','jgg0sk','2014-01-15',273,1132.7,'average'),(375,'','8wy60n','2014-01-15',719,2983.1,'bright'),(376,'','30ou9r','2014-01-15',824,3418.8,'briliant'),(377,'','ffg891','2014-01-15',843,3497.6,'brilliant'),(378,'','jgg0sk','2014-01-15',688,2854.5,'bright'),(379,'','jgg0sk','2014-01-15',748,3103.5,'briliant'),(380,'','1vek7g','2014-01-15',291,1207.4,'average'),(381,'','ffg891','2014-01-15',877,3638.7,'brilliant'),(382,'','ffg891','2014-01-15',312,1294.5,'average'),(383,'','n0fm85','2014-01-15',665,2759.1,'bright'),(384,'','30ou9r','2014-01-15',265,1099.5,'average'),(385,'','h103d8','2014-01-15',483,2004,'brigth'),(386,'','lnx2ye','2014-01-15',881,3655.3,'brilliant'),(387,'','qx5r6a','2014-01-15',453,1879.5,'average'),(388,'','t3cuwj','2014-01-15',926,3842,'brilliant'),(389,'','81awij','2014-01-15',759,3149.1,'briliant'),(390,'','1c4cfu','2014-01-15',653,2709.3,'bright'),(391,'','t3cuwj','2014-01-15',721,2991.4,'briliant'),(392,'','jgg0sk','2014-01-15',376,1560,'average'),(393,'','5yrf9h','2014-01-15',826,3427.1,'brilliant'),(394,'','t3cuwj','2014-01-15',336,1394.1,'average'),(395,'','gs1din','2014-01-15',960,3983,'brilliant'),(396,'','n0fm85','2014-01-15',289,1199.1,'average'),(397,'','1vek7g','2014-01-15',666,2763.2,'bright'),(398,'','1c4cfu','2014-01-15',546,2265.4,'bright'),(399,'','jgg0sk','2014-01-15',494,2049.6,'bright'),(400,'','lnx2ye','2014-01-15',701,2908.4,'bright'),(401,'','gs1din','2014-03-09',209,867.1,'dull'),(402,'','lnx2ye','2014-03-09',661,2742.5,'bright'),(403,'','gs1din','2014-03-09',464,1925.1,'average'),(404,'','30ou9r','2014-03-09',357,1481.2,'average'),(405,'','gs1din','2014-03-09',744,3086.9,'briliant'),(406,'','30ou9r','2014-03-09',161,668,'dull'),(407,'','bo28zb','2014-03-09',494,2049.6,'bright'),(408,'','h103d8','2014-03-09',822,3410.5,'briliant'),(409,'','qx5r6a','2014-03-09',878,3642.8,'brilliant'),(410,'','h103d8','2014-03-09',525,2178.2,'bright'),(411,'','5yrf9h','2014-03-09',793,3290.2,'briliant'),(412,'','30ou9r','2014-03-09',295,1224,'average'),(413,'','20gov9','2014-03-09',475,1970.8,'brigth'),(414,'','qx5r6a','2014-03-09',507,2103.5,'bright'),(415,'','1vek7g','2014-03-09',457,1896.1,'average'),(416,'','ysqzpm','2014-03-09',201,833.9,'dull'),(417,'','h103d8','2014-03-09',458,1900.2,'average'),(418,'','ffg891','2014-03-09',411,1705.2,'average'),(419,'','n0fm85','2014-03-09',730,3028.8,'briliant'),(420,'','2vjdu8','2014-03-09',211,875.4,'dull'),(421,'','2vjdu8','2014-03-09',537,2228,'bright'),(422,'','e1ssr2','2014-03-09',510,2116,'bright'),(423,'','0s6i5j','2014-03-09',825,3422.9,'briliant'),(424,'','h103d8','2014-03-09',569,2360.8,'bright'),(425,'','n0fm85','2014-03-09',138,572.6,'dull'),(426,'','81awij','2014-03-09',722,2995.6,'briliant'),(427,'','bo28zb','2014-03-09',962,3991.3,'brilliant'),(428,'','5yrf9h','2014-03-09',298,1236.4,'average'),(429,'','1c4cfu','2014-03-09',335,1389.9,'average'),(430,'','1c4cfu','2014-03-09',926,3842,'brilliant'),(431,'','20gov9','2014-03-09',664,2754.9,'bright'),(432,'','0s6i5j','2014-03-09',323,1340.1,'average'),(433,'','h103d8','2014-03-09',263,1091.2,'average'),(434,'','t3cuwj','2014-03-09',550,2282,'bright'),(435,'','lnx2ye','2014-03-09',727,3016.3,'briliant'),(436,'','30ou9r','2014-03-09',207,858.8,'dull'),(437,'','8wy60n','2014-03-09',591,2452.1,'bright'),(438,'','81awij','2014-03-09',931,3862.7,'brilliant'),(439,'','20gov9','2014-03-09',702,2912.6,'bright'),(440,'','qx5r6a','2014-03-09',767,3182.3,'briliant'),(441,'','8wy60n','2014-03-09',966,4007.9,'brilliant'),(442,'','ffg891','2014-03-09',656,2721.7,'bright'),(443,'','ffg891','2014-03-09',188,780,'dull'),(444,'','8wy60n','2014-03-09',865,3588.9,'brilliant'),(445,'','0s6i5j','2014-03-09',485,2012.3,'bright'),(446,'','jgg0sk','2014-03-09',864,3584.7,'brilliant'),(447,'','lnx2ye','2014-03-09',342,1419,'average'),(448,'','lnx2ye','2014-03-09',475,1970.8,'brigth'),(449,'','1c4cfu','2014-03-09',468,1941.7,'average'),(450,'','1vek7g','2014-03-09',351,1456.3,'average'),(451,'','1c4cfu','2014-03-09',599,2485.3,'bright'),(452,'','t3cuwj','2014-03-09',238,987.5,'dull'),(453,'','ffg891','2014-03-09',980,4066,'brilliant'),(454,'','h103d8','2014-03-09',734,3045.4,'briliant'),(455,'','lnx2ye','2014-03-09',620,2572.4,'bright'),(456,'','1vek7g','2014-03-09',820,3402.2,'briliant'),(457,'','ffg891','2014-03-09',808,3352.4,'briliant'),(458,'','81awij','2014-03-09',971,4028.7,'brilliant'),(459,'','8wy60n','2014-03-09',384,1593.2,'average'),(460,'','0s6i5j','2014-03-09',574,2381.5,'bright'),(461,'','0s6i5j','2014-03-09',358,1485.3,'average'),(462,'','t3cuwj','2014-03-09',472,1958.3,'brigth'),(463,'','2vjdu8','2014-03-09',862,3576.4,'brilliant'),(464,'','8wy60n','2014-03-09',923,3829.5,'brilliant'),(465,'','20gov9','2014-03-09',315,1306.9,'average'),(466,'','jgg0sk','2014-03-09',798,3310.9,'briliant'),(467,'','1vek7g','2014-03-09',261,1082.9,'dull'),(468,'','1vek7g','2014-03-09',318,1319.4,'average'),(469,'','5yrf9h','2014-03-09',441,1829.7,'average'),(470,'','0s6i5j','2014-03-09',208,863,'dull'),(471,'','30ou9r','2014-03-09',638,2647.1,'bright'),(472,'','5yrf9h','2014-03-09',575,2385.7,'bright'),(473,'','bo28zb','2014-03-09',865,3588.9,'brilliant'),(474,'','ffg891','2014-03-09',283,1174.2,'average'),(475,'','20gov9','2014-03-09',729,3024.6,'briliant'),(476,'','bo28zb','2014-03-09',834,3460.3,'brilliant'),(477,'','1vek7g','2014-03-09',853,3539.1,'brilliant'),(478,'','81awij','2014-03-09',698,2896,'bright'),(479,'','t3cuwj','2014-03-09',758,3144.9,'briliant'),(480,'','jgg0sk','2014-03-09',301,1248.8,'average'),(481,'','e1ssr2','2014-03-09',887,3680.2,'brilliant'),(482,'','ysqzpm','2014-03-09',322,1336,'average'),(483,'','0s6i5j','2014-03-09',675,2800.6,'bright'),(484,'','bo28zb','2014-03-09',275,1141,'average'),(485,'','2vjdu8','2014-03-09',493,2045.5,'bright'),(486,'','20gov9','2014-03-09',891,3696.8,'brilliant'),(487,'','5yrf9h','2014-03-09',463,1921,'average'),(488,'','lnx2ye','2014-03-09',936,3883.5,'brilliant'),(489,'','e1ssr2','2014-03-09',769,3190.6,'briliant'),(490,'','e1ssr2','2014-03-09',663,2750.8,'bright'),(491,'','1vek7g','2014-03-09',731,3032.9,'briliant'),(492,'','1c4cfu','2014-03-09',386,1601.5,'average'),(493,'','t3cuwj','2014-03-09',836,3468.6,'brilliant'),(494,'','e1ssr2','2014-03-09',346,1435.6,'average'),(495,'','1c4cfu','2014-03-09',970,4024.5,'brilliant'),(496,'','2vjdu8','2014-03-09',299,1240.6,'average'),(497,'','h103d8','2014-03-09',667,2767.4,'bright'),(498,'','ffg891','2014-03-09',556,2306.8,'bright'),(499,'','81awij','2014-03-09',504,2091.1,'bright'),(500,'','0s6i5j','2014-03-09',711,2949.9,'bright');
/*!40000 ALTER TABLE `physical_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-29  8:47:54
