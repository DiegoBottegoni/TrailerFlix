CREATE SCHEMA trailerflix;
use trailerflix;
CREATE TABLE `Catalogo` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`poster` varchar(500) NOT NULL,
	`titulo` varchar(100) NOT NULL,
	`idCategoria` INT NOT NULL,
	`resumen` varchar(1000) NOT NULL,
	`temporadas` INT,
	`trailer` varchar(500) DEFAULT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `categorias` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nombre` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `actricesyactores` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nombre` varchar(50) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE actricesyactores
ADD COLUMN idCategoria INT;

CREATE TABLE `genero` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nombre` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `catalogoReparto` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idCatalogo` INT NOT NULL,
	`idAct` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `catalogoGenero` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idCatalogo` INT NOT NULL,
	`idGenero` INT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Catalogo` ADD CONSTRAINT `Catalogo_fk0` FOREIGN KEY (`idCategoria`) REFERENCES `categorias`(`id`);

ALTER TABLE `catalogoReparto` ADD CONSTRAINT `catalogoReparto_fk0` FOREIGN KEY (`idCatalogo`) REFERENCES `Catalogo`(`id`);

ALTER TABLE `catalogoReparto` ADD CONSTRAINT `catalogoReparto_fk1` FOREIGN KEY (`idAct`) REFERENCES `actricesyactores`(`id`);

ALTER TABLE `catalogoGenero` ADD CONSTRAINT `catalogoGenero_fk0` FOREIGN KEY (`idCatalogo`) REFERENCES `Catalogo`(`id`);

ALTER TABLE `catalogoGenero` ADD CONSTRAINT `catalogoGenero_fk1` FOREIGN KEY (`idGenero`) REFERENCES `genero`(`id`);