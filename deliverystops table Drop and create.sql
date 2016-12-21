DROP TABLE `truck_delivery_status`.`deliverystops`;

CREATE TABLE `deliverystops` (
  `idDeliveryStops` int(11) NOT NULL AUTO_INCREMENT,
  `locationsStore` varchar(45) NOT NULL,
  `deliverystopsArrival` varchar(45) DEFAULT NULL,
  `deliverystopsDepart` varchar(45) DEFAULT NULL,
  `trucksNum` varchar(45) NOT NULL,
  PRIMARY KEY (`idDeliveryStops`)
) ENGINE=MyISAM AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;
