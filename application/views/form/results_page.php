<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<? $this->load->view('templates/header'); ?>

<style type="text/css" xmlns="http://www.w3.org/1999/html">
	.clickable
	{
		cursor: pointer;
	}

	/* unvisited link */
	a:link {
		color: blue;
	}

	/* visited link */
	a:visited {
		color: green;
	}

	/* mouse over link */
	a:hover {
		color: hotpink;
	}

	/* selected link */
	a:active {
		color: blue;
	}

	.clickable .glyphicon
	{
		background: rgba(0, 0, 0, 0.1);
		display: inline-block;
		padding: 6px 12px;
		border-radius: 4px;

		border-style: solid;
	}

	.panel-heading span
	{
		margin-top: -7px;
		font-size: 15px;
		/*margin-right: -9px;*/
	}

	a.clickable { color: inherit; }
	a.clickable:hover { text-decoration:none; }

	table {
		align-content: center;
		align-self: center;
		font-size: 14pt;
		margin: 1em;
		width: 80%;
	}

	tr th {
		background-color: #FAF9FF;
		font-size: 20pt;
		text-align: center;
	}

	tr td {
		text-align: left;
		background-color: #BDCEFA;
	}

	.glyphicon-ok{
		color: green;
	}

	.glyphicon-remove{
		color: red;
	}

	.box {
		margin: 5px;
		height: 25px;
		display: inline-block;
		padding-top: 10px;
		width: 25px;
	}

	.panel-default {
		font-size: 10pt;
		/*max-width: 500px;*/
		min-width: 500px;
		min-height: 100px;
		max-height: 200px;
	}

	.panel-body {
		font-size: 10pt;
	}

	.hidden-panel{
		display: none;
	}

	.groupBug {
		width: 100%;
		float: left;
	}

	.technique{
		width: 100%;
		display: flex;
		position: relative;
	}
	/* The container */
	.container-checkbox {
		display: block;
		position: relative;
		padding-left: 35px;
		margin-bottom: 12px;
		cursor: pointer;
		font-size: 22px;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}

	/* Hide the browser's default checkbox */
	.container-checkbox input {
		position: absolute;
		opacity: 0;
		cursor: pointer;
	}

	/* Create a custom checkbox */
	.container-checkbox .checkmark {
		position: absolute;
		top: 0;
		left: 0;
		height: 25px;
		width: 25px;
		background-color: #c0c0c0;
		border-radius: 4px;
	}

	/* On mouse-over, add a grey background color */
	.container-checkbox:hover input ~ .checkmark {
		background-color: #8c8c8c;
	}

	/* When the checkbox is checked, add a blue background */
	.container-checkbox input:checked ~ .checkmark {
		background-color: #2196F3;
	}

	/* Create the checkmark/indicator (hidden when not checked) */
	.container-checkbox .checkmark:after {
		content: "";
		position: absolute;
		display: none;
	}

	/* Show the checkmark when checked */
	.container-checkbox input:checked ~ .checkmark:after {
		display: block;
	}

	/* Style the checkmark/indicator */
	.container-checkbox .checkmark:after {
		left: 8px;
		top: 5px;
		width: 8px;
		height: 13px;
		border: solid white;
		border-width: 0 3px 3px 0;
		-webkit-transform: rotate(45deg);
		-ms-transform: rotate(45deg);
		transform: rotate(45deg);
	}


	/* The container */
	.container-radio {
		display: block;
		position: relative;
		padding-left: 35px;
		margin-bottom: 12px;
		cursor: pointer;
		font-size: 22px;
		-webkit-user-select: none;
		-moz-user-select: none;
		-ms-user-select: none;
		user-select: none;
	}

	/* Hide the browser's default radio button */
	.container-radio input {
		position: absolute;
		opacity: 0;
		cursor: pointer;
	}

	/* Create a custom radio button */
	.container-radio .checkmark {
		position: absolute;
		top: 0;
		left: 0;
		height: 25px;
		width: 25px;
		background-color: #eee;
		border-radius: 50%;
	}

	/* On mouse-over, add a grey background color */
	.container-radio:hover input ~ .checkmark {
		background-color: #ccc;
	}

	/* When the radio button is checked, add a blue background */
	.container-radio input:checked ~ .checkmark {
		background-color: #2196F3;
	}

	/* Create the indicator (the dot/circle - hidden when not checked) */
	.container-radio .checkmark:after {
		content: "";
		position: absolute;
		display: none;
	}

	/* Show the indicator (dot/circle) when checked */
	.container-radio input:checked ~ .checkmark:after {
		display: block;
	}

	/* Style the indicator (dot/circle) */
	.container-radio .checkmark:after {
		top: 9px;
		left: 9px;
		width: 8px;
		height: 8px;
		border-radius: 50%;
		background: white;
	}
	.box-checkbox {
		height: 26px;
		width: 26px;
		margin-top: 50%;
		position: relative;
		padding: 20px 0;
	}
