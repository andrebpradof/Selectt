-- Pega o último id das técnicas
SELECT @resulttechnique_id := MAX(id) FROM resulttechnique;
-- Uma um na chave
SET @var_id := @resulttechnique_id + 1;


-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `dbo`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'title', 'user name', NOW(), 'yyyy-mm-dd', 'descrição');


INSERT INTO `dbo`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'executionPlatform');
-- INSERT INTO `dbo`.`ResultExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( 2 ,'Linux');

INSERT INTO `dbo`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'objective');
-- INSERT INTO `dbo`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  1 ,'Distributed systems');

INSERT INTO `dbo`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'programmingLanguage');
-- INSERT INTO `dbo`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  1 ,'Java');

INSERT INTO `dbo`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'testingTechnique');
-- INSERT INTO `dbo`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES (  1 ,'Model based testing');

INSERT INTO `dbo`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'testingLevel');
-- INSERT INTO `dbo`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  1 ,'system');

INSERT INTO `dbo`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'input');
-- INSERT INTO `dbo`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  1 ,'LTS model');

INSERT INTO `dbo`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'output');
-- INSERT INTO `dbo`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  1 ,'partially-ordered sequences');

INSERT INTO `dbo`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'qualityAttribute');
-- INSERT INTO `dbo`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  1 ,'effectiveness');

INSERT INTO `dbo`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'testingAnalysis');
-- INSERT INTO `dbo`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  1 ,'Dynamic');

INSERT INTO `dbo`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');
-- INSERT INTO `dbo`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  1 ,'Message passing');

INSERT INTO `dbo`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'abstract LTS model');
-- INSERT INTO `dbo`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  1 ,'abstract LTS model');

INSERT INTO `dbo`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'concurrentBugs');
-- INSERT INTO `dbo`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  1 ,'bugs inserted by the researcher');

INSERT INTO `dbo`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'toolName');
-- INSERT INTO `dbo`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  2 ,'ValiMPI');

INSERT INTO `dbo`.  `ResultSuggestedTechnique`  (`idTechniqueResult`, `idTechnique`, `titleTechnique`) VALUES (  @var_id ,id da técnica, 'Título da técnica');

SET @var_id := @var_id + 1;
