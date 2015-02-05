# Tabs

enable_redactor = ->
  # Workaround for redactor and easytabs integration,
  # the problem is that not current redactors are not
  # clickable after init.

  unless window.redactor_settings
    window.redactor_settings = {}

  # after tab was clicked there is a workaround to turn on redactor
  $('#settings_tabs').bind 'easytabs:after', (event, $clicked, $targetPanel, settings) ->
    text_input = $targetPanel.find("[data-role='rich-text']")
    if text_input.css("display") != "none"
      text_input.redactor window.redactor_settings

  # init redactor for the first visible tab
  $('#settings_tabs .settings-redactor:visible').redactor window.redactor_settings

$ ->
  $('#settings_tabs').easytabs
    animate: true
    animationSpeed: 0
    tabActiveClass: "selected"
    updateHash: false

  $('.inner_tabs').each () ->
    if $('.tabs', this).length
      $(this).easytabs
        animate: true
        animationSpeed: 0
        tabActiveClass: "selected"
        updateHash: false

  enable_redactor()
