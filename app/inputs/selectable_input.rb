class SelectableInput < Formtastic::Inputs::SelectInput
  def input_html_options
    super.merge(data: { role: 'selectable'})
  end
end