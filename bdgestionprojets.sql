-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 26 juin 2018 à 09:35
-- Version du serveur :  10.1.31-MariaDB
-- Version de PHP :  7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bdgestionprojets`
--

-- --------------------------------------------------------

--
-- Structure de la table `indice`
--

CREATE TABLE `indice` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `idTechno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `indice`
--

INSERT INTO `indice` (`id`, `libelle`, `idTechno`) VALUES
(1, 'Il y a un logo hexagonal s\'appelant Angular…', 5),
(2, 'Le rouge c\'est dynamique, comme Angular !', 5),
(3, 'Angular rime avec rouge non ?', 5),
(4, 'La couleur du Css est la même que celle du dauphin..', 2),
(5, 'Le Css est compagnon du Html dans la forme !', 2),
(6, 'Le compagnon du Html est un superbe designer !', 2),
(7, 'Je suis orange et je crée la structure des pages..', 1),
(8, 'Le HTML est un compagnon du Css', 1),
(9, 'Le HTML est de forme pentagonal', 1),
(10, 'J\'aime appeler le java Polux!', 4),
(11, 'Polux aime le café..', 4),
(12, 'Rouge est le café..', 4),
(13, 'Le Php est bleu !', 3),
(14, 'Php est le tatouage de l\'éléphant', 3),
(15, 'L\'éléphant code des pages Webs dynamiques !', 3),
(16, 'Je porte le nom d\'un serpent', 7),
(17, 'J\'aime les pythons !', 7),
(18, 'Avez-vous déjà vu une croix gammée bleu et jaune? Moi si !', 7),
(19, 'Le SQL est d\'une forme cylindrique', 6),
(20, 'Un cylindre est une représentation de disques de données', 6),
(21, 'J\'aime les cylindre bleu, et vert aussi !', 6),
(22, 'Je m\'appelle Gerafe, tu veux être mon ami ?', NULL),
(23, 'J\'aime le pain à la confiture !', NULL),
(24, 'Quel est le dinosaure le plus sesuel ? Le Tripotanus !', NULL),
(25, 'Qu\'est-ce qu\'un dinosaure qui joue à la loterie ? Un Tirageosaure !', NULL),
(26, 'Comment sais-tu qu\'un dinosaure est caché sous ton lit? Tu as le nez collé au plafond', NULL),
(27, 'Qu’est-ce qu’une maman dinosaure raconte a son bébé dinosaure? Une préhistoire! ', NULL),
(28, 'Pourquoi les dinosaures ne peuvent pas taper des mains ? Parce qu\'ils sont mort idiot !', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `maitrise`
--

CREATE TABLE `maitrise` (
  `idUtilisateur` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `idTechnologie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `maitrise`
--

INSERT INTO `maitrise` (`idUtilisateur`, `idTechnologie`) VALUES
('admin@simpleduc.org', 1);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `idTechnologie` int(11) NOT NULL,
  `idBonneReponse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `id` int(11) NOT NULL,
  `libelle` int(11) NOT NULL,
  `idQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `technologie`
--

CREATE TABLE `technologie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `technologie`
--

INSERT INTO `technologie` (`id`, `libelle`, `description`, `logo`) VALUES
(1, 'html', 'Le HyperText Markup Language  est un langage permettant de créer le squelette d\'une page web à l\'aide de balises. Celui-ci nous permet d\'écrire de l\'hypertext, d\'où son nom.', 'html.png'),
(2, 'css', 'Le Cascading Style Sheets est un langage complémentaire du HTML car il permet de gérer la mise en page d\'un site, son design.', 'css.png'),
(3, 'php', 'L\'Hypertext Processor est un langage de programmation libre permettant de créer des pages Web dynamiques et fonctionnant avec la plupart des langages interprétés ( javascript, html…)', 'php.png'),
(4, 'java', 'Le Java est un langage compilé ayant la particularité de créer des applications facilement portables sur divers systèmes d\'exploitation comme Unix, Mac OS, Windows', 'java.png'),
(5, 'angular', 'Angular est un framework du langage Javascript. Celui-ci rend le HTML dynamique pour permettre au développeur de créer ses propres balises et attributs. Ce framework pousse le développeur à une création structurée et a pour but d\'apporter un aspect applicatif au front-office.', 'angularjs.png'),
(6, 'sql', 'Le Structured Query Language est un langage informatique utilisé pour la gestion de base de données. Celui-ci envoie des requêtes à la BDD pour intéragir avec ses informations.', 'java.png'),
(7, 'python', 'Le python est un langage de programmation objet, multi-paradigme et multiplateforme favorisant la programmation structurée, fonctionnelle et objet. Il convient à tous types de développeurs.', 'python.png');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `email` varchar(100) NOT NULL,
  `mdp` varchar(256) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`email`, `mdp`, `nom`, `prenom`) VALUES
('admin@simpleduc.org', '$2y$10$q8.AZxrDgmrHediCOUPvpOyDJJuOP70041CHa8NYq9QlhTsYiYXjG', 'admin', 'admin');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `indice`
--
ALTER TABLE `indice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `techno` (`idTechno`);

--
-- Index pour la table `maitrise`
--
ALTER TABLE `maitrise`
  ADD PRIMARY KEY (`idUtilisateur`,`idTechnologie`) USING BTREE,
  ADD KEY `maitrise2` (`idTechnologie`);

--
-- Index pour la table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTechnologie` (`idTechnologie`),
  ADD KEY `idBonneReponse` (`idBonneReponse`);

--
-- Index pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idQuestion` (`idQuestion`);

--
-- Index pour la table `technologie`
--
ALTER TABLE `technologie`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `indice`
--
ALTER TABLE `indice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `technologie`
--
ALTER TABLE `technologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `indice`
--
ALTER TABLE `indice`
  ADD CONSTRAINT `techno` FOREIGN KEY (`idTechno`) REFERENCES `technologie` (`id`);

--
-- Contraintes pour la table `maitrise`
--
ALTER TABLE `maitrise`
  ADD CONSTRAINT `maitrise2` FOREIGN KEY (`idTechnologie`) REFERENCES `technologie` (`id`),
  ADD CONSTRAINT `maitriser` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`email`);

--
-- Contraintes pour la table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`idTechnologie`) REFERENCES `technologie` (`id`),
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`idBonneReponse`) REFERENCES `reponse` (`id`);

--
-- Contraintes pour la table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `reponse_ibfk_1` FOREIGN KEY (`idQuestion`) REFERENCES `question` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
