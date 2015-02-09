class MultiselectInput < Formtastic::Inputs::SelectInput
  def input_html_options
    super.merge(data: { role: 'multiselect'})
  end
end