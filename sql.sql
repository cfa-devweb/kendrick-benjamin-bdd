-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema library
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema library
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `library` ;
CREATE DATABASE IF NOT EXISTS `library` DEFAULT CHARACTER SET utf8mb4 ;
USE `library` ;

-- -----------------------------------------------------
-- Table `library`.`admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`admin` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(55) NOT NULL,
  `first_name` VARCHAR(55) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`author` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(55) NOT NULL,
  `first_name` VARCHAR(55) NOT NULL,
  `nationality` VARCHAR(55) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`book` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(55) NULL DEFAULT NULL,
  `publisher` VARCHAR(55) NULL DEFAULT NULL,
  `height` VARCHAR(55) NULL DEFAULT NULL,
  `code` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`customer` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(55) NULL DEFAULT NULL,
  `first_name` VARCHAR(55) NULL DEFAULT NULL,
  `date_birth` DATE NULL DEFAULT NULL,
  `city` VARCHAR(55) NULL DEFAULT NULL,
  `phone` VARCHAR(55) NULL DEFAULT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  `adress` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`register`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`register` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date_begin` DATE NOT NULL,
  `date_end` DATE NULL,
  `customer_id` INT NOT NULL,
  `admin_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `customer_id` (`customer_id` ASC) VISIBLE,
  INDEX `admin_id` (`admin_id` ASC) VISIBLE,
  CONSTRAINT `register_ibfk_1`
    FOREIGN KEY (`customer_id`)
    REFERENCES `library`.`customer` (`id`),
  CONSTRAINT `register_ibfk_3`
    FOREIGN KEY (`admin_id`)
    REFERENCES `library`.`admin` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`booking`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`booking` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `date_booking` DATE NOT NULL,
  `register_id` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `register_id` (`register_id` ASC) VISIBLE,
  CONSTRAINT `booking_ibfk_1`
    FOREIGN KEY (`register_id`)
    REFERENCES `library`.`register` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`type` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(55) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`book_has_register`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`book_has_register` (
  `book_id` INT NOT NULL,
  `register_id` INT NOT NULL,
  PRIMARY KEY (`book_id`, `register_id`),
  INDEX `fk_book_has_register_register1_idx` (`register_id` ASC) VISIBLE,
  INDEX `fk_book_has_register_book1_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `fk_book_has_register_book1`
    FOREIGN KEY (`book_id`)
    REFERENCES `library`.`book` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_has_register_register1`
    FOREIGN KEY (`register_id`)
    REFERENCES `library`.`register` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`book_has_author`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`book_has_author` (
  `book_id` INT NOT NULL,
  `author_id` INT NOT NULL,
  PRIMARY KEY (`book_id`, `author_id`),
  INDEX `fk_book_has_author_author1_idx` (`author_id` ASC) VISIBLE,
  INDEX `fk_book_has_author_book1_idx` (`book_id` ASC) VISIBLE,
  CONSTRAINT `fk_book_has_author_book1`
    FOREIGN KEY (`book_id`)
    REFERENCES `library`.`book` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_book_has_author_author1`
    FOREIGN KEY (`author_id`)
    REFERENCES `library`.`author` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `library`.`type_has_book`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `library`.`type_has_book` (
  `type_id` INT NOT NULL,
  `book_id` INT NOT NULL,
  PRIMARY KEY (`type_id`, `book_id`),
  INDEX `fk_type_has_book_book1_idx` (`book_id` ASC) VISIBLE,
  INDEX `fk_type_has_book_type1_idx` (`type_id` ASC) VISIBLE,
  CONSTRAINT `fk_type_has_book_type1`
    FOREIGN KEY (`type_id`)
    REFERENCES `library`.`type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_type_has_book_book1`
    FOREIGN KEY (`book_id`)
    REFERENCES `library`.`book` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;