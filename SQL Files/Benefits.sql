USE ICS311;

-- -----------------------------------------------------
-- Table `Benefits`
-- -----------------------------------------------------

DROP TABLE IF EXISTS `Benefits` ;

CREATE  TABLE IF NOT EXISTS `Benefits` (
  `employeeId` INT NOT NULL ,
  `healthInsurance` VARCHAR(45) NULL ,
  `dentalInsurance` VARCHAR(45) NULL ,
  `401kPlan` DECIMAL(10,2) NULL ,
  PRIMARY KEY (`employeeId`) )
ENGINE = InnoDB;

insert into Benefits (employeeId, healthInsurance, dentalInsurance) values (1, 'Blue Cross Blue Shield', 'Blue Cross Blue Shield');
insert into Benefits (employeeId, healthInsurance, dentalInsurance) values (2, 'Blue Cross Blue Shield', 'State Farm');
insert into Benefits (employeeId, healthInsurance, dentalInsurance) values (3, 'State Farm', 'State Farm');
insert into Benefits (employeeId, healthInsurance, dentalInsurance) values (4, 'State Farm', 'State Farm');
insert into Benefits (employeeId, healthInsurance, dentalInsurance) values (5, 'Blue Cross Blue Shield', 'Blue Cross Blue Shield');
insert into Benefits (employeeId, healthInsurance, dentalInsurance) values (6, 'State Farm', 'Blue Cross Blue Shield');
insert into Benefits (employeeId, healthInsurance, dentalInsurance) values (7, 'Blue Cross Blue Shield', 'State Farm');
insert into Benefits (employeeId, healthInsurance, dentalInsurance) values (8, 'State Farm', 'State Farm');
insert into Benefits (employeeId, healthInsurance, dentalInsurance) values (9, 'Blue Cross Blue Shield', 'State Farm');
insert into Benefits (employeeId, healthInsurance, dentalInsurance) values (10, 'State Farm', 'Blue Cross Blue Shield');

