-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `first_name` varchar(55) NOT NULL,
  `nationality` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(55) DEFAULT NULL,
  `publisher` varchar(55) DEFAULT NULL,
  `height` varchar(55) DEFAULT NULL,
  `code` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20087 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'\"Goswami',' Jaideva\"','signal_processing',228),(2,'\"Foreman',' John\"','data_science',235),(3,'\"Hawking',' Stephen\"','mathematics',197),(4,'\"Dubner',' Stephen\"','economics',179),(5,'\"Said',' Edward\"','history',197),(6,' The\"','\"Vapnik',' Vladimir\"',0),(7,'\"Menon',' V P\"','history',217),(8,' The\"','\"Mlodinow',' Leonard\"',0),(9,'\"Shih',' Frank\"','signal_processing',241),(10,'\"Konnikova',' Maria\"','psychology',240),(11,'Sebastian Gutierrez','data_science','230',0),(12,'\"Vonnegut',' Kurt\"','fiction',198),(13,'\"Villani',' Cedric\"','mathematics',234),(14,'\"Sussman',' Gerald\"','computer_science',240),(15,' The\"','\"Eraly',' Abraham\"',0),(16,' The\"','\"Kafka',' Frank\"',0),(17,'\"Pratt',' John\"','data_science',236),(18,'\"Nisbet',' Robert\"','data_science',242),(19,' The\"','\"Wells',' H. G.\"',0),(20,'\"Heisenberg',' Werner\"','science',197),(21,'\"Oram',' Andy\"','computer_science',232),(22,' Vol I\"','\"Tao',' Terence\"',0),(23,'\"Conway',' Drew\"','data_science',233),(24,' The\"','\"Silver',' Nate\"',0),(25,'\"McKinney',' Wes\"','data_science',233),(26,'\"Cormen',' Thomas\"','computer_science',234),(27,' The\"','\"Deb',' Siddhartha\"',0),(28,' The\"','\"Camus',' Albert\"',0),(29,' The - Vol I\"','\"Doyle',' Arthur Conan\"',0),(30,' The - Vol II\"','\"Doyle',' Arthur Conan\"',0),(31,' The\"','\"Smith',' Adam\"',0),(32,' The\"','\"Follett',' Ken\"',0),(33,'\"Hitler',' Adolf\"','nonfiction',212),(34,' The\"','\"Capra',' Fritjof\"',0),(35,'\"Feynman',' Richard\"','science',198),(36,' A\"','\"Hemingway',' Ernest\"',0),(37,' The\"','\"Forsyth',' Frederick\"',0),(38,'\"Archer',' Jeffery\"','fiction',177),(39,' The\"','\"Pausch',' Randy\"',0),(40,'\"Rand',' Ayn\"','philosophy',202),(41,'\"Crichton',' Michael\"','fiction',174),(42,' A\"','\"Steinbeck',' John\"',0),(43,'\"Poe',' Edgar Allen\"','fiction',172),(44,'\"Dubner',' Stephen\"','economics',197),(45,' The\"','\"Capra',' Fritjof\"',0),(46,' The\"','\"Durant',' Will\"',0),(47,'\"Deshpande',' P L\"','fiction',205),(48,'\"Steinbeck',' John\"','fiction',196),(49,'\"Steinbeck',' John\"','nonfiction',196),(50,' The\"','\"Steinbeck',' John\"',0),(51,' The\"','\"Grisham',' John\"',0),(52,'\"Naipaul',' V. S.\"','fiction',196),(53,'\"Heller',' Joseph\"','fiction',178),(54,' The\"','BBC','nonfiction',178),(55,'\"Dylan',' Bob\"','nonfiction',197),(56,'\"Gupta',' Madan\"','data_science',242),(57,'\"Stonier',' Alfred\"','economics',242),(58,'\"Greene',' W. H.\"','economics',242),(59,'\"Bradsky',' Gary\"','data_science',232),(60,'\"Tanenbaum',' Andrew\"','computer_science',235),(61,' A Modern Approach\"','\"Forsyth',' David\"',0),(62,'\"Taub',' Schilling\"','computer_science',240),(63,'\"Kanetkar',' Yashwant\"','computer_science',213),(64,' The\"','\"Stroud',' Jonathan\"',0),(65,'\"Dostoevsky',' Fyodor\"','fiction',180),(66,'\"Brown',' Dan\"','fiction',178),(67,' The\"','\"Sen',' Amartya\"',0),(68,'\"Ghosh',' Amitav\"','fiction',197),(69,' The\"','\"Sen',' Amartya\"',0),(70,' A\"','\"Hansberry',' Lorraine\"',0),(71,'\"Woodward',' Bob\"','history',177),(72,' A\"','\"Archer',' Jeffery\"',0),(73,'\"Nayar',' Kuldip\"','history',216),(74,'\"Deshpande',' Sunita\"','nonfiction',213),(75,' The\"','\"Dalrymple',' William\"',0),(76,' Vol 39 No. 1\"','Various','economics',235),(77,'\"Deshpande',' P L\"','nonfiction',213),(78,'\"Deshpande',' P L\"','nonfiction',212),(79,'\"Deshpande',' P L\"','nonfiction',212),(80,'\"Garg',' Sanjay\"','fiction',221),(81,'','nonfiction','222',0),(82,'\"Kale',' V P\"','nonfiction',213),(83,'\"Tharoor',' Shashi\"','history',198),(84,' The\"','','history',210),(85,' The\"','\"Tharoor',' Shashi\"',0),(86,'\"Lapierre',' Dominique\"','history',217),(87,' The\"','\"Lapierre',' Dominique\"',0),(88,'\"Lapierre',' Dominique\"','history',167),(89,' The\"','\"Steinbeck',' John\"',0),(90,'\"Russell',' Bertrand\"','philosophy',203),(91,'\"Harris',' Sam\"','philosophy',203),(92,'\"Tharoor',' Shashi\"','nonfiction',206),(93,' The\"','\"Gardner',' Earle Stanley\"',0),(94,' The\"','\"Hawking',' Stephen\"',0),(95,'\"Drucker',' Peter\"','economics',176),(96,'\"Bodanis',' David\"','science',201),(97,' The\"','\"Hugo',' Victor\"',0),(98,'\"Steinbeck',' John\"','fiction',175),(99,' The\"','\"Drucker',' Peter\"',0),(100,'\"Gordon',' Richard\"','fiction',179),(101,'\"Orwell',' George\"','nonfiction',179),(102,'\"Sen',' Amartya\"','philosophy',219),(103,'\"Dalrymple',' William\"','history',197),(104,' The\"','','fiction',217),(105,'\"Iacoca',' Lee\"','nonfiction',175),(106,' Vol 3\"','\"Maugham',' William S\"',0),(107,' The\"','\"Forsyth',' Frederick\"',0),(108,'\"Maugham',' William S\"','fiction',160),(109,'\"Pirsig',' Robert\"','philosophy',172),(110,' The\"','\"Fisk',' Robert\"',0),(111,'\"Rand',' Ayn\"','fiction',178),(112,' The\"','\"Aczel',' Amir\"',0),(113,'\"Russell',' Bertrand\"','philosophy',213),(114,'','fiction','215',0),(115,'\"Sen',' Amartya\"','economics',213),(116,'\"Huntington',' Samuel\"','history',228),(117,'\"Capra',' Fritjof\"','nonfiction',197),(118,'\"Bach',' Richard\"','nonfiction',172),(119,'','nonfiction','162',0),(120,'Braithwaite','fiction','197',0),(121,'\"Naipaul',' V S\"','fiction',196),(122,' The\"','\"Nehru',' Jawaharlal\"',0),(123,'\"Deshpande',' P L\"','nonfiction',211),(124,'\"Russell',' Bertrand\"','philosophy',198),(125,' The\"','\"Forsyth',' Frederick\"',0),(126,'\"Woodward',' Bob\"','history',171),(127,'\"Deshpande',' P L\"','nonfiction',214),(128,'\"Durrell',' Gerald\"','fiction',176),(129,' The\"','\"Maugham',' William S\"',0),(130,'','philosophy','162',0),(131,' A\"','\"Wells',' H G\"',0),(132,' The\"','\"Maugham',' William S\"',0),(133,'\"Gordon',' Richard\"','fiction',204),(134,'\"Singh',' Simon\"','science',233),(135,'\"Duda',' Hart\"','data_science',241),(136,'\"Friedman',' Thomas\"','history',202),(137,' The\"','\"Singh',' Simon\"',0),(138,' The\"','\"Fisk',' Robert\"',0),(139,'','comic','257',0),(140,' The\"','','comic',283),(141,'','comic','265',0),(142,'','comic','265',0),(143,'','comic','258',0),(144,' The\"','\"Devlin',' Keith\"',0),(145,'','comic','259',0),(146,'','comic','258',0),(147,'','comic','258',0),(148,'','comic','258',0),(149,' The\"','','comic',258),(150,'','comic','258',0),(151,'','comic','258',0),(152,' A\"','\"Steinbeck',' John\"',0),(153,' The\"','\"Gleick',' James\"',0),(154,' vol 106 No 3\"','','economics',235),(155,'\"Thomas',' Joy\"','data_science',229),(156,'\"Rashid',' Muhammad\"','computer_science',235),(157,'\"Mohan',' Ned\"','computer_science',237),(158,'\"Haykin',' Simon\"','data_science',240),(159,' The\"','\"Steinbeck',' John\"',0),(160,'\"Deshpande',' P L\"','nonfiction',211),(161,'\"Vapnik',' Vladimir\"','data_science',228),(162,'\"Rutherford',' Alex\"','history',180),(163,'\"Rutherford',' Alex\"','history',180),(164,'\"Rutherford',' Alex\"','history',180),(165,'\"Rutherford',' Alex\"','history',180),(166,'\"Rutherford',' Alex\"','history',180),(167,'\"Baz-Zohar',' Michael\"','history',236),(168,'\"Corbett',' Jim\"','nonfiction',223),(20000,'\"Verne',' Jules\"','fiction',190),(20001,'Deshpande P L','fiction','200',0),(20002,'Deshpande P L','fiction','211',0),(20003,'Deshpande P L','fiction','211',0),(20004,'\"Kanetkar',' Yashwant\"','computer_science',213),(20005,' The\"','\"Raymond',' Eric\"',0),(20006,'\"Franco',' Sergio\"','computer_science',240),(20007,'\"Downey',' Allen\"','data_science',230),(20008,' The\"','\"West',' Morris\"',0),(20009,'\"Rand',' Ayn\"','philosophy',203),(20010,'\"Rand',' Ayn\"','philosophy',171),(20011,' The\"','','philosophy',189),(20012,'\"Janert',' Phillip\"','data_science',230),(20013,'\"Sagan',' Carl\"','science',174),(20014,'\"Bell',' E T\"','mathematics',217),(20015,'\"Dawkins',' Richard\"','science',240),(20016,' Judiciary and Democracy\"','\"Ranjan',' Sudhanshu\"',0),(20017,' The\"','Kautiyla','philosophy',214),(20018,'Palkhivala','philosophy','216',0),(20019,'Palkhivala','philosophy','216',0),(20020,' The\"','Sorabjee','nonfiction',217),(20021,'\"Zaidi',' Hussain\"','nonfiction',216),(20022,' Foundation\"','\"Ackroyd',' Peter\"',0),(20023,'\"Dalrymple',' William\"','history',198),(20024,'Nariman','nonfiction','177',0),(20025,'\"Sassoon',' Jean\"','fiction',235),(20026,' The\"','\"Dickinson',' Peter\"',0),(20027,'\"Brown',' Dan\"','fiction',170),(20028,' The\"','','fiction',170),(20029,' The\"','','fiction',170),(20030,' The\"','Machiavelli','philosophy',173),(20031,'\"Huxley',' Aldous\"','fiction',180),(20032,'\"Rowling',' J K\"','fiction',184),(20033,'\"Larsson',' Steig\"','fiction',179),(20034,'\"Larsson',' Steig\"','fiction',179),(20035,'\"Larsson',' Steig\"','fiction',179),(20036,'','comic','270',0),(20037,'','nonfiction','178',0),(20038,'\"Tao',' Terence\"','mathematics',252),(20039,'\"Eddins',' Steve\"','signal_processing',241),(20040,'\"Orwell',' George\"','fiction',180),(20041,' The\"','\"Dostoevsky',' Fyodor\"',0),(20042,' A\"','\"Dickens',' Charles\"',0);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_has_author`
--

DROP TABLE IF EXISTS `book_has_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_has_author` (
  `book_id` int NOT NULL,
  `author_id` int NOT NULL,
  PRIMARY KEY (`book_id`,`author_id`),
  KEY `fk_book_has_author_author1_idx` (`author_id`),
  KEY `fk_book_has_author_book1_idx` (`book_id`),
  CONSTRAINT `fk_book_has_author_author1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`),
  CONSTRAINT `fk_book_has_author_book1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_has_author`
--

LOCK TABLES `book_has_author` WRITE;
/*!40000 ALTER TABLE `book_has_author` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_has_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book_has_register`
--

