-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: cafe_db
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `item_tab`
--

DROP TABLE IF EXISTS `item_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_tab` (
  `item_code` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(20) NOT NULL,
  `item_price` int NOT NULL,
  `item_stock` int NOT NULL,
  `catagory_code` int NOT NULL,
  PRIMARY KEY (`item_code`),
  KEY `catagory_code_idx` (`catagory_code`),
  CONSTRAINT `catagory_code` FOREIGN KEY (`catagory_code`) REFERENCES `catagory_tab` (`catagory_code`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_tab`
--

LOCK TABLES `item_tab` WRITE;
/*!40000 ALTER TABLE `item_tab` DISABLE KEYS */;
INSERT INTO `item_tab` VALUES (1,'Chocolate Cone',20,12,1),(3,'Venilla cone',10,39,1),(4,'butterscotch cone',20,144,1),(7,'chocobar',15,0,3),(8,'rasberry',20,18,3),(11,'chocochips cone',30,1,1),(12,'Strawberry',20,23,4),(13,'Cococola',20,14,6),(14,'chocobrowny cone',35,144,1),(15,'Venilla Scoop',10,10,4),(16,'chocolate milk shake',50,36,7),(17,'oreo rolles ice',120,42,8),(18,'marbel cake 200ml',200,34,9),(19,'venilla pastry',50,60,10),(20,'mava kulfi',10,42,11),(21,'cola ice loli',5,58,12),(22,'mango',200,45,13),(23,'rajbhog',70,108,15),(24,'strawberry cone',40,55,1),(25,'Blackberry cone',70,60,1),(26,'badam masti cone',30,60,1),(27,'cookies n cream cone',45,60,1),(28,'pista masti cone',40,57,1),(29,'kesar pista cone',40,57,1),(30,'Big Blast Cone',200,57,1),(31,'mango ice sandwitch',50,52,14),(32,'Hazelnut cone',50,60,1),(33,'Gold Chocolate cone',100,60,1);
/*!40000 ALTER TABLE `item_tab` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-21 18:27:57
