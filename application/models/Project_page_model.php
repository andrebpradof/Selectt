<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Project_page_model extends CI_Model
{
	function __construct()
	{
		// Call the Model constructor
		parent::__construct();
	}

	function getTablesResultTechniqueView(){
		return $techniqueTables = array(
			"ResultExecutionPlatform"         => "executionPlatform",
			"ResultObjective"                 => "objective",
			"ResultProgrammingLanguage"       => "programmingLanguage",
			"ResultTestingTechnique"          => "testingTechnique",
			"ResultTestDataGeneration"        => "testDataGeneration",
			"ResultTestingLevel"              => "testingLevel",
			"ResultSynchronizationMechanism"  => "synchronizationMechanism",
			"ResultInput"                     => "input",
			"ResultOutput"                    => "output",
			"ResultQualityAttribute"          => "qualityAttribute",
			"ResultTypeOfStudy"               => "typeOfStudy",
			"ResultTestingAnalysis"           => "testingAnalysis",
			"ResultConcurrentParadigm"        => "concurrentParadigm",
			"ResultReplayMechanism"           => "replayMechanism",
			"ResultProgramRepresentation"     => "programRepresentation",
			"ResultInstrumentation"           => "instrumentation",
			"ResultStateSpaceReduction"       => "stateSpaceReduction",
			"ResultConcurrentBugs"            => "concurrentBugs",
			"ResultToolName"                  => "toolName",
			"ResultCost"                      => "cost",
			"ResultPlatformTool"              => "platformTool"
		);
	}

	function getModelView($vector){
		return $techniqueTables = array(
			"ID"						=> $vector['id'],
			"Title"						=> $vector['title'],
			"Inserted by"				=> $vector['insertedBy'],
			"Inserted on"				=> $vector['insertedOn'],
			"Expiration"				=> $vector['expiration'],
			"Execution platform"         => $vector['executionPlatform'],
			"Objective"                 => $vector['objective'],
			"Programming language"       => $vector['programmingLanguage'],
			"Testing technique"          => $vector['testingTechnique'],
			"Test data generation"        => $vector['testDataGeneration'],
			"Testing level"              => $vector['testingLevel'],
			"Synchronization mechanism"  => $vector['synchronizationMechanism'],
			"Input"                     => $vector['input'],
			"Output"                    => $vector['output'],
			"Quality attribute"          => $vector['qualityAttribute'],
			"Type of study"               => $vector['typeOfStudy'],
			"Testing analysis"           => $vector['testingAnalysis'],
			"Concurrent paradigm"        => $vector['concurrentParadigm'],
			"Replay mechanism"           => $vector['replayMechanism'],
			"Program representation"     => $vector['programRepresentation'],
			"Instrumentation"           => $vector['instrumentation'],
			"State spaceReduction"       => $vector['stateSpaceReduction'],
			"Concurrent bugs"            => $vector['concurrentBugs'],
			"Tool name"                  => $vector['toolName'],
			"Cost"                      => $vector['cost'],
			"PlatformTool"              => $vector['platformTool']
		);
	}

	function getAllProjects ()
	{
		$technique = null;
		$query     = null;
		$data = array();

		$query = $this->db->select('*')->from('ResultTechnique')->get();

		// initialize the array with all the info
		$techniqueResult = array ();

		foreach ($query->result_array() as $userResult) {
			// get al technique result info in the first table
			$techniqueResult = $userResult;

			// Get tables info
			$techniqueResultTables = $this->getTablesResultTechniqueView();

			// lopp through the tables
			foreach ($techniqueResultTables as $key => $value) {

				$tempResultQuery = $this->db->select($value)->from($key)->where('idTechniqueResult', $userResult['id'])->get();

				$count = 0;
				foreach ($tempResultQuery->result() as $row) {
					$techniqueResult[$value][$count++] = $row->$value;
				}
			}

			$modelView =  $this->getModelView($techniqueResult);

			$contSuggestedTechniques = 1;
			$modelView['Suggested Techniques'] = "";
			$tempSuggestedTechniquesQuery = $this->db->select('titleTechnique')->from("ResultSuggestedTechnique")->where('idTechniqueResult', $userResult['id'])->get();
			$suggestedTechniques = $tempSuggestedTechniquesQuery->result_array();
			foreach ($suggestedTechniques as $suggestedTechnique){
				if($contSuggestedTechniques == sizeof($suggestedTechniques))
					$modelView['Suggested Techniques'] .= $suggestedTechnique['titleTechnique'];
				else
					$modelView['Suggested Techniques'] .= $suggestedTechnique['titleTechnique'].", ";

				$contSuggestedTechniques++;
			}

			$contFeedback = 0;
			$tempFeedbackQuery = $this->db->select('*')->from("ResultFeedback")->where('idTechniqueResult', $userResult['id'])->get();
			foreach ($tempFeedbackQuery->result_array() as $feedbackResult) {
				$modelView['Feedback'][$contFeedback]['Technique Title'] = $feedbackResult['titleTechnique'];
				$modelView['Feedback'][$contFeedback]['Strengths'] = $feedbackResult['strengths'];
				$modelView['Feedback'][$contFeedback]['Weaknesses'] = $feedbackResult['weaknesses'];
				$modelView['Feedback'][$contFeedback]['Difficulties'] = $feedbackResult['difficulties'];
				$modelView['Feedback'][$contFeedback]['Satisfaction'] = $feedbackResult['satisfaction'];
				$contFeedback++;
			}

			$data['info'][] = $modelView;
		}

		return $data;

	}

}
?>
