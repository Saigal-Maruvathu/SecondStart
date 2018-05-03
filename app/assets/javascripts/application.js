// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .
// button names meals, supplies, shelter and jobs followed by Btn
// div names meals, supplies, shelter and jobs followed by Modal
var post = {
  //dashboard.moves makes the pop-up visible
meals : function() {
  document.getElementById("mealsModal").style.visibility = "visible";

  document.getElementById("jobsModal").style.visibility = "hidden";
  document.getElementById("suppliesModal").style.visibility = "hidden";
  document.getElementById("shelterModal").style.visibility = "hidden";
}, supplies : function() {
  document.getElementById("suppliesModal").style.visibility = "visible";

  document.getElementById("mealsModal").style.visibility = "hidden";
  document.getElementById("jobsModal").style.visibility = "hidden";
  document.getElementById("shelterModal").style.visibility = "hidden";

}, shelters : function() {
  document.getElementById("shelterModal").style.visibility = "visible";

  document.getElementById("mealsModal").style.visibility = "hidden";
  document.getElementById("suppliesModal").style.visibility = "hidden";
  document.getElementById("jobsModal").style.visibility = "hidden";

}, jobs : function() {
  document.getElementById("jobsModal").style.visibility = "visible";

  document.getElementById("mealsModal").style.visibility = "hidden";
  document.getElementById("suppliesModal").style.visibility = "hidden";
  document.getElementById("shelterModal").style.visibility = "hidden";
}, close : function() {
  document.getElementById("mealsModal").style.visibility = "hidden";
  document.getElementById("suppliesModal").style.visibility = "hidden";
  document.getElementById("shelterModal").style.visibility = "hidden";
  document.getElementById("jobsModal").style.visibility = "hidden";
  }
};
