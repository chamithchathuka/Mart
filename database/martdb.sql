DROP DATABASE IF EXISTS mart;

CREATE DATABASE IF NOT EXISTS `mart` ;

USE `mart`;

DROP TABLE IF EXISTS `courier`;

CREATE TABLE `courier` (
  `courierId` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `contactNo` int(11) DEFAULT NULL,
  `courierAddress` varchar(255) DEFAULT NULL,
  `courierName` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`courierId`)
) ENGINE=InnoDB ;



DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) DEFAULT NULL,
  `customerAddress` varchar(255) DEFAULT NULL,
  `customerEmail` varchar(255) DEFAULT NULL,
  `customerName` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `mobileNo` bigint(20) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`customerId`),
  UNIQUE KEY `customerEmail` (`customerEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=10  ;



DROP TABLE IF EXISTS `delivery_option`;

CREATE TABLE `delivery_option` (
  `delivery_optionid` int(11) NOT NULL AUTO_INCREMENT,
  `cost` double DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`delivery_optionid`)
) ENGINE=InnoDB AUTO_INCREMENT=3  ;




DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `fbid` int(11) NOT NULL AUTO_INCREMENT,
  `dlvrRate` double DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `issues` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `other` varchar(255) DEFAULT NULL,
  `priceRate` double DEFAULT NULL,
  `productRate` double DEFAULT NULL,
  `serviceRate` double DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fbid`)
) ENGINE=InnoDB AUTO_INCREMENT=8  ;




DROP TABLE IF EXISTS `type`;

CREATE TABLE `type` (
  `typeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=5  ;


DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `productId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `other_name` varchar(255) DEFAULT NULL,
  `imagePath` tinyblob,
  `stripSize` int(11) DEFAULT NULL,
  `unitPrice` double DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  PRIMARY KEY (`productId`)  
) ENGINE=InnoDB AUTO_INCREMENT=20  ;





DROP TABLE IF EXISTS `product_order`;

CREATE TABLE `product_order` (
  `productOrderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderOrderNo` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `unitPrice` double DEFAULT NULL,
  `productId` int(11) DEFAULT NULL,
  PRIMARY KEY (`productOrderId`),
  KEY `FKCACF2D0984C55179` (`productId`),
  CONSTRAINT `FKCACF2D0984C55179` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=20  ;





DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `shopNo` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `contactNo` int(11) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `shopName` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shopNo`)
) ENGINE=InnoDB  ;




DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `settingsid` int(11) NOT NULL,
  `serviceCharg` double DEFAULT NULL,
  `vat` double DEFAULT NULL,
  PRIMARY KEY (`settingsid`)
) ENGINE=InnoDB  ;





DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `email` varchar(255) NOT NULL,
  `deliverTime` datetime DEFAULT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `securityCode` varchar(255) DEFAULT NULL,
  `userType` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB  ;




DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `orderNo` int(11) NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `courierCharj` double DEFAULT NULL,
  `courierPaymentSettledDate` datetime DEFAULT NULL,
  `courierTrackingNo` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `deliveryAddress` varchar(255) DEFAULT NULL,
  `deliveryEmail` varchar(255) DEFAULT NULL,
  `deliveryName` varchar(255) DEFAULT NULL,
  `deliveryTelephoneNo` varchar(255) DEFAULT NULL,
  `delveryCost` double DEFAULT NULL,
  `delveryVat` double DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `shopPaymentSettledDate` datetime DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `serviceCharg` double DEFAULT NULL,
  `specialRequest` varchar(255) DEFAULT NULL,
  `statusCourier` varchar(255) DEFAULT NULL,
  `statusDescription` varchar(255) DEFAULT NULL,
  `statusShop` varchar(255) DEFAULT NULL,
  `vat` double DEFAULT NULL,
  `courierId` int(11) DEFAULT NULL,
  `customerEmail` varchar(255) DEFAULT NULL,
  `delivery_optionid` int(11) NOT NULL,
  `shopNo` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderNo`),
  KEY `FK75DCD231DA2CA4AE` (`delivery_optionid`),
  KEY `FK75DCD231E78EC4C6` (`customerEmail`),
  KEY `FK75DCD23192137E8B` (`courierId`),
  KEY `FK75DCD231A53974D1` (`shopNo`),
  CONSTRAINT `FK75DCD23192137E8B` FOREIGN KEY (`courierId`) REFERENCES `courier` (`courierId`),
  CONSTRAINT `FK75DCD231A53974D1` FOREIGN KEY (`shopNo`) REFERENCES `shop` (`shopNo`),
  CONSTRAINT `FK75DCD231DA2CA4AE` FOREIGN KEY (`delivery_optionid`) REFERENCES `delivery_option` (`delivery_optionid`),
  CONSTRAINT `FK75DCD231E78EC4C6` FOREIGN KEY (`customerEmail`) REFERENCES `customer` (`customerEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=15;

