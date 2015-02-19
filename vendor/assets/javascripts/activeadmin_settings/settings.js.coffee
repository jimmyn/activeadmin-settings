# Settings
$ ->
  show_update_btn = (el) ->
    $(el).closest('tr').find('.update_link').css('display', 'inline-block');

  hide_update_btn = (el) ->
    $(el).closest('tr').find('.update_link').hide()

  $('#settings .form form input, textarea').change ->
    show_update_btn(this)

  $('#settings .form form input, textarea').keypress ->
    show_update_btn(this)

  $('#settings .form form').submit ->
    false

  show_saved_state = (el, showBtd = false) ->
    saved_label = el.closest('tr').find('.saved-state')
    el.hide()
    saved_label.css('display', 'inline-block')
    hide_label = (label, btn) -> label.fadeOut => btn.css('display', 'inline-block') if showBtd

    setTimeout ( -> hide_label(saved_label, el) ), 1000

  $('#settings .update_link').click (e) ->
    e.preventDefault()
    btn = $(this)
    tr = $(btn.attr("data-id"))

    form = tr.find(".form form")
    form.ajaxSubmit
      success: (value) =>
        if form.parent().hasClass("file")
          form.find(".inline-hints").html('')
          form.clearForm()
        if form.parent().hasClass("html")
          show_saved_state(btn, true)
        else
          show_saved_state(btn)

