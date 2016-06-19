$(function() {
	//alert('setting date and time pickers');
	$('#appointment_date').datepicker({dateFormat:'yy-mm-dd'});
	$('#appointment_time').timepicker({minTime:'05:00am',maxTime:'10:00pm'});
});