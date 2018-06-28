-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2018 at 06:46 PM
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
-- Table structure for table `cours`
--

CREATE TABLE `cours` (
  `id` int(50) NOT NULL,
  `libelle` varchar(50) NOT NULL,
  `contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cours`
--

INSERT INTO `cours` (`id`, `libelle`, `contenu`) VALUES
(1, 'Le HTML', 'HTML (HyperText Markup Language) est un format permettant de définir les éléments variés d\'une \"page\" qu\'on observe avec un logiciel d\'exploration du WEB : un Browser (Netscape ou Explorer).\r\nHTML définit :\r\n<ul>\r\n           <li>du texte,</li>\r\n           <li>la mise en forme et en page du texte.</li>\r\n           <li>la place et la taille d\'images.</li>\r\n           <li>le positionnement d\'animations et de sons.</li>\r\n           <li>la place dans une page de tout autre élément statique ou dynamique géré par le navigateur.</li>\r\n           <li>des liens hypertextes vers d\'autres pages. \r\n</li>\r\n</ul>\r\nHTML est donc la langue parlée dans les coulisses du WEB pour décrire ce que vous y voyez. <br>\r\n\r\nHTML a été conçu au CERN, par des scientifiques loin de toute considération commerciale, pour échanger des informations par-delà les limites des différents ordinateurs, des réseaux, etc. <br>\r\n\r\n        HTML ne définit que le texte, et établit un lien vers tous les autres éléments de la page : les images, animations, sons etc. ne sont pas inclues mais leur \"adresse\" URL \" est indiquée\r\n        HTML est conçu pour mettre en relation des informations nombreuses et éparses. La notion de réseau est donc centrale. <br><br>\r\n        Le suffixe .htm définit le format HTML pour les PC, à cause de la limitation à 3 lettres du suffixe. \r\n<br><br>\r\nA noter que son <b>logo</b> est en forme de pentagon et est orange avec noté 5 dedans.'),
(2, 'Le PHP', '<p>\r\nLe PHP est un langage informatique utilisé sur l\'internet. Le terme PHP est un acronyme récursif de \"PHP: Hypertext Preprocessor\".</p>\r\n<p>\r\nCe langage est principalement utilisé pour produire un site web dynamique. Il est courant que ce langage soit associé à une base de données, tel que MySQL.</p>\r\n<p>Exécuté du côté serveur (l\'endroit où est hébergé le site) il n\'y a pas besoin aux visiteurs d\'avoir des logiciels ou plugins particulier. Néanmoins, les webmasters qui souhaitent développer un site en PHP doivent s\'assurer que l\'hébergeur prend en compte ce langage.</p>\r\n\r\n<p>Lorsqu\'une page PHP est exécuté par le serveur, alors celui-ci renvois généralement au client (aux visiteurs du site) une page web qui peut contenir du HTML, XHTML, CSS, JavaScript ...</p>\r\n\r\n<p>A noter que le <b>logo</b>, comme celui de nombreux projets Open Source, PHP possède une mascotte. Il s\'agit de l\'éléPHPant, dessiné en 1998 par El Roubio.\r\n</p>\r\n<p>\r\nCelui-ci s\'est inspiré de la ressemblance des lettres PHP avec un éléphant et du fait que deux des lettres du langage soient déjà présentes dans ce mot, ce qui a permis de créer le néologisme éléPHPant. du php est représenté par un éléphant</p>'),
(3, 'Le CSS', '<p>\r\nLes CSS, Cascading Style Sheets (feuilles de styles en cascade), servent à mettre en forme des documents web, type page HTML ou XML. Par l\'intermédiaire de propriétés d\'apparence (couleurs, bordures, polices, etc.) et de placement (largeur, hauteur, côte à côte, dessus-dessous, etc.), le rendu d\'une page web peut être intégralement modifié sans aucun code supplémentaire dans la page web. Les feuilles de styles ont d\'ailleurs pour objectif principal de dissocier le contenu de la page de son apparence visuelle. Ceci permet :</p>\r\n<ul>\r\n   <li> de ne pas répéter dans chaque page le même code de mise en forme</li>\r\n    <li>d\'utiliser des styles génériques, avec des noms explicites (par exemple un style encadré pour du texte ou des images)</li>\r\n    <li>de pouvoir changer l\'apparence d\'un site web complet en ne modifiant qu\'un seul fichier</li>\r\n    <li>de faciliter la lecture du code de la page</li>\r\n</ul>\r\n<p>\r\nLa puissance et de l\'intérêt des CSS peut être démontrée en modifiant radicalement l\'apparence d\'une page, sans changer son code HTML d\'un iota... Bref les CSS permettent de gagner en productivité et en maintenabilité des sites web, tout en offrant des possibilités graphiques incontestables. Lorsqu\'on se lance dans la conception de pages web, il faut apprendre les CSS !</p>\r\n\r\n<p>Ce livre reprend les spécifications du W3C dont les CSS font partie, mais en les rendant intelligibles aux non-initiés et en les agrémentant de conseils, d\'exemples, d\'astuces... Il nécessite comme pré-requis la connaissance des bases du langage HTML, éventuellement XHTML pour lequel les CSS peuvent devenir absolument nécessaires.</p>\r\n <p>A noter que le <b>logo</b> du CSS est très similaire à celui du HTML, à la seule exception qu\'il est de couleur bleu et est annoté d\'un 3 et non du 5.</p>'),
(4, 'Le Java', '<p>Java est un langage de programmation créé par Sun Microsystems (entreprise aujourd\'hui rachetée par Oracle Corporation) et lancé le 23 mai 1995.</p>\r\n\r\n<p>Java est un langage dédié à la programmation orientée objet et l\'un des deux langages de programmation les plus employés. À l\'heure actuelle, il est très utilisé pour des programmes de moyenne envergure, dans la gestion des entreprises notamment. Il ressemble au C++ mais leurs différences font qu\'ils ne sont généralement pas utilisés pour les mêmes choses. Par exemple :</p>\r\n<ul>\r\n    <li>Java s\'exécute dans une machine virtuelle : il est donc plus lent que C++ mais dispose d\'un ramasse-miettes qui simplifie la gestion de la mémoire ;</li>\r\n    <li>il est plus facile de faire des interfaces graphiques, du multi-threading, du réseau, etc. en Java qu\'en C++ ;</li>\r\n    <li>Java est plus simple d\'accès que le C++ (moins de symboles, moins de notions proches du C) mais le C++ permet des constructions plus puissantes et personnalisées ;</li>\r\n    <li>grâce à sa machine virtuelle, Java est multi-plateforme.</li>\r\n</ul>\r\n<p>Le nom « Java » n\'est pas un acronyme, il a été choisi lors d\'un brainstorming en remplacement du nom d\'origine « Oak », à cause d\'un conflit avec une marque existante, parce que le café (« java » en argot américain) est la boisson favorite de nombreux programmeurs. Le <b>logo</b> choisi par Sun est d\'ailleurs une tasse de café fumant.</p>'),
(5, 'L\'Angular', '<p>\r\nAngularJS est né en 2009 dans les locaux de Google. Deux développeurs du nom de Brad Green et Shyam Seshadri commençaient sérieusement à déprimer devant leur projet appelé \"Google Feedback\". Une immense frustration les envahissait au fur et à mesure que leur code grandissait. Celui-ci comptait approximativement 17 000 lignes à ce moment-là. Autant de lignes de pur front-end  qui sont intestables et donc difficilement maintenables.</p>\r\n\r\n<p>C\'est à ce moment-là que Shyam Seshadri proposa de redévelopper entièrement la solution avec un framework fait maison. Au bout de trois semaines, l\'application ne comptait plus que 1 500 lignes de codes, parfaitement testées.</p>\r\n\r\n<p>À compter de ce jour, les autres développeurs de l\'équipe ont décidé de prendre en main ce framework et de travailler avec au quotidien. Une histoire est née, l\'histoire d\'un framework que l\'on nommera AngularJS.</p>\r\n<p>Le <b>logo</b> de l\'Angular est un hexagon rouge avec un \'A\' gravé dessus.</p>'),
(6, 'Le Python', '<p>\r\nLe Langage Python est apparu en 1991 grâce à Guido van Rossum. Son nom n\'est pas tiré de celui du serpent mais bien de la fameuse troupe de comiques \"Monty Python\" ! Par ailleurs, son créateur a fondé l\'organisation <b>Python Software Foundation</b> en 2001, une association a but non lucratif leur rendant hommage.\r\n</p>\r\n\r\n<p>\r\nCe langage interprété s\'avère être puissant, il peut être utilisé pour effectuer de petits scripts tout comme de gros projets.\r\n</p>\r\n\r\n<p>\r\nNous pouvons communiquer avec notre système grâce à celui-ci, mais aussi créer des interfaces graphiques, faire passer des informations dans un réseau... Les possibilités sont infinies !\r\n</p>\r\n\r\n<P>Certains sites très connus ont été conçus à l\'aide de ce langage tel que :</p>\r\n<ul>\r\n<li>Pinterest</li>\r\n<li>Reddit</li>\r\n<li>Spotify</li>\r\n<li>Youtube</li>\r\n<li>Dropbox</li>\r\n</ul>\r\n<p>\r\nSon <b>logo</b> représente deux python tel le Yin et le Yang mais avec des teins jaune et bleu.\r\n</p>'),
(7, 'Le SQL', '<p>\r\nLe Structured Query Language, plus connu sous le diminutif \'SQL est né en 1974 avant d\'être normalisé en 1986. Il a été développé par IBM, plus particulièrement par Donald D et Raymond Boyce.\r\n</p>\r\n\r\n<p>\r\nCe langage permet d\'envoyer des requêtes pour communiquer avec une base de données.\r\n</p>\r\n<p>\r\nOn peut donc se servir de langages tiers tel que le PHP pour traiter le résultat( des requêtes\r\n</p>\r\n<p>\r\n Son <b>logo</b> est représenté par un cylindre de couleur bleu/vert.\r\n</p>');

-- --------------------------------------------------------

--
-- Table structure for table `historique`
--

CREATE TABLE `historique` (
  `id` int(11) NOT NULL,
  `User` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `Question` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('admin@simpleduc.org', 1),
('admin@simpleduc.org', 4),
('admin@simpleduc.org', 7),
('admin@simpleduc.org', 8),
('azeo@zk', 8),
('blup@bl.fr', 8),
('matteo@test.com', 8),
('test2@simpleduc.org', 8),
('test@simpleduc.org', 8),
('test@test.fr', 8);

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
  `idQuestion` int(11) NOT NULL,
  `Type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reponse`
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
(30, 'PHP:HyperText Preprocessor', 10, 'nom'),
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
(7, 'Python', 'Le Python est un langage de programmation objet, multi-paradigme et multiplateforme favorisant la programmation structurée, fonctionnelle et objet. Il convient à tous types de développeurs.', 'python.png'),
(8, 'null', '', '');

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
('admin@simpleduc.org', '$2y$10$q8.AZxrDgmrHediCOUPvpOyDJJuOP70041CHa8NYq9QlhTsYiYXjG', 'admin', 'admin'),
('azeo@zk', '$2y$10$NXrIKhL0uLijcTgokuJPEez.I40egYICS5BoCdkVmIaIMkNldAWCq', 'z', 'z'),
('blup@bl.fr', '$2y$10$kWw6PpFVa1gH./sd1oFTP.YCqOMmmuq8aSpl0XIlux5M3EUnHb5SG', 'a', 'a'),
('matteo@test.com', '$2y$10$3VPo3qFj4h/uIXq3Bpycx.qqp4K.xaHwjzvDLnkWzWY4yqoeibEkC', 'test', 'Matteo'),
('test2@simpleduc.org', '$2y$10$Ytl65biwd9NeWk2aZgT9J.Z5cR2QviejK3e3S0kRse/4hZncmamTu', 'test2', 'test2'),
('test@simpleduc.org', '$2y$10$sV5EpXbZ6Bcqm36OlCVWleFWgUO2F6O5rVm2dtrtGrEwtqauK99wy', 'test', 'test'),
('test@test.fr', '$2y$10$7Rqiz/3Zm2fr636NRoVDG.o2HGvW16Nq03gLuTqFEzQtWuLbWe3bO', '1', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `historique`
--
ALTER TABLE `historique`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User` (`User`),
  ADD KEY `Question` (`Question`);

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
-- AUTO_INCREMENT for table `cours`
--
ALTER TABLE `cours`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `historique`
--
ALTER TABLE `historique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `historique`
--
ALTER TABLE `historique`
  ADD CONSTRAINT `historique_ibfk_1` FOREIGN KEY (`Question`) REFERENCES `question` (`id`),
  ADD CONSTRAINT `historique_ibfk_2` FOREIGN KEY (`User`) REFERENCES `utilisateur` (`email`);

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
