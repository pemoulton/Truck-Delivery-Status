CREATE TABLE `email` (
  `idemail` int(11) NOT NULL AUTO_INCREMENT,
  `emailTruck` varchar(45) DEFAULT NULL,
  `emailStatus` varchar(45) DEFAULT NULL,
  `emailLocation` varchar(45) DEFAULT NULL,
  `emailTime` varchar(45) DEFAULT NULL,
  `emailSkip` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idemail`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;
