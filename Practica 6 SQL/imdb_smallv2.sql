SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `imdb_small` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `imdb_small` ;

-- -----------------------------------------------------
-- Table `imdb_small`.`actors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_small`.`actors` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  `gender` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `imdb_small`.`directors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_small`.`directors` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(100) NOT NULL,
  `last_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `imdb_small`.`genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_small`.`genres` (
  `id_genres` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_genres`))
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `imdb_small`.`movies_genres`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_small`.`movies_genres` (
  `id_movie_genres` INT NOT NULL,
  `id_genre` INT NOT NULL,
  
  INDEX `fk_genre_name` (`id_genre` ASC) VISIBLE,
  INDEX `fk_movies_id` (`id_movie_genres` ASC) VISIBLE,
  
  CONSTRAINT `fk_genre_name`
    FOREIGN KEY (`id_genre`)
    REFERENCES `imdb_small`.`genres` (`id_genres`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,	
  CONSTRAINT `fk_movies_genres`
    FOREIGN KEY (`id_movie_genres`)
    REFERENCES `imdb_small`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



-- -----------------------------------------------------
-- Table `imdb_small`.`movies`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_small`.`movies` (
  `id` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `year` INT NULL DEFAULT NULL,
  `rank` FLOAT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `imdb_small`.`movies_directors`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_small`.`movies_directors` (
 
  `directors_id` INT NOT NULL,
   `movies_id` INT NOT NULL,
  PRIMARY KEY (`movies_id`, `directors_id`),
  INDEX `fk_movies_directors_movies` (`movies_id` ASC) VISIBLE,
  INDEX `fk_movies_directors_directors` (`directors_id` ASC) VISIBLE,
  CONSTRAINT `fk_movies_directors_movies`
    FOREIGN KEY (`movies_id`)
    REFERENCES `imdb_small`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_movies_directors_directors`
    FOREIGN KEY (`directors_id`)
    REFERENCES `imdb_small`.`directors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




-- -----------------------------------------------------
-- Table `imdb_small`.`roles`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `imdb_small`.`roles` (
  `actors_id` INT NOT NULL,
  `movies_id` INT NOT NULL,
  `role` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`actors_id`, `movies_id`),
  INDEX `fk_roles_actors` (`actors_id` ASC) VISIBLE,
  INDEX `fk_roles_directors` (`movies_id` ASC) VISIBLE,
  CONSTRAINT `fk_roles_actors`
    FOREIGN KEY (`actors_id`)
    REFERENCES `imdb_small`.`actors` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_roles_directors`
    FOREIGN KEY (`movies_id`)
    REFERENCES `imdb_small`.`movies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
