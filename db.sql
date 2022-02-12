-- MariaDB dump 10.19  Distrib 10.6.4-MariaDB, for osx10.16 (arm64)
--
-- Host: localhost    Database: blog_post_warmup
-- ------------------------------------------------------
-- Server version	10.6.4-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(200) COLLATE utf8mb4_bin NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (24,'\"Why so serious? Chuck Norris\"','user1','2022-02-11'),(25,'\"Chuck Norris was asked if he would date Rosie O\'Donnell? Chuck said \"I\'d rather shove a lit match up my pee-hole\"','user2','2022-02-11'),(26,'\"Steven Seagal now looks like a beached whale because he put his money on junk food instead of Chuck Norris total-gym.\"','user2','2022-02-11'),(27,'\"Chuck Norris let the dogs out\"','user4','2022-02-11'),(28,'\"As a toddler, Chuck Norris built a fort out of legos. That fort was known as The Alamo.\"','user5','2022-02-11'),(29,'\"Chuck Norris dung glows in the dark and emits a barely audible hum.\"','user6','2022-02-11'),(30,'\"Women line up just for the thrill of giving Chuck Norris a hickey on his hemorrhoids.\"','user7','2022-02-11'),(31,'\"There are no such thing as disabled people; only people who met Chuck Norris and lived.\"','user8','2022-02-11'),(32,'\"Albert Einstein showed that E = mc2. Chuck Norris proved it by splitting an atom through fear.\"','user9','2022-02-11'),(33,'\"Chuck Norris has an uncredited cameo in Predator. His beard plays the jungle.\"','user10','2022-02-11'),(34,'\"Chuck Norris sank the Titanic because it was his nickname.\"','user11','2022-02-11'),(35,'\"Chuck Norris can blow candles back on.\"','user12','2022-02-11'),(36,'\"once, while having sex in a tractor trailer, a drop of Chuck Norris\'s sperm escaped into the motor.....we now know this truck as Optimus Prime!\"','user13','2022-02-11'),(37,'\"Chuck Norris uses pens on Scantron sheets.\"','user14','2022-02-11'),(38,'\"chances are by the time you meet Chuck Norris, you\'ve already been roundhoused.\"','user15','2022-02-11');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'blog_post_warmup'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-11 20:11:22
