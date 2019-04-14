-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  lun. 15 avr. 2019 à 00:01
-- Version du serveur :  10.1.37-MariaDB
-- Version de PHP :  5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `formalab`
--

-- --------------------------------------------------------

--
-- Structure de la table `todos`
--

CREATE TABLE `todos` (
  `IDTODOS` int(11) NOT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `DATEAJOUT` date DEFAULT NULL,
  `DATEFIN` date DEFAULT NULL,
  `COMPLITED` tinyint(1) DEFAULT NULL,
  `IDUSER` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `todos`
--

INSERT INTO `todos` (`IDTODOS`, `DESCRIPTION`, `DATEAJOUT`, `DATEFIN`, `COMPLITED`, `IDUSER`) VALUES
(1, 'kjndokshbdfhsdbbh', NULL, NULL, NULL, NULL),
(2, 'kjndokshbdfhsdbbh', NULL, NULL, NULL, NULL),
(3, 'kjndokshbdfhsdbbh', NULL, NULL, NULL, NULL),
(4, 'ro,elk,er,erl', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `NOM` varchar(255) DEFAULT NULL,
  `PRENOM` varchar(255) DEFAULT NULL,
  `NUMTEL` int(11) DEFAULT NULL,
  `GENRE` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `DATEDENAISSANCE` date DEFAULT NULL,
  `NATIONNALITE` varchar(255) DEFAULT NULL,
  `INTERET` varchar(255) DEFAULT NULL,
  `MDPASSE` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`ID`, `NOM`, `PRENOM`, `NUMTEL`, `GENRE`, `EMAIL`, `DATEDENAISSANCE`, `NATIONNALITE`, `INTERET`, `MDPASSE`) VALUES
(1, 'fghj', 'l;ldsv', 50912130, 'male', 'aymenkefi@gmail.com', '2019-04-12', 'Algerienne', NULL, '123');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`IDTODOS`),
  ADD KEY `fk_IDUSER` (`IDUSER`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `todos`
--
ALTER TABLE `todos`
  MODIFY `IDTODOS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `todos`
--
ALTER TABLE `todos`
  ADD CONSTRAINT `fk_IDUSER` FOREIGN KEY (`IDUSER`) REFERENCES `users` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
