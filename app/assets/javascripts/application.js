// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require bootstrap.min.js
//= require bootstrap-tour.js
//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require jquery-ui/datepicker
//= require jquery.timepicker.js
//= require_tree .

	var tour = new Tour({
	  steps: [
	  {
	    element: "#patients_menu",
	    title: "Click here for creating patients",
	    content: "Click the menu item to see the options available"
	  },
	  {
	    element: "#appointments_menu",
	    title: "Click here for creating appointments",
	    content: "Click the menu item to see the options available"
	  }
	]});

	// Initialize the tour
	tour.init();

	$(function() {
		$("#helpbutton").on("click", function() { tour.start(true);})
	});
