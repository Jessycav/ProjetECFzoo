-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 22 mai 2024 à 20:51
-- Version du serveur : 10.4.32-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `arcadiajv`
--

-- --------------------------------------------------------

--
-- Structure de la table `animaux`
--

CREATE TABLE `animaux` (
  `animal_id` int(11) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `race` varchar(255) NOT NULL,
  `animal_image_id` text NOT NULL,
  `habitat` varchar(255) NOT NULL,
  `etat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `animaux`
--

INSERT INTO `animaux` (`animal_id`, `prenom`, `race`, `animal_image_id`, `habitat`, `etat`) VALUES
(1, 'Bumba', 'Eléphant', 'animaux\\elephant_2.jpg', 'Savane', 'Bonne sante'),
(2, 'Pylo', 'Eléphant', 'animaux\\elephant_2.jpg', 'Savane', 'Bonne sante'),
(3, 'Gouna', 'Elephant', 'animaux\\elephant3.jpg', 'Savane', 'Bonne sante'),
(4, 'Ganda', 'Eléphant', 'animaux\\elephant3.jpg', 'Savane', 'Bonne sante'),
(5, 'Hathi', 'Eléphant', 'animaux\\elephant4.jpg', 'Savane', 'Bonne sante'),
(6, 'Nadim', 'Eléphant', 'animaux\\elephant5.jpg', 'Savane', 'Bonne sante'),
(7, 'Olga ', 'Girafe', 'animaux\\girafe1.jpg', 'Savane', 'Bonne sante'),
(8, 'Rafina', 'Girafe', 'animaux\\girafe2.jpg', 'Savane', 'Bonne sante'),
(9, 'Gracia', 'Girafe', 'animaux\\girafe2.jpg', 'Savane', 'Bonne sante'),
(10, 'Gaffy', 'Girafe', 'animaux\\girafe2.jpg', 'Savane', 'Bonne sante'),
(11, 'Gumba', 'Hippopotame', 'animaux\\hippo1.jpg', 'Savane', 'Bonne sante'),
(12, 'Noun', 'Hippopotame', 'animaux\\hippo2.jpg', 'Savane', 'Bonne sante'),
(13, 'Simba', 'Lion', 'animaux\\lion2.jpg', 'Savane', 'Bonne sante'),
(14, 'Ferane', 'Lionne', 'animaux\\lionne1.jpg', 'Savane', 'Bonne sante'),
(15, 'Naolane', 'Lionne', 'animaux\\lionne1.jpg', 'Savane', 'Bonne sante'),
(16, 'Rony', 'Zèbre', 'animaux\\zebre1.jpg', 'Savane', 'Bonne sante'),
(17, 'Ranou', 'Zèbre', 'animaux\\zebre1.jpg', 'Savane', 'Bonne sante'),
(18, 'Sei', 'Anaconda', 'animaux\\anaconda1.jpg', 'Jungle', 'Bonne sante'),
(19, 'Malau', 'Gorille', 'animaux\\gorille1.jpg', 'Jungle', 'Bonne sante'),
(20, 'Kong', 'Gorille', 'animaux\\gorille3.jpg', 'Jungle', 'Bonne sante'),
(21, 'Speedy', 'Guépard', 'animaux\\guepard1.jpg', 'Jungle', 'Bonne sante'),
(22, 'Louis', 'Orang-outan', 'animaux\\orangoutan1.jpg', 'Jungle', 'Bonne sante'),
(23, 'Fu', 'Tigre', 'animaux\\tigre2.jpg', 'Jungle', 'Bonne sante'),
(24, 'Ayu', 'Crocodile', 'animaux\\crocodile1.jpg', 'Marais', 'Bonne sante'),
(25, 'Dundee', 'Crocodile', 'animaux\\crocodile2.jpg', 'Marais', 'Bonne sante'),
(26, 'Pepe', 'Crocodile', 'animaux\\crocodile3.jpg', 'Marais', 'Bonne sante'),
(27, 'Cadil', 'Crocodile', 'animaux\\crocodile3.jpg', 'Marais', 'Bonne sante'),
(28, 'Pinky', 'Flamant rose', 'animaux\\flamrose2.jpg', 'Marais', 'Bonne sante'),
(29, 'Loustic', 'Loutres', 'animaux\\loutres2.jpg', 'Marais', 'Bonne sante'),
(30, 'Louly', 'Loutres', 'animaux\\loutres2.jpg', 'Marais', 'Bonne sante'),
(31, 'Bourne', 'Loutre', 'animaux\\loutres2.jpg', 'Marais', 'Bonne sante'),
(32, 'Ria', 'Loutre', 'animaux\\loutres2.jpg', 'Marais', 'Bonne sante'),
(33, 'Naga', 'Couleuvre', 'animaux\\couleuvre.jpg', 'Marais', 'Bonne sante'),
(34, 'Molly', 'Tortue', 'animaux\\tortue1.jpg', 'Marais', 'Bonne sante'),
(35, 'Leo', 'Tortue', 'animaux\\tortue1.jpg', 'Marais', 'Bonne sante'),
(36, 'Bowser', 'Tortue', 'animaux\\tortue1.jpg', 'Marais', 'Bonne sante'),
(37, 'Sheila', 'Tortue', 'animaux\\tortue1.jpg', 'Marais', 'Bonne sante');

-- --------------------------------------------------------

--
-- Structure de la table `avis`
--

CREATE TABLE `avis` (
  `avis_id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `commentaire` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `avis`
--

INSERT INTO `avis` (`avis_id`, `nom`, `date`, `commentaire`) VALUES
(2, 'Pauline', '2020-08-30', 'Pour une découverte d\'habitats bien entretenus, n\'hésitez pas à vous y rendre'),
(3, 'Georges', '2017-06-24', 'Un beau zoo à visiter sans tarder'),
(4, 'Julie', '2022-12-24', 'Une visite féerique et animée grâce à la très belle équipe travaillant dans ce parc zoologique');

-- --------------------------------------------------------

--
-- Structure de la table `habitat`
--

CREATE TABLE `habitat` (
  `habitat_id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `commentaire` text NOT NULL,
  `habitat_image_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `habitat`
--

INSERT INTO `habitat` (`habitat_id`, `nom`, `description`, `commentaire`, `habitat_image_id`) VALUES
(1, 'Savane', '17 animaux', 'Elephant Girafe Hippopotame Lion Lionne Zebre', 1),
(2, 'Jungle', '6 animaux', 'Anaconda Gorille Guepard Orang_outan Tigre', 2),
(3, 'Marais', '20 animaux', 'Crocodile Flamant_rose Loutres Couleuvre Tortue', 3);

-- --------------------------------------------------------

--
-- Structure de la table `habitat_image`
--

CREATE TABLE `habitat_image` (
  `habitat_image_id` int(11) NOT NULL,
  `habitat_image_data` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `race`
--

CREATE TABLE `race` (
  `race_id` int(11) NOT NULL,
  `race_label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `race`
--

INSERT INTO `race` (`race_id`, `race_label`) VALUES
(1, 'Elephant'),
(2, 'Girafe'),
(3, 'Hippopotame'),
(4, 'Lion'),
(5, 'Lionne'),
(6, 'Zebre'),
(7, 'Anaconda'),
(8, 'Gorille'),
(9, 'Guepard'),
(10, 'Orang_outan'),
(11, 'Tigre'),
(12, 'Crocodile'),
(13, 'Flamant rose'),
(14, 'Loutre'),
(15, 'Couleuvre'),
(16, 'Tortue');

-- --------------------------------------------------------

--
-- Structure de la table `rapport_veterinaire`
--

CREATE TABLE `rapport_veterinaire` (
  `rapport_id` int(11) NOT NULL,
  `animal_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `grammage` varchar(50) NOT NULL,
  `nourriture` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `rapport_veterinaire`
--

INSERT INTO `rapport_veterinaire` (`rapport_id`, `animal_id`, `date`, `grammage`, `nourriture`) VALUES
(1, 1, '0000-00-00', ' 150 kg', 'liannes pommes'),
(2, 7, '0000-00-00', '30 kg', 'feuilles '),
(3, 21, '0000-00-00', '7 kg', 'viande'),
(4, 20, '0000-00-00', '25 kg', 'feuilles fruits'),
(5, 34, '0000-00-00', '3 kg', 'feuilles');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_label` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`role_id`, `user_id`, `role_label`) VALUES
(1, 1, 'Directeur'),
(2, 2, 'Assistante'),
(3, 3, 'Veterinaire'),
(4, 4, 'Employe'),
(5, 5, 'Employe'),
(6, 6, 'Employe'),
(7, 7, 'Employe'),
(8, 8, 'Employe'),
(9, 9, 'Employe');

-- --------------------------------------------------------

--
-- Structure de la table `service`
--

CREATE TABLE `service` (
  `service_id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `service`
--

INSERT INTO `service` (`service_id`, `nom`, `description`) VALUES
(1, 'Restauration', 'Deux lieux de restauration accueillent les visiteurs (snack ou restaurant)'),
(2, 'Visite_guidée', 'Notre enchanteur a le plaisir de vous faire decouvrir les différents habitats en vous contant les étapes de construction'),
(3, 'Zoo_en_petit_train', 'Le parc zoologique a récemment installé un petit train qui vous permettra de visiter la savane');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `utilisateur_id` int(11) NOT NULL,
  `nom_utilisateur` varchar(50) NOT NULL,
  `mot_de_passe` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`utilisateur_id`, `nom_utilisateur`, `mot_de_passe`, `prenom`) VALUES
(1, 'Jose', 'Admin1960!', 'Jose'),
(2, 'Josette', 'Assistante35380@', 'Josette'),
(3, 'Merlin', 'Veterinaire35380!', 'Merlin'),
(4, 'Arthur', 'Arcadia:1990', 'Arthur'),
(5, 'Viviane', 'Zoo2005@', 'Viviane'),
(6, 'Philippe', 'Bretagne1980!', 'Philippe'),
(7, 'Rosita', 'Broceliande2010@', 'Rosita'),
(8, 'Axel', 'Juin2017@', 'Axel'),
(9, 'Marianne', 'Animal2020!', 'Marianne');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `animaux`
--
ALTER TABLE `animaux`
  ADD PRIMARY KEY (`animal_id`);

--
-- Index pour la table `avis`
--
ALTER TABLE `avis`
  ADD PRIMARY KEY (`avis_id`);

--
-- Index pour la table `habitat`
--
ALTER TABLE `habitat`
  ADD PRIMARY KEY (`habitat_id`);

--
-- Index pour la table `habitat_image`
--
ALTER TABLE `habitat_image`
  ADD PRIMARY KEY (`habitat_image_id`);

--
-- Index pour la table `race`
--
ALTER TABLE `race`
  ADD PRIMARY KEY (`race_id`);

--
-- Index pour la table `rapport_veterinaire`
--
ALTER TABLE `rapport_veterinaire`
  ADD PRIMARY KEY (`rapport_id`);

--
-- Index pour la table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Index pour la table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`utilisateur_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `animaux`
--
ALTER TABLE `animaux`
  MODIFY `animal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT pour la table `avis`
--
ALTER TABLE `avis`
  MODIFY `avis_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `habitat`
--
ALTER TABLE `habitat`
  MODIFY `habitat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `habitat_image`
--
ALTER TABLE `habitat_image`
  MODIFY `habitat_image_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `race`
--
ALTER TABLE `race`
  MODIFY `race_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `rapport_veterinaire`
--
ALTER TABLE `rapport_veterinaire`
  MODIFY `rapport_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `utilisateur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
