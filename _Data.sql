-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 10 avr. 2024 à 09:35
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `agrival`
--

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `idCat` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idCat`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`idCat`, `nom`, `created_at`) VALUES
(1, 'Fruit', '2024-04-10 11:45:38'),
(2, 'Agrume', '2024-04-10 11:45:38'),
(3, 'Legume', '2024-04-10 11:45:38');

-- --------------------------------------------------------

--
-- Structure de la table `conteneurs`
--

DROP TABLE IF EXISTS `conteneurs`;
CREATE TABLE IF NOT EXISTS `conteneurs` (
  `idCont` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacite` int NOT NULL,
  `type` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idCont`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `conteneurs`
--

INSERT INTO `conteneurs` (`idCont`, `nom`, `capacite`, `type`, `created_at`) VALUES
(1, 'C1', 15, 1, '2024-04-10 11:50:27'),
(2, 'C2', 30, 1, '2024-04-10 11:50:27'),
(3, 'C3', 20, 1, '2024-04-10 11:50:27'),
(4, 'C4', 20, 1, '2024-04-10 11:50:27'),
(5, 'R1', 15, 2, '2024-04-10 11:50:27'),
(6, 'R2', 30, 2, '2024-04-10 11:50:27'),
(7, 'R3', 20, 2, '2024-04-10 11:50:27'),
(8, 'R4', 20, 2, '2024-04-10 11:50:27'),
(9, 'B1', 15, 3, '2024-04-10 11:50:27'),
(10, 'B2', 30, 3, '2024-04-10 11:50:27'),
(11, 'B3', 20, 3, '2024-04-10 11:50:27'),
(12, 'B4', 20, 3, '2024-04-10 11:50:27');

-- --------------------------------------------------------

--
-- Structure de la table `destinations`
--

DROP TABLE IF EXISTS `destinations`;
CREATE TABLE IF NOT EXISTS `destinations` (
  `idD` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `LieuD` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idD`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `destinations`
--

INSERT INTO `destinations` (`idD`, `LieuD`) VALUES
(1, 'JB Antsirabe'),
(2, 'Agriman Ambositra'),
(3, 'Agriman Fianarantsoa'),
(4, 'AG Marovoay');

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `historiques`
--

