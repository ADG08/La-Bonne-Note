-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 08 Janvier 2023 à 22:10
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

--
-- Contenu de la table `infoprof`
--

INSERT INTO `infoprof` (`IdProf`, `IdMatiere`, `IdNiveau`) VALUES
(1, 2, 3),
(10, 3, 2),
(12, 2, 7),
(13, 9, 7),
(15, 6, 3),
(16, 7, 5),
(17, 8, 3),
(19, 1, 7),
(20, 4, 1),
(22, 3, 3),
(24, 8, 7),
(25, 2, 4),
(26, 1, 1),
(27, 7, 4),
(28, 9, 6),
(30, 5, 3),
(31, 4, 3),
(32, 3, 5),
(33, 8, 5),
(34, 2, 5),
(35, 1, 6),
(36, 6, 5),
(37, 6, 5),
(39, 3, 2),
(40, 6, 1),
(41, 7, 6),
(42, 4, 6),
(43, 8, 3),
(44, 5, 3),
(45, 1, 7),
(46, 7, 4),
(48, 7, 1),
(49, 5, 1);

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

--
-- Contenu de la table `infosup`
--

INSERT INTO `infosup` (`IdUtilisateur`, `Adresse`, `Complément`, `Arrondissement`, `Naissance`, `Prof`) VALUES
(1, '14 Rue de l\'Echiquier', '', 10, '2003-03-29', 1),
(8, '130 Rue Saint-Maur', '', 11, '2003-08-27', 0),
(10, '28 Rue de la Croix-Nivert', '', 15, '2001-11-22', 1),
(12, '11 Rue Saint-Dominique', '', 7, '1986-01-25', 1),
(13, '35 Rue de la Pompe', '', 16, '2001-06-04', 1),
(15, '11 rue de la Ferronnerie', '', 1, '2003-02-22', 1),
(16, '170 avenue de Versailles', '', 16, '2003-03-27', 1),
(17, '29 rue de Saussure', '', 17, '2001-06-29', 1),
(19, '18 Rue Portefoin', '', 3, '1996-03-10', 1),
(20, '22 Rue de Rivoli', '', 4, '1994-11-26', 1),
(22, '34 Rue de la Montagne Ste Geneviève', '', 5, '2001-05-13', 1),
(26, '74 Av. des Champs-Élysées', '', 8, '1984-09-28', 1),
(27, '72 Av. des Champs-Élysées', '', 8, '2001-06-08', 1),
(28, '84 Rue La Fayette', '', 9, '1989-08-26', 1),
(30, '90 Rue de Provence', '', 9, '2001-01-02', 1),
(31, '92 Rue du Faubourg Saint-Denis', '', 10, '2003-03-03', 1),
(32, '102 Rue de la Roquette', '', 11, '1995-05-02', 1),
(33, '108 Rue de Charonne', '', 11, '2001-11-11', 1),
(34, '122 Rue de Picpus', '', 12, '1978-12-12', 1),
(35, '128 Rue de Reuilly', '', 12, '2001-12-31', 1),
(36, '122 Rue de Tolbiac', '', 13, '1987-02-13', 1),
(37, '37 Av. des Gobelins', '', 13, '1998-01-02', 1),
(39, '107 Av. du Maine', '', 14, '1987-05-03', 1),
(40, '34 Rue du Texel', '', 14, '2002-03-02', 1),
(41, '150 Avenue Victor Hugo', '', 16, '2001-06-03', 1),
(42, '5 Avenue de Clichy', '', 17, '2003-11-05', 1),
(43, '17 Rue des Dames', '', 17, '1985-04-17', 1),
(44, '53 Rue Marcadet', '', 18, '2003-02-18', 1),
(45, '62 Av. de Clichy', '', 18, '2003-04-03', 1),
(46, '93 Av. de Flandre', '', 19, '1998-08-04', 1),
(48, '111 Rue de Ménilmontant', '', 20, '2002-12-20', 1),
(49, '22 Rue Lisfranc', '', 20, '1992-12-12', 1);

-- --------------------------------------------------------

--
-- Structure de la table `localisation`
--

