LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,"Sci-Fi"),
(2,"Action"),
(3,'Thriller'),
(4,'Horror'),
(5,'Comedy'),
(6,'Drama'),
(7,'Crime'),
(8,'Fantasy'),
(9,'Adventure'),
(10,'War'),
(11,'Mystery'),
(12,'Family'),
(13,'Music'),
(14,'Romance'),
(15,'Animation'),
(16,'Musical');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;