DROP TABLE IF EXISTS `historiques`;
CREATE TABLE IF NOT EXISTS `historiques` (
  `idH` int UNSIGNED NOT NULL AUTO_INCREMENT,
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

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_29_140017_create_destinations_table', 1),
(6, '2024_03_29_140018_create_provenances_table', 1),
(7, '2024_03_29_140025_create_historiques_table', 1),
(8, '2024_03_29_145222_create_produits_table', 1),
(9, '2024_03_29_145223_create_categories_table', 1),
(10, '2024_03_29_145224_create_stockers_table', 1),
(11, '2024_03_29_145225_create_conteneurs_table', 1),
(12, '2024_03_29_145226_create_type_conteneurs_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
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

-- --------------------------------------------------------

--
-- Structure de la table `produits`
--

DROP TABLE IF EXISTS `produits`;
CREATE TABLE IF NOT EXISTS `produits` (
  `idPro` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `libelle` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unite` int NOT NULL,
  `vie` int NOT NULL,
  `qte` int NOT NULL,
  `idCat` int NOT NULL,
  `Qte` int NOT NULL,
  `idTypeCont` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `produits`
--

<<<<<<< HEAD
INSERT INTO `produits` (`idPro`, `libelle`, `photo`, `unite`, `vie`, `idCat`, `Qte`, `idTypeCont`, `created_at`) VALUES
(1, 'Fraise', 'Adams', 12, 12, 3, 12, 3, '2024-04-10 12:10:35'),
(2, 'Orange', 'Jacobi', 16, 10, 1, 26, 2, '2024-04-10 12:10:35'),
(3, 'Banane', 'Ferry', 8, 11, 1, 18, 1, '2024-04-10 12:10:35'),
(4, 'Mandarine', 'Torphy', 7, 12, 3, 21, 2, '2024-04-10 12:10:35'),
(5, 'Tomate', 'Ward', 14, 9, 2, 21, 1, '2024-04-10 12:10:35'),
(6, 'Ananas', 'Parisian', 16, 11, 1, 16, 2, '2024-04-10 12:10:36'),
(7, 'Poire', 'Hansen', 7, 10, 1, 28, 3, '2024-04-10 12:10:36'),
(8, 'Pomme', 'Greenholt', 9, 8, 2, 15, 3, '2024-04-10 12:10:36'),
(9, 'Citron', 'Parisian', 9, 14, 2, 19, 2, '2024-04-10 12:10:36'),
(10, 'Carotte', 'Stehr', 9, 12, 2, 8, 2, '2024-04-10 12:10:36');

-- --------------------------------------------------------
=======
LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1,'Fraise','fraise.jpg',150,10,50,3,1,'2024-04-01 10:02:01'),(2,'Carotte','carotte.jpg',450,90, 150,3,1,'2024-04-01 10:02:01'),(3,'Vanille','vanille.jpg',1500,650, 80, 1,4,'2024-04-01 10:02:01'),(4,'Poivre','poivre.jpg',450,150, 450,1,4,'2024-04-01 10:02:01'),(5,'Café','café.jpg',250,325, 250, 1,4,'2024-04-01 10:02:01'),(6,'Cacao','cacao.jpg',350,365, 50, 1,4,'2024-04-01 10:02:01'),(7,'Banane','banane.jpg',80,10, 45, 3,1,'2024-04-01 10:02:01');
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
UNLOCK TABLES;
>>>>>>> 5e8239b343e082c885e1191c305871444960573c

--
-- Structure de la table `provenances`
--

DROP TABLE IF EXISTS `provenances`;
CREATE TABLE IF NOT EXISTS `provenances` (
  `idP` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `LieuP` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`idP`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `provenances`
--

INSERT INTO `provenances` (`idP`, `LieuP`) VALUES
(1, 'Manjakandriana'),
(2, 'Ambalavao'),
(3, 'Ambohimahasoa'),
(4, 'Arivonimamo');

-- --------------------------------------------------------

--
-- Structure de la table `stockers`
--

DROP TABLE IF EXISTS `stockers`;
CREATE TABLE IF NOT EXISTS `stockers` (
  `idStock` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `idPro` int NOT NULL,
  `idCont` int NOT NULL,
  `idPr` int NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quantite` int NOT NULL,
  `vie` int NOT NULL,
  PRIMARY KEY (`idStock`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `stockers`
--

INSERT INTO `stockers` (`idStock`, `idPro`, `idCont`, `idPr`, `date`, `quantite`, `vie`) VALUES
(1, 9, 12, 2, '1973-02-17 09:59:24', 5, 1),
(2, 10, 12, 1, '2006-10-07 12:12:33', 5, 1),
(3, 10, 4, 2, '2017-05-06 14:35:23', 5, 1),
(4, 2, 4, 1, '2013-07-05 14:24:39', 4, 2),
(5, 7, 9, 3, '2006-12-14 18:40:27', 1, 3),
(6, 7, 1, 3, '2000-10-17 20:04:51', 4, 1),
(7, 10, 3, 1, '2024-03-24 03:42:59', 5, 2),
(8, 1, 4, 1, '1973-05-03 02:37:13', 2, 3),
(9, 2, 1, 2, '1993-03-10 15:55:45', 1, 2),
(10, 4, 11, 3, '1988-09-06 21:27:45', 2, 2),
(11, 1, 7, 1, '2015-06-27 20:36:26', 4, 3),
(12, 5, 3, 2, '2007-03-21 16:03:47', 3, 1),
(13, 2, 7, 3, '1980-07-26 07:11:00', 2, 2),
(14, 6, 1, 3, '1974-07-09 08:37:35', 2, 1),
(15, 10, 9, 4, '1988-07-07 07:03:52', 5, 2),
(16, 8, 12, 3, '2002-12-03 21:36:42', 1, 3),
(17, 7, 3, 3, '2002-07-21 20:53:35', 2, 1),
(18, 6, 12, 4, '1987-07-06 21:52:32', 1, 2),
(19, 5, 7, 4, '1970-07-25 10:41:50', 5, 1),
(20, 4, 5, 4, '1999-04-02 19:28:26', 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `type_conteneurs`
--

DROP TABLE IF EXISTS `type_conteneurs`;
CREATE TABLE IF NOT EXISTS `type_conteneurs` (
  `idType` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idType`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Déchargement des données de la table `type_conteneurs`
--

INSERT INTO `type_conteneurs` (`idType`, `nom`, `created_at`) VALUES
(1, 'Congelateur', '2024-04-10 11:47:47'),
(2, 'Refrigerateur', '2024-04-10 11:47:47'),
(3, 'Box', '2024-04-10 11:47:47');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
