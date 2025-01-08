-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema ERD
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema ERD
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `ERD` DEFAULT CHARACTER SET utf8 ;
USE `ERD` ;

-- -----------------------------------------------------
-- Table `ERD`.`user_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`user_role` (
  `role_id` INT(11) NOT NULL,
  `role_name` VARCHAR(50) NULL,
  `role_descriptions` TEXT NULL,
  `date_added` DATE NULL,
  `update_date` DATE NULL,
  `user_rolecol` VARCHAR(45) NULL,
  `referal_referal_id` INT(11) NOT NULL,
  PRIMARY KEY (`role_id`, `referal_referal_id`),
  INDEX `fk_user_role_referal1_idx` (`referal_referal_id` ASC) VISIBLE,
  CONSTRAINT `fk_user_role_referal1`
    FOREIGN KEY (`referal_referal_id`)
    REFERENCES `ERD`.`referal` (`referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`referal`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`referal` (
  `referal_id` INT(11) NOT NULL,
  `referral_date` DATE NULL,
  `reason` TEXT NULL,
  `update_date` DATE NULL,
  `referalcol` VARCHAR(45) NULL,
  `user_role_role_id` INT(11) NOT NULL,
  `user_role_referal_referal_id` INT(11) NOT NULL,
  `user_role_role_id1` INT(11) NOT NULL,
  `user_role_referal_referal_id1` INT(11) NOT NULL,
  `user_role_role_id2` INT(11) NOT NULL,
  `user_role_referal_referal_id2` INT(11) NOT NULL,
  PRIMARY KEY (`referal_id`),
  INDEX `fk_referal_user_role1_idx` (`user_role_role_id` ASC, `user_role_referal_referal_id` ASC) VISIBLE,
  INDEX `fk_referal_user_role2_idx` (`user_role_role_id1` ASC, `user_role_referal_referal_id1` ASC) VISIBLE,
  INDEX `fk_referal_user_role3_idx` (`user_role_role_id2` ASC, `user_role_referal_referal_id2` ASC) VISIBLE,
  CONSTRAINT `fk_referal_user_role1`
    FOREIGN KEY (`user_role_role_id` , `user_role_referal_referal_id`)
    REFERENCES `ERD`.`user_role` (`role_id` , `referal_referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_referal_user_role2`
    FOREIGN KEY (`user_role_role_id1` , `user_role_referal_referal_id1`)
    REFERENCES `ERD`.`user_role` (`role_id` , `referal_referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_referal_user_role3`
    FOREIGN KEY (`user_role_role_id2` , `user_role_referal_referal_id2`)
    REFERENCES `ERD`.`user_role` (`role_id` , `referal_referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`user_id`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`user_id` (
  `user_id` INT(11) NOT NULL,
  `first_name` VARCHAR(50) NULL,
  `last_name` VARCHAR(50) NULL,
  `preferred_name` VARCHAR(50) NULL,
  `username` VARCHAR(50) NULL,
  `password` VARCHAR(100) NULL,
  `user_idcol` VARCHAR(45) NULL,
  `referal_referal_id` INT(11) NOT NULL,
  `referal_referal_id1` INT(11) NOT NULL,
  `referal_referal_id2` INT(11) NOT NULL,
  `treatment_idtreatment_id` INT(11) NOT NULL,
  `referal_referal_id3` INT(11) NOT NULL,
  `referal_referal_id4` INT(11) NOT NULL,
  `treatment_idtreatment_id1` INT(11) NOT NULL,
  PRIMARY KEY (`user_id`, `referal_referal_id`),
  INDEX `fk_user_id_referal1_idx` (`referal_referal_id` ASC) VISIBLE,
  INDEX `fk_user_id_referal2_idx` (`referal_referal_id1` ASC) VISIBLE,
  INDEX `fk_user_id_referal3_idx` (`referal_referal_id2` ASC) VISIBLE,
  INDEX `fk_user_id_treatment1_idx` (`treatment_idtreatment_id` ASC) VISIBLE,
  INDEX `fk_user_id_referal4_idx` (`referal_referal_id3` ASC) VISIBLE,
  INDEX `fk_user_id_referal5_idx` (`referal_referal_id4` ASC) VISIBLE,
  INDEX `fk_user_id_treatment2_idx` (`treatment_idtreatment_id1` ASC) VISIBLE,
  CONSTRAINT `fk_user_id_referal1`
    FOREIGN KEY (`referal_referal_id`)
    REFERENCES `ERD`.`referal` (`referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id_referal2`
    FOREIGN KEY (`referal_referal_id1`)
    REFERENCES `ERD`.`referal` (`referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id_referal3`
    FOREIGN KEY (`referal_referal_id2`)
    REFERENCES `ERD`.`referal` (`referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id_treatment1`
    FOREIGN KEY (`treatment_idtreatment_id`)
    REFERENCES `ERD`.`treatment` (`idtreatment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id_referal4`
    FOREIGN KEY (`referal_referal_id3`)
    REFERENCES `ERD`.`referal` (`referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id_referal5`
    FOREIGN KEY (`referal_referal_id4`)
    REFERENCES `ERD`.`referal` (`referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id_treatment2`
    FOREIGN KEY (`treatment_idtreatment_id1`)
    REFERENCES `ERD`.`treatment` (`idtreatment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`system_log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`system_log` (
  `log_id` INT(11) NOT NULL,
  `activity` TEXT NULL,
  `timestamp` DATETIME NULL,
  `ip_address` VARCHAR(100) NULL,
  `location` VARCHAR(100) NULL,
  `system_logcol` VARCHAR(45) NULL,
  PRIMARY KEY (`log_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`malaria_cases`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`malaria_cases` (
  `case_id` INT(11) NOT NULL,
  `date_of_diagnosis` DATE NULL,
  `type_of_malariia` VARCHAR(50) NULL,
  `malaria_casescol` VARCHAR(45) NULL,
  PRIMARY KEY (`case_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`interventions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`interventions` (
  `interventions_id` INT(11) NOT NULL,
  `type` VARCHAR(50) NULL,
  `start_date` DATE NULL,
  `end_date` DATE NULL,
  `outcome` VARCHAR(50) NULL,
  `date_added` DATE NULL,
  `update_date` DATE NULL,
  `interventionscol` VARCHAR(45) NULL,
  `system_log_log_id` INT(11) NOT NULL,
  `malaria_cases_case_id` INT(11) NOT NULL,
  `malaria_cases_case_id1` INT(11) NOT NULL,
  `malaria_cases_case_id2` INT(11) NOT NULL,
  PRIMARY KEY (`interventions_id`),
  INDEX `fk_interventions_system_log1_idx` (`system_log_log_id` ASC) VISIBLE,
  INDEX `fk_interventions_malaria_cases1_idx` (`malaria_cases_case_id` ASC) VISIBLE,
  INDEX `fk_interventions_malaria_cases2_idx` (`malaria_cases_case_id1` ASC) VISIBLE,
  INDEX `fk_interventions_malaria_cases3_idx` (`malaria_cases_case_id2` ASC) VISIBLE,
  CONSTRAINT `fk_interventions_system_log1`
    FOREIGN KEY (`system_log_log_id`)
    REFERENCES `ERD`.`system_log` (`log_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_interventions_malaria_cases1`
    FOREIGN KEY (`malaria_cases_case_id`)
    REFERENCES `ERD`.`malaria_cases` (`case_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_interventions_malaria_cases2`
    FOREIGN KEY (`malaria_cases_case_id1`)
    REFERENCES `ERD`.`malaria_cases` (`case_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_interventions_malaria_cases3`
    FOREIGN KEY (`malaria_cases_case_id2`)
    REFERENCES `ERD`.`malaria_cases` (`case_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`patient_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`patient_data` (
  `patient_id` INT(11) NOT NULL,
  `first_name` VARCHAR(50) NULL,
  `last_name` VARCHAR(50) NULL,
  `date_of_birth` DATE NULL,
  `gender` VARCHAR(10) NULL,
  `phone_number` VARCHAR(100) NULL,
  `next_of_kin` VARCHAR(100) NULL,
  `date_added` DATE NULL,
  `update_date` DATE NULL,
  `patient_datacol` VARCHAR(45) NULL,
  PRIMARY KEY (`patient_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`training`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`training` (
  `training_id` INT(11) NOT NULL,
  `training_type` VARCHAR(100) NULL,
  `training_date` DATE NULL,
  `completion_status` VARCHAR(50) NULL,
  `trainingcol` VARCHAR(45) NULL,
  `patient_data_patient_id` INT(11) NOT NULL,
  `laboratory_test_test_id` INT(11) NOT NULL,
  PRIMARY KEY (`training_id`, `laboratory_test_test_id`),
  INDEX `fk_training_patient_data1_idx` (`patient_data_patient_id` ASC) VISIBLE,
  INDEX `fk_training_laboratory_test1_idx` (`laboratory_test_test_id` ASC) VISIBLE,
  CONSTRAINT `fk_training_patient_data1`
    FOREIGN KEY (`patient_data_patient_id`)
    REFERENCES `ERD`.`patient_data` (`patient_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_training_laboratory_test1`
    FOREIGN KEY (`laboratory_test_test_id`)
    REFERENCES `ERD`.`laboratory_test` (`test_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`suppy_chain`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`suppy_chain` (
  `supply_id` INT(11) NOT NULL,
  `quantity_shipped` INT(11) NULL,
  `shippment_date` DATE NULL,
  `expected arrival date` DATE NULL,
  `status` VARCHAR(50) NULL,
  `update_date` DATE NULL,
  `suppy_chaincol` VARCHAR(45) NULL,
  `epidemiological_data_data_id` INT(11) NOT NULL,
  `epidemiological_data_data_id1` INT(11) NOT NULL,
  `epidemiological_data_data_id2` INT(11) NOT NULL,
  `treatment_idtreatment_id` INT(11) NOT NULL,
  PRIMARY KEY (`supply_id`),
  INDEX `fk_suppy_chain_epidemiological_data1_idx` (`epidemiological_data_data_id` ASC) VISIBLE,
  INDEX `fk_suppy_chain_epidemiological_data2_idx` (`epidemiological_data_data_id1` ASC) VISIBLE,
  INDEX `fk_suppy_chain_epidemiological_data3_idx` (`epidemiological_data_data_id2` ASC) VISIBLE,
  INDEX `fk_suppy_chain_treatment1_idx` (`treatment_idtreatment_id` ASC) VISIBLE,
  CONSTRAINT `fk_suppy_chain_epidemiological_data1`
    FOREIGN KEY (`epidemiological_data_data_id`)
    REFERENCES `ERD`.`epidemiological_data` (`data_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_suppy_chain_epidemiological_data2`
    FOREIGN KEY (`epidemiological_data_data_id1`)
    REFERENCES `ERD`.`epidemiological_data` (`data_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_suppy_chain_epidemiological_data3`
    FOREIGN KEY (`epidemiological_data_data_id2`)
    REFERENCES `ERD`.`epidemiological_data` (`data_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_suppy_chain_treatment1`
    FOREIGN KEY (`treatment_idtreatment_id`)
    REFERENCES `ERD`.`treatment` (`idtreatment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`health_facility`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`health_facility` (
  `facility_id` INT(11) NOT NULL,
  `facility_name` VARCHAR(100) NULL,
  `facility_type` INT(11) NULL,
  `capacity` INT(11) NULL,
  `contact_details` VARCHAR(100) NULL,
  `date_added` DATE NULL,
  `facility_head` VARCHAR(100) NULL,
  `health_facilitycol` VARCHAR(45) NULL,
  `patient_data_patient_id` INT(11) NOT NULL,
  `laboratory_test_test_id` INT(11) NOT NULL,
  `interventions_interventions_id` INT(11) NOT NULL,
  `user_role_role_id` INT(11) NOT NULL,
  `user_role_referal_referal_id` INT(11) NOT NULL,
  PRIMARY KEY (`facility_id`),
  INDEX `fk_health_facility_patient_data1_idx` (`patient_data_patient_id` ASC) VISIBLE,
  INDEX `fk_health_facility_laboratory_test1_idx` (`laboratory_test_test_id` ASC) VISIBLE,
  INDEX `fk_health_facility_interventions1_idx` (`interventions_interventions_id` ASC) VISIBLE,
  INDEX `fk_health_facility_user_role1_idx` (`user_role_role_id` ASC, `user_role_referal_referal_id` ASC) VISIBLE,
  CONSTRAINT `fk_health_facility_patient_data1`
    FOREIGN KEY (`patient_data_patient_id`)
    REFERENCES `ERD`.`patient_data` (`patient_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_health_facility_laboratory_test1`
    FOREIGN KEY (`laboratory_test_test_id`)
    REFERENCES `ERD`.`laboratory_test` (`test_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_health_facility_interventions1`
    FOREIGN KEY (`interventions_interventions_id`)
    REFERENCES `ERD`.`interventions` (`interventions_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_health_facility_user_role1`
    FOREIGN KEY (`user_role_role_id` , `user_role_referal_referal_id`)
    REFERENCES `ERD`.`user_role` (`role_id` , `referal_referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`epidemiological_data`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`epidemiological_data` (
  `data_id` INT(11) NOT NULL,
  `recorded_date` DATE NULL,
  `case_per_thousand_people` INT(11) NULL,
  `rainfall` INT(11) NULL,
  `average_temperatur` DECIMAL(5,2) NULL,
  `update_date` DATE NULL,
  `epidemiological_datacol` VARCHAR(45) NULL,
  `patient_data_patient_id` INT(11) NOT NULL,
  `suppy_chain_supply_id` INT(11) NOT NULL,
  `treatment_outcome_outcome_id` INT(11) NOT NULL,
  `health_facility_facility_id` INT(11) NOT NULL,
  PRIMARY KEY (`data_id`),
  INDEX `fk_epidemiological_data_patient_data_idx` (`patient_data_patient_id` ASC) VISIBLE,
  INDEX `fk_epidemiological_data_suppy_chain1_idx` (`suppy_chain_supply_id` ASC) VISIBLE,
  INDEX `fk_epidemiological_data_treatment_outcome1_idx` (`treatment_outcome_outcome_id` ASC) VISIBLE,
  INDEX `fk_epidemiological_data_health_facility1_idx` (`health_facility_facility_id` ASC) VISIBLE,
  CONSTRAINT `fk_epidemiological_data_patient_data`
    FOREIGN KEY (`patient_data_patient_id`)
    REFERENCES `ERD`.`patient_data` (`patient_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_epidemiological_data_suppy_chain1`
    FOREIGN KEY (`suppy_chain_supply_id`)
    REFERENCES `ERD`.`suppy_chain` (`supply_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_epidemiological_data_treatment_outcome1`
    FOREIGN KEY (`treatment_outcome_outcome_id`)
    REFERENCES `ERD`.`treatment_outcome` (`outcome_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_epidemiological_data_health_facility1`
    FOREIGN KEY (`health_facility_facility_id`)
    REFERENCES `ERD`.`health_facility` (`facility_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`laboratory_test`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`laboratory_test` (
  `test_id` INT(11) NOT NULL,
  `case_id` INT(11) NULL,
  `test_type` VARCHAR(50) NULL,
  `test_results` VARCHAR(50) NULL,
  `test_date` DATE NULL,
  `laboratory_testcol` VARCHAR(45) NULL,
  `training_training_id` INT(11) NOT NULL,
  `epidemiological_data_data_id` INT(11) NOT NULL,
  `health_facility_facility_id` INT(11) NOT NULL,
  `health_facility_facility_id1` INT(11) NOT NULL,
  `health_facility_facility_id2` INT(11) NOT NULL,
  `user_role_role_id` INT(11) NOT NULL,
  `interventions_interventions_id` INT(11) NOT NULL,
  `visit_records_visit_id` INT(11) NOT NULL,
  `visit_records_interventions_interventions_id` INT(11) NOT NULL,
  `training_training_id1` INT(11) NOT NULL,
  `training_laboratory_test_test_id` INT(11) NOT NULL,
  PRIMARY KEY (`test_id`),
  INDEX `fk_laboratory_test_training1_idx` (`training_training_id` ASC) VISIBLE,
  INDEX `fk_laboratory_test_epidemiological_data1_idx` (`epidemiological_data_data_id` ASC) VISIBLE,
  INDEX `fk_laboratory_test_health_facility1_idx` (`health_facility_facility_id` ASC) VISIBLE,
  INDEX `fk_laboratory_test_health_facility2_idx` (`health_facility_facility_id1` ASC) VISIBLE,
  INDEX `fk_laboratory_test_health_facility3_idx` (`health_facility_facility_id2` ASC) VISIBLE,
  INDEX `fk_laboratory_test_user_role1_idx` (`user_role_role_id` ASC) VISIBLE,
  INDEX `fk_laboratory_test_interventions1_idx` (`interventions_interventions_id` ASC) VISIBLE,
  INDEX `fk_laboratory_test_visit_records1_idx` (`visit_records_visit_id` ASC, `visit_records_interventions_interventions_id` ASC) VISIBLE,
  INDEX `fk_laboratory_test_training2_idx` (`training_training_id1` ASC, `training_laboratory_test_test_id` ASC) VISIBLE,
  CONSTRAINT `fk_laboratory_test_training1`
    FOREIGN KEY (`training_training_id`)
    REFERENCES `ERD`.`training` (`training_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboratory_test_epidemiological_data1`
    FOREIGN KEY (`epidemiological_data_data_id`)
    REFERENCES `ERD`.`epidemiological_data` (`data_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboratory_test_health_facility1`
    FOREIGN KEY (`health_facility_facility_id`)
    REFERENCES `ERD`.`health_facility` (`facility_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboratory_test_health_facility2`
    FOREIGN KEY (`health_facility_facility_id1`)
    REFERENCES `ERD`.`health_facility` (`facility_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboratory_test_health_facility3`
    FOREIGN KEY (`health_facility_facility_id2`)
    REFERENCES `ERD`.`health_facility` (`facility_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboratory_test_user_role1`
    FOREIGN KEY (`user_role_role_id`)
    REFERENCES `ERD`.`user_role` (`role_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboratory_test_interventions1`
    FOREIGN KEY (`interventions_interventions_id`)
    REFERENCES `ERD`.`interventions` (`interventions_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboratory_test_visit_records1`
    FOREIGN KEY (`visit_records_visit_id` , `visit_records_interventions_interventions_id`)
    REFERENCES `ERD`.`visit_records` (`visit_id` , `interventions_interventions_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_laboratory_test_training2`
    FOREIGN KEY (`training_training_id1` , `training_laboratory_test_test_id`)
    REFERENCES `ERD`.`training` (`training_id` , `laboratory_test_test_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`visit_records`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`visit_records` (
  `visit_id` INT(11) NOT NULL,
  `visit_number` INT(11) NULL,
  `visit_date` DATE NULL,
  `date_added` DATE NULL,
  `date_update` DATE NULL,
  `interventions_interventions_id` INT(11) NOT NULL,
  `laboratory_test_test_id` INT(11) NOT NULL,
  `referal_referal_id` INT(11) NOT NULL,
  `referal_referal_id1` INT(11) NOT NULL,
  PRIMARY KEY (`visit_id`, `interventions_interventions_id`),
  INDEX `fk_visit_records_interventions1_idx` (`interventions_interventions_id` ASC) VISIBLE,
  INDEX `fk_visit_records_laboratory_test1_idx` (`laboratory_test_test_id` ASC) VISIBLE,
  INDEX `fk_visit_records_referal1_idx` (`referal_referal_id` ASC) VISIBLE,
  INDEX `fk_visit_records_referal2_idx` (`referal_referal_id1` ASC) VISIBLE,
  CONSTRAINT `fk_visit_records_interventions1`
    FOREIGN KEY (`interventions_interventions_id`)
    REFERENCES `ERD`.`interventions` (`interventions_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_visit_records_laboratory_test1`
    FOREIGN KEY (`laboratory_test_test_id`)
    REFERENCES `ERD`.`laboratory_test` (`test_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_visit_records_referal1`
    FOREIGN KEY (`referal_referal_id`)
    REFERENCES `ERD`.`referal` (`referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_visit_records_referal2`
    FOREIGN KEY (`referal_referal_id1`)
    REFERENCES `ERD`.`referal` (`referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`treatment_outcome`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`treatment_outcome` (
  `outcome_id` INT(11) NOT NULL,
  `outcome_name` VARCHAR(50) NULL,
  `outcome_description` TEXT NULL,
  `date_added` DATE NULL,
  `added_by` INT(11) NULL,
  `update_date` DATE NULL,
  `treatment_outcomecol` VARCHAR(45) NULL,
  `visit_records_visit_id` INT(11) NOT NULL,
  `visit_records_interventions_interventions_id` INT(11) NOT NULL,
  `visit_records_visit_id1` INT(11) NOT NULL,
  `visit_records_interventions_interventions_id1` INT(11) NOT NULL,
  `laboratory_test_test_id` INT(11) NOT NULL,
  `laboratory_test_test_id1` INT(11) NOT NULL,
  `laboratory_test_test_id2` INT(11) NOT NULL,
  PRIMARY KEY (`outcome_id`),
  INDEX `fk_treatment_outcome_visit_records1_idx` (`visit_records_visit_id` ASC, `visit_records_interventions_interventions_id` ASC) VISIBLE,
  INDEX `fk_treatment_outcome_visit_records2_idx` (`visit_records_visit_id1` ASC, `visit_records_interventions_interventions_id1` ASC) VISIBLE,
  INDEX `fk_treatment_outcome_laboratory_test1_idx` (`laboratory_test_test_id` ASC) VISIBLE,
  INDEX `fk_treatment_outcome_laboratory_test2_idx` (`laboratory_test_test_id1` ASC) VISIBLE,
  INDEX `fk_treatment_outcome_laboratory_test3_idx` (`laboratory_test_test_id2` ASC) VISIBLE,
  CONSTRAINT `fk_treatment_outcome_visit_records1`
    FOREIGN KEY (`visit_records_visit_id` , `visit_records_interventions_interventions_id`)
    REFERENCES `ERD`.`visit_records` (`visit_id` , `interventions_interventions_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_outcome_visit_records2`
    FOREIGN KEY (`visit_records_visit_id1` , `visit_records_interventions_interventions_id1`)
    REFERENCES `ERD`.`visit_records` (`visit_id` , `interventions_interventions_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_outcome_laboratory_test1`
    FOREIGN KEY (`laboratory_test_test_id`)
    REFERENCES `ERD`.`laboratory_test` (`test_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_outcome_laboratory_test2`
    FOREIGN KEY (`laboratory_test_test_id1`)
    REFERENCES `ERD`.`laboratory_test` (`test_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_outcome_laboratory_test3`
    FOREIGN KEY (`laboratory_test_test_id2`)
    REFERENCES `ERD`.`laboratory_test` (`test_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`treatment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`treatment` (
  `idtreatment_id` INT(11) NOT NULL,
  `treatmen_name` VARCHAR(50) NULL,
  `treatment_descriptions` TEXT NULL,
  `dosage` VARCHAR(50) NULL,
  `side_effects` TEXT NULL,
  `date_added` DATE NULL,
  `update_date` DATE NULL,
  `treatmentcol` VARCHAR(45) NULL,
  `user_id_user_id` INT(11) NOT NULL,
  `user_id_referal_referal_id` INT(11) NOT NULL,
  `treatment_outcome_outcome_id` INT(11) NOT NULL,
  `user_id_user_id1` INT(11) NOT NULL,
  `user_id_referal_referal_id1` INT(11) NOT NULL,
  `visit_records_visit_id` INT(11) NOT NULL,
  `visit_records_interventions_interventions_id` INT(11) NOT NULL,
  `visit_records_visit_id1` INT(11) NOT NULL,
  `visit_records_interventions_interventions_id1` INT(11) NOT NULL,
  `visit_records_visit_id2` INT(11) NOT NULL,
  `visit_records_interventions_interventions_id2` INT(11) NOT NULL,
  `health_facility_facility_id` INT(11) NOT NULL,
  PRIMARY KEY (`idtreatment_id`),
  INDEX `fk_treatment_user_id1_idx` (`user_id_user_id` ASC, `user_id_referal_referal_id` ASC) VISIBLE,
  INDEX `fk_treatment_treatment_outcome1_idx` (`treatment_outcome_outcome_id` ASC) VISIBLE,
  INDEX `fk_treatment_user_id2_idx` (`user_id_user_id1` ASC, `user_id_referal_referal_id1` ASC) VISIBLE,
  INDEX `fk_treatment_visit_records1_idx` (`visit_records_visit_id` ASC, `visit_records_interventions_interventions_id` ASC) VISIBLE,
  INDEX `fk_treatment_visit_records2_idx` (`visit_records_visit_id1` ASC, `visit_records_interventions_interventions_id1` ASC) VISIBLE,
  INDEX `fk_treatment_visit_records3_idx` (`visit_records_visit_id2` ASC, `visit_records_interventions_interventions_id2` ASC) VISIBLE,
  INDEX `fk_treatment_health_facility1_idx` (`health_facility_facility_id` ASC) VISIBLE,
  CONSTRAINT `fk_treatment_user_id1`
    FOREIGN KEY (`user_id_user_id` , `user_id_referal_referal_id`)
    REFERENCES `ERD`.`user_id` (`user_id` , `referal_referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_treatment_outcome1`
    FOREIGN KEY (`treatment_outcome_outcome_id`)
    REFERENCES `ERD`.`treatment_outcome` (`outcome_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_user_id2`
    FOREIGN KEY (`user_id_user_id1` , `user_id_referal_referal_id1`)
    REFERENCES `ERD`.`user_id` (`user_id` , `referal_referal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_visit_records1`
    FOREIGN KEY (`visit_records_visit_id` , `visit_records_interventions_interventions_id`)
    REFERENCES `ERD`.`visit_records` (`visit_id` , `interventions_interventions_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_visit_records2`
    FOREIGN KEY (`visit_records_visit_id1` , `visit_records_interventions_interventions_id1`)
    REFERENCES `ERD`.`visit_records` (`visit_id` , `interventions_interventions_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_visit_records3`
    FOREIGN KEY (`visit_records_visit_id2` , `visit_records_interventions_interventions_id2`)
    REFERENCES `ERD`.`visit_records` (`visit_id` , `interventions_interventions_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_treatment_health_facility1`
    FOREIGN KEY (`health_facility_facility_id`)
    REFERENCES `ERD`.`health_facility` (`facility_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`resource`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`resource` (
  `resource_id` INT(11) NOT NULL,
  `resource_type` VARCHAR(50) NULL,
  `quantity` INT(11) NULL,
  `last_update_date` DATE NULL,
  `description` TEXT NULL,
  `date_added` DATE NULL,
  `update_date` DATE NULL,
  `resourcecol` VARCHAR(45) NULL,
  `treatment_idtreatment_id` INT(11) NOT NULL,
  PRIMARY KEY (`resource_id`),
  INDEX `fk_resource_treatment1_idx` (`treatment_idtreatment_id` ASC) VISIBLE,
  CONSTRAINT `fk_resource_treatment1`
    FOREIGN KEY (`treatment_idtreatment_id`)
    REFERENCES `ERD`.`treatment` (`idtreatment_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`Geographical_location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`Geographical_location` (
  `location_id` INT(11) NOT NULL,
  `village` VARCHAR(100) NULL,
  `parish` VARCHAR(100) NULL,
  `sub_county` VARBINARY(100) NULL,
  `county` VARCHAR(45) NULL,
  `region` VARCHAR(45) NULL,
  `population` INT(11) NULL,
  `coordinates` VARCHAR(45) NULL,
  `malaria_risk level` VARCHAR(45) NULL,
  `Geographical_locationcol1` VARCHAR(50) NULL,
  `Health facilities count` INT(11) NULL,
  `ITN coverage decimal` DECIMAL(5,2) NULL,
  `report cases` INT(11) NULL,
  `resource_resource_id` INT(11) NOT NULL,
  `treatment_outcome_outcome_id` INT(11) NOT NULL,
  `suppy_chain_supply_id` INT(11) NOT NULL,
  `suppy_chain_supply_id1` INT(11) NOT NULL,
  `Geographical_location_location_id` INT(11) NOT NULL,
  `suppy_chain_supply_id2` INT(11) NOT NULL,
  PRIMARY KEY (`location_id`),
  INDEX `fk_Geographical_location_resource1_idx` (`resource_resource_id` ASC) VISIBLE,
  INDEX `fk_Geographical_location_treatment_outcome1_idx` (`treatment_outcome_outcome_id` ASC) VISIBLE,
  INDEX `fk_Geographical_location_suppy_chain1_idx` (`suppy_chain_supply_id` ASC) VISIBLE,
  INDEX `fk_Geographical_location_suppy_chain2_idx` (`suppy_chain_supply_id1` ASC) VISIBLE,
  INDEX `fk_Geographical_location_Geographical_location1_idx` (`Geographical_location_location_id` ASC) VISIBLE,
  INDEX `fk_Geographical_location_suppy_chain3_idx` (`suppy_chain_supply_id2` ASC) VISIBLE,
  CONSTRAINT `fk_Geographical_location_resource1`
    FOREIGN KEY (`resource_resource_id`)
    REFERENCES `ERD`.`resource` (`resource_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Geographical_location_treatment_outcome1`
    FOREIGN KEY (`treatment_outcome_outcome_id`)
    REFERENCES `ERD`.`treatment_outcome` (`outcome_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Geographical_location_suppy_chain1`
    FOREIGN KEY (`suppy_chain_supply_id`)
    REFERENCES `ERD`.`suppy_chain` (`supply_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Geographical_location_suppy_chain2`
    FOREIGN KEY (`suppy_chain_supply_id1`)
    REFERENCES `ERD`.`suppy_chain` (`supply_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Geographical_location_Geographical_location1`
    FOREIGN KEY (`Geographical_location_location_id`)
    REFERENCES `ERD`.`Geographical_location` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Geographical_location_suppy_chain3`
    FOREIGN KEY (`suppy_chain_supply_id2`)
    REFERENCES `ERD`.`suppy_chain` (`supply_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`facility_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`facility_type` (
  `facility_type_id` INT(11) NOT NULL,
  `name` VARCHAR(50) NULL,
  `description` TEXT NULL,
  `date_added` DATE NULL,
  `date_update` DATE NULL,
  `` VARCHAR(45) NULL,
  PRIMARY KEY (`facility_type_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`malaria_type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`malaria_type` (
  `type_id` INT(11) NOT NULL,
  `type_name` VARCHAR(50) NULL,
  `descriptions` TEXT NULL,
  `date_added` DATE NULL,
  `added_by` INT(11) NULL,
  `update_date` DATE NULL,
  `malaria_typecol` VARCHAR(45) NULL,
  `user_id_user_id` INT(11) NOT NULL,
  PRIMARY KEY (`type_id`),
  INDEX `fk_malaria_type_user_id1_idx` (`user_id_user_id` ASC) VISIBLE,
  CONSTRAINT `fk_malaria_type_user_id1`
    FOREIGN KEY (`user_id_user_id`)
    REFERENCES `ERD`.`user_id` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`laboratory_tests_visit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`laboratory_tests_visit` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`malaria_cases_by_region`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`malaria_cases_by_region` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ERD`.`patient_visit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ERD`.`patient_visit` (
)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
