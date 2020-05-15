-- Pega o último id das técnicas
SELECT @technique_id := MAX(id) FROM Technique;
-- Uma um na chave
SET @var_id := @technique_id + 1;


-- /* Technique 1 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Concurrent program verification with lazy sequentialization and interval analysis', 2017, '"@inproceedings{nguyen2017concurrent,
  title={Concurrent program verification with lazy sequentialization and interval analysis},
  author={Nguyen, Truc L and Fischer, Bernd and La Torre, Salvatore and Parlato, Gennaro},
  booktitle={International Conference on Networked Systems},
  pages={255--271},
  year={2017},
  organization={Springer}
}"',  'https://link.springer.com/chapter/10.1007/978-3-319-59647-1_20', 0, 'admin', NOW() );

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'C');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Non-deterministic sequential C program');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Bug-triggering interleavings');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'Lazy-CSeq');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Linux');

SET @var_id := @var_id + 1;


-- /* Technique 2 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
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


INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Concurrent code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Cost');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Experiment');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Interleavings');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'ASM');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Open source');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Windows');

SET @var_id := @var_id + 1;


-- /* Technique 3 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Effectively manifesting concurrency bugs in android apps', 2016, '"@inproceedings{li2016effectively,
  title={Effectively manifesting concurrency bugs in android apps},
  author={Li, Qiwei and Jiang, Yanyan and Gu, Tianxiao and Xu, Chang and Ma, Jun and Ma, Xiaoxing and Lu, Jian},
  booktitle={2016 23rd Asia-Pacific Software Engineering Conference (APSEC)},
  pages={209--216},
  year={2016},
  organization={IEEE}
}"',  'https://ieeexplore.ieee.org/abstract/document/7890590', 0, 'admin', NOW() );


INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Unix');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'Mobile');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Android');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Functional testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'System');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Apk file');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of generated events');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Execution time');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic, Static');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Data race, atomicity violation');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'AATT prototype');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Unix');


SET @var_id := @var_id + 1;

-- /* Technique 4 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
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


INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Linux, windows');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'C, C++');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness,
Efficiency, Scalability');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'Control flow graph');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Data race, double-fetch bugs');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'No Information');


SET @var_id := @var_id + 1;

-- /* Technique 5 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'RaceTest: harmful data race detection based on testing technology in WS-BPEL', 2019, '"@article{ding2019racetest,
  title={RaceTest: harmful data race detection based on testing technology in WS-BPEL},
  author={Ding, Zhijun and Zhou, Zexia},
  journal={Service Oriented Computing and Applications},
  pages={1--14},
  year={2019},
  publisher={Springer}
}"',  'https://link.springer.com/article/10.1007/s11761-019-00261-1', 0, 'admin', NOW() );


INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Java, C++');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Concurrent code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Efficiency');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Interleavings, Data race');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'No Information');


SET @var_id := @var_id + 1;

-- /* Technique 6 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
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

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Linux, windows');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Modular sequences');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Efficiency');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic, Static');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'Data flow');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Interleavings, Data race, atomicity violation');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'No Information');


SET @var_id := @var_id + 1;

-- /* Technique 7 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Dynamic testing for deadlocks via constraints', 2016, '"@article{cai2016dynamic,
  title={Dynamic testing for deadlocks via constraints},
  author={Cai, Yan and Lu, Qiong},
  journal={IEEE Transactions on Software Engineering},
  volume={42},
  number={9},
  pages={825--842},
  year={2016},
  publisher={IEEE}
}"',  'https://ieeexplore.ieee.org/abstract/document/7423814', 0, 'admin', NOW() );

INSERT INTO `selectt2`.`techniques`
(`ID`,
 `Title`,
 `Reference`,
 `Technique`,
 `Approach`,
 `Typeofanalysis`,
 `Paradigm`,
 `Language`,
 `ConcurrentBug`,
 `SupportingTool`,
 `Evidence`)
VALUES (@var_id, '','','','','','','','','','');

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Unix');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Java, C, C++');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'Happens-before relation');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Concurrent code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Deadlock');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'No Information');


SET @var_id := @var_id + 1;

-- /* Technique 8 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Concurrency Bug Avoiding Based on Optimized Software Transactional Memory', 2019, '"@article{yu2019concurrency,
  title={Concurrency Bug Avoiding Based on Optimized Software Transactional Memory},
  author={Yu, Z and Zuo, Y and Xiong, WC},
  journal={Scientific Programming},
  volume={2019},
  year={2019},
  publisher={Hindawi}
}"',  'https://www.hindawi.com/journals/sp/2019/9404323/', 0, 'admin', NOW() );

INSERT INTO `selectt2`.`techniques`
(`ID`,
 `Title`,
 `Reference`,
 `Technique`,
 `Approach`,
 `Typeofanalysis`,
 `Paradigm`,
 `Language`,
 `ConcurrentBug`,
 `SupportingTool`,
 `Evidence`)
VALUES (@var_id, '','','','','','','','','','');

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'C, C++');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Functional testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'System');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Efficiency');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Deadlock, Data race, atomicity violation');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'Convoider');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Linux');


SET @var_id := @var_id + 1;

-- /* Technique 9 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Thread-local concurrency: a technique to handle data race detection at programming model abstraction', 2018, '"@inproceedings{protze2018thread,
  title={Thread-local concurrency: a technique to handle data race detection at programming model abstraction},
  author={Protze, Joachim and Schulz, Martin and Ahn, Dong H and M{\"u}ller, Matthias S},
  booktitle={Proceedings of the 27th International Symposium on High-Performance Parallel and Distributed Computing},
  pages={144--155},
  year={2018},
  organization={ACM}
}"',  'https://dl.acm.org/doi/abs/10.1145/3208040.3208056', 0, 'admin', NOW() );

INSERT INTO `selectt2`.`techniques`
(`ID`,
 `Title`,
 `Reference`,
 `Technique`,
 `Approach`,
 `Typeofanalysis`,
 `Paradigm`,
 `Language`,
 `ConcurrentBug`,
 `SupportingTool`,
 `Evidence`)
VALUES (@var_id, '','','','','','','','','','');

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Unix');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'MPI');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Thread interaction models');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'Happens-before relation');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Concurrent code in MPI');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Data race');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'ThreadSanitizer');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Unix');


SET @var_id := @var_id + 1;

-- /* Technique 10 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'A Splitting Strategy for Testing Concurrent Programs', 2019, '"@inproceedings{qi2019splitting,
  title={A Splitting Strategy for Testing Concurrent Programs},
  author={Qi, Xiaofang and Zhou, Huayang},
  booktitle={2019 IEEE 26th International Conference on Software Analysis, Evolution and Reengineering (SANER)},
  pages={388--398},
  year={2019},
  organization={IEEE}
}"',  'https://ieeexplore.ieee.org/abstract/document/8668040', 0, 'admin', NOW() );

INSERT INTO `selectt2`.`techniques`
(`ID`,
 `Title`,
 `Reference`,
 `Technique`,
 `Approach`,
 `Typeofanalysis`,
 `Paradigm`,
 `Language`,
 `ConcurrentBug`,
 `SupportingTool`,
 `Evidence`)
VALUES (@var_id, '','','','','','','','','','');

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'Reachability testing');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Partially-ordered sequences');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Performance');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Mutation based errors');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'SplitRichTest');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Windows');


SET @var_id := @var_id + 1;

-- /* Technique 11 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Using Delta Debugging to Minimize Stress Tests for Concurrent Data Structures', 2017, '"@inproceedings{xu2017using,
  title={Using Delta Debugging to Minimize Stress Tests for Concurrent Data Structures},
  author={Xu, Jing and Lei, Yu and Carver, Richard},
  booktitle={2017 IEEE International Conference on Software Testing, Verification and Validation (ICST)},
  pages={35--46},
  year={2017},
  organization={IEEE}
}"',  'https://ieeexplore.ieee.org/abstract/document/7927961', 0, 'admin', NOW() );

INSERT INTO `selectt2`.`techniques`
(`ID`,
 `Title`,
 `Reference`,
 `Technique`,
 `Approach`,
 `Typeofanalysis`,
 `Paradigm`,
 `Language`,
 `ConcurrentBug`,
 `SupportingTool`,
 `Evidence`)
VALUES (@var_id, '','','','','','','','','','');

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Thread interaction models');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Efficiency');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Bugs inserted by the researcher');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'TestMinimizer');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Windows');

SET @var_id := @var_id + 1;


-- /* Technique 12 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Efficient scalable thread-safety-violation detection: finding thousands of concurrency bugs during testing', 2019, '"@inproceedings{li2019efficient,
  title={Efficient scalable thread-safety-violation detection: finding thousands of concurrency bugs during testing},
  author={Li, Guangpu and Lu, Shan and Musuvathi, Madanlal and Nath, Suman and Padhye, Rohan},
  booktitle={Proceedings of the 27th ACM Symposium on Operating Systems Principles},
  pages={162--180},
  year={2019}
}"',  'https://dl.acm.org/doi/abs/10.1145/3341301.3359638', 0, 'admin', NOW() );

INSERT INTO `selectt2`.`techniques`
(`ID`,
 `Title`,
 `Reference`,
 `Technique`,
 `Approach`,
 `Typeofanalysis`,
 `Paradigm`,
 `Language`,
 `ConcurrentBug`,
 `SupportingTool`,
 `Evidence`)
VALUES (@var_id, '','','','','','','','','','');

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'.Net, C#');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Thread interaction models');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'Happens-before relation');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Efficiency');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Thread-safety violations, Data race');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'TSVD');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Windows');

SET @var_id := @var_id + 1;

-- /* Technique 13 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Efficient verification of concurrent systems using synchronisation analysis and SAT/SMT solving', 2019, '"@article{antonino2019efficient,
  title={Efficient verification of concurrent systems using synchronisation analysis and SAT/SMT solving},
  author={Antonino, Pedro and Gibson-Robinson, Thomas and Roscoe, AW},
  journal={ACM Transactions on Software Engineering and Methodology (TOSEM)},
  volume={28},
  number={3},
  pages={1--43},
  year={2019},
  publisher={ACM New York, NY, USA}
}"',  'https://dl.acm.org/doi/abs/10.1145/3335149', 0, 'admin', NOW() );


INSERT INTO `selectt2`.`techniques`
(`ID`,
 `Title`,
 `Reference`,
 `Technique`,
 `Approach`,
 `Typeofanalysis`,
 `Paradigm`,
 `Language`,
 `ConcurrentBug`,
 `SupportingTool`,
 `Evidence`)
VALUES (@var_id, '','','','','','','','','','');

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'No Information');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'Reachability testing');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Multithread code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Partially-ordered sequences');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'Data flow');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'Incremental reachability analysis');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Deadlock');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'DeadlOx');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'No Information');


SET @var_id := @var_id + 1;

-- /* Technique 14 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'AVPredictor: Comprehensive prediction and detection of atomicity violations', 2019, '"@article{wang2019avpredictor,
  title={AVPredictor: Comprehensive prediction and detection of atomicity violations},
  author={Wang, Pengfei and Krinke, Jens and Zhou, Xu and Lu, Kai},
  journal={Concurrency and Computation: Practice and Experience},
  pages={e5160},
  year={2019},
  publisher={Wiley Online Library}
}"',  'https://onlinelibrary.wiley.com/doi/full/10.1002/cpe.5160', 0, 'admin', NOW() );

INSERT INTO `selectt2`.`techniques`
(`ID`,
 `Title`,
 `Reference`,
 `Technique`,
 `Approach`,
 `Typeofanalysis`,
 `Paradigm`,
 `Language`,
 `ConcurrentBug`,
 `SupportingTool`,
 `Evidence`)
VALUES (@var_id, '','','','','','','','','','');

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'C, C++');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'Coverage criteria');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Concurrent code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Number of test cases to cover a criterion');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness, Efficiency');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Atomicity violation, Bug-triggering interleavings');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'AVPredictor');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Linux');


SET @var_id := @var_id + 1;

-- /* Technique 15 */

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`Technique` (`id`, `title`, `year`, `bibTex`, `link`, `needApproval`, `insertedBy`, `insertedOn`)
VALUES (  @var_id , 'Parallel bug-finding in concurrent programs via reduced interleaving instances', 2017, '"@inproceedings{nguyen2017parallel,
  title={Parallel bug-finding in concurrent programs via reduced interleaving instances},
  author={Nguyen, Truc L and Schrammel, Peter and Fischer, Bernd and La Torre, Salvatore and Parlato, Gennaro},
  booktitle={Proceedings of the 32nd IEEE/ACM International Conference on Automated Software Engineering},
  pages={753--764},
  year={2017},
  organization={IEEE Press}
}"',  'https://ieeexplore.ieee.org/abstract/document/8115686', 0, 'admin', NOW() );

INSERT INTO `selectt2`.`techniques`
(`ID`,
 `Title`,
 `Reference`,
 `Technique`,
 `Approach`,
 `Typeofanalysis`,
 `Paradigm`,
 `Language`,
 `ConcurrentBug`,
 `SupportingTool`,
 `Evidence`)
VALUES (@var_id, '','','','','','','','','','');

INSERT INTO `selectt2`.`ExecutionPlatform` (`idTechnique`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `Objective` (`idTechnique`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ProgrammingLanguage` (`idTechnique`,   `programmingLanguage` ) VALUES (  @var_id ,'C');

INSERT INTO `selectt2`.  `TestingTechnique`  (`idTechnique`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `TestDataGeneration`  (`idTechnique`,   `testDataGeneration`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `TestingLevel`  (`idTechnique`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `SynchronizationMechanism`  (`idTechnique`,   `synchronizationMechanism`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Input` (`idTechnique`,   `input` ) VALUES (  @var_id ,'Concurrent code');

INSERT INTO `selectt2`.  `Output`  (`idTechnique`,   `output`  ) VALUES (  @var_id ,'Non-deterministic sequential C program');

INSERT INTO `selectt2`.  `QualityAttribute`  (`idTechnique`,   `qualityAttribute`  ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `TypeOfStudy` (`idTechnique`,   `typeOfStudy` ) VALUES (  @var_id ,'Case study');

INSERT INTO `selectt2`.  `TestingAnalysis` (`idTechnique`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ConcurrentParadigm`  (`idTechnique`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ReplayMechanism` (`idTechnique`,   `replayMechanism` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ProgramRepresentation` (`idTechnique`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `Instrumentation` (`idTechnique`,   `instrumentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `StateSpaceReduction` (`idTechnique`,   `stateSpaceReduction` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ConcurrentBugs`  (`idTechnique`,   `concurrentBugs`  ) VALUES (  @var_id ,'Bug-triggering interleavings');

INSERT INTO `selectt2`.  `ToolName`  (`idTechnique`,   `toolName`  ) VALUES (  @var_id ,'Lazy-CSeq');

INSERT INTO `selectt2`.  `Cost`  (`idTechnique`,   `cost`  ) VALUES (  @var_id ,'Academic');

INSERT INTO `selectt2`.  `PlatformTool`  (`idTechnique`,   `platformTool`  ) VALUES (  @var_id ,'Linux');
