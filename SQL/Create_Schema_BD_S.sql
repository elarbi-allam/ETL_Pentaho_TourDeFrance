CREATE DATABASE IF NOT EXISTS BD_S;
CREATE DATABASE IF NOT EXISTS BD_CIBLE;


USE BD_S;

-- Structure de la table `coureur`
CREATE TABLE IF NOT EXISTS `coureur` (
  `DOSSARD_COUREUR` char(3) NOT NULL DEFAULT '',
  `IDENTITE_COUREUR` char(40) NOT NULL DEFAULT '',
  `CODE_PAYS_COUREUR` char(3) NOT NULL DEFAULT '',
  `CODE_EQUIPE_COUREUR` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

-- Structure de la table `equipe`
CREATE TABLE IF NOT EXISTS `equipe` (
  `CODE_EQUIPE` char(3) NOT NULL DEFAULT '',
  `NOM_EQUIPE` char(20) DEFAULT NULL,
  PRIMARY KEY (`CODE_EQUIPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

-- Structure de la table `equipe_budget`
CREATE TABLE IF NOT EXISTS `equipe_budget` (
  `CODE_EQUIPE` char(3) NOT NULL DEFAULT '',
  `NOM_EQUIPE` char(20) DEFAULT NULL,
  `BUDGET_EQUIPE` double NOT NULL,
  `NB_COUREURS_EQUIPE` int NOT NULL,
  PRIMARY KEY (`CODE_EQUIPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

-- Structure de la table `etape`
CREATE TABLE IF NOT EXISTS `etape` (
  `NUM_ETAPE` int unsigned NOT NULL DEFAULT '0',
  `VILLE_DEPART` char(30) DEFAULT NULL,
  `VILLE_ARRIVEE` char(30) DEFAULT NULL,
  PRIMARY KEY (`NUM_ETAPE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

-- Structure de la table `pays`
CREATE TABLE IF NOT EXISTS `pays` (
  `CODE_PAYS` char(3) NOT NULL DEFAULT '',
  `NOM_PAYS` char(20) DEFAULT NULL,
  PRIMARY KEY (`CODE_PAYS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


USE BD_CIBLE;
-- Structure de la table `pays_trie`
CREATE TABLE `pays_trie` (
  `CODE_PAYS` varchar(3) DEFAULT NULL,
  `NOM_PAYS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Structure de la table `vue_coureur_enrichi`
CREATE TABLE `vue_coureur_enrichi` (
  `CODE_EQUIPE` varchar(3) DEFAULT NULL,
  `NOM_EQUIPE` varchar(20) DEFAULT NULL,
  `DOSSARD_COUREUR` varchar(3) DEFAULT NULL,
  `IDENTITE_COUREUR` varchar(40) DEFAULT NULL,
  `CODE_EQUIPE_COUREUR` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci