$(function() {
	$('#patient_registration_on').datepicker({dateFormat:'yy-mm-dd'});
	if($('#patient_registration_on').datepicker("getDate") == null)
		$("#patient_registration_on").datepicker("setDate", "-0d"); 
});
