-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: travel_rates
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `travel_rate`
--

DROP TABLE IF EXISTS `travel_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `travel_rate` (
  `place_id` int NOT NULL,
  `place_name` varchar(50) NOT NULL,
  `cab_price` int DEFAULT NULL,
  `bus_price` int DEFAULT NULL,
  `flight_price` int DEFAULT NULL,
  `train_price` int DEFAULT NULL,
  PRIMARY KEY (`place_id`),
  UNIQUE KEY `place_name` (`place_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `travel_rate`
--

LOCK TABLES `travel_rate` WRITE;
/*!40000 ALTER TABLE `travel_rate` DISABLE KEYS */;
INSERT INTO `travel_rate` VALUES (1,'Agartala',22000,3000,12000,2000),(2,'Amaravati',18000,NULL,11000,2500),(3,'Bengaluru',22000,3000,10000,2500),(4,'Bhopal',10000,NULL,10000,1000),(5,'Chandigarh',8500,1200,10000,800),(6,'Delhi',6000,400,3000,900),(7,'Ahmedabad',13000,1500,4500,1100),(8,'Hyderbad',14000,NULL,5000,2700),(9,'Kolkata',17000,2000,9000,1800),(10,'Mumbai',12000,3000,6500,1800),(11,'Lucknow',8500,NULL,7500,1000),(12,'Pune',12000,3500,9000,1700),(13,'Chennai',22500,NULL,9000,2000),(14,'Port Blair',NULL,NULL,NULL,12000),(15,'Udupi',22000,NULL,10000,1500),(16,'Udaipur',5500,700,5000,500),(17,'Amritsar',8500,1000,6000,750),(18,'Srinagar',8000,2000,8000,1500),(19,'Vadodara',10000,1000,6000,1500),(20,'Nagpur',10000,NULL,6000,1500),(21,'Goa',17000,3000,7500,2500),(22,'Indore',8000,1200,4500,800),(23,'Manali',11000,1200,NULL,NULL),(24,'Aurangabaad',10500,NULL,5500,1500);
/*!40000 ALTER TABLE `travel_rate` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-20  5:23:37
