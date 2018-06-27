-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2018 at 09:47 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bdgestionprojets`
--

-- --------------------------------------------------------

--
-- Table structure for table `indice`
--

CREATE TABLE `indice` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `idTechno` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `indice`
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
-- Table structure for table `maitrise`
--

CREATE TABLE `maitrise` (
  `idUtilisateur` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `idTechnologie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `maitrise`
--

INSERT INTO `maitrise` (`idUtilisateur`, `idTechnologie`) VALUES
('admin@simpleduc.org', 1);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `idTechnologie` int(11) NOT NULL,
  `idBonneReponse` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
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
-- Table structure for table `reponse`
--

CREATE TABLE `reponse` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `idQuestion` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reponse`
--

INSERT INTO `reponse` (`id`, `libelle`, `idQuestion`) VALUES
(1, 'HyperText Markup Language', 1),
(2, 'How To Make Lasagna', 1),
(3, 'Holistic Technical Method Library', 1),
(4, 'Hyper Text Making Language', 1),
(5, 'A mettre en forme des pages web', 3),
(6, 'A ajouter du style à une page web', 3),
(7, 'A créer des jeux vidéos', 3),
(8, 'A executer du code Python', 3),
(9, 'html.png', 2),
(10, 'Computer Style Sheets', 4),
(11, 'Choucroute et Saucisse d\'Alsace', 4),
(12, 'Cascading Style Sheets', 4),
(13, 'Create Simple Samples', 4),
(14, 'css.png', 5),
(15, 'A ajouter du style aux pages web', 6),
(16, 'A insérer du contenu dans une page internet', 6),
(17, 'A réaliser des pages dynamiques', 6),
(18, 'A faire de jolis dégradés de couleurs', 6),
(19, 'En argot américain, il signifie café', 7),
(20, 'Une île en Indonésie', 7),
(21, 'Une danse', 7),
(22, 'Un ordinateur', 7),
(23, 'java.png', 8),
(24, 'C\'est un langage de programmation utilisé pour créer des pages web', 9),
(25, 'C\'est un langage de programmation orienté objet', 9),
(26, 'Il est utilisé pour programmer des cafetières', 9),
(27, 'Il est utilisé pour faire le design des pages Web', 9),
(28, 'Page Helper Process', 10),
(29, 'Personnal HyperText Processor', 10),
(30, 'PHP HyperText Preprocessor', 10),
(31, 'Private Home Page', 10),
(32, 'php.png', 11),
(33, 'A traiter des informations côté client', 12),
(34, 'A faire fonctionner Facebook', 12),
(35, 'A ajouter du style sur une page web', 12),
(36, 'Généralement il sert à traiter des informations de formulaires ou de base de données côté serveur', 12),
(49, 'Engulaire', 13),
(50, 'Angular', 13),
(51, 'Angulair', 13),
(52, 'Langular', 13),
(53, 'angularjs.png', 14),
(54, 'Créer facilement des applications web avec une navigation côté client', 15),
(55, 'Générer des applications lourdes', 15),
(56, 'Traiter des informations venant de la base de données', 15),
(57, 'Ne pas avoir à utiliser la logique MVC', 15),
(58, 'Simple Quite Language', 16),
(59, 'Structured Question Language', 16),
(60, 'Strong Question Language', 16),
(61, 'Structured Query Language', 16),
(62, 'sql.png', 17),
(63, 'A faciliter la navigation que les applications web', 18),
(64, 'A voler les données des utilisateurs de ce site', 18),
(65, 'Exploiter des bases de données', 18),
(66, 'Créer des pages web', 18),
(67, 'La constellation du dragon', 19),
(68, 'Un monstrueux serpent', 19),
(69, 'Un langage de programmation interprété', 19),
(70, 'L\'idole des serpentard', 19),
(71, 'python.png', 20),
(72, 'Apprendre à parler le fourchelangue', 21),
(73, 'Communiquer avec des bases de données', 21),
(74, 'Créer des applications web', 21),
(75, 'Créer des programmes simples ou des progiciels', 21);

-- --------------------------------------------------------

--
-- Table structure for table `technologie`
--

CREATE TABLE `technologie` (
  `id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `description` varchar(300) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `technologie`
