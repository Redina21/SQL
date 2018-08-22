SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `ICS311` ;
CREATE SCHEMA IF NOT EXISTS `ICS311` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `ICS311` ;

-- -----------------------------------------------------
-- Table `Employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Employee` ;

CREATE  TABLE IF NOT EXISTS `Employee` (
  `employeeId` INT NOT NULL AUTO_INCREMENT ,
  `firstName` VARCHAR(45) NULL ,
  `lastName` VARCHAR(45) NULL ,
  `hourlyPayRate` DECIMAL(10,2) NULL ,
  `userName` VARCHAR(45) NULL ,
  `password` VARCHAR(45) NULL ,
  `hireDate` DATE NULL ,
  PRIMARY KEY (`employeeId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Address` ;

CREATE  TABLE IF NOT EXISTS `Address` (
  `addressId` INT NOT NULL AUTO_INCREMENT ,
  `employeeId` INT NOT NULL ,
  `street` VARCHAR(45) NULL ,
  `city` VARCHAR(45) NULL ,
  `state` VARCHAR(45) NULL ,
  `zipCode` VARCHAR(45) NULL ,
  PRIMARY KEY (`addressId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Email`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Email` ;

CREATE  TABLE IF NOT EXISTS `Email` (
  `emailId` INT NOT NULL ,
  `employeeId` INT NOT NULL ,
  `emailAddress` VARCHAR(45) NULL ,
  PRIMARY KEY (`emailId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Phone`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Phone` ;

CREATE  TABLE IF NOT EXISTS `Phone` (
  `phoneId` INT NOT NULL ,
  `employeeId` INT NOT NULL ,
  `phoneNumber` VARCHAR(45) NULL ,
  PRIMARY KEY (`phoneId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmergencyContact`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EmergencyContact` ;

CREATE  TABLE IF NOT EXISTS `EmergencyContact` (
  `contactId` INT NOT NULL ,
  `employeeId` INT NOT NULL ,
  `contactFirstName` VARCHAR(45) NULL ,
  `contactLastName` VARCHAR(45) NULL ,
  `contactPhone` VARCHAR(45) NULL ,
  PRIMARY KEY (`contactId`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `WorkHours`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `WorkHours` ;

CREATE  TABLE IF NOT EXISTS `WorkHours` (
  `employeeID` INT NOT NULL ,
  `date` DATE NOT NULL ,
  `startTime` TIME NOT NULL ,
  `endTime` TIME NULL ,
  `totalHours` INT NULL ,
  PRIMARY KEY (`employeeID`, `date`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmployeePaystubs`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `EmployeePaystubs` ;

CREATE  TABLE IF NOT EXISTS `EmployeePaystubs` (
  `employeeId` INT NOT NULL ,
  `date` DATE NOT NULL ,
  `totalWorkHours` INT NULL ,
  `totalVacationHours` INT NULL ,
  `payPeriodHours` INT NULL ,
  PRIMARY KEY (`employeeId`, `date`) )
ENGINE = InnoDB;ENGINE = InnoDB;

USE `ICS499` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