DROP TABLE IF EXISTS `book_has_register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book_has_register` (
  `book_id` int NOT NULL,
  `register_id` int NOT NULL,
  PRIMARY KEY (`book_id`,`register_id`),
  KEY `fk_book_has_register_register1_idx` (`register_id`),
  KEY `fk_book_has_register_book1_idx` (`book_id`),
  CONSTRAINT `fk_book_has_register_book1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `fk_book_has_register_register1` FOREIGN KEY (`register_id`) REFERENCES `register` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book_has_register`
--

LOCK TABLES `book_has_register` WRITE;
/*!40000 ALTER TABLE `book_has_register` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_has_register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_booking` date NOT NULL,
  `register_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `register_id` (`register_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`register_id`) REFERENCES `register` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  `first_name` varchar(55) DEFAULT NULL,
  `date_birth` date DEFAULT NULL,
  `city` varchar(55) DEFAULT NULL,
  `phone` varchar(55) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `adress` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_begin` date NOT NULL,
  `date_end` date DEFAULT NULL,
  `customer_id` int NOT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `register_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`),
  CONSTRAINT `register_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type`
--

DROP TABLE IF EXISTS `type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type`
--

LOCK TABLES `type` WRITE;
/*!40000 ALTER TABLE `type` DISABLE KEYS */;
/*!40000 ALTER TABLE `type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_has_book`
--

DROP TABLE IF EXISTS `type_has_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_has_book` (
  `type_id` int NOT NULL,
  `book_id` int NOT NULL,
  PRIMARY KEY (`type_id`,`book_id`),
  KEY `fk_type_has_book_book1_idx` (`book_id`),
  KEY `fk_type_has_book_type1_idx` (`type_id`),
  CONSTRAINT `fk_type_has_book_book1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `fk_type_has_book_type1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_has_book`
--

LOCK TABLES `type_has_book` WRITE;
/*!40000 ALTER TABLE `type_has_book` DISABLE KEYS */;
/*!40000 ALTER TABLE `type_has_book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-19 10:54:15