--

INSERT INTO `technologie` (`id`, `libelle`, `description`, `logo`) VALUES
(1, 'HTML', 'Le HyperText Markup Language  est un langage permettant de créer le squelette d\'une page web à l\'aide de balises. Celui-ci nous permet d\'écrire de l\'hypertext, d\'où son nom.', 'html.png'),
(2, 'CSS', 'Le Cascading Style Sheets est un langage complémentaire du HTML car il permet de gérer la mise en page d\'un site, son design.', 'css.png'),
(3, 'PHP', 'L\'Hypertext Processor est un langage de programmation libre permettant de créer des pages Web dynamiques et fonctionnant avec la plupart des langages interprétés ( javascript, html…)', 'php.png'),
(4, 'Java', 'Le Java est un langage compilé ayant la particularité de créer des applications facilement portables sur divers systèmes d\'exploitation comme Unix, Mac OS, Windows', 'java.png'),
(5, 'Angular', 'Angular est un framework du langage Javascript. Celui-ci rend le HTML dynamique pour permettre au développeur de créer ses propres balises et attributs. Ce framework pousse le développeur à une création structurée et a pour but d\'apporter un aspect applicatif au front-office.', 'angularjs.png'),
(6, 'SQL', 'Le Structured Query Language est un langage informatique utilisé pour la gestion de base de données. Celui-ci envoie des requêtes à la BDD pour intéragir avec ses informations.', 'sql.png'),
(7, 'Python', 'Le Python est un langage de programmation objet, multi-paradigme et multiplateforme favorisant la programmation structurée, fonctionnelle et objet. Il convient à tous types de développeurs.', 'python.png');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `email` varchar(100) NOT NULL,
  `mdp` varchar(256) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`email`, `mdp`, `nom`, `prenom`) VALUES
('admin@simpleduc.org', '$2y$10$q8.AZxrDgmrHediCOUPvpOyDJJuOP70041CHa8NYq9QlhTsYiYXjG', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `indice`
--
ALTER TABLE `indice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `techno` (`idTechno`);

--
-- Indexes for table `maitrise`
--
ALTER TABLE `maitrise`
  ADD PRIMARY KEY (`idUtilisateur`,`idTechnologie`) USING BTREE,
  ADD KEY `maitrise2` (`idTechnologie`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idTechnologie` (`idTechnologie`),
  ADD KEY `idBonneReponse` (`idBonneReponse`);

--
-- Indexes for table `reponse`
--
ALTER TABLE `reponse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idQuestion` (`idQuestion`);

--
-- Indexes for table `technologie`
--
ALTER TABLE `technologie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `indice`
--
ALTER TABLE `indice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `reponse`
--
ALTER TABLE `reponse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `technologie`
--
ALTER TABLE `technologie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `indice`
--
ALTER TABLE `indice`
  ADD CONSTRAINT `techno` FOREIGN KEY (`idTechno`) REFERENCES `technologie` (`id`);

--
-- Constraints for table `maitrise`
--
ALTER TABLE `maitrise`
  ADD CONSTRAINT `maitrise2` FOREIGN KEY (`idTechnologie`) REFERENCES `technologie` (`id`),
  ADD CONSTRAINT `maitriser` FOREIGN KEY (`idUtilisateur`) REFERENCES `utilisateur` (`email`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`idTechnologie`) REFERENCES `technologie` (`id`),
  ADD CONSTRAINT `question_ibfk_2` FOREIGN KEY (`idBonneReponse`) REFERENCES `reponse` (`id`);

--
-- Constraints for table `reponse`
--
ALTER TABLE `reponse`
  ADD CONSTRAINT `reponse_ibfk_1` FOREIGN KEY (`idQuestion`) REFERENCES `question` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
