-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 02 nov. 2026 à 16:26
-- Version du serveur : 8.4.7
-- Version de PHP : 8.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mediamarkt`
--

-- --------------------------------------------------------

--
-- Structure de la table `smartphones`
--

DROP TABLE IF EXISTS `smartphones`;
CREATE TABLE IF NOT EXISTS `smartphones` (
  `id_smartphones` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `marque` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_de_sortie` date NOT NULL,
  PRIMARY KEY (`id_smartphones`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `smartphones`
--

INSERT INTO `smartphones` (`id_smartphones`, `nom`, `marque`, `date_de_sortie`) VALUES
(1, 'iPhone 15', 'Apple', '2023-09-22'),
(2, 'Galaxy S24', 'Samsung', '2024-01-31'),
(3, 'Pixel 8', 'Google', '2023-10-12');

-- --------------------------------------------------------

--
-- Structure de la table `tvs`
--

DROP TABLE IF EXISTS `tvs`;
CREATE TABLE IF NOT EXISTS `tvs` (
  `id_tvs` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  `marque` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `taille` int NOT NULL,
  PRIMARY KEY (`id_tvs`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tvs`
--

INSERT INTO `tvs` (`id_tvs`, `nom`, `marque`, `taille`) VALUES
(1, 'LG 4K', 'LG', 55),
(2, 'SAMSUNG 8K', 'Samsung', 65),
(3, 'SONY 2K', 'Sony', 55);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `id_utilisateurs` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `age` int NOT NULL,
  `date_de_naissance` date NOT NULL,
  `adresse` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_utilisateurs`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateurs`, `nom`, `prenom`, `age`, `date_de_naissance`, `adresse`, `email`) VALUES
(1, 'Muhamed', 'Selmani', 24, '2002-03-21', 'Bruxelles', 'muhamed@example.com'),
(2, 'Anne', 'Sophie', 30, '1996-03-18', 'Bruxelles', 'sophie@example.com'),
(3, 'Bernard', 'Arnauld', 22, '2004-02-10', 'Bruxelles', 'thomas@example.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
