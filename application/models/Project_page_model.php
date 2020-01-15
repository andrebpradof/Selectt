<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Project_page_model extends CI_Model
{
	function __construct()
	{
		// Call the Model constructor
		parent::__construct();
	}

	function getAllUsersResults(){
		$this->db->select('*')->from('ResultTechnique');
		$query = $this->db->get();

		$list = array();
		$count = 0;

		foreach ($query->result() as $row) {
			$list[$count++] = array(
				'id' => $row->id,
				'title' => $row->title,
				'insertedBy' => $row->insertedBy,
				'insertedOn' => $row->insertedOn
			);
		}

		return $list;
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

	function buildTechniqueView ($id)
	{
		$technique = null;
		$query     = null;

		$query = $this->db->select('*')->from('ResultTechnique')->where('id', $id)->limit(1)->get();

		if ($query->num_rows() === 1)
		{
			// initialize the array with all the info
			$techniqueResult = array ();

			// get al technique result info in the first table
			$techniqueResult = $query->row_array();

			// Get tables info
			$techniqueResultTables = $this->getTablesResultTechniqueView();

			// lopp through the tables
			foreach ($techniqueResultTables as $key => $value) {

				$tempResultQuery = $this->db->select($value)->from($key)->where('idTechniqueResult', $id)->get();

				$count = 0;
				foreach ($tempResultQuery->result() as $row) {
					$techniqueResult[$value][$count++] = $row->$value;
				}
			}

			return $techniqueResult;
		}

		else
		{
			return null;
		}
	}

	function getAllProjects(){
		$allUsersResults = $this->getAllUsersResults();

		$data = array();

		foreach ($allUsersResults as $user){
			$data['info'][] = $this->buildTechniqueView($user['id']);
		}

		return $data;
	}

}
?>
