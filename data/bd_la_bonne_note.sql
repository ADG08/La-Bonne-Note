-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 06 Janvier 2023 à 21:27
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

--
-- Structure de la table `favori`
--

CREATE TABLE `favori` (
  `IdProf` int(11) NOT NULL,
  `IdEleve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `infoprof`
--

CREATE TABLE `infoprof` (
  `IdProf` int(11) NOT NULL,
  `IdNiveau` int(11) NOT NULL,
  `IdMatiere` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `infosup`
--

CREATE TABLE `infosup` (
  `IdUtilisateur` int(11) NOT NULL,
  `Adresse` varchar(50) NOT NULL,
  `Complément` varchar(50) NOT NULL,
  `Arrondissement` int(11) NOT NULL,
  `Naissance` date NOT NULL,
  `Prof` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

CREATE TABLE `localisation` (
  `IdUtilisateur` int(11) NOT NULL,
  `Longitude` double NOT NULL,
  `Latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `matière`
--

CREATE TABLE `matière` (
  `IdMatiere` int(11) NOT NULL,
  `NomMatiere` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `matière`
--

INSERT INTO `matière` (`IdMatiere`, `NomMatiere`) VALUES
(1, 'Math'),
(2, 'Français'),
(3, 'Histoire-Géo'),
(4, 'Anglais'),
(5, 'SVT'),
(6, 'Physique-Chimie'),
(7, 'Espagnol'),
(8, 'Allemand'),
(9, 'Philosophie');

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `IdNiveau` int(11) NOT NULL,
  `NomNiveau` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `niveau`
--

INSERT INTO `niveau` (`IdNiveau`, `NomNiveau`) VALUES
(1, '6eme'),
(2, '5eme'),
(3, '4eme'),
(4, '3eme'),
(5, 'Seconde'),
(6, 'Première'),
(7, 'Terminal');

-- --------------------------------------------------------

--
-- Structure de la table `potentiel`
--

CREATE TABLE `potentiel` (
  `IdProf` int(11) NOT NULL,
  `IdEleve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `suivi`
--

CREATE TABLE `suivi` (
  `IdProf` int(11) NOT NULL,
  `IdEleve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `IdUtilisateur` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prénom` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(100  ) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `favori`
--
ALTER TABLE `favori`
  ADD PRIMARY KEY (`IdProf`,`IdEleve`),
  ADD KEY `IdEleve` (`IdEleve`);

--
-- Index pour la table `infoprof`
--
ALTER TABLE `infoprof`
  ADD PRIMARY KEY (`IdProf`);

--
-- Index pour la table `infosup`
--
ALTER TABLE `infosup`
  ADD PRIMARY KEY (`IdUtilisateur`);

--
-- Index pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD PRIMARY KEY (`IdUtilisateur`);

--
-- Index pour la table `matière`
--
ALTER TABLE `matière`
  ADD PRIMARY KEY (`IdMatiere`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`IdNiveau`);

--
-- Index pour la table `potentiel`
--
ALTER TABLE `potentiel`
  ADD PRIMARY KEY (`IdProf`,`IdEleve`),
  ADD KEY `IdEleve` (`IdEleve`);

--
-- Index pour la table `suivi`
--
ALTER TABLE `suivi`
  ADD PRIMARY KEY (`IdProf`,`IdEleve`),
  ADD KEY `IdEleve` (`IdEleve`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`IdUtilisateur`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `matière`
--
ALTER TABLE `matière`
  MODIFY `IdMatiere` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `IdNiveau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `IdUtilisateur` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `favori`
--
ALTER TABLE `favori`
  ADD CONSTRAINT `favori_ibfk_1` FOREIGN KEY (`IdProf`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favori_ibfk_2` FOREIGN KEY (`IdEleve`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `infoprof`
--
ALTER TABLE `infoprof`
  ADD CONSTRAINT `infoprof_ibfk_1` FOREIGN KEY (`IdProf`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `infosup`
--
ALTER TABLE `infosup`
  ADD CONSTRAINT `infosup_ibfk_1` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD CONSTRAINT `localisation_ibfk_1` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `potentiel`
--
ALTER TABLE `potentiel`
  ADD CONSTRAINT `potentiel_ibfk_1` FOREIGN KEY (`IdProf`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `potentiel_ibfk_2` FOREIGN KEY (`IdEleve`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `suivi`
--
ALTER TABLE `suivi`
  ADD CONSTRAINT `suivi_ibfk_1` FOREIGN KEY (`IdProf`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `suivi_ibfk_2` FOREIGN KEY (`IdEleve`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
