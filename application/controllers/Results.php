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
		$allWeights    	 = $this->utility->getFields();
		$allTechniques 	 = $this->technique->buildTechniques();
		$resultTechnique = $this->result->buildTechniqueResult($id);

		$result = array ();
		$bugsResult = array();
		$count	= 0;
		$techniqueBugs = array();
		$numBugsUser = sizeof($resultTechnique['concurrentBugs']);



		foreach ($allTechniques as $technique) {
			$result[$count]['id']	 = $technique['id'];
			$result[$count]['title'] = $technique['title'];
			$result[$count]['link'] = $technique['link'];


			$resultWeight = floatval(0.000);

			$result[$count]['Programming model'] = floatval(0.000);
			$result[$count]['General testing characteristics'] = floatval(0.000);
			$result[$count]['Concurrent testing characteristics'] = floatval(0.000);
			$result[$count]['Testing tool support'] = floatval(0.000);


			foreach ($allWeights['fields'] as $weight) {
				// just to help reading the code ...
				if (!empty($weight['html_id'])) {
					$idTemp 		= $weight['html_id'];
				}
				$compareField 	= $resultTechnique[$idTemp];
				$originalField  = $technique[ucfirst($idTemp)];
				$weightValue 	= $weight['weight'];

				$result[$count][$idTemp] = $this->utility->generateFieldsForCompare ($originalField, $compareField, $weightValue );
				$resultWeight += floatval($result[$count][$idTemp]['max_value']);

				// category progress bar each category has a limit !
				$result[$count][$weight['category']] += floatval($result[$count][$idTemp]['max_value']);

				$result[$count][$idTemp]['atribute'] = $weight['atribute'];
				$result[$count][$idTemp]['match'] = $result[$count][$idTemp]['isMatch'];

				if(strcasecmp($idTemp,"concurrentBugs") == 0) {
					$techniqueBugs = $originalField;
					$flag = 0;
					for ($i = 0; $i < count($originalField); $i++) {
						for ($j = 0; $j < count($bugsResult); $j++) {
							if (strcasecmp($bugsResult[$j]['concurrentBug'], $originalField[$i]) == 0) {
								$bugsResult[$j]['technique'][] = $result[$count];
								if (!isset($bugsResult[$j]['concurrentBugWeight']))
									$bugsResult[$j]['concurrentBugWeight'] = floatval(0.000);
								$bugsResult[$j]['concurrentBugWeight'] += $result[$count]['concurrentBugs']['max_value'];
								$flag = 1;
								break;
							}
						}
						if ($flag == 0) {
							$last = sizeof($bugsResult);
							$bugsResult[$last]['concurrentBug'] = $originalField[$i];
							$bugsResult[$last]['technique'][] = $result[$count];
							if (!isset($bugsResult[$last]['concurrentBugWeight']))
								$bugsResult[$last]['concurrentBugWeight'] = floatval(0.000);
							$bugsResult[$last]['concurrentBugWeight'] += $result[$count]['concurrentBugs']['max_value'];
						}
						$flag = 0;
					}
				}
			}
			$result[$count]['result_weight'] = $resultWeight;

			for($i=0;$i<sizeof($techniqueBugs);$i++) {
				for ($j = 0; $j < sizeof($bugsResult); $j++) {
					if (strcasecmp($bugsResult[$j]['concurrentBug'],$techniqueBugs[$i]) == 0){
						for($k = 0; $k<sizeof($bugsResult[$j]['technique']);$k++){
							if ($bugsResult[$j]['technique'][$k]['id'] == $result[$count]['id']){
								$bugsResult[$j]['technique'][$k]['result_weight'] = $resultWeight;
							}
						}
					}
				}
			}

			$count++;
		}

		for ($i = 0; $i < count($result) - 1; $i++) {
			for ($j = 0; $j < count($result) - $i - 1; $j++) {
				if ($result[$j+1]['result_weight'] > $result[$j]['result_weight']) {
					$temp = $result[$j];
					$result[$j] =  $result[$j+1];
					$result[$j+1] = $temp;
				}
			}
		}

		if($numBugsUser != 0) {
			for ($i = 0; $i < $numBugsUser; $i++) {
				for ($j = 0; $j < count($bugsResult); $j++) {
					if (strcasecmp($bugsResult[$j]['concurrentBug'], $resultTechnique['concurrentBugs'][$i]) == 0) {
						$temp = $bugsResult[$j];
						$bugsResult[$j] = $bugsResult[$i];
						$bugsResult[$i] = $temp;
					}
				}
			}
		}

		for($i = $numBugsUser; $i < sizeof($bugsResult); $i++){
			for ($j = $numBugsUser; $j < count($bugsResult) - $i - 1; $j++) {
				if ($bugsResult[$j+1]['concurrentBugWeight'] > $bugsResult[$j]['concurrentBugWeight']) {
					$temp = $bugsResult[$j];
					$bugsResult[$j] =  $bugsResult[$j+1];
					$bugsResult[$j+1] = $temp;
				}
			}
		}

		for($k = 0; $k < sizeof($bugsResult); $k++) {
			for ($i = 0; $i < sizeof($bugsResult[$k]['technique']) - 1; $i++) {
				for ($j = 0; $j < sizeof($bugsResult[$k]['technique']) - $i - 1; $j++) {
					if ($bugsResult[$k]['technique'][$j + 1]['result_weight'] > $bugsResult[$k]['technique'][$j]['result_weight']) {
						$temp = $bugsResult[$k]['technique'][$j];
						$bugsResult[$k]['technique'][$j] = $bugsResult[$k]['technique'][$j + 1];
						$bugsResult[$k]['technique'][$j + 1] = $temp;
					}
				}
			}
		}
/*
		for ($i = 0; $i < count($result) - 1; $i++) {
			for ($j = 0; $j < count($result) - $i - 1; $j++) {
				if ($result[$j+1]['concurrentBugs']['max_value'] > $result[$j]['concurrentBugs']['max_value']) {
					$temp = $result[$j];
					$result[$j] =  $result[$j+1];
					$result[$j+1] = $temp;
				}
			}
		}
*/

		$data['info'] 	= $resultTechnique;
		$data['result'] = $bugsResult;
		
			
		// echo "<pre>";
		// print_r($data);
		// echo "<pre>";

		$this->load->view('form/results_page', $data);
	}
}

?>
