//= require jquery
//= require jquery_ujs
//= require_tree ../../../vendor/assets/javascripts/fancybox
//= require gritter
//= require_tree .

jQuery ->
  $('a.fancybox').fancybox()
  $('.field_with_errors').parent().parent().addClass('error')
  $(".alert").alert()
