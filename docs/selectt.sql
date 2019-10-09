-- MySQL Script generated by MySQL Workbench
-- Sat Jul 22 16:33:41 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dbo
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbo
-- -----------------------------------------------------


DROP TABLE IF EXISTS `dbo`.`Field`;
-- -----------------------------------------------------
-- Table `dbo`.`Field`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbo`.`Field` (
  `idField` INT NOT NULL AUTO_INCREMENT,
  `category` VARCHAR(64) NOT NULL,
  `atribute` VARCHAR(64) NOT NULL,
  `weight` DECIMAL(10,3) NOT NULL DEFAULT 0.0,
  `html_ID` VARCHAR(64) NULL,
  `html_Name` VARCHAR(64) NULL,
  `html_row` INT NULL DEFAULT 1,
  `html_label` VARCHAR(64) NULL,
  `html_placeholder` VARCHAR(64) NULL,
  `html_info` VARCHAR(128) NULL,
  PRIMARY KEY (`idField`),
  UNIQUE INDEX `idField_UNIQUE` (`idField` ASC)
  )
ENGINE = InnoDB;

USE `dbo` ;

-- -----------------------------------------------------
-- Placeholder table for view `dbo`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbo`.`view1` (`id` INT);

-- -----------------------------------------------------
-- View `dbo`.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `dbo`.`view1`;
USE `dbo`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


-- Field
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('1', 'Study Identification', 'Title', '0.00', 'Title', 'Title', '1', 'Title', 'Please enter with Title', '');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('2', 'Study Identification', 'Year', '0.00', 'Year', 'Year', '', 'Year', '', 'Year that the article was published');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('3', 'Study Identification', 'Bibliografic Reference (BibTex)', '0.00', 'Bibtex', 'Bibtex', '3', 'Bibliografic reference ', 'Please enter with Bibliografic reference (Bibtex)', '');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('4', 'Study Identification', 'Link (URL)', '0.00', 'Link', 'Link', '1', 'Link', 'Please enter with Link (URL)', 'Link to the article');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('5', 'Programming model', 'Execution platformm ', '0.70', 'ExecutionPlatform', 'ExecutionPlatform', '1', 'Execution platformm ', 'Please enter with Execution platformm ', 'Execution platform that the software under test executes');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('6', 'Programming model', 'Development paradigm ', '0.61', 'DevelopmentParadigm', 'DevelopmentParadigm', '1', 'Development paradigm ', 'Please enter with Development paradigm ', 'Concurrent paradigm for process interaction');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('7', 'Programming model', 'Programming language ', '0.59', 'ProgrammingLanguage', 'ProgrammingLanguage', '1', 'Programming language ', 'Please enter with Programming language ', 'Programming language and/or runtime libraries that the software under testing was developed');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('8', 'General testing characteristics', 'Technique', '0.76', 'TestingTechnique', 'TestingTechnique', '1', 'Technique', 'Please enter with Testing Technique', 'Type of testing technique proposed');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('9', 'General testing characteristics', 'Test approach', '0.00', 'TestApproach', 'TestApproach', '1', 'Test approach', 'Please enter with Test approach', 'Test data generation');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('10', 'General testing characteristics', 'Testing level', '0.69', 'TestingLevel', 'TestingLevel', '1', 'Testing level', 'Please enter with Testing level', 'Testing level that the technique was applied');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('11', 'General testing characteristics', 'Test case generation', '0.00', 'TestCaseGeneration', 'TestCaseGeneration', '1', 'Test case generation', 'Please enter with Test case generation', 'Synchronization interleaving mechanism');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('12', 'General testing characteristics', 'Input', '0.00', 'Input', 'Input', '1', 'Input', 'Please enter with Input', 'Expected input for a test case');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('13', 'General testing characteristics', 'Output', '0.00', 'Output', 'Output', '2', 'Output', 'Please enter with Output/Response variable', 'Expected output for a test case');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('14', 'General testing characteristics', 'Quality attribute', '0.37', 'QualityAttribute', 'QualityAttribute', '1', 'Quality attribute', 'Please enter with Quality attribute', 'Software quality characteristic that the technique is able to evaluate');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('15', 'General testing characteristics', 'Type of study', '0.66', 'TypeOfStudy', 'TypeOfStudy', '1', 'Type of study', 'Please enter with Type of study', 'Type of empirical study applied to validate teh testing technique');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('16', 'Concurrent testing characteristics', 'Testing analysis', '0.71', 'TestingAnalysis', 'TestingAnalysis', '1', 'Testing analysis', 'Please enter with Testing analysis', 'Type of analysis used by the technique ');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('17', 'Concurrent testing characteristics', 'Concurrent paradigm', '0.62', 'ConcurrentParadigm', 'ConcurrentParadigm', '1', 'Concurrent paradigm', 'Please enter with Concurrent paradigm', 'Development Context/Objective of the software under testing');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('18', 'Concurrent testing characteristics', 'Replay mechanism', '0.54', 'ReplayMechanism', 'ReplayMechanism', '1', 'Replay mechanism', 'Please enter with Replay mechanism', 'Type of replay mechanism used to re-execute the program during the testing');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('19', 'Concurrent testing characteristics', 'Program representation', '0.00', 'ProgramRepresentation', 'ProgramRepresentation', '1', 'Program representation', 'Please enter with Program representation', 'The program representation that captures the relevant information to the testing');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('20', 'Concurrent testing characteristics', 'State space reduction', '0.00', 'StateSpaceReduction', 'StateSpaceReduction', '1', 'State space reduction', 'Please enter with State space reduction', 'The technique used to treat the state explosion problem');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('21', 'Concurrent testing characteristics', 'Concurrent bugs', '0.80', 'ConcurrentBugs', 'ConcurrentBugs', '1', 'Concurrent bugs', 'Please enter with Concurrent bugs', 'The type of concurrent bugs identified by the testing technique');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('22', 'Testing tool support', 'Tool name', '0.00', 'ToolName', 'ToolName', '1', 'Tool name', 'Please enter with Tool name', 'Name of the tool');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('23', 'Testing tool support', 'Cost', '0.69', 'Cost', 'Cost', '1', 'Cost', 'Please enter with Cost', 'The cost associated with the tool');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('24', 'Testing tool support', 'Language', '0.00', 'Language', 'Language', '1', 'Language', 'Please enter with Language', 'The programming language and/or runtime libraries supported by the tool');
INSERT INTO `dbo`.`Field` (`idField`, `category`, `atribute`, `weight`, `html_ID`, `html_Name`, `html_row`, `html_label`, `html_placeholder`, `html_info`) VALUES ('25', 'Testing tool support', 'Platform', '0.00', 'Platform', 'Platform', '1', 'Platform', 'Please enter with Platform', 'The execution platform that the tool operate');