CREATE TABLE `localisation` (
  `IdUtilisateur` int(11) NOT NULL,
  `Longitude` double NOT NULL,
  `Latitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `localisation`
--

INSERT INTO `localisation` (`IdUtilisateur`, `Longitude`, `Latitude`) VALUES
(1, 2.3518992, 48.8712787),
(8, 2.3753877, 48.8679902),
(10, 2.2994636, 48.8465706),
(12, 2.3224187, 48.858257),
(13, 2.2751738, 48.8609804),
(15, 2.3477121, 48.8601892),
(16, 2.2632406, 48.8399743),
(17, 2.3159672, 48.8843453),
(19, 2.359221, 48.8640865),
(20, 2.3586033, 48.8559138),
(22, 2.3484541, 48.8480246),
(24, -1.6668262, 48.0004722),
(25, 1.6861871306835299, 46.82245),
(26, 2.3046178, 48.8710846),
(27, 2.3048562, 48.8710085),
(28, 2.3476023, 48.8767404),
(30, 2.3302663, 48.8742866),
(31, 2.3554058, 48.8742185),
(32, 2.3799689, 48.8576202),
(33, 2.3861606, 48.8548973),
(34, 2.4018854, 48.8377505),
(35, 2.3952481, 48.8400501),
(36, 2.3603374, 48.8262847),
(37, 2.3528543, 48.8357898),
(39, 2.3236437, 48.8363464),
(40, 2.32064, 48.8359737),
(41, 2.2785141, 48.866903),
(42, 2.3269711, 48.8841561),
(43, 2.324902, 48.8848298),
(44, 2.3503182, 48.8904951),
(45, 2.3258044, 48.8873664),
(46, 2.3751994, 48.8897749),
(48, 2.3922269, 48.869328),
(49, 2.4033263, 48.8622924);

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
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`IdUtilisateur`, `Nom`, `Prénom`, `Email`, `Password`) VALUES
(1, 'Dupont', 'Marie', 'marie.dupont@gmail.com', '65c805e125a9bd970e75049a33a397494e20df2dce2b160257d97d97f15960b6'),
(8, 'Thevenet', 'Matteo', 'matteo@gmail.com', '1a866974653f747ae473df79f0f0d33e2f6c227ee2040d8486e29975f212699d'),
(10, 'Robert', 'Jean', 'jean.robert@gmail.com', '4d279836a2dcc197a882b7e8503fa6d32ff991733467f305ccebd23a2d80b7a3'),
(12, 'Moreau', 'Mathieu', 'mathieu.moreau@gmail.com', '94e6d9b97e34ccb96862a82b2d88e9b40c6cc4e129098f1254b65d4026501e84'),
(13, 'Laforge', 'Chloé', 'chloe.laforge@gmail.com', '27097ec2e1b944b62cfcb546e2ec26d489c6c37e72553d72ce37b53a4b5f87a7'),
(15, 'Lefebre', 'Léa', 'lea.lefebre@gmail.com', 'bc7dc811216398af038b29ced532e21ab403d154935e7eb31fc6ee3965a97369'),
(16, 'Garcia', 'Hugo', 'hugo.garcia@gmail.com', '1a427bb1f77677a17a625d73a3c187e79ac6c1badd52c42f7bc1e0ad96d2d063'),
(17, 'Petit', 'Manon', 'manon.petit@gmail.com', '570b6a2b45a297fe62e5cf04b4c0d0f46dd989d764e57674975765b9574ed506'),
(19, 'Martins', 'Maxime', 'maxime.martins@gmail.com', 'de5750b5231f443a8e3d63890c5da42fcd763633588626a8f4a1ce5725326739'),
(20, 'Clement', 'Henry', 'clement.henry@gmail.com', '5fb5e0a2cff36487904cdf5ff4b8d32f2beafe73c79df66c24d0065648944422'),
(22, 'Fernandes', 'Victor', 'victor.fernandes@gmail.com', '9a8db810e3f82b597ad96355352a1f4935dd955fa2676b7fdf0cc061c9bc9889'),
(24, 'Vidal', 'Paul', 'paul.vidal@gmail.com', 'a80c92d287e9e2ef07a2b934578b9bb7bd7ebc029f172e423706b54b4f6e2a26'),
(25, 'Boulanger', 'Lucie', 'lucie.boulanger@gmail.com', 'de71335d89151d99ef02b169b9407f1f767ff23cb4b5709abdd1647cb9f2854d'),
(26, 'Fournier', 'Theo', 'theo.fournier@gmail.com', '0cd85d67662b20723a89ea6f63ebaa14dd12fc791c45b331754781858f1829b1'),
(27, 'Guillaume', 'Lea', 'lea.guillaume@gmail.com', '0b525a6c70f2943ed67d2a53fa8e459deebea9eaf950a95af2f48bacc121f8fe'),
(28, 'Roussel', 'Juliette', 'juliette.roussel@gmail.com', 'eeda94e41a6c9f8f7cdd278e63ba04d22aec774320554061034ce767fc826dc0'),
(30, 'Blanc', 'Gabriel', 'gabriel.blanc@gmail.com', '1cb50c7e7e3b18cc5f063c267b7ba6bd337f77c26ca2608fc457fa6843b8e16c'),
(31, 'Gagne', 'Rose', 'rose.gagne@gmail.com', '9d49090a810cdec35b6d3b716a86a67ac2a92c92cbcabd5a74feb85295003a83'),
(32, 'Gagnon', 'Lila', 'lila.gagnon@gmail.com', '21b4e76872671d9866ce748aa62a4d0e17ed356cf9ce34633f6a84fed0d9c914'),
(33, 'Delaunay', 'Louis', 'louis.delaunay@gmail.com', '15f5cf374b956e8e5e966cd8d315769dcb95d0d1394bd5211352485649dcec99'),
(34, 'Caron', 'Heloise', 'heloise.caron@gmail.com', '6d6ae881eed067787e428057f12d6138b58fcbbafdf39c1f3f3c0eb35302237f'),
(35, 'Rousseau', 'Marie-Claire', 'marie-claire.rousseau@gmail.com', 'ebf8af82654ac277c5527e6cd6aa0f83c17ce30caa90c76f24024d1db994c783'),
(36, 'Dupuis', 'Paul', 'paul.dupuis@gmail.com', '70b02febee8526a56f1f3c00d541ea20437d360ed9544421b7d795970ddff8f5'),
(37, 'Fernandes', 'Lily', 'lily.fernandes@gmail.com', '61e508d19b49d1441b47e55396498e559dc69f340b09206dd0da524b80d78de6'),
(39, 'Bourgy', 'Jean', 'jean.bourgy@gmail.com', 'f32b750036d9bd5cccafff678a55ffd0e5be02744eaadf1602d60c799925f3f9'),
(40, 'Bernard', 'Thomas', 'thomas.bernard@gmail.com', '576242e9c4fde7b69fcdb6257c6f2acf4e5675e87d96a6465fe1371aab9e4b31'),
(41, 'Roussel', 'Camille', 'camille.roussel@gmail.com', '255abe03d7828a95ab8796d71355d1b667e7c6f0a23948ac93b2cb945db5b59d'),
(42, 'Didier', 'Eric', 'eric.didier@gmail.com', '7bb5b537efd4c3160c59171375269dbc5885a0212fdeb87d302e78e6f469dc73'),
(43, 'Wu', 'Patrick', 'patrick.wu@gmail.com', 'a79fa28f9726d234be596496f9cd8117f366ee0af2bf42dc6b9c492f264d8bbd'),
(44, 'Bernard', 'Claude', 'claude.bernard@gmail.com', '545045aeb5c48dd4976acce0e8f49f268904141936c0d7eecf1576f64261a70d'),
(45, 'Domingues Ramos', 'Andre', 'andre@gmail.com', '784ce902ab1b068f4c8b7b96b03696aa7ebc94efecc6aa0d779efe6a0956b3a0'),
(46, 'Dupont', 'Marc', 'marc.dupont@gmail.com', 'ee25269590054cc04a4bb93cf1dc19144daa0289beddf5fbd2861c739197d374'),
(48, 'Laporte', 'Lucas', 'lucas.laporte@gmail.com', 'd7b47992c105eaab50718ecd70dc485f479f5e5c208219d0eb9709cd580420e5'),
(49, 'Cordier', 'Benoit', 'benoit.cordier@gmail.com', 'a1b4e654a8a60ac94182ca6368dcf9aed8e90da9d020467562111947660f5c6a');

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
  MODIFY `IdNiveau` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `IdUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
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
