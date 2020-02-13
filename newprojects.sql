-- Pega o último id das técnicas
SELECT @resulttechnique_id := MAX(id) FROM resulttechnique;
-- Uma um na chave
SET @var_id := @resulttechnique_id + 1;


-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `dbo`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`)
VALUES (  @var_id , 'title', 'user name', NOW(), 'yyyy-mm-dd');


INSERT INTO `dbo`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'executionPlatform');
-- INSERT INTO `dbo`.`ResultExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( 2 ,'Linux');

INSERT INTO `dbo`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'objective');
-- INSERT INTO `dbo`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  1 ,'Distributed systems');

INSERT INTO `dbo`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'programmingLanguage');
-- INSERT INTO `dbo`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  1 ,'Java');

INSERT INTO `dbo`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'testingTechnique');
-- INSERT INTO `dbo`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES (  1 ,'Model based testing');

INSERT INTO `dbo`.  `ResultTestDataGeneration`  (`idTechniqueResult`,   `testDataGeneration`  ) VALUES (  @var_id ,'testDataGeneration');
-- INSERT INTO `dbo`.  `ResultTestDataGeneration`  (`idTechniqueResult`,   `testDataGeneration`  ) VALUES (  1 ,'Thread interaction models');

INSERT INTO `dbo`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'testingLevel');
-- INSERT INTO `dbo`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  1 ,'system');

INSERT INTO `dbo`.  `ResultSynchronizationMechanism`  (`idTechniqueResult`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'synchronizationMechanism');
-- INSERT INTO `dbo`.  `ResultSynchronizationMechanism`  (`idTechniqueResult`,   `synchronizationMechanism`  ) VALUES (  1 ,'reachability testing');

INSERT INTO `dbo`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'input');
-- INSERT INTO `dbo`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  1 ,'LTS model');

INSERT INTO `dbo`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'output');
-- INSERT INTO `dbo`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  1 ,'partially-ordered sequences');

INSERT INTO `dbo`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'qualityAttribute');
-- INSERT INTO `dbo`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  1 ,'effectiveness');

INSERT INTO `dbo`.  `ResultTypeOfStudy` (`idTechniqueResult`,   `typeOfStudy` ) VALUES (  @var_id ,'typeOfStudy');
-- INSERT INTO `dbo`.  `ResultTypeOfStudy` (`idTechniqueResult`,   `typeOfStudy` ) VALUES (  1 ,'Case study');

INSERT INTO `dbo`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'testingAnalysis');
-- INSERT INTO `dbo`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  1 ,'Dynamic');

INSERT INTO `dbo`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');
-- INSERT INTO `dbo`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  1 ,'Message passing');

INSERT INTO `dbo`.  `ResultReplayMechanism` (`idTechniqueResult`,   `replayMechanism` ) VALUES (  @var_id ,'deterministic execution');
-- INSERT INTO `dbo`.  `ResultReplayMechanism` (`idTechniqueResult`,   `replayMechanism` ) VALUES (  1 ,'deterministic execution');

INSERT INTO `dbo`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'abstract LTS model');
-- INSERT INTO `dbo`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  1 ,'abstract LTS model');

INSERT INTO `dbo`.  `ResultInstrumentation` (`idTechniqueResult`,   `instrumentation` ) VALUES (  @var_id ,'No Information');
-- INSERT INTO `dbo`.  `ResultInstrumentation` (`idTechniqueResult`,   `instrumentation` ) VALUES (  1 ,'No Information');

INSERT INTO `dbo`.  `ResultStateSpaceReduction` (`idTechniqueResult`,   `stateSpaceReduction` ) VALUES (  @var_id ,'stateSpaceReduction');
-- INSERT INTO `dbo`.  `ResultStateSpaceReduction` (`idTechniqueResult`,   `stateSpaceReduction` ) VALUES (  1 ,'incremental reachability analysis and new ATL reduction algoritm');

INSERT INTO `dbo`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'concurrentBugs');
-- INSERT INTO `dbo`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  1 ,'bugs inserted by the researcher');

INSERT INTO `dbo`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'toolName');
-- INSERT INTO `dbo`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  2 ,'ValiMPI');

INSERT INTO `dbo`.  `ResultCost`  (`idTechniqueResult`,   `cost`  ) VALUES (  @var_id ,'cost');
-- INSERT INTO `dbo`.  `ResultCost`  (`idTechniqueResult`,   `cost`  ) VALUES (  2 ,'Academic');

INSERT INTO `dbo`.  `ResultPlatformTool`  (`idTechniqueResult`,   `platformTool`  ) VALUES (  @var_id ,'platformTool');
-- INSERT INTO `dbo`.  `PlatformTool`  (`idTechniqueResult`,   `platformTool`  ) VALUES (  2 ,'Linux');

SET @var_id := @var_id + 1;
