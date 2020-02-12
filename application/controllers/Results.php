<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Results extends MY_Controller { // Verificacao de login

 	public function __construct()
    {
        parent::__construct();
        $this->load->model('Utilidades_model', 'utility');
        $this->load->model('Technique_model', 'technique');
        $this->load->model('Result_model', 'result');
    }

	public function index()
	{
		if ( !$this->session->has_userdata('result_user') ) {
			$data['userResults'] = $this->result->getUserResults($this->session->userdata("username"));
			$this->load->view('form/results_page_none', $data);

		} else {
			$idResult = $this->session->userdata('result_user');
			$this->resultsTechniques($idResult);
		}
	}

	public function setNow ($id)
	{
		$answer = $this->result->checkIfExistResult ($id);
		if ($answer === 1) {
			$this->session->set_userdata(
				array('result_user' => $id)
			);
		}
		redirect(base_url('results'));
	}

	protected function resultsTechniques ($id)
	{
		// echo $id;
		$allWeights = $this->utility->getFields();
		$allTechniques = $this->technique->buildTechniques();
		$resultTechnique = $this->result->buildTechniqueResult($id);

		$result = array();
		$bugsResult = array();
		$count = 0;
		$numBugsUser = sizeof($resultTechnique['concurrentBugs']);


		foreach ($allTechniques as $technique) {
			$result[$count]['id'] = $technique['id'];
			$result[$count]['title'] = $technique['title'];
			$result[$count]['link'] = $technique['link'];


			$resultWeight = floatval(0.000);

			$result[$count]['Programming model'] = floatval(0.000);
			$result[$count]['General testing characteristics'] = floatval(0.000);
			$result[$count]['Concurrent testing characteristics'] = floatval(0.000);
			$result[$count]['Testing tool support'] = floatval(0.000);


			foreach ($allWeights['fields'] as $weight) {
				// just to help reading the code ...
				$idTemp = $weight['html_id'];
				$compareField = $resultTechnique[$idTemp];
				$originalField = $technique[ucfirst($idTemp)];
				$weightValue = $weight['weight'];

				$result[$count][$idTemp] = $this->utility->generateFieldsForCompare($originalField, $compareField, $weightValue);
				$resultWeight += floatval($result[$count][$idTemp]['max_value']);

				// category progress bar each category has a limit !
				$result[$count][$weight['category']] += floatval($result[$count][$idTemp]['max_value']);

				$result[$count][$idTemp]['atribute'] = $weight['atribute'];
				$result[$count][$idTemp]['match'] = $result[$count][$idTemp]['isMatch'];

				$result[$count][$idTemp]['features'] = $originalField;

			}// end foreach
			$result[$count]['result_weight'] = $resultWeight;
			$count++;
		}// end foreach

	// order by weight
		for ($i = 0; $i < count($result) - 1; $i++) {
			for ($j = 0; $j < count($result) - $i - 1; $j++) {
				if ($result[$j+1]['result_weight'] > $result[$j]['result_weight']) {
					$temp = $result[$j];
					$result[$j] =  $result[$j+1];
					$result[$j+1] = $temp;
				}
			}
		}


		// cria o vetor $bugsResult
		$count = 0;
		foreach ($result as $singleResult){
			$temp = array();
			$flagExist = false;
			$flagUserBug = false;
			for($i = 0; $i < sizeof($singleResult['concurrentBugs']['features']); $i++){
				for($j = 0; $j < sizeof($bugsResult); $j++){
					if(strcasecmp($bugsResult[$j]['concurrentBug'],$singleResult['concurrentBugs']['features'][$i]) == 0){
						$bugsResult[$j]['technique'][] = $singleResult;
						$flagExist = true;
						break;
					}
				}
				if (!$flagExist) {
					for($k = 0; $k<$numBugsUser; $k++){
						if(strcasecmp($singleResult['concurrentBugs']['features'][$i],$resultTechnique['concurrentBugs'][$k]) == 0){
							$temp[0]['concurrentBug'] = $singleResult['concurrentBugs']['features'][$i];
							$temp[0]['technique'][] = $singleResult;
							array_splice($bugsResult,$count,0,$temp);
							$count++;
							$flagUserBug = true;
							break;
						}
					}
					if(!$flagUserBug){
						$last = sizeof($bugsResult);
						$bugsResult[$last]['concurrentBug'] = $singleResult['concurrentBugs']['features'][$i];
						$bugsResult[$last]['technique'][] = $singleResult;
					}
				}
				$flagExist = false;
				$flagUserBug = false;
			}
		}


		$data['info'] 	= $resultTechnique;
		$data['result'] = $bugsResult;
		$data['allTechniques'] = $result;
		//$data['userResultId'] = $id;

		$this->load->view('form/results_page', $data);
	}
}

?>
