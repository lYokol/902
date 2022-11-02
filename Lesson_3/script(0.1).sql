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
-- Table `mydb`.`Chat`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Chat` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Chat` (
  `idChat` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `participants` VARCHAR(45) NULL,
  PRIMARY KEY (`idChat`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Friends`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Friends` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Friends` (
  `idFriends` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `from_user_id` INT NOT NULL,
  `to_user_id` INT NOT NULL,
  PRIMARY KEY (`idFriends`, `to_user_id`, `from_user_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Profile`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Profile` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Profile` (
  `idProfile` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `level` VARCHAR(45) NOT NULL,
  `male/female` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  PRIMARY KEY (`idProfile`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Literature`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Literature` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Literature` (
  `idLiterature` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `author_id` VARCHAR(45) NOT NULL,
  `year` VARCHAR(45) NOT NULL,
  `Community_idCommunity` INT NOT NULL,
  `Community_user_id` VARCHAR(45) NOT NULL,
  `Community_Literature_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idLiterature`, `author_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Catalogue`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Catalogue` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Catalogue` (
  `idCatalogue` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `Literature_idLiterature` INT NOT NULL,
  `Literature_author_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCatalogue`),
  INDEX `fk_Catalogue_Literature1_idx` (`Literature_idLiterature` ASC, `Literature_author_id` ASC) VISIBLE,
  CONSTRAINT `fk_Catalogue_Literature1`
    FOREIGN KEY (`Literature_idLiterature` , `Literature_author_id`)
    REFERENCES `mydb`.`Literature` (`idLiterature` , `author_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`User` ;

CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `iduser` INT NOT NULL,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `Chat_idChat` INT NOT NULL,
  `Favorites_idFavorites` INT NOT NULL,
  `Favorites_Literature_id` VARCHAR(45) NOT NULL,
  `Favorites_user_id` VARCHAR(45) NOT NULL,
  `Friends_idFriends` INT NOT NULL,
  `Friends_to_user_id` VARCHAR(45) NOT NULL,
  `Friends_from_user_id` VARCHAR(45) NOT NULL,
  `Community_idCommunity` INT NOT NULL,
  `Community_user_id` VARCHAR(45) NOT NULL,
  `Community_Literature_id` VARCHAR(45) NOT NULL,
  `Profile_idProfile` INT NOT NULL,
  `Catalogue_idCatalogue` INT NOT NULL,
  PRIMARY KEY (`iduser`),
  INDEX `fk_User_Chat1_idx` (`Chat_idChat` ASC) VISIBLE,
  INDEX `fk_User_Friends1_idx` (`Friends_idFriends` ASC, `Friends_to_user_id` ASC, `Friends_from_user_id` ASC) VISIBLE,
  INDEX `fk_User_Profile1_idx` (`Profile_idProfile` ASC) VISIBLE,
  INDEX `fk_User_Catalogue1_idx` (`Catalogue_idCatalogue` ASC) VISIBLE,
  CONSTRAINT `fk_User_Chat1`
    FOREIGN KEY (`Chat_idChat`)
    REFERENCES `mydb`.`Chat` (`idChat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_Friends1`
    FOREIGN KEY (`Friends_idFriends` , `Friends_to_user_id` , `Friends_from_user_id`)
    REFERENCES `mydb`.`Friends` (`idFriends` , `to_user_id` , `from_user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_Profile1`
    FOREIGN KEY (`Profile_idProfile`)
    REFERENCES `mydb`.`Profile` (`idProfile`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_User_Catalogue1`
    FOREIGN KEY (`Catalogue_idCatalogue`)
    REFERENCES `mydb`.`Catalogue` (`idCatalogue`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Message`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`Message` ;

CREATE TABLE IF NOT EXISTS `mydb`.`Message` (
  `idMessage` INT NOT NULL,
  `chat_id` VARCHAR(45) NOT NULL,
  `text` VARCHAR(45) NOT NULL,
  `Chat_idChat` INT NOT NULL,
  PRIMARY KEY (`idMessage`, `chat_id`),
  INDEX `fk_Message_Chat1_idx` (`Chat_idChat` ASC) VISIBLE,
  CONSTRAINT `fk_Message_Chat1`
    FOREIGN KEY (`Chat_idChat`)
    REFERENCES `mydb`.`Chat` (`idChat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`News`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`News` ;

CREATE TABLE IF NOT EXISTS `mydb`.`News` (
  `idNews` INT NOT NULL,
  `News` VARCHAR(45) NULL,
  `Admin_id` INT NULL,
  `Newscol` VARCHAR(45) NULL,
  PRIMARY KEY (`idNews`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`News_has_User`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`News_has_User` ;

CREATE TABLE IF NOT EXISTS `mydb`.`News_has_User` (
  `News_idNews` INT NOT NULL,
  `User_iduser` INT NOT NULL,
  PRIMARY KEY (`News_idNews`, `User_iduser`),
  INDEX `fk_News_has_User_User1_idx` (`User_iduser` ASC) VISIBLE,
  INDEX `fk_News_has_User_News1_idx` (`News_idNews` ASC) VISIBLE,
  CONSTRAINT `fk_News_has_User_News1`
    FOREIGN KEY (`News_idNews`)
    REFERENCES `mydb`.`News` (`idNews`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_News_has_User_User1`
    FOREIGN KEY (`User_iduser`)
    REFERENCES `mydb`.`User` (`iduser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
