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
//= require jquery
//= require jquery-ui/datepicker
//= require jquery_ujs
//= bootstrap-sprockets
//= require d3
// require turbolinks
//= require_tree .

// hamburger example from the web
// $('.navbar-toggle').dropdown();
// document.getElementById("nav-toggle").addEventListener ("click", toggleNav);
//        function toggleNav() {
//                var nav = document.getElementById("nav-menu");
//                var className = nav.getAttribute("class");
//                if(className == "nav-right nav-menu") {
//                    nav.className = "nav-right nav-menu is-active";
//                } else {
//                    nav.className = "nav-right nav-menu";
//                }
//        }
// Hamburger code -- why does this app require it when the blog app worked without it????
console.log("We are in javascripts/application.html.erb");

$(document).ready(function(){

  var hamburger = document.getElementsByClassName("navbar-toggle");
  hamburger[0].addEventListener ("click", toggleNav);
  function toggleNav() {
    var nav = document.getElementById("bs-example-navbar-collapse-1");
    var className = nav.getAttribute("class");
    if(className == "navbar-collapse collapse") {
      nav.className = "navbar-collapse";
    } else {
      nav.className = "navbar-collapse collapse";
    }
  }
});
