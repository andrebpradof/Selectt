-- Pega o último id das técnicas
-- SELECT @resulttechnique_id := MAX(id) FROM ResultTechnique;
-- Uma um na chave
SET @var_id := 1;



-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Account', 'user name', '2019-11-01', '2020-15-01', 'The goal of the exercise is implementing a  program which demonstrate  a parallel bug. In the exercise we have two accounts.The program enable tranfering  money from one account to the other. Although the functions were defended by locks (synchronize) there exists an interleaving which we\'ll experience a bug.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Unix');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'Multithreaded program');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'source code in Java');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'Number of faults detected');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'Data Race');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'Deadlock');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Carisma');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Contest');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');


SET @var_id := @var_id + 1;

-- -------------------------------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Airline', 'user name', '2019-11-15', '2019-12-20', 'This program is from a benchmark suite developed at IBM to support testing and analysis research. The project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of HPC programs, and it was developed using Java language in the Linux execution platform. This software project should be tested at the level of Unit and System. It must be tested to find faults related to data race and atomicity violation.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Model based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'System');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java bytecode');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithreaded program');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'Test adequacy: percentage of iterations for which a metric was successful');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'efficiency: time and storage overhead of path profiling relative to native execution and the time cost of symbolic trace collection');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'scalability');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'efficiency');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'Control flow graph');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'constraint model');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'Data race');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'Atomicity violation');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'JavaPathfinder');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'LLVM');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');


SET @var_id := @var_id + 1;

-- -----------------------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Alarmclock', 'user name', '2019-12-20', '2020-01-12', 'This is a simulation of an Alarm Clock. One thread of kind Clock calls a method tick() every milisecond (or any other unit of time) and updates the clock. Method tick() is a part of class Monitor to insure that when the thread changes current time, noone is there to interfere.
Other threads of kind Client call method wakeme(int interval) when they want to sleep for interval. A list of locks is maintained for Client threads. Each thread calculates its waketime and goes to sleep on a lock with a key that\'s equal to wakeup time.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Formal method-based testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'concurrent program');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java bytecode');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of predicted runs');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'the time required for each prediction');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of bugs found during the tests for each violation type');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of bugs detected and percentage of spurious results produced by the tool');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'Effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'prediction capability');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'call graph');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'Null-pointer dereferences');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'starvation');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Penelope');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'FindBugs');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- -----------------------------------


-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Allocationvector', 'user name', '2019-10-10', '2019-12-15', 'It is a concurrency example originally in the IBM suite of objects. The project presents the concurrent paradigm of message passing. The software project developed will be applied in the context of HPC and distributed systems programs, and it was developed using Java language in the Linux execution platform. This software project should be tested at the level of Unit and System. Also, it must be tested to find faults related to bug-triggering interleavings and deadlock.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'Distributed systems');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Model based testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'Unit');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'System');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'Specification of the class');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithreaded program');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'Number of transitions');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'deadlocks detected');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'bug-triggering interleavings');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Ballerina');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- ----------------------


