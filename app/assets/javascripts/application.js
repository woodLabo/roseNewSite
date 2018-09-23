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

window.addEventListener('turbolinks:load', function () {
  var tab_nav = document.querySelectorAll(".tab_nav > div");
  var tab_content = document.querySelectorAll(".tab_contents");
  if (tab_nav) {
    for (var i = 0; i < tab_nav.length; i++) {
      tab_nav[i].addEventListener('click', function () {
        var _this = this;
        for (var j = 0; j < tab_nav.length; j++) {
          if (_this === tab_nav[j]) {
            tab_nav[j].classList.add("tab_nav_default");
            tab_content[j].style.display = "block";
          }
          else {
            tab_nav[j].classList.remove("tab_nav_default");
            tab_content[j].style.display = "none";
          }
        }
      }, false);
    }
  }

  //hamberguar_menu
  const hamburger = document.querySelector(".nav-toggle");
  const main_nav = document.querySelector(".mainNavi");
  hamburger.addEventListener('click', function(){
    main_nav.classList.toggle("nav_open");
    hamburger.querySelector("div").classList.toggle("hamburger_open")
  }, false);
  //hamberguar_menu
}, false);

