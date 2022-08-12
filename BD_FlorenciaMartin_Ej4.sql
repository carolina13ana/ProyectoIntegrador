-- MySQL Script generated by MySQL Workbench
-- Fri Aug 12 15:37:28 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Dueno`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Dueno` (
  `DNI` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Telefono` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`DNI`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Perro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Perro` (
  `ID_perro` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `FechaNac` DATE NOT NULL,
  `Sexo` VARCHAR(45) NOT NULL,
  `DNI_dueno` INT NOT NULL,
  PRIMARY KEY (`ID_perro`),
  INDEX `DNI_dueno_idx` (`DNI_dueno` ASC) VISIBLE,
  CONSTRAINT `DNI_dueno`
    FOREIGN KEY (`DNI_dueno`)
    REFERENCES `mydb`.`Dueno` (`DNI`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Historial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Historial` (
  `ID_Historial` INT NOT NULL AUTO_INCREMENT,
  `Fecha` DATE NOT NULL,
  `Perro` INT NOT NULL,
  `Descripcion` VARCHAR(200) NOT NULL,
  `Monto` INT NOT NULL,
  PRIMARY KEY (`ID_Historial`),
  INDEX `Perro_idx` (`Perro` ASC) VISIBLE,
  CONSTRAINT `Perro`
    FOREIGN KEY (`Perro`)
    REFERENCES `mydb`.`Perro` (`ID_perro`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO Dueno VALUES (39399399, 'Juan', 'Cerez', 4545454, 'Brasil 253');
INSERT INTO Perro VALUES (1,'Chucho', 08/03/2010, 'Macho', 39399399);
UPDATE Perro
SET FechaNac = 09/10/2018
WHERE DNI_dueno=39399399



