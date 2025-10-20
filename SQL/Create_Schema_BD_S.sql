USE BD_S;

-- Structure de la table `coureur`
CREATE TABLE IF NOT EXISTS `coureur` (
  `DOSSARD_COUREUR` char(3) NOT NULL DEFAULT '',
  `IDENTITE_COUREUR` char(40) NOT NULL DEFAULT '',
  `CODE_PAYS_COUREUR` char(3) NOT NULL DEFAULT '',
  `CODE_EQUIPE_COUREUR` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

-- Structure de la table `equipe`
CREATE TABLE IF NOT EXISTS `equipe` (
  `CODE_EQUIPE` char(3) NOT NULL DEFAULT '',
  `NOM_EQUIPE` char(20) DEFAULT NULL,
  PRIMARY KEY (`CODE_EQUIPE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

-- Structure de la table `equipe_budget`
CREATE TABLE IF NOT EXISTS `equipe_budget` (
  `CODE_EQUIPE` char(3) NOT NULL DEFAULT '',
  `NOM_EQUIPE` char(20) DEFAULT NULL,
  `BUDGET_EQUIPE` double NOT NULL,
  `NB_COUREURS_EQUIPE` int(11) NOT NULL,
  PRIMARY KEY (`CODE_EQUIPE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

-- Structure de la table `etape`
CREATE TABLE IF NOT EXISTS `etape` (
  `NUM_ETAPE` int(10) unsigned NOT NULL DEFAULT '0',
  `VILLE_DEPART` char(30) DEFAULT NULL,
  `VILLE_ARRIVEE` char(30) DEFAULT NULL,
  PRIMARY KEY (`NUM_ETAPE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

-- Structure de la table `pays`
CREATE TABLE IF NOT EXISTS `pays` (
  `CODE_PAYS` char(3) NOT NULL DEFAULT '',
  `NOM_PAYS` char(20) DEFAULT NULL,
  PRIMARY KEY (`CODE_PAYS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;