-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'BoundedBuffer', 'user name', '2019-09-10', '2019-10-18', 'The program uses a bounded buffer monitor into which the Producer thread puts characters and from which the Consumer thread gets characters. The Consumer runs slightly faster than the Producer, so start the Producer first and wait until a few buffer slots are filled before starting the Consumer. The project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of distributed systems, and it was developed using Java language to Windows and Unix execution platform. This software project should be tested at the Unit level. Also, It must be tested to find faults related to deadlock and atomicity violation.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Unix');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'Distributed systems');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java code');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'concurrent program');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'Effectiveness: number of generated test cases  and reproducible test cases');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'overhead: execution time. failure reproducible, lock manifestation');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'lock pattern and lock usage evolution');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'efficiency');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'reproducibility');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'lock manifestation');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'control dependency graph');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'use-define chains');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'atomicity violation');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'java code');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'concurrent program');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- ---------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Clean', 'user name', '2019-11-03', '2019-12-07', 'This project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of HPC programs, and it was developed using Java language in the Linux execution platform. This software project should be tested at the Unit level. Also, It must be tested to find faults related to refinement violations and deadlock. The parameters to the program are the number of first task threads (iFirstTask=1), the number of second task threads (iSecondTask=1), and the number of iterations (iterations=12).');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java bytecode');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithreaded program');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'Test adequacy: percentage of iterations for which a metric was successful');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'running time');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'efficiency');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'scalability');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'control flow graph');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'state space graph');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'refinement violations');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'JavaPathfinder');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'MutMut');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- -------------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Daisy', 'user name', '2019-12-05', '2020-01-10', 'The daisy subject is a prototype implementation of a NFS UNIX-like filesystem. This project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of HPC programs, and it was developed using Java language. This software project should be tested at the Unit level. Daisy expresses an assertion violation and an atomicity violation bug.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Model based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithread Java programs (data structures, high-performance computing, examples of synchronization mechanisms)');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java code)');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of executions required to find a defect');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of partial orders sampled');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'Number of Trials: number trials executed');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'assertion violation');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'atomicity violation');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'CalFuzzer');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Java Pathafinder (JPF)');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- -------------------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Deos', 'user name', '2019-11-03', '2019-12-15', 'Deos is a Java version of the scheduler from a real-time executive for avionics systems. The project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of HPC programs, and it was developed using Java language in the Windows execution platform. This software project should be tested at the Unit level. Also, It must be tested to find faults related to assertion violation and deadlock.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Model based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java programs');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithread Java programs (data structures, high-performance computing, examples of synchronization mechanisms)');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of executions required to find a defect');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of partial orders sampled');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'Number of Trials: number trials executed');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'functionality');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'applicability');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'control-flow graph');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'assertion violation');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'JPF');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'CalFuzzer');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- -----------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'DiningPhilosophers', 'user name', '2019-10-12', '2019-11-22', 'The diningPhilosophers program is the classic concurrency problem first posited by Dykstra and Hoare implemented in Java. Five philosophers sit around a circular table. Each philosopher spends his life alternatively thinking and eating. In the center of the table is a large plate of spaghetti. A philosopher needs two forks to eat a helping of spaghetti. Unfortunately, as philosophy is not as well paid as computing, the philosophers can only afford five forks. One fork is placed between each pair of philosophers and they agree that each will only use the fork to his immediate right and left. The slider in the applet below controls the amount of time that a philosopher spends eating and thinking. Philosophers are depicted in yellow when they are thinking, blue when hungry and green when eating. The project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of HPC programs, and it was developed using Java language. This software project should be tested at the Unit level. Also, It must be tested to find faults related to deadlock and high-level concurrency errors.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'bytecode of a class');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java bytecode');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of data races found');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'test adequacy: percentage of iterations for which a metric was successful');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'efficiency');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'scalability');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'control flow graph');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'high-level concurrency errors');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'EvoSuite');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'JavaPathfinder');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- -----------------------------


-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'LoseNotify', 'user name', '2019-12-11', '2020-01-08', 'The project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of HPC and distributed systems programs, and it was developed using Java language in the Linux execution platform. This software project should be tested at the Unit level. Also, It must be tested to find faults related to deadlock and data race. The parameters to the program are the number of wait threads (iWait=1), the number of notify threads (iNotify=1), and the number of iterations (iterations=12).');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'Distributed systems');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'concurrent programs');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithreaded program');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'running time');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of test cases');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of interleavings');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'state space graph');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'variant graph');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'data race');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'MutMut');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'AspectJ');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- ---------------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Linkedlist', 'user name', '2019-12-05', '2020-01-20', 'The linkedlist program presents the concurrent paradigm of shared memory and message passing. The software project developed will be applied in the context of distributed systems and HPC programs, and it was developed using Java language to Windows and Unix execution platform. This software project should be tested at the unit level. Also, It must be tested to find faults related to deadlock and data race.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Unix');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'Distributed systems');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Formal method-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'concurrent program');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithreaded applications');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'bugs detected');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of predicted runs');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'the time required for each prediction');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of bugs found during the tests for each violation type');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'efficiency');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'prediction capability');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'atomicity violation');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'null-pointer dereferences');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'MTRAT');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'ConTest');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Penelope');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- -----------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Logging event', 'user name', '2019-10-17', '2019-12-03', 'The project presents the concurrent paradigm of shared memory and message passing. The software project developed will be applied in the context of distributed systems and HPC programs. It was developed using Java language to Windows and Unix execution platform. This software project should be tested at the Unit level. Also, It must be tested to find faults related to deadlock, null-pointer dereferences and atomicity violation.');

INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Unix');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'Distributed systems');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Model based testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Formal method-based testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java programs');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'concurrent program');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithreaded applications');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of transitions and intermediate states required to cover all relevant behaviors of the program or discover a bug');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'bugs detected');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of predicted runs');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'the time required for each prediction');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of bugs found during the tests for each violation type');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'prediction capability');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'functionality');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'applicability');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'efficiency');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'control-flow graph');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'null-pointer dereferences');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'atomicity violation');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'JPF');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'MTRAT');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'ConTest');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Penelope');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- -------------------------



-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Nested Monitor', 'user name', '2019-10-03', '2019-12-04', 'The Nested Monitor program is a non-deterministic implementation of a bounded buffer that uses semaphores instead of Java condition-based synchronization. It may deadlock because of nested monitor calls, depending on the thread ordering executed by the scheduler. A fixed version of the program that does not use synchronized get() and put() methods is included. This version of Nested Monitor is based on the version of Nested Monitor in the book, "Concurrency: State Models & Java Programs" by Jeff Magee & Jeff Kramer.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java bytecode');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithread code');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'modular sequences');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of test cases to cover a criterion');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of bugs detected and percentage of spurious results produced by the tool');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'efficiency');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'data flow');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'call graph');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'lock graph');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'starvation');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'FindBugs');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- --------------------------------


-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Piper', 'user name', '2019-11-15', '2019-12-20', 'The piper program presents the concurrent paradigm of message passing. The software project developed will be applied in the context of distributed systems, and it was developed using Java language to the Linux execution platform. This software project should be tested at the level of the system. Also, It must be tested to find faults related to deadlock and data race.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'Distributed systems');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Model based testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Functional testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Formal method-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'system');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'concurrent object-oriented software');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java programs');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'Probability of oracles detecting faults');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'speedup');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'system specification');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'lts model program');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'data race');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'JML toolset');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'RichTest');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- --------------------


-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Producerconsumer', 'user name', '2019-10-06', '2019-11-10', 'The producerconsumer subject presented here is the Java version of the classic producer-consumer problem exhibiting the inadequate concurrency solution resulting in a race condition. The project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of HPC programs, and it was developed using Java language. This software project should be tested at the Unit level. Also, It must be tested to find faults related to data race and assertion violation.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Model based testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Formal method-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithread Java programs (data structures, high-performance computing, examples of synchronization mechanisms)');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'concurrent program');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of executions required to find a defect');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of partial orders sampled');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of predicted runs');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'the time required for each prediction');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of bugs found during the tests for each violation type');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'prediction capability');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'data race');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'assertion violation');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'CalFuzzer');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Penelope');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- ---------------------



-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Raxextended', 'user name', '2019-11-04', '2019-12-12', 'It is a group calendar scheduling application. It expresses a race condition in the concurrency. The project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of HPC programs, and it was developed using Java language. This software project should be tested at the Unit level. Also, It must be tested to find faults related to data race and null-pointer dereferences.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Formal method-based testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'concurrent program');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'bytecode of a class');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of predicted runs');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'the time required for each prediction');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of bugs found during the tests for each violation type');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of data races found');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'prediction capability');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'control flow graph');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'data race');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'null-pointer dereferences');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Penelope');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'EvoSuite');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- ------------------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Readerswriters', 'user name', '2019-10-07', '2019-12-20', 'The program allows Readers concurrent access to a resource while restricting Writers to exclusive access. Thread access to the shared resource is depicted by a light blue (cyan) arc segment. It is possible by starting the Reader threads at different times to create an execution in which Writer threads never get access to the resource. The project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of HPC and distributed systems programs. It was developed using Java language to the Windows execution platform. This software project should be tested at the Unit level. Also, It must be tested to find faults related to deadlock and data race.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'Distributed systems');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java bytecode');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java code');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'effectiveness: number of generated test cases  and reproducible test cases');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'overhead: execution time. failure reproducible');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'test adequacy: percentage of iterations for which a metric was successful');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'reproducibility');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'efficiency');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'scalability');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'control flow graph');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'data race');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Concrash');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'JavaPathfinder');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- ------------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Reorder', 'user name', '2019-11-19', '2019-12-08', 'The project presents the concurrent paradigm of shared memory. The software project developed will be applied in the context of distributed systems and HPC programs. It was developed using Java language to the Windows execution platform. This software project should be tested at the unit level. Also, It must be tested to find faults related to atomicity violation and starvation.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Windows');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'Distributed systems');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Structural testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java code');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'java bytecode');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'Overhead: execution time. failure reproducible');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'effectiveness: number of generated test cases and reproducible test cases');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'test adequacy: percentage of iterations for which a metric was successful');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'performance');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'reproducibility');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'efficiency');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'scalability');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'lock graph');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'Atomicity violation');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'starvation');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Concrash');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'FindBugs');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- ------------------

-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'Replicatedworkers', 'user name', '2019-12-13', '2020-01-10', 'The replicatedworkers project presents the concurrent paradigm of shared memory and message passing. The software project developed will be applied in the context of HPC and distributed systems programs. It was developed using Java language to the Linux execution platform. This software project should be tested at the level of system and unit. Also, It must be tested to find faults related to deadlock and assertion violation.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'Distributed systems');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'system');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithreaded program');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'source code in Java');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'deadlocks detected');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of faults detected');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Static');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'assertion violation');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Contest');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;

-- ----------------------------
-- Inserir na tabela Technique
-- Alterar title, year, bibTex e link
INSERT INTO `selectt2`.`ResultTechnique` (`id`, `title`, `insertedBy`, `insertedOn`, `expiration`, `description`)
VALUES (  @var_id , 'SleepingBarber', 'user name', '2019-12-05', '2020-01-12', 'The sleepingBarber program is based upon the famous Sleeping Barber problem. It presents the concurrent paradigm of message passing and shared memory. The software project developed will be applied in the context of HPC programs, and it was developed using Java language to the Linux execution platform. This software project should be tested at the unit level. Also, It must be tested to find faults related to deadlock and bug-triggering interleavings.');


INSERT INTO `selectt2`.`ResultExecutionPlatform` (`idTechniqueResult`, `executionPlatform`) VALUES ( @var_id ,'Linux');

INSERT INTO `selectt2`.  `ResultObjective` (`idTechniqueResult`,   `objective` ) VALUES (  @var_id ,'HPC');

INSERT INTO `selectt2`.  `ResultProgrammingLanguage` (`idTechniqueResult`,   `programmingLanguage` ) VALUES (  @var_id ,'Java');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Model based testing');

INSERT INTO `selectt2`.  `ResultTestingTechnique`  (`idTechniqueResult`,   `testingTechnique`  ) VALUES ( @var_id ,'Fault-based testing');

INSERT INTO `selectt2`.  `ResultTestingLevel`  (`idTechniqueResult`,   `testingLevel`  ) VALUES (  @var_id, 'unit');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithread code class');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'specification of the class');

INSERT INTO `selectt2`.  `ResultInput` (`idTechniqueResult`,   `input` ) VALUES (  @var_id ,'multithread code');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'number of transitions');

INSERT INTO `selectt2`.  `ResultOutput`  (`idTechniqueResult`,   `output`  ) VALUES (  @var_id ,'execution time');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'effectiveness');

INSERT INTO `selectt2`.  `ResultQualityAttribute`  (`idTechniqueResult`,   `qualityAttribute`  ) VALUES (  @var_id ,'Execution time');

INSERT INTO `selectt2`.  `ResultTestingAnalysis` (`idTechniqueResult`,   `testingAnalysis` ) VALUES (  @var_id ,'Dynamic');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Message passing');

INSERT INTO `selectt2`.  `ResultConcurrentParadigm`  (`idTechniqueResult`,   `concurrentParadigm`  ) VALUES (  @var_id ,'Shared memory');

INSERT INTO `selectt2`.  `ResultProgramRepresentation` (`idTechniqueResult`,   `programRepresentation` ) VALUES (  @var_id ,'No Information');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'deadlock');

INSERT INTO `selectt2`.  `ResultConcurrentBugs`  (`idTechniqueResult`,   `concurrentBugs`  ) VALUES (  @var_id ,'bug-triggering interleavings');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'Ballerina');

INSERT INTO `selectt2`.  `ResultToolName`  (`idTechniqueResult`,   `toolName`  ) VALUES (  @var_id ,'MutMut');

INSERT INTO `selectt2`.`ResultTestDataGeneration` (`idTechniqueResult`, `testDataGeneration`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultSynchronizationMechanism` (`idTechniqueResult`, `synchronizationMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultTypeOfStudy` (`idTechniqueResult`, `typeOfStudy`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultReplayMechanism` (`idTechniqueResult`, `replayMechanism`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultInstrumentation` (`idTechniqueResult`, `instrumentation`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultStateSpaceReduction` (`idTechniqueResult`, `stateSpaceReduction`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultCost` (`idTechniqueResult`, `cost`) VALUES ( @var_id ,'No information');

INSERT INTO `selectt2`.`ResultPlatformTool` (`idTechniqueResult`, `platformTool`) VALUES ( @var_id ,'No information');

SET @var_id := @var_id + 1;
