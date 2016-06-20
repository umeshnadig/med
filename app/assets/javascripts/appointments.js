$(function() {
	//alert('setting date and time pickers');
	$('#appointment_date').datepicker({dateFormat:'yy-mm-dd'});
	$('#appointment_time').timepicker({minTime:'05:00am',maxTime:'10:00pm',timeFormat:'h:i a'});
	$('#appointment_patient_name').autocomplete({source:$('#appointment_patient_name').data('autocomplete-source')});
	$('#appointment_patient_name').on( "autocompleteselect", function( event, ui ) {
		$('#appointment_patient_name').val(ui.item.label);
		$('#appointment_patient_id').val(ui.item.value);
		return false;
	} );
});