<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Result_model extends CI_Model
{
    function __construct()
    {
        // Call the Model constructor
        parent::__construct();
    }
      
    // GET ALL USER RESULTS
    function getUserResults ($username)
    {
      $this->db->select('*')->from('ResultTechnique')->where('insertedBy', $username);
      $query = $this->db->get();

      $list = array();
      $count = 0;

      foreach ($query->result() as $row) {    
        $list[$count++] = array ( 
		  	'id'             => $row->id,
		  	'title'          => $row->title,
			'insertedBy'     => $row->insertedBy,
			'insertedOn'     => $row->insertedOn,
			'expiration'	 => $row->expiration
        );
      } 

      return $list;
    }

	// delete user result, only on admin page
	function deleteUserResult ($id)
	{
		$this->db->delete('ResultTechnique', array('id' =>  $id));
	}

	function deleteAllUserResultsAtributes ($tableName, $id)
	{
		$this->db->delete($tableName, array('idTechniqueResult' =>  $id));
	}

    // CHECK IF RUN EXISTS
    function checkIfExistResult ($idResult)
    {
      $this->db->select('*')->from('ResultTechnique')->where('id', $idResult)->limit(1);
      $query = $this->db->get();

      if($query->num_rows() == 1) {
        return 1;
      } else {
       return 0;
      }  
    }

	function updateUserResult($data, $id)
	{
		$this->db->where('id', $id)->update('resulttechnique', $data);

		if ($this->db->affected_rows() != 1) {
			$error = $this->db->error();

			if ($error['code'] == 1062) {
				return "Sorry but this technique is already in database!";
			} else {
				return "Unknown error, please contact the administrator !";
			}

		} else {
			return TRUE;
		}
	}

    // INSERT all info into technique result table
    function insertTechniqueResult ($data) 
    {
      $this->db->insert('ResultTechnique', $data);

        if ($this->db->affected_rows() != 1) {
            $error = $this->db->error();

            if ($error['code'] == 1062) {
                return "Sorry but this technique is already in database!";
            } else {
                return "Unknown error, please contact the administrator !";
            }

        } else {
            return TRUE;
        }
    }

    // INSERT all info (atributes) of a technique into atributes tables
    function insertTechniqueResultAtributes ($tableName, $data)
    {
      $this->db->insert($tableName, $data);

        if ($this->db->affected_rows() != 1) {
            $error = $this->db->error();

            if ($error['code'] == 1062) {
                return "Sorry but this atribute is already in database!";
            } else {
                return "Unknown error, please contact the administrator !";
            }

        } else {
            return TRUE;
        }
    }

    // Get fields to iterate
    function getTablesResultTechnique ()
    {
      // return all the tables with respective field
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

    // build all info from one technique
    function buildTechniqueResult ($id)
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
        $techniqueResultTables = $this->getTablesResultTechnique();

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

    function getAllUsersResults(){
		$this->db->select('*')->from('ResultTechnique');
		$query = $this->db->get();

		$list = array();
		$count = 0;

		foreach ($query->result() as $row) {
			$list['info'][$count++] = array(
				'id' => $row->id,
				'title' => $row->title,
				'insertedBy' => $row->insertedBy,
				'insertedOn' => $row->insertedOn,
				'expiration' => $row->expiration,
				'description' => $row->description
			);
		}

		return $list;
	}

	function getSusggestedTechnique($idTechnique, $idTechniqueResult){
		$query = $this->db->select('*')->from('ResultSuggestedTechnique')->where('idTechnique', $idTechnique,'idResultTechnique',$idTechniqueResult)->limit(1)->get();
		$result = $query->row_array();
		return $result;
	}

	function insertSuggestedTechniques($techniques,$idTechniqueResult){
		foreach ($techniques as $technique){
			if($this->getSusggestedTechnique($technique['id'],$idTechniqueResult) != null)
				continue;
			$data = array(
				'idTechnique' => $technique['id'],
				'idTechniqueResult' => $idTechniqueResult,
				'titleTechnique'    => $technique['title']

			);

			$this->db->insert('ResultSuggestedTechnique', $data);

			if ($this->db->affected_rows() != 1) {
				$error = $this->db->error();

				if ($error['code'] == 1062) {
					return "Sorry but this atribute is already in database!";
				} else {
					return "Unknown error, please contact the administrator !";
				}

			}
		}
		return TRUE;
	}
}
?>
