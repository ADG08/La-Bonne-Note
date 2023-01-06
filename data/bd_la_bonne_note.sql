-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 06 Janvier 2023 à 02:55
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

--
-- Contenu de la table `favori`
--

INSERT INTO `favori` (`IdProf`, `IdEleve`) VALUES
(1, 2),
(4, 2);

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

INSERT INTO `infoprof` (`IdProf`, `IdNiveau`, `IdMatiere`) VALUES
(1, 5, 1),
(14, 2, 4),
(15, 6, 3),
(16, 3, 5),
(17, 6, 4),
(18, 5, 1),
(19, 1, 2),
(20, 4, 7),
(21, 3, 1),
(22, 2, 1),
(23, 7, 4),
(24, 7, 9),
(25, 6, 8),
(26, 5, 9),
(27, 1, 8),
(28, 3, 4),
(29, 5, 9),
(30, 3, 5),
(31, 2, 1),
(32, 6, 8),
(33, 7, 3),
(34, 2, 5),
(35, 7, 9),
(36, 7, 3),
(37, 6, 4),
(38, 6, 1),
(39, 3, 1),
(40, 7, 5),
(41, 2, 9),
(42, 4, 2),
(43, 5, 5);

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
(1, '2 Villa de la réunion', '', 15, '2003-08-08', 1),
(2, '2 Villa de la réunion', '', 16, '2003-10-23', 0),
(3, '142 Avenue de versaille', '', 16, '2003-01-01', 1),
(4, 'babville', '', 16, '2003-01-01', 1),
(5, 'tacville', '', 16, '2003-01-01', 0),
(8, '3 rue des jean', '', 75015, '2023-01-26', 0),
(11, '3 rue des janna', '', 75016, '2023-01-26', 1),
(12, '3 rue des janna', '', 75016, '2023-01-26', 1),
(13, '3 rue des janna', '', 75016, '2023-01-26', 0),
(14, '29 Rue Jussieu', '', 75005, '2023-01-10', 1),
(15, '31 Rue de Naples', '', 75008, '2023-01-17', 1),
(16, '3 - 9 Rue du Rhin', '', 75019, '2023-01-09', 1),
(17, 'Rue Yvonne le Tac ', '', 75018, '2023-01-25', 1),
(18, '15 BIS Rue Jean-Baptiste Pigalle', '', 75009, '2023-01-16', 1),
(19, '2-12 Rue Dubrunfaut', '', 75012, '2023-01-25', 1),
(20, '67 Av. d\'Ivry ', '', 75013, '2023-01-01', 1),
(21, '2-18 Rue Georges Braque ', '', 75014, '2023-01-10', 1),
(22, '22 Av. René Coty', '', 75014, '2023-01-09', 1),
(23, 'Sq. de l\'Aide Sociale', '', 75014, '2023-01-10', 1),
(24, '1 Rue Thérèse,  Paris', '', 75001, '2023-01-20', 1),
(25, '9 Rue Dalayrac,  Paris', '', 75002, '2023-01-25', 1),
(26, '108 Av. de Wagram, Paris', '', 75017, '2023-01-03', 1),
(27, '21 Rue Juliette Lamber,  Paris', '', 75017, '2023-01-18', 1),
(28, '10-14 Rue de l\'Abbé Rousselot, Paris', '', 75017, '2023-01-11', 1),
(29, '35-23 Av. Mozart,  Paris', '', 75016, '2023-01-02', 1),
(30, '20 Rue de Passy, Paris', '', 75016, '2023-01-10', 1),
(31, '25 Rue Baudelique, Paris', '', 75018, '2023-01-20', 1),
(32, '4 Rue de Panama, Paris', '', 75018, '2023-01-01', 1),
(33, '6-12 Rue Bridaine, Paris', '', 75017, '2023-01-17', 1),
(34, '18 Rue Emile Landrin, Paris', '', 75020, '2023-01-11', 1),
(35, '10P Rue Monte-Cristo, Paris', '', 75020, '2023-01-27', 1),
(36, 'Bd de Picpus, Paris', '', 75012, '2023-01-17', 1),
(37, 'Rue Louis Braille, Paris', '', 75012, '2023-01-14', 1),
(38, '2 Rue Clisson, Paris', '', 75013, '2023-01-19', 1),
(39, '72-74 Av. Edison,  Paris', '', 75013, '2023-01-28', 1),
(40, 'Rue Martel, Paris', '', 75010, '2023-01-02', 1),
(41, '11 Rue Choron, Paris', '', 75009, '2023-01-30', 1),
(42, '3 Rue de Courcelles, Paris', '', 75008, '2022-10-18', 1),
(43, '11-1 Rue Bayard, Paris', '', 75008, '2023-01-04', 1);

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
(1, 2.2672433, 48.8426489),
(3, 2.2665383, 48.8416802),
(4, 2.2665383, 48.8426489),
(14, 2.3538646, 48.8468178),
(15, 2.3185926, 48.8795143),
(16, 2.3819641, 48.8836023),
(17, 2.3398077, 48.8841733),
(18, 2.3345281, 48.880076),
(19, 2.3906271, 48.8402027),
(20, 2.3642439, 48.8239258),
(21, 2.3354431, 48.8232344),
(22, 2.3340697, 48.8292455),
(23, 2.3243549, 48.8337465),
(24, 2.3364376, 48.8656885),
(25, 2.335152, 48.8678056),
(26, 2.3022294, 48.8833522),
(27, 2.30466, 48.888677),
(28, 2.3007158, 48.8893943),
(29, 2.2735843, 48.8576482),
(30, 2.2821174, 48.8582046),
(31, 2.3475315, 48.8931537),
(32, 2.3529814, 48.8876962),
(33, 2.3197421, 48.8855868),
(34, 2.3988731, 48.8639237),
(35, 2.3980366, 48.8555082),
(36, 2.4001536, 48.846518),
(37, 2.4024188, 48.8397191),
(38, 2.3692064, 48.8332093),
(39, 2.3603223, 48.8292821),
(40, 2.3534351, 48.8747172),
(41, 2.3405549, 48.8775588),
(42, 2.3111198, 48.8733402),
(43, 2.3077234, 48.8675343);

