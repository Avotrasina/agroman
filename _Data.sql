/**
INSERT INTO `categories` VALUES (1,'Epices','2024-04-01 09:09:53'),(2,'Huiles','2024-04-01 09:09:53'),(3,'Fruits & légumes','2024-04-01 09:09:53');
INSERT INTO `conteneurs` VALUES (1,'R1',150,1,'2024-04-01 09:51:06'),(2,'R3',250,1,'2024-04-01 09:51:06'),(3,'R2',250,1,'2024-04-01 09:51:06'),(4,'R4',450,1,'2024-04-01 09:51:06'),(5,'C3',450,2,'2024-04-01 09:51:06'),(6,'C2',350,2,'2024-04-01 09:51:06'),(7,'C1',350,2,'2024-04-01 09:51:06'),(8,'CF1',1500,3,'2024-04-01 09:51:06'),(9,'CS2',450,4,'2024-04-01 09:51:06'),(10,'CS1',450,4,'2024-04-01 09:51:06');
INSERT INTO `destinations` VALUES (1,'Tiko Madagascar'),(2,'Agrival'),(3,'RefrigePêche'),(4,'JB');
INSERT INTO `produits` VALUES (1,'Fraise','fraise.jpg',150,10,50,3,1,'2024-04-01 10:02:01'),(2,'Carotte','carotte.jpg',450,90, 150,3,1,'2024-04-01 10:02:01'),(3,'Vanille','vanille.jpg',1500,650, 80, 1,4,'2024-04-01 10:02:01'),(4,'Poivre','poivre.jpg',450,150, 450,1,4,'2024-04-01 10:02:01'),(5,'Café','café.jpg',250,325, 250, 1,4,'2024-04-01 10:02:01'),(6,'Cacao','cacao.jpg',350,365, 50, 1,4,'2024-04-01 10:02:01'),(7,'Banane','banane.jpg',80,10, 45, 3,1,'2024-04-01 10:02:01');
INSERT INTO `provenances` VALUES (1,'Antsirabe');
INSERT INTO `stockers` VALUES (1,7,1,1,'2022-05-28 00:00:00',14,12);
INSERT INTO `type_conteneurs` VALUES (1,'Réfrigérateur','2024-04-01 09:13:15'),(2,'Congélateur','2024-04-01 09:13:15'),(3,'Chambre Froide','2024-04-01 09:13:15'),(4,'Chambre de stockage','2024-04-01 09:37:06');




*/




CREATE DATABASE  IF NOT EXISTS `agrival` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `agrival`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: agrival
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `idCat` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idCat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Epices','2024-04-01 09:09:53'),(2,'Huiles','2024-04-01 09:09:53'),(3,'Fruits & légumes','2024-04-01 09:09:53');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conteneurs`
--

