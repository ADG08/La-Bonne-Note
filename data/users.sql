-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 09 Décembre 2022 à 23:09
-- Version du serveur :  5.7.11
-- Version de PHP :  5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bd_la_bonne_note`
--

-- --------------------------------------------------------

DROP TABLE IF EXISTS `infos`;
DROP TABLE IF EXISTS `users`;



--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `passw` varchar(20) DEFAULT NULL,
  `prof` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Structure de la table `infos`
--

CREATE TABLE `infos` (
  `user_id` int(11) NOT NULL,
  `adresse` varchar(150) DEFAULT NULL,
  `complement` varchar(100) DEFAULT NULL,
  `code` int(5) DEFAULT NULL,
  `naissance` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `nom`, `email`, `passw`, `prof`) VALUES
(1, 'andre', 'andre@gmail.com', 'andre', 1),
(2, 'sofia', 'sofia@gmail.com', 'sofia', 0),
(3, 'bab', 'bab@gmail.com', 'bab', 1),
(4, 'eric', 'eric@gmail.com', 'eric', 0),
(5, 'iyad', 'iyad@gmail.com', 'iyad', 1);

--
-- Contenu de la table `infos`
--

INSERT INTO `infos` (`user_id`, `adresse`, `complement`, `code`, `naissance`) VALUES
(1, '213 rue de aaaaah', '', '75014', '2003-18-03'),
(2, '213 rue de yooo', '2eme etage', '75016', '2003-10-23'),
(3, '213 rue de nooooo', '', '75001', '2003-01-15'),
(4, '213 rue de nowayyy', 'omgg', '75012', '2003-07-06'),
(5, '213 rue de arf', '', '75003', '2002-11-25');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
  
--
-- Index pour la table `users`
--
ALTER TABLE `infos`
  ADD PRIMARY KEY (`user_id`),
  ADD CONSTRAINT `Fk_users_id`
  FOREIGN KEY (`user_id`) 
  REFERENCES `users`(`id`) ON DELETE CASCADE;
  

--
-- AUTO_INCREMENT pour les tables exportées
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

