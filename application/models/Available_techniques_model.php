<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Available_techniques_model extends CI_Model
{
    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }

	function getTablesTechniqueView(){
		return $techniqueTables = array(
			"ExecutionPlatform"         => "executionPlatform",
			"Objective"                 => "objective",
			"ProgrammingLanguage"       => "programmingLanguage",
			"TestingTechnique"          => "testingTechnique",
			"TestDataGeneration"        => "testDataGeneration",
			"TestingLevel"              => "testingLevel",
			"SynchronizationMechanism"  => "synchronizationMechanism",
			"Input"                     => "input",
			"Output"                    => "output",
			"QualityAttribute"          => "qualityAttribute",
			"TypeOfStudy"               => "typeOfStudy",
			"TestingAnalysis"           => "testingAnalysis",
			"ConcurrentParadigm"        => "concurrentParadigm",
			"ReplayMechanism"           => "replayMechanism",
			"ProgramRepresentation"     => "programRepresentation",
			"Instrumentation"           => "instrumentation",
			"StateSpaceReduction"       => "stateSpaceReduction",
			"ConcurrentBugs"            => "concurrentBugs",
			"ToolName"                  => "toolName",
			"Cost"                      => "cost",
			"PlatformTool"              => "platformTool"
		);
	}

	function getModelView($vector){
		return $techniqueTables = array(
			"ID"						=> $vector['id'],
			"Reference"					=>$vector['link'],
			"Title"						=> $vector['title'],
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

	function loadRegisters ()
	{
		$technique = null;
		$query     = null;
		$data = array();

		$query = $this->db->select('*')->from('Technique')->get();

		// initialize the array with all the info
		$technique = array ();

		foreach ($query->result_array() as $user) {
			// get al technique  info in the first table
			$technique = $user;

			// Get tables info
			$techniqueTables = $this->getTablesTechniqueView();

			// lopp through the tables
			foreach ($techniqueTables as $key => $value) {

				$tempQuery = $this->db->select($value)->from($key)->where('idTechnique', $user['id'])->get();

				$queryResults = $tempQuery->result_array();

				if(sizeof($queryResults) > 1) {
					$countAttribute = 1;
					$technique[$value] = "";
					foreach ($queryResults as $attribute) {
						if ($countAttribute == sizeof($queryResults))
							$technique[$value] .= $attribute[$value];
						else
							$technique[$value] .= $attribute[$value] . ", ";

						$countAttribute++;
					}
				}else{
					$technique[$value] = $queryResults[0][$value];
				}
			}

			$modelView =  $this->getModelView($technique);
			$data['info'][] = $modelView;
		}

		return $data;

	}
}
?>