</style>


<? if (isset($info) && isset($result)) : ?>

<div class="container animated fadeIn">

	<h1>Results Page</h1>
	<br>
	<br>

	<?
		$ci =&get_instance();
		$ci->load->model('Result_model', 'result');
		$userResults = $ci->result->getUserResults($this->session->userdata("username"));
	?>

	<?	if (count($userResults) > 0) : ?>
		<div class="panel panel-default" style="overflow-y: scroll; height: 200px">
			<div class="panel-heading">Results History</div>
				<div class="mid-width wrapItems" style="height:<?= count($userResults)  * 40 ?>px">
					<ul>
						<? foreach ($userResults as $user) : ?>
							<li>
								<a href="<?= base_url('results/setNow/'. $user['id']); ?>">
									<?= $user['insertedOn'] ?>
									<?= $user['title'] ?>
								</a>
							</li>
						<? endforeach; ?>
					</ul>
				</div>
		</div>

		<? unset($userResults); ?>
	<? endif; ?>

	<?php echo form_open(base_url('form/getSelectedTechniques'));?>

	<hr>
	<h3 align="center">Results from <?= $info['title']; ?></h3>

	<h3>Legend</h3>
	<!-- View button -->
	<div style="font-size: 14pt; line-height: 24px;border-style: solid; font-weight: normal;background-color: white;padding: 5px ;margin: 5px ; width: 100%">
		<span class="box" style="background-color: #5cb85c"></span> - Programming model
		<span class="box" style="background-color: #5bc0de"></span> - General testing characteristics
		<span class="box" style="background-color: #f0ad4e"></span> - Concurrent testing characteristics
		<span class="box" style="background-color: #d9534f"></span> - Testing tool support
	</div>

	<br>
	<br>

	<a href="<?= base_url("results/export");?>">
		<button style="float: right;" type="button" class="btn btn-xs btn-primary">
			<span class="glyphicon glyphicon-export"></span> Export in spreadsheet
		</button>
	</a>

	<?php
		$idPanel = 0;
		$bugPagination = 0;
		$detailsPagination = 0;
	?>
	<?php for($i = 0; $i<sizeof($result);$i++) : ?>
			<div style="float: left; width: 100%" class="<?= ($bugPagination >= 5) ? "hidden-panel panel-bug" : "" ?>">
				<hr style="border: 3px solid black;"/>
			</div>
			<div style="width: 75%; float: left" class="<?= ($bugPagination >= 5) ? "hidden-panel panel-bug" : "" ?>">
				<h2 align="left">
					Concurrent Bug:
					<?= ucfirst($result[$i]['concurrentBug']); ?>
				</h2>
			</div>
			<div style="width: 24%;float: right;margin-left: 1%" class="<?= ($bugPagination >= 5) ? "hidden-panel panel-bug" : "" ?>">
				<h2 align="center">
					Test Level:
				</h2>
			</div>
		<?php foreach ($result[$i]['technique'] as $technique) : ?>

			<div class="groupBug <?= ($bugPagination >= 5) ? "hidden-panel panel-bug" : "" ?>" align="center;">
				<div class="technique">

					<!-- inicio -->

					<div class=" <?= ($detailsPagination >= 5) ? "hidden-panel panel-view-".$bugPagination : "" ?>" style="float: left; width: 5%; height: 122px;position: relative">
						<div class="box-checkbox">
							<label class="container-checkbox">
								<input type="checkbox" class="form-control" value="<?= $technique['id']?>" id="checkbox<?= $technique['id']?>" name="checkboxvar[]">
								<span class="checkmark"></span>
							</label>
						</div>
					</div>

					<? $resultWeight = $technique['result_weight'] * 100; ?>

					<? if ($resultWeight > 75.00) : ?>
						<div class="panel panel-success <?= ($detailsPagination >= 5) ? "hidden-panel panel-view-".$bugPagination : "" ?>" style="width: 70%; float: left;" >
					<? elseif ($resultWeight > 50.00) : ?>
						<div class="panel panel-info <?= ($detailsPagination >= 5) ? "hidden-panel panel-view-".$bugPagination : "" ?>" style="width: 70%;float: left;" >
					<? elseif ($resultWeight > 25.00) : ?>
						<div class="panel panel-warning <?= ($detailsPagination >= 5) ? "hidden-panel panel-view-".$bugPagination : "" ?>" style="width: 70%;float: left;" >
					<? else : ?>
						<div class="panel panel-danger <?= ($detailsPagination >= 5) ? "hidden-panel panel-view-".$bugPagination : "" ?>" style="width: 70%;float: left;" >
						<? endif; ?>

						<div id-panel="<?=$idPanel;?>" class="clickable panel-heading panel-collapsed" >
							<h3 class="panel-title">
								<span style="font-size: 16pt;">
								<?= $technique['testingTechnique'][0]['baseValue']; ?> -
								<?= $technique['testDataGeneration'][0]['baseValue']; ?>
								</span>
								<span class="pull-right">
									<strong>MATCH: </strong><?= $resultWeight; ?>%
									<i class="glyphicon glyphicon-plus"></i>
								</span>
								<br>
									<a href="http://<?= $technique['link']; ?>" target="_blank" ><?= $technique['link']; ?></a>
								</h3>
								<br>


								<div class="progress">
									<div class="bar bar-success progress-bar progress-bar-success" role="progressbar" style="width: <?= $technique['Programming model']*100; ?>%" aria-valuemax="12.53">
										<?= $technique['Programming model']*100; ?>%
									</div>

									<div class="bar bar-info progress-bar progress-bar-info" role="progressbar" style="width: <?= $technique['General testing characteristics']*100; ?>%" aria-valuemax="48.72">
										<?= $technique['General testing characteristics']*100; ?>%
									</div>

									<div class="bar bar-warning progress-bar progress-bar-warning" role="progressbar" style="width: <?= $technique['Concurrent testing characteristics']*100; ?>%" aria-valuemax="32.04">
										<?= $technique['Concurrent testing characteristics']*100; ?>%
									</div>
									<div class="bar bar-danger progress-bar progress-bar-danger" role="progressbar" style="width: <?= $technique['Testing tool support']*100; ?>%" aria-valuemax="6.7">
										<?= $technique['Testing tool support']*100; ?>%
									</div>
								</div>

							</div>

							<?
								unset($technique['Programming model']);
								unset($technique['General testing characteristics']);
								unset($technique['Concurrent testing characteristics']);
								unset($technique['Testing tool support']);
								unset($technique['link']);
							?>
						</div>

							<? if ($resultWeight > 75.00) : ?>
								<div class="panel panel-success <?= ($detailsPagination >= 5) ? "hidden-panel panel-view-".$bugPagination : "" ?>" style="width: 24%; float: right; margin-left: 1%; display: flex;" >
							<? elseif ($resultWeight > 50.00) : ?>
								<div class="panel panel-info <?= ($detailsPagination >= 5) ? "hidden-panel panel-view-".$bugPagination : "" ?>" style="width: 24%; float: right; margin-left: 1%;">
							<? elseif ($resultWeight > 25.00) : ?>
								<div class="panel panel-warning <?= ($detailsPagination >= 5) ? "hidden-panel panel-view-".$bugPagination : "" ?>" style="width: 24%; float: right; margin-left: 1%;">
							<? else : ?>
								<div class="panel panel-danger <?= ($detailsPagination >= 5) ? "hidden-panel panel-view-".$bugPagination : "" ?>" style="width: 24%; float: right; margin-left: 1%;">
							<? endif; ?>

									<div class="panel-heading" style="height: 100%; width: 100%; display: table;">
										<h3 style="margin: 0; display: table-cell; vertical-align: middle; text-align: center; height: auto;"><?= ucfirst($technique['testingLevel'][0]['baseValue']); ?> testing</h3>
									</div>
							</div>
						</div>
						<!-- DIV Detalhes -->
						<div class="panel panel-details" id="panel<?=$idPanel;?>" style="display: none; width: 100%;" align="center" >
							<div class="panel-body" align="center" style="width: 100%;">
									<table border="1" style="width: 100%">

										<?php foreach ($technique as $keyTechnique => $field) : ?>
											<? if ( (strcmp ($keyTechnique, "id") === 0) || (strcmp ($keyTechnique, "result_weight") === 0) ) : ?>
												<? continue; ?>
											<? endif; ?>


											<? if (strcmp ($keyTechnique, "title") == 0) : ?>
												<thead>
												<tr>
													<th colspan="4" style="width: 100%"><?= $field; ?></th>
												</tr>
												<tr>
													<th style="width: 25%">Atribute</th>
													<th style="width: 35%">Thechnique Description</th>
													<th style="width: 5%">Match <!--( <i class="glyphicon glyphicon-ok"></i> or <i class="glyphicon glyphicon-remove"></i> )--></th>
													<th style="width: 35%">Project Description</th>
												</tr>
												</thead>
												<? continue; ?>
											<? else: ?>
												<tbody>
												<tr>
													<td style="font-weight: 800;"><?= $field['atribute']; ?></td>
													<td>
														<?php for($k = 0; $k < sizeof($technique[$keyTechnique]['features']); $k++) {
															echo $technique[$keyTechnique]['features'][$k];
															if ($k != sizeof($technique[$keyTechnique]['features']) - 1)
																echo ", ";
														}
														?>
													</td>
													<td style="text-align:center;">
														<? if ($field['match'] === true) : ?>
															<i class="glyphicon glyphicon-ok"></i>
														<? else : ?>
															<i class="glyphicon glyphicon-remove"></i>
														<? endif; ?>
													</td>
													<td>
														<?php for($k = 0; $k < sizeof($info[$keyTechnique]); $k++) {
															echo $info[$keyTechnique][$k];
															if ($k != sizeof($info[$keyTechnique]) - 1)
																echo ", ";
														}
														?>

													</td>
												</tr>
												</tbody>
											<? endif; ?>
										<?php endforeach; ?>
									</table>
								</div>
						</div> <!-- end Div detalhes -->
				</div>
				<?php $idPanel++; ?>
				<? $detailsPagination++; ?>
		<? endforeach; ?>
		<? if($detailsPagination >= 5) : ?>
			<button id="showAllResults" style="margin-top: 50px; border: 1px solid #8c8b8b;" class="btn btn-block btn-primary btn-view-details <?= ($bugPagination >= 5) ? "hidden-panel panel-bug" : "" ?>" id-pagination="<?=$bugPagination?>">View all Results</button>
		<? endif; ?>
		<? $bugPagination++; ?>
		<?$detailsPagination = 0; ?>
	<? endfor; ?>

	<button id="showAllBugs" style="margin-top: 50px; border: 1px solid #8c8b8b; background-color: green" class="btn btn-block btn-primary btn-view-bugs">View all Concurrent Bugs</button>
	<hr>

	<!--<input type="checkbox" hidden value="" id="userResultId" name="userResultId" checked> -->
	<button type="submit" class="btn btn-block btn-info btn-model" id="button" > Give Feedback</button>

