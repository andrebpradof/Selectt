
-- Pega o último id das técnicas
SELECT @technique_id := MAX(id) FROM technique;
-- Soma um na chave
set @var_id := @techniques_id + 1;

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `dbo`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'title', year, 'bibTex',  'link', 0, 'admin', NOW() );

 -- Exemplo:
 /*
INSERT INTO `dbo`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
    VALUES (  1 , 'A Modular Approach to Model-based Testing of Concurrent Programs', 2013  , '"@Inbook{1,
    author=""Carver, Richard
    and Lei, Yu"",
    editor=""Louren{\c{c}}o, Jo{\~a}o M.
    and Farchi, E7
    chapter=""A Modular Approach to Model-Based Testing of Concurrent Programs"",
    title=""Multicore Software Engineering, Performance, and Tools: International Conference, C11 2013, St. Petersburg, Russia, August 19-20, 2013. Proceedings"",
    year=""2013"",
    publisher=""Springer Berlin Heidelberg"",
    address=""Berlin, Heidelberg"",
    pages=""85--96"",
    isbn=""978-3-642-39955-8"",
    doi=""10.1007/978-3-642-39955-8_8"",
    url=""http://dx.doi.org/10.1007/978-3-642-39955-8_8""
    }"',  'dl.acm.org/citation.cfm?id=2951642', 0, 'admin', NOW() );
  */

/*

 As próximas tabelas são opcionais, dependendo das características da técnica
 Alterar segundo campo dos VALUES
 Você também pode inserir com o valor 'No Information', caso necessário
 Um exemplo é mostrado logo após o comando de inserção
 */

INSERT INTO `dbo`.`executionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'executionPlatform');
-- INSERT INTO `dbo`.`executionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( 2 ,'Linux');

INSERT INTO `dbo`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'objective');
-- INSERT INTO `dbo`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  1 ,'Distributed systems');

INSERT INTO `dbo`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'programmingLanguage');
-- INSERT INTO `dbo`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  1 ,'Java');

INSERT INTO `dbo`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'testingTechnique');
-- INSERT INTO `dbo`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES (  1 ,'Model based testing');

INSERT INTO `dbo`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'testDataGeneration');
-- INSERT INTO `dbo`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  1 ,'Thread interaction models');

INSERT INTO `dbo`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'testingLevel');
-- INSERT INTO `dbo`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  1 ,'system');

INSERT INTO `dbo`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'synchronizationMechanism');
-- INSERT INTO `dbo`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  1 ,'reachability testing');

INSERT INTO `dbo`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'input');
-- INSERT INTO `dbo`.  `Input` (`idTechnique`,   `input` ) VALUES (  1 ,'LTS model');

INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'output');
-- INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  1 ,'partially-ordered sequences');

INSERT INTO `dbo`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'qualityAttribute');
-- INSERT INTO `dbo`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  1 ,'effectiveness');

INSERT INTO `dbo`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'typeOfStudy');
-- INSERT INTO `dbo`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  1 ,'Case study');

INSERT INTO `dbo`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'testingAnalysis');
-- INSERT INTO `dbo`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  1 ,'Dynamic');

INSERT INTO `dbo`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');
-- INSERT INTO `dbo`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  1 ,'Message passing');

INSERT INTO `dbo`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'deterministic execution');
-- INSERT INTO `dbo`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  1 ,'deterministic execution');

INSERT INTO `dbo`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'abstract LTS model');
-- INSERT INTO `dbo`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  1 ,'abstract LTS model');

INSERT INTO `dbo`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');
-- INSERT INTO `dbo`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  1 ,'No Information');

INSERT INTO `dbo`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'stateSpaceReduction');
-- INSERT INTO `dbo`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  1 ,'incremental reachability analysis and new ATL reduction algoritm');

INSERT INTO `dbo`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'concurrentBugs');
-- INSERT INTO `dbo`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  1 ,'bugs inserted by the researcher');

INSERT INTO `dbo`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'toolName');
-- INSERT INTO `dbo`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  2 ,'ValiMPI');

INSERT INTO `dbo`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'cost');
-- INSERT INTO `dbo`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  2 ,'Academic');

INSERT INTO `dbo`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'platformTool');
-- INSERT INTO `dbo`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  2 ,'Linux');
