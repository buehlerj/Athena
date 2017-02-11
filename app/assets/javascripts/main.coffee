# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  window.Main ?= {}

  $(window).ready ->
    # Show footer if the page loads scrolled down already
    if $(document).height() == $(window).height()
      $("#footer-bar").animate {
        bottom: '0px'
      }, 700

  window.at_bottom = false
  $(window).scroll ->
    if window.at_bottom == true
      $("#footer-bar").animate {
        bottom: '-24px'
      }, 800
      window.at_bottom = false
    if $(window).scrollTop() == $(document).height() - $(window).height()
      $("#footer-bar").animate {
        bottom: '0px'
      }, 700
      window.at_bottom = true
    return