</div>
<? endif; ?>


<!-- START OF FOOTER -->
<? $this->load->view('templates/footer'); ?>
<!-- END OF IT  -->

<script type="text/javascript">
	$(document).on('click', '.panel-heading span.clickable', function (e) {
		var $this = $(this);
		if (!$this.hasClass('panel-collapsed')) {
			$this.parents('.panel').find('.panel-body').slideUp();
			$this.addClass('panel-collapsed');
			$this.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
		} else {
			$this.parents('.panel').find('.panel-body').slideDown();
			$this.removeClass('panel-collapsed');
			$this.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
		}
	});
	$(document).on('click', '.panel div.clickable', function (e) {
		var $this = $(this);
		var idPanel = $(this).attr("id-panel");
		if (!$this.hasClass('panel-collapsed')) {
			$('#panel'+idPanel).slideUp(0);
			$this.addClass('panel-collapsed');
			$this.find('i').removeClass('glyphicon-minus').addClass('glyphicon-plus');
		} else {
            $('#panel'+idPanel).slideDown();
			//$this.parents('.panel').find('.panel-body').slideDown();
			$this.removeClass('panel-collapsed');
			$this.find('i').removeClass('glyphicon-plus').addClass('glyphicon-minus');
		}
	});
	$(document).on('click', '.btn-view-details',function (e) {
		e.preventDefault();
	    var idpagination = $(this).attr("id-pagination");
	    $(".panel-view-"+idpagination).fadeIn(100);
		$(this).fadeOut(100);
    });
    $(document).on('click', '.btn-view-bugs',function (e) {
		e.preventDefault();
        $(".panel-bug").css("display", "block");
        $(this).fadeOut(100);
    });
</script>

</body>
</html>
