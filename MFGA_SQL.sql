-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mfga
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mfga` ;

-- -----------------------------------------------------
-- Schema mfga
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mfga` DEFAULT CHARACTER SET utf8mb3 ;
USE `mfga` ;

-- -----------------------------------------------------
-- Table `mfga`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`usuario` ;

CREATE TABLE IF NOT EXISTS `mfga`.`usuario` (
  `idusuario` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `apellido` VARCHAR(45) NULL DEFAULT NULL,
  `dni` VARCHAR(45) NULL DEFAULT NULL,
  `contrasenia` VARCHAR(45) NULL DEFAULT NULL,
  `mail` VARCHAR(45) NULL DEFAULT NULL,
  `tel` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idusuario`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`admin`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`admin` ;

CREATE TABLE IF NOT EXISTS `mfga`.`admin` (
  `idadmin` INT NOT NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idadmin`),
  INDEX `fk_admin_usuario1_idx` (`usuario_idusuario` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`calificacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`calificacion` ;

CREATE TABLE IF NOT EXISTS `mfga`.`calificacion` (
  `idcalificacion` INT NOT NULL,
  `valor` INT NULL DEFAULT NULL,
  PRIMARY KEY (`idcalificacion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`pais`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`pais` ;

CREATE TABLE IF NOT EXISTS `mfga`.`pais` (
  `idpais` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idpais`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`provincia`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`provincia` ;

CREATE TABLE IF NOT EXISTS `mfga`.`provincia` (
  `idprovincia` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `pais_idpais` INT NOT NULL,
  PRIMARY KEY (`idprovincia`),
  INDEX `fk_provincia_pais_idx` (`pais_idpais` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`ciudad`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`ciudad` ;

CREATE TABLE IF NOT EXISTS `mfga`.`ciudad` (
  `idciudad` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `provincia_idprovincia` INT NOT NULL,
  `provincia_idprovincia1` INT NOT NULL,
  PRIMARY KEY (`idciudad`, `provincia_idprovincia`),
  INDEX `fk_ciudad_provincia1_idx` (`provincia_idprovincia1` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`direccion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`direccion` ;

CREATE TABLE IF NOT EXISTS `mfga`.`direccion` (
  `iddireccion` INT NOT NULL,
  `calle` VARCHAR(45) NULL DEFAULT NULL,
  `numero` VARCHAR(45) NULL DEFAULT NULL,
  `ciudad_idciudad` INT NOT NULL,
  `ciudad_provincia_idprovincia` INT NOT NULL,
  PRIMARY KEY (`iddireccion`),
  INDEX `fk_direccion_ciudad1_idx` (`ciudad_idciudad` ASC, `ciudad_provincia_idprovincia` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`usuario-comun`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`usuario-comun` ;

CREATE TABLE IF NOT EXISTS `mfga`.`usuario-comun` (
  `idusuario-comun` INT NOT NULL,
  `usuario_idusuario` INT NOT NULL,
  PRIMARY KEY (`idusuario-comun`),
  INDEX `fk_usuario-comun_usuario1_idx` (`usuario_idusuario` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`lugar-creado-por-usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`lugar-creado-por-usuario` ;

CREATE TABLE IF NOT EXISTS `mfga`.`lugar-creado-por-usuario` (
  `idporcomun` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `descripcion` VARCHAR(45) NULL DEFAULT NULL,
  `usuario-comun_idusuario-comun` INT NOT NULL,
  `direccion_iddireccion` INT NOT NULL,
  PRIMARY KEY (`idporcomun`),
  INDEX `fk_lugar-creado-por-usuario-comun_usuario-comun1_idx` (`usuario-comun_idusuario-comun` ASC) VISIBLE,
  INDEX `fk_lugar-creado-por-usuario-comun_direccion1_idx` (`direccion_iddireccion` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`corroboracion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`corroboracion` ;

CREATE TABLE IF NOT EXISTS `mfga`.`corroboracion` (
  `idcorroboracion` INT NOT NULL,
  `admin_idadmin` INT NOT NULL,
  `lugar-creado-por-usuario_idporcomun` INT NOT NULL,
  PRIMARY KEY (`idcorroboracion`),
  INDEX `fk_corroboracion_admin1_idx` (`admin_idadmin` ASC) VISIBLE,
  INDEX `fk_corroboracion_lugar-creado-por-usuario1_idx` (`lugar-creado-por-usuario_idporcomun` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`lugar`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`lugar` ;

CREATE TABLE IF NOT EXISTS `mfga`.`lugar` (
  `idlugar` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `descripcion` VARCHAR(500) NULL DEFAULT NULL,
  `direccion_iddireccion` INT NOT NULL,
  `corroboracion_idcorroboracion` INT NOT NULL,
  PRIMARY KEY (`idlugar`),
  INDEX `fk_lugar_direccion1_idx` (`direccion_iddireccion` ASC) VISIBLE,
  INDEX `fk_lugar_corroboracion1_idx` (`corroboracion_idcorroboracion` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`comentario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`comentario` ;

CREATE TABLE IF NOT EXISTS `mfga`.`comentario` (
  `idcomentario` INT NOT NULL,
  `texto` VARCHAR(45) NULL DEFAULT NULL,
  `tarjeta_idtarjeta` INT NOT NULL,
  `lugar_idlugar` INT NOT NULL,
  PRIMARY KEY (`idcomentario`),
  INDEX `fk_comentario_lugar1_idx` (`lugar_idlugar` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`creacion`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`creacion` ;

CREATE TABLE IF NOT EXISTS `mfga`.`creacion` (
  `idcreacion` INT NOT NULL,
  `admin_idadmin` INT NOT NULL,
  `lugar_idlugar` INT NOT NULL,
  PRIMARY KEY (`idcreacion`),
  INDEX `fk_creacion_admin1_idx` (`admin_idadmin` ASC) VISIBLE,
  INDEX `fk_creacion_lugar1_idx` (`lugar_idlugar` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`hotel`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`hotel` ;

CREATE TABLE IF NOT EXISTS `mfga`.`hotel` (
  `idhotel` INT NOT NULL,
  `nombre` VARCHAR(45) NULL DEFAULT NULL,
  `estrellas` INT NULL DEFAULT NULL,
  `direccion_iddireccion` INT NOT NULL,
  PRIMARY KEY (`idhotel`),
  INDEX `fk_hotel_direccion1_idx` (`direccion_iddireccion` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`hotel-cercano`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`hotel-cercano` ;

CREATE TABLE IF NOT EXISTS `mfga`.`hotel-cercano` (
  `idhotel-cercano` INT NOT NULL,
  `hotel_idhotel` INT NOT NULL,
  `lugar_idlugar` INT NOT NULL,
  PRIMARY KEY (`idhotel-cercano`),
  INDEX `fk_hotel-cercano_hotel1_idx` (`hotel_idhotel` ASC) VISIBLE,
  INDEX `fk_hotel-cercano_lugar1_idx` (`lugar_idlugar` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`lugar-calificado`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`lugar-calificado` ;

CREATE TABLE IF NOT EXISTS `mfga`.`lugar-calificado` (
  `idlugar-calificado` INT NOT NULL,
  `tarjeta_idtarjeta` INT NOT NULL,
  `calificacion_idcalificacion` INT NOT NULL,
  `usuario_idusuario` INT NOT NULL,
  `lugar_idlugar` INT NOT NULL,
  PRIMARY KEY (`idlugar-calificado`),
  INDEX `fk_lugar-calificado_calificacion1_idx` (`calificacion_idcalificacion` ASC) VISIBLE,
  INDEX `fk_lugar-calificado_usuario1_idx` (`usuario_idusuario` ASC) VISIBLE,
  INDEX `fk_lugar-calificado_lugar1_idx` (`lugar_idlugar` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`ubicacion-en-mapa`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`ubicacion-en-mapa` ;

CREATE TABLE IF NOT EXISTS `mfga`.`ubicacion-en-mapa` (
  `idubicacion-en-mapa` INT NOT NULL,
  `enlace` VARCHAR(45) NULL DEFAULT NULL,
  `lugar_idlugar` INT NOT NULL,
  PRIMARY KEY (`idubicacion-en-mapa`),
  INDEX `fk_ubicacion-en-mapa_lugar1_idx` (`lugar_idlugar` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `mfga`.`info`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mfga`.`info` ;

CREATE TABLE IF NOT EXISTS `mfga`.`info` (
  `idinfo` INT NOT NULL,
  `descripcion` LONGTEXT NULL,
  `lugar_idlugar` INT NOT NULL,
  PRIMARY KEY (`idinfo`),
  INDEX `fk_info_lugar1_idx` (`lugar_idlugar` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
