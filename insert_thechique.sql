
-- Inserir na tabela Technique
INSERT INTO `dbo`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  'id' , 'title', year, 'bibTex',  'link', 0, 'admin', NOW() );

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
 Se a técnica não possuir tal característica, deve-se inserir com o valor 'No information'

 */

INSERT INTO `dbo`.`executionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( idTechnique ,'executionPlatform');

-- INSERT INTO `dbo`.`executionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( 1 ,'No Information');

INSERT INTO `dbo`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  idTechnique ,'objective');

-- INSERT INTO `dbo`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  1 ,'Distributed systems');

INSERT INTO `dbo`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  idTechnique ,'programmingLanguage');

-- INSERT INTO `dbo`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  1 ,'Java');

INSERT INTO `dbo`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( idTechnique ,'testingTechnique');

-- INSERT INTO `dbo`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES (  1 ,'Model based testing');

INSERT INTO `dbo`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  idTechnique ,'testDataGeneration');

-- INSERT INTO `dbo`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  1 ,'Thread interaction models');

INSERT INTO `dbo`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  idTechnique, 'testingLevel');

-- INSERT INTO `dbo`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  1 ,'system');

INSERT INTO `dbo`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  idTechnique ,'synchronizationMechanism');

-- INSERT INTO `dbo`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  1 ,'reachability testing');

INSERT INTO `dbo`.  `Input` (`idTechnique`,   `input` ) VALUES (  idTechnique ,'input');
-- INSERT INTO `dbo`.  `Input` (`idTechnique`,   `input` ) VALUES (  1 ,'LTS model');

-- A técnica pode ter mais de um output
INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  idTechnique ,'output');
-- INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  1 ,'partially-ordered sequences');
-- INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  1 ,'totally-ordered sequences');

-- A técnica pode ter mais de um Quality Attribute
INSERT INTO `dbo`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  idTechnique ,'qualityAttribute');
-- INSERT INTO `dbo`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  1 ,'effectiveness');


INSERT INTO `dbo`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  idTechnique ,'typeOfStudy');
-- INSERT INTO `dbo`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  1 ,'Case study');

INSERT INTO `dbo`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  idTechnique ,'testingAnalysis');
-- INSERT INTO `dbo`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  1 ,'Dynamic');

INSERT INTO `dbo`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  1 ,'Message passing');
-- INSERT INTO `dbo`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  1 ,'Message passing');

INSERT INTO `dbo`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  1 ,'deterministic execution');
-- INSERT INTO `dbo`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  1 ,'deterministic execution');

INSERT INTO `dbo`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  1 ,'abstract LTS model');
-- INSERT INTO `dbo`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  1 ,'abstract LTS model');

INSERT INTO `dbo`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  1 ,'No Information');
-- INSERT INTO `dbo`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  1 ,'No Information');

INSERT INTO `dbo`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  1 ,'incremental reachability analysis and new ATL reduction algoritm');
-- INSERT INTO `dbo`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  1 ,'incremental reachability analysis and new ATL reduction algoritm');

INSERT INTO `dbo`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  1 ,'bugs inserted by the researcher');
-- INSERT INTO `dbo`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  1 ,'bugs inserted by the researcher');

INSERT INTO `dbo`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  1 ,'No Information');
-- INSERT INTO `dbo`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  1 ,'No Information');

INSERT INTO `dbo`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  1 ,'No Information');
-- INSERT INTO `dbo`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  1 ,'No Information');

INSERT INTO `dbo`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  1 ,'No Information');
-- INSERT INTO `dbo`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  1 ,'No Information');
