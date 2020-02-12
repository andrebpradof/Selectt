<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

<? $this->load->view('templates/header'); ?>

<style type="text/css">
	hr.line {
		height: 30px;
		border-style: solid;
		border-color: #8c8b8b;
		border-width: 1px 0 0 0;
		border-radius: 20px;
	}
	hr.line:before {
		display: block;
		content: "";
		height: 30px;
		margin-top: -31px;
		border-style: solid;
		border-color: #8c8b8b;
		border-width: 0 0 1px 0;
		border-radius: 20px;
	}
	.bootstrap-tagsinput {
		width: 100%;
	}
</style>

<div class="container animated fadeIn">
	<h1>Feedback</h1>
	<h5>Please provide the information below.</h5>
	<br>

	<?php echo form_open(base_url('form/getFeedback'));?>

	<?php echo $this->session->flashdata('msg');?>

	<?php $_SESSION['techniques'] = $techniques; ?>

	<?php foreach($techniques as $technique): ?>

		<h2 align="center" style="margin-top: 50px"><?= 'Technique '.$technique['title'] ;?></h2>
		<hr class="line">

		<!-- INIT Strengths -->
		<div class="form-group">
			<!-- Strengths -->
			<label for="title">Strengths</label>
			<input type="text" class="form-control" id="strengths<?=$technique['id']?>" name="strengths<?= $technique['id']?>" aria-describedby="titleHelp" placeholder="Strengths of the technique">
		</div>
		<br>
		<!-- END Strengths -->

		<!-- INIT Weaknesses -->
		<div class="form-group">
			<!-- Weaknesses -->
			<label for="title">Weaknesses</label>
			<input type="text" class="form-control" id="weaknesses<?=$technique['id']?>" name="weaknesses<?= $technique['id']?>" aria-describedby="titleHelp" placeholder="Weaknesses of the technique">
		</div>
		<br>
		<!-- END Weaknesses -->

		<!-- INIT difficulties -->
		<div class="form-group">
			<!-- difficulties -->
			<label for="title">Difficulties</label>
			<input type="text" class="form-control" id="difficulties<?=$technique['id']?>" name="difficulties<?= $technique['id']?>" aria-describedby="titleHelp" placeholder="Difficulties in using the technique">
		</div>
		<br>
		<!-- END difficulties -->

		<!-- INIT satisfaction -->
		<div class="form-group">
			<!-- satisfaction -->
			<label for="title">Satisfaction</label>
			<input type="text" class="form-control" id="satisfaction<?= $technique['id']?>" name="satisfaction<?= $technique['id']?>" aria-describedby="titleHelp" placeholder="Satisfaction in using the technique">
		</div>
		<br>
		<!-- END satisfaction -->
	<?php endforeach; ?>

	<!-- Submit Form -->
	<button style="margin-top: 50px; border: 1px solid #8c8b8b;" type="submit" class="btn btn-block btn-primary">Submit</button>
</div>

<!-- START OF FOOTER -->
<?  $this->load->view('templates/footer'); ?>

<script src="<?= base_url('assets/media/lib/typeahead.js/typeahead.bundle.js'); ?>" type="text/javascript"></script>
<script src="<?= base_url('assets/media/tagsinput/bootstrap-tagsinput.js'); ?>" type="text/javascript"></script>

<script type="text/javascript">


</script>

<!-- END OF IT  -->
</body>
</html>
