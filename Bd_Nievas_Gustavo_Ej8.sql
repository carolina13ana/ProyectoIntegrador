-- -----------------------------------------------------
-- Bd Peluqueria_Canina
-- -----------------------------------------------------
CREATE SCHEMA `Peluqueria_Canina` DEFAULT CHARACTER SET utf8 ;
USE `Peluqueria_Canina` ;

-- Tabla `Dueños`

CREATE TABLE IF NOT EXISTS `Peluqueria_Canina`.`Dueños` (
  `Dni` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Telefono` INT NOT NULL,
  `Direccion` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Dni`))
ENGINE = InnoDB;

INSERT INTO `Peluqueria_Canina`.`Dueños` (`Dni`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES (28957346, 'Juan', 'Perez', 4789689, 'Belgrano 101');
INSERT INTO `Peluqueria_Canina`.`Dueños` (`Dni`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES (23546987, 'Ana', 'Perez', 4789689, 'Pueyrredon  811');
INSERT INTO `peluqueria_canina`.`dueños` (`Dni`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES ('45694201', 'Franquito', 'Gonzalez', '4789653', 'Miami 202');

select * from dueños;

-- Tabla `Perros`

CREATE TABLE IF NOT EXISTS `Peluqueria_Canina`.`Perros` (
  `Id_Perros` INT NOT NULL,
  `Nombre` VARCHAR(45) BINARY NULL,
  `Fecha_nac` DATE NULL,
  `Sexo` VARCHAR(45) NULL,
  `Dueños_Dni` INT NOT NULL,
  PRIMARY KEY (`Id_Perros`),
  INDEX `fk_Perros_Dueños_idx` (`Dueños_Dni` ASC) VISIBLE,
  CONSTRAINT `fk_Perros_Dueños`
    FOREIGN KEY (`Dueños_Dni`)
    REFERENCES `Peluqueria_Canina`.`Dueños` (`Dni`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

INSERT INTO `Peluqueria_Canina`.`Perros` (`Id_Perros`, `Nombre`, `Fecha_nac`, `Sexo`, `Dueños_Dni`) VALUES (13, 'Puppy', '2012/12/12', 'F', 28957346);
INSERT INTO `Peluqueria_Canina`.`Perros` (`Id_Perros`, `Nombre`, `Fecha_nac`, `Sexo`, `Dueños_Dni`) VALUES (14, 'Fido', '2012/12/12', 'M', 23546987);
INSERT INTO `peluqueria_canina`.`perros` (`Id_Perros`, `Nombre`, `Fecha_nac`, `Sexo`, `Dueños_Dni`) VALUES ('10', 'Tomi', '2010/07/31', 'M', '45694201');

select * from perros;

-- Tabla `Historial`

CREATE TABLE IF NOT EXISTS `Peluqueria_Canina`.`Historial` (
  `Id_Historial` INT NOT NULL,
  `Fecha` DATE NULL,
  `Perro` VARCHAR(45) NULL,
  `Descripcion` VARCHAR(45) NULL,
  `Monto` FLOAT NULL,
  `Perros_idPerros` INT NOT NULL,
  PRIMARY KEY (`Id_Historial`),
  INDEX `fk_Historial_Perros1_idx` (`Perros_idPerros` ASC) VISIBLE,
  CONSTRAINT `fk_Historial_Perros1`
    FOREIGN KEY (`Perros_idPerros`)
    REFERENCES `Peluqueria_Canina`.`Perros` (`Id_Perros`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
ENGINE = InnoDB;

select * from historial;

-- Ejercicio 8: Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10. -------------------------------------

INSERT INTO `peluqueria_canina`.`historial` (`Id_Historial`, `Fecha`, `Perro`, `Descripcion`, `Monto`, `Perros_idPerros`) VALUES ('12', '2022/8/12', 'Tomi', 'Caniche', '5000.00', '10');