-- --------------------------------------------------------

--
-- Structure de la table `matière`
--

CREATE TABLE `matière` (
  `IdMatiere` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `matière`
--

INSERT INTO `matière` (`IdMatiere`, `Nom`) VALUES
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
  `Nom` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `niveau`
--

INSERT INTO `niveau` (`IdNiveau`, `Nom`) VALUES
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

--
-- Contenu de la table `potentiel`
--

INSERT INTO `potentiel` (`IdProf`, `IdEleve`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `suivi`
--

CREATE TABLE `suivi` (
  `IdProf` int(11) NOT NULL,
  `IdEleve` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `suivi`
--

INSERT INTO `suivi` (`IdProf`, `IdEleve`) VALUES
(3, 2);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `IdUtilisateur` int(11) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prénom` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`IdUtilisateur`, `Nom`, `Prénom`, `Email`, `Password`) VALUES
(1, 'Domingues Ramos', 'André', 'andre@gmail.com', 'andre'),
(2, 'Hazami', 'Sofia', 'sofia@gmail.com', 'sofia'),
(3, 'Isk', 'Bab', 'bab@gmail.com', 'bab'),
(4, 'test1', 't', 't@gmail.com', 't'),
(5, 'tac', 'tac', 'tac@gmail.com', 'tac'),
(6, 'bla', 'blo', 'blo@gmail.com', '12345678'),
(7, 'blazenfbzkjebvk', 'bloaefa', 'blocab@gmail.com', '123456789'),
(8, 'Moustache', 'Jean', 'jean@gmail.com', 'jeanjean'),
(9, 'Moustache', 'Jean', 'jean@gmail.com', 'jeanjean'),
(10, 'Moustache', 'Jean', 'jean@gmail.com', 'jeanjean'),
(11, 'Moustache', 'Janna', 'janna@gmail.com', 'jannajanna'),
(12, 'Moustache', 'joaenfi', 'joaenfi@gmail.com', 'tructruc'),
(13, 'Moustache', 'paf', 'paf@gmail.com', 'pafpafpaf'),
(14, 'Bolt', 'Husain', 'hushus@bolt.com', 'hushus'),
(15, 'Hehe', 'Maissa', 'maissa.hehe@gmail.fr', 'maimai'),
(16, 'Ait babe', 'Imene', 'mimi.imene@hotmail.fr', 'mimi95'),
(17, 'Chakchak', 'Sabrina', 'sab.chak@outlook.fr', 'sabisab'),
(18, 'Yalap', 'Lae', 'lae.ylp@gmail.com', 'karma'),
(19, 'Yalap', 'Alexis', 'alexis.ylp@gmail.fr', 'bagra'),
(20, 'Lapert', 'Cristina', 'crist.lpt@hotmail.com', 'cricri'),
(21, 'Lapert', 'Christian', 'hahaha@gmail.fr', 'lolol'),
(22, 'Isshak', 'Venusia', 'venus.isk@gmail.com', 'venus3007'),
(23, 'Pretty ', 'Sug', 'sugsug@hotmail.fr', 'blg'),
(24, 'Hey', 'Hoy', 'itsViernes@gmail.com', 'espagnol'),
(25, 'Doe', 'Jhon', 'john.doe@gmail.com', 'jojo'),
(26, 'Mugiwara', 'Luffy', 'chapeaudepaille@outlook.fr', 'gomugomu'),
(27, 'Mugiwara', 'Franky', 'suuuuper@super.fr', 'supeuuuuuuuur'),
(28, 'Puit', 'Florence', 'flopuit@omg.fr', 'floflo'),
(29, 'Yanan', 'Maryline', 'mary.yn@gmail.com', 'pomme'),
(30, 'Yalap', 'Sandra', 'sand@hotmail.fr', 'amis'),
(31, 'Dupont', 'Marie', 'mariedupee@gmail.com', 'marie'),
(32, 'Lapeyre', 'Henri', 'hanifi@gmail.fr', 'hanif'),
(33, 'Yalap', 'Henri', 'hurmuz@outlook.com', 'hurmuz'),
(34, 'Piedoux', 'Coralie', 'coco@channel.fr', 'coco'),
(35, 'Yeay', 'Adil', 'joyadil@gmail.fr', 'adix'),
(36, 'Douni', 'Demba', 'dems@hotmail.com', 'demsladebrouille'),
(37, 'Lapeyre', 'Mathias', 'mat@gmail.com', 'donjuan'),
(38, 'Uludere', 'Turkia', 'turkkk@gmail.com', 'tamam'),
(39, 'Prota', 'Lisbonna', 'obrigado@gmail.com', 'obrigado'),
(40, 'Giroud', 'Olivier', 'oli@giroud.fr', 'copadelmundo'),
(41, 'Isshak', 'David', 'geek@gmail.com', 'bgbg'),
(42, 'Sannn', 'Sivendigha', 'siven@gmail.com', 'old'),
(43, 'Mamie', 'Rosé', 'labest@hotmail.fr', 'voisinerorooo');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `favori`
--
ALTER TABLE `favori`
  ADD PRIMARY KEY (`IdProf`,`IdEleve`);

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
  ADD PRIMARY KEY (`IdProf`,`IdEleve`);

--
-- Index pour la table `suivi`
--
ALTER TABLE `suivi`
  ADD PRIMARY KEY (`IdProf`,`IdEleve`);

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
  MODIFY `IdUtilisateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `infosup`
--
ALTER TABLE `infosup`
  ADD CONSTRAINT `Fk_InfoSup_IdUtilisateur` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateurs` (`IdUtilisateur`);

--
-- Contraintes pour la table `localisation`
--
ALTER TABLE `localisation`
  ADD CONSTRAINT `Fk_IdUtilisateur` FOREIGN KEY (`IdUtilisateur`) REFERENCES `utilisateurs` (`IdUtilisateur`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
