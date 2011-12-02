// This is a manifest file that'll be compiled into including all the files listed below.
// Add new JavaScript/Coffee code in separate files in this directory and they'll automatically
// be included in the compiled file accessible from http://example.com/assets/application.js
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
//= require jquery
//= require jquery_ujs
//= require_tree
//= require_self

  $(function() {
    $( "#prix_date" ).datepicker({
      showButtonPanel: true,
      regional: "fr",
      changeMonth: true,
      changeYear: true,
      showOtherMonths: true,
      selectOtherMonths: true,
      firstDay: 1
    });
    $( "input:submit" ).button({ icons: {primary:'ui-icon-circle-plus'} });
  });
