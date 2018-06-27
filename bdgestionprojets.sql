-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 27 juin 2018 à 21:59
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
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `id` int(50) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`id`, `libelle`, `contenu`) VALUES
(1, 'Le HTML', 'C\'est un truc qui sert à faire des balises plutôt mignonnes.'),
(2, 'Le PHP', 'Blup !');

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
(4, 'La couleur du CSS est la même que celle du dauphin..', 2),
(5, 'Le CSS est compagnon du Html dans la forme !', 2),
(6, 'Le compagnon du Html est un superbe designer !', 2),
(7, 'Je suis orange et je crée la structure des pages..', 1),
(8, 'Le HTML est un compagnon du Css', 1),
(9, 'Le HTML est de forme pentagonal', 1),
(10, 'J\'aime appeler le JAVA Polux!', 4),
(11, 'Polux aime le café..', 4),
(12, 'Rouge est le café..', 4),
(13, 'Le PHP est bleu !', 3),
(14, 'PHP est le tatouage de l\'éléphant', 3),
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
('admin@simpleduc.org', 1),
('azeo@zk', 8),
('blup@bl.fr', 8),
('matteo@test.com', 8),
('test2@simpleduc.org', 8),
('test@simpleduc.org', 8),
('test@test.fr', 8);

-- --------------------------------------------------------

--
-- Structure de la table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `idTechnologie` int(11) NOT NULL,
  `idBonneReponse` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `question`
--

INSERT INTO `question` (`id`, `libelle`, `idTechnologie`, `idBonneReponse`) VALUES
(1, 'Que veut dire HTML ?', 1, 1),
(2, 'Quel est le logo correspondant ?', 1, 9),
(3, 'A quoi sert ce langage ?', 1, 5),
(4, 'Que veut dire CSS ?', 2, 12),
(5, 'Quel est le logo correspondant ?', 2, 14),
(6, 'A quoi sert le CSS ?', 2, 15),
(7, 'Que veut dire JAVA ?', 4, 19),
(8, 'Quel est le logo correspondant ?', 4, 23),
(9, 'A quoi sert ce langage ?', 4, 25),
(10, 'Que veut dire PHP ?', 3, 30),
(11, 'Quel est le logo correspondant ?', 3, 32),
(12, 'A quoi sert ce langage ?', 3, 36),
(13, 'Quel est le bon nom de ce langage ?', 5, 50),
(14, 'Quel est le logo correspondant ?', 5, 53),
(15, 'A quoi sert Angular ?', 5, 54),
(16, 'Que veut dire SQL ?', 6, 61),
(17, 'Quel est le logo correspondant ?', 6, 62),
(18, 'A quoi sert ce langage ?', 6, 65),
(19, 'A quoi correspond Python ?', 7, 69),
(20, 'Quel est le logo correspondant ?', 7, 71),
(21, 'A quoi sert ce langage ?', 7, 75);

-- --------------------------------------------------------

--
-- Structure de la table `reponse`
--