DROP TABLE IF EXISTS `conteneurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conteneurs` (
  `idCont` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacite` int NOT NULL,
  `type` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idCont`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conteneurs`
--

LOCK TABLES `conteneurs` WRITE;
/*!40000 ALTER TABLE `conteneurs` DISABLE KEYS */;
INSERT INTO `conteneurs` VALUES (1,'R1',150,1,'2024-04-01 09:51:06'),(2,'R3',250,1,'2024-04-01 09:51:06'),(3,'R2',250,1,'2024-04-01 09:51:06'),(4,'R4',450,1,'2024-04-01 09:51:06'),(5,'C3',450,2,'2024-04-01 09:51:06'),(6,'C2',350,2,'2024-04-01 09:51:06'),(7,'C1',350,2,'2024-04-01 09:51:06'),(8,'CF1',1500,3,'2024-04-01 09:51:06'),(9,'CS2',450,4,'2024-04-01 09:51:06'),(10,'CS1',450,4,'2024-04-01 09:51:06');
/*!40000 ALTER TABLE `conteneurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destinations`
--

DROP TABLE IF EXISTS `destinations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `destinations` (
  `idD` int unsigned NOT NULL AUTO_INCREMENT,
  `LieuD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idD`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destinations`
--

LOCK TABLES `destinations` WRITE;
/*!40000 ALTER TABLE `destinations` DISABLE KEYS */;
INSERT INTO `destinations` VALUES (1,'Tiko Madagascar'),(2,'Agrival'),(3,'RefrigePêche'),(4,'JB');
/*!40000 ALTER TABLE `destinations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historiques`
--

DROP TABLE IF EXISTS `historiques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historiques` (
  `idH` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Produit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Categorie` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unite` int NOT NULL,
  `quantite` int NOT NULL,
  `conteneur` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Lieu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historiques`
--

LOCK TABLES `historiques` WRITE;
/*!40000 ALTER TABLE `historiques` DISABLE KEYS */;
/*!40000 ALTER TABLE `historiques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_03_29_140017_create_destinations_table',1),(6,'2024_03_29_140018_create_provenances_table',1),(7,'2024_03_29_140025_create_historiques_table',1),(8,'2024_03_29_145222_create_produits_table',1),(9,'2024_03_29_145223_create_categories_table',1),(10,'2024_03_29_145224_create_stockers_table',1),(11,'2024_03_29_145225_create_conteneurs_table',1),(12,'2024_03_29_145226_create_type_conteneurs_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produits` (
  `idPro` int unsigned NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unite` int NOT NULL,
  `vie` int NOT NULL,
  `qte` int NOT NULL,
  `idCat` int NOT NULL,
  `idTypeCont` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPro`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1,'Fraise','fraise.jpg',150,10,50,3,1,'2024-04-01 10:02:01'),(2,'Carotte','carotte.jpg',450,90, 150,3,1,'2024-04-01 10:02:01'),(3,'Vanille','vanille.jpg',1500,650, 80, 1,4,'2024-04-01 10:02:01'),(4,'Poivre','poivre.jpg',450,150, 450,1,4,'2024-04-01 10:02:01'),(5,'Café','café.jpg',250,325, 250, 1,4,'2024-04-01 10:02:01'),(6,'Cacao','cacao.jpg',350,365, 50, 1,4,'2024-04-01 10:02:01'),(7,'Banane','banane.jpg',80,10, 45, 3,1,'2024-04-01 10:02:01');
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provenances`
--

DROP TABLE IF EXISTS `provenances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provenances` (
  `idP` int unsigned NOT NULL AUTO_INCREMENT,
  `LieuP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idP`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provenances`
--

LOCK TABLES `provenances` WRITE;
/*!40000 ALTER TABLE `provenances` DISABLE KEYS */;
INSERT INTO `provenances` VALUES (1,'Antsirabe');
/*!40000 ALTER TABLE `provenances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockers`
--

DROP TABLE IF EXISTS `stockers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stockers` (
  `idStock` bigint unsigned NOT NULL AUTO_INCREMENT,
  `idPro` int NOT NULL,
  `idCont` int NOT NULL,
  `idP` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quantite` int NOT NULL,
  `vie` int NOT NULL,
  PRIMARY KEY (`idStock`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockers`
--

LOCK TABLES `stockers` WRITE;
/*!40000 ALTER TABLE `stockers` DISABLE KEYS */;
INSERT INTO `stockers` VALUES (1,7,1,1,'2022-05-28 00:00:00',14,12);
/*!40000 ALTER TABLE `stockers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_conteneurs`
--

DROP TABLE IF EXISTS `type_conteneurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_conteneurs` (
  `idType` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idType`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_conteneurs`
--

LOCK TABLES `type_conteneurs` WRITE;
/*!40000 ALTER TABLE `type_conteneurs` DISABLE KEYS */;
INSERT INTO `type_conteneurs` VALUES (1,'Réfrigérateur','2024-04-01 09:13:15'),(2,'Congélateur','2024-04-01 09:13:15'),(3,'Chambre Froide','2024-04-01 09:13:15'),(4,'Chambre de stockage','2024-04-01 09:37:06');
/*!40000 ALTER TABLE `type_conteneurs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02  9:59:49
