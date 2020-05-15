-- Pega o último id das técnicas
SELECT @technique_id := MAX(id) FROM Technique;
-- Uma um na chave
SET @var_id := 130;


-- /* Technique 1 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `dbo`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Concurrent program verification with lazy sequentialization and interval analysis', 2017, '"@inproceedings{nguyen2017concurrent,
  title={Concurrent program verification with lazy sequentialization and interval analysis},
  author={Nguyen, Truc L and Fischer, Bernd and La Torre, Salvatore and Parlato, Gennaro},
  booktitle={International Conference on Networked Systems},
  pages={255--271},
  year={2017},
  organization={Springer}
}"',  'https://link.springer.com/chapter/10.1007/978-3-319-59647-1_20', 0, 'admin', NOW() );

INSERT INTO `dbo`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `dbo`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `dbo`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'C');

INSERT INTO `dbo`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `dbo`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `dbo`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Non-deterministic sequential C program');

INSERT INTO `dbo`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `dbo`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `dbo`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `dbo`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Bug-triggering interleavings');

INSERT INTO `dbo`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'Lazy-CSeq');

INSERT INTO `dbo`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `dbo`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Linux');

SET @var_id := @var_id + 1;


-- /* Technique 2 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `dbo`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'SPDebugger: A Fine-Grained Deterministic Debugger for Concurrency Code', 2017, '"@article{lin2017spdebugger,
  title={SPDebugger: A Fine-Grained Deterministic Debugger for Concurrency Code},
  author={Lin, Ziyi and Zhou, Yilei and Zhong, Hao and Chen, Yuting and Yu, Haibo and Zhao, Jianjun},
  journal={IEICE Transactions on Information and Systems},
  volume={100},
  number={3},
  pages={473--482},
  year={2017},
  publisher={The Institute of Electronics, Information and Communication Engineers}
}"',  'https://www.jstage.jst.go.jp/article/transinf/E100.D/3/E100.D_2016EDP7388/_pdf', 0, 'admin', NOW() );


INSERT INTO `dbo`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `dbo`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `dbo`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `dbo`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `dbo`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `dbo`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Concurrent code');

INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `dbo`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Cost');

INSERT INTO `dbo`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Experiment');

INSERT INTO `dbo`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `dbo`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `dbo`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Interleavings');

INSERT INTO `dbo`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'ASM');

INSERT INTO `dbo`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Open source');

INSERT INTO `dbo`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Windows');

SET @var_id := @var_id + 1;


-- /* Technique 3 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `dbo`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Effectively manifesting concurrency bugs in android apps', 2016, '"@inproceedings{li2016effectively,
  title={Effectively manifesting concurrency bugs in android apps},
  author={Li, Qiwei and Jiang, Yanyan and Gu, Tianxiao and Xu, Chang and Ma, Jun and Ma, Xiaoxing and Lu, Jian},
  booktitle={2016 23rd Asia-Pacific Software Engineering Conference (APSEC)},
  pages={209--216},
  year={2016},
  organization={IEEE}
}"',  'https://ieeexplore.ieee.org/abstract/document/7890590', 0, 'admin', NOW() );


INSERT INTO `dbo`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Unix');

INSERT INTO `dbo`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'Mobile');

INSERT INTO `dbo`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Android');

INSERT INTO `dbo`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Functional testing');

INSERT INTO `dbo`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'System');

INSERT INTO `dbo`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Apk file');

INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of generated events');

INSERT INTO `dbo`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Execution time');

INSERT INTO `dbo`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `dbo`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic, Static');

INSERT INTO `dbo`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `dbo`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Data race, atomicity violation');

INSERT INTO `dbo`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'AATT prototype');

INSERT INTO `dbo`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `dbo`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Unix');


SET @var_id := @var_id + 1;

-- /* Technique 4 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `dbo`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'DFTracker: detecting double-fetch bugs by multi-taint parallel tracking', 2019, '"@article{wang2019dftracker,
  title={DFTracker: detecting double-fetch bugs by multi-taint parallel tracking},
  author={Wang, Pengfei and Lu, Kai and Li, Gen and Zhou, Xu},
  journal={Frontiers of Computer Science},
  volume={13},
  number={2},
  pages={247--263},
  year={2019},
  publisher={Springer}
}"',  'https://link.springer.com/article/10.1007/s11704-016-6383-8', 0, 'admin', NOW() );


INSERT INTO `dbo`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Linux, windows');

INSERT INTO `dbo`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `dbo`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'C, C++');

INSERT INTO `dbo`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `dbo`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `dbo`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `dbo`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `dbo`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness,
Efficiency, Scalability');

INSERT INTO `dbo`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `dbo`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `dbo`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `dbo`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'Control flow graph');

INSERT INTO `dbo`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Data race, double-fetch bugs');

INSERT INTO `dbo`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `dbo`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'No Information');


SET @var_id := @var_id + 1;

-- /* Technique 5 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `dbo`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'RaceTest: harmful data race detection based on testing technology in WS-BPEL', 2019, '"@article{ding2019racetest,
  title={RaceTest: harmful data race detection based on testing technology in WS-BPEL},
  author={Ding, Zhijun and Zhou, Zexia},
  journal={Service Oriented Computing and Applications},
  pages={1--14},
  year={2019},
  publisher={Springer}
}"',  'https://link.springer.com/article/10.1007/s11761-019-00261-1', 0, 'admin', NOW() );


INSERT INTO `dbo`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `dbo`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `dbo`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Java, C++');

INSERT INTO `dbo`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `dbo`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `dbo`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `dbo`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Concurrent code');

INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `dbo`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Efficiency');

INSERT INTO `dbo`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `dbo`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `dbo`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `dbo`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Interleavings, Data race');

INSERT INTO `dbo`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `dbo`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'No Information');


SET @var_id := @var_id + 1;

-- /* Technique 6 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `dbo`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Testing Multi-Threaded Applications Using Answer Set Programming', 2018, '"@article{xue2018testing,
  title={Testing Multi-Threaded Applications Using Answer Set Programming},
  author={Xue, Xiaozhen and Siami-Namini, Sima and Namin, Akbar Siami},
  journal={International Journal of Software Engineering and Knowledge Engineering},
  volume={28},
  number={08},
  pages={1151--1175},
  year={2018},
  publisher={World Scientific}
}"',  'https://www.worldscientific.com/doi/abs/10.1142/S021819401850033X', 0, 'admin', NOW() );

INSERT INTO `dbo`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Linux, windows');

INSERT INTO `dbo`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `dbo`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `dbo`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `dbo`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `dbo`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `dbo`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `dbo`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Modular sequences');

INSERT INTO `dbo`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Efficiency');

INSERT INTO `dbo`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `dbo`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic, Static');

INSERT INTO `dbo`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `dbo`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'Data flow');

INSERT INTO `dbo`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Interleavings, Data race, atomicity violation');

INSERT INTO `dbo`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `dbo`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `dbo`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'No Information');


SET @var_id := @var_id + 1;
