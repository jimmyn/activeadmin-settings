#= require jquery.form
#= require jquery.easytabs
#= require redactor/ru
#= require redactor/redactor
#= require_tree ./

$ ->
  text_input = $("[data-role='rich-text']")
  if text_input.css("display") != "none"
    text_input.redactor window.redactor_settings