CREATE TABLE `reponse` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `idQuestion` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reponse`
--

INSERT INTO `reponse` (`id`, `libelle`, `idQuestion`, `Type`) VALUES
(1, 'HyperText Markup Language', 1, 'nom'),
(2, 'How To Make Lasagna', 1, 'nom'),
(3, 'Holistic Technical Method Library', 1, 'nom'),
(4, 'Hyper Text Making Language', 1, 'nom'),
(5, 'A mettre en forme des pages web', 3, 'description'),
(6, 'A ajouter du style à une page web', 3, 'description'),
(7, 'A créer des jeux vidéos', 3, 'description'),
(8, 'A executer du code Python', 3, 'description'),
(9, 'html.png', 2, 'logo'),
(10, 'Computer Style Sheets', 4, 'nom'),
(11, 'Choucroute et Saucisse d\'Alsace', 4, 'nom'),
(12, 'Cascading Style Sheets', 4, 'nom'),
(13, 'Create Simple Samples', 4, 'nom'),
(14, 'css.png', 5, 'logo'),
(15, 'A ajouter du style aux pages web', 6, 'description'),
(16, 'A insérer du contenu dans une page internet', 6, 'description'),
(17, 'A réaliser des pages dynamiques', 6, 'description'),
(18, 'A faire de jolis dégradés de couleurs', 6, 'description'),
(19, 'En argot américain, il signifie café', 7, 'nom'),
(20, 'Une île en Indonésie', 7, 'nom'),
(21, 'Une danse', 7, 'nom'),
(22, 'Un ordinateur', 7, 'nom'),
(23, 'java.png', 8, 'logo'),
(24, 'C\'est un langage de programmation utilisé pour créer des pages web', 9, 'description'),
(25, 'C\'est un langage de programmation orienté objet', 9, 'description'),
(26, 'Il est utilisé pour programmer des cafetières', 9, 'description'),
(27, 'Il est utilisé pour faire le design des pages Web', 9, 'description'),
(28, 'Page Helper Process', 10, 'nom'),
(29, 'Personnal HyperText Processor', 10, 'nom'),
(30, 'HyperText Preprocessor', 10, 'nom'),
(31, 'Private Home Page', 10, 'nom'),
(32, 'php.png', 11, 'logo'),
(33, 'A traiter des informations côté client', 12, 'description'),
(34, 'A faire fonctionner Facebook', 12, 'description'),
(35, 'A ajouter du style sur une page web', 12, 'description'),
(36, 'Généralement il sert à traiter des informations de formulaires ou de base de données côté serveur', 12, 'description'),
(49, 'Engulaire', 13, 'nom'),
(50, 'Angular', 13, 'nom'),
(51, 'Angulair', 13, 'nom'),
(52, 'Langular', 13, 'nom'),
(53, 'angularjs.png', 14, 'logo'),
(54, 'Créer facilement des applications web avec une navigation côté client', 15, 'description'),
(55, 'Générer des applications lourdes', 15, 'description'),
(56, 'Traiter des informations venant de la base de données', 15, 'description'),
(57, 'Ne pas avoir à utiliser la logique MVC', 15, 'description'),
(58, 'Simple Quite Language', 16, 'nom'),
(59, 'Structured Question Language', 16, 'nom'),
(60, 'Strong Question Language', 16, 'nom'),
(61, 'Structured Query Language', 16, 'nom'),
(62, 'sql.png', 17, 'logo'),
(63, 'A faciliter la navigation que les applications web', 18, 'description'),
(64, 'A voler les données des utilisateurs de ce site', 18, 'description'),
(65, 'Exploiter des bases de données', 18, 'description'),
(66, 'Créer des pages web', 18, 'description'),
(67, 'La constellation du dragon', 19, 'nom'),
(68, 'Un monstrueux serpent', 19, 'nom'),
(69, 'Un langage de programmation interprété', 19, 'nom'),
(70, 'L\'idole des serpentard', 19, 'nom'),
(71, 'python.png', 20, 'logo'),
(72, 'Apprendre à parler le fourchelangue', 21, 'description'),
(73, 'Communiquer avec des bases de données', 21, 'description'),
(74, 'Créer des applications web', 21, 'description'),
(75, 'Créer des programmes simples ou des progiciels', 21, 'description');

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
(1, 'HTML', 'Le HyperText Markup Language  est un langage permettant de créer le squelette d\'une page web à l\'aide de balises. Celui-ci nous permet d\'écrire de l\'hypertext, d\'où son nom.', 'html.png'),
(2, 'CSS', 'Le Cascading Style Sheets est un langage complémentaire du HTML car il permet de gérer la mise en page d\'un site, son design.', 'css.png'),
(3, 'PHP', 'L\'Hypertext Processor est un langage de programmation libre permettant de créer des pages Web dynamiques et fonctionnant avec la plupart des langages interprétés ( javascript, html…)', 'php.png'),
(4, 'Java', 'Le Java est un langage compilé ayant la particularité de créer des applications facilement portables sur divers systèmes d\'exploitation comme Unix, Mac OS, Windows', 'java.png'),
(5, 'Angular', 'Angular est un framework du langage Javascript. Celui-ci rend le HTML dynamique pour permettre au développeur de créer ses propres balises et attributs. Ce framework pousse le développeur à une création structurée et a pour but d\'apporter un aspect applicatif au front-office.', 'angularjs.png'),
(6, 'SQL', 'Le Structured Query Language est un langage informatique utilisé pour la gestion de base de données. Celui-ci envoie des requêtes à la BDD pour intéragir avec ses informations.', 'sql.png'),
(7, 'Python', 'Le Python est un langage de programmation objet, multi-paradigme et multiplateforme favorisant la programmation structurée, fonctionnelle et objet. Il convient à tous types de développeurs.', 'python.png'),
(8, 'null', '', '');

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
('admin@simpleduc.org', '$2y$10$q8.AZxrDgmrHediCOUPvpOyDJJuOP70041CHa8NYq9QlhTsYiYXjG', 'admin', 'admin'),
('azeo@zk', '$2y$10$NXrIKhL0uLijcTgokuJPEez.I40egYICS5BoCdkVmIaIMkNldAWCq', 'z', 'z'),
('blup@bl.fr', '$2y$10$kWw6PpFVa1gH./sd1oFTP.YCqOMmmuq8aSpl0XIlux5M3EUnHb5SG', 'a', 'a'),
('matteo@test.com', '$2y$10$3VPo3qFj4h/uIXq3Bpycx.qqp4K.xaHwjzvDLnkWzWY4yqoeibEkC', 'test', 'Matteo'),
('test2@simpleduc.org', '$2y$10$Ytl65biwd9NeWk2aZgT9J.Z5cR2QviejK3e3S0kRse/4hZncmamTu', 'test2', 'test2'),
('test@simpleduc.org', '$2y$10$sV5EpXbZ6Bcqm36OlCVWleFWgUO2F6O5rVm2dtrtGrEwtqauK99wy', 'test', 'test'),
('test@test.fr', '$2y$10$7Rqiz/3Zm2fr636NRoVDG.o2HGvW16Nq03gLuTqFEzQtWuLbWe3bO', '1', '1');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `indice`
--
ALTER TABLE `indice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT pour la table `technologie`
--
ALTER TABLE `technologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
