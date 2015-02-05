class RichTextInput < Formtastic::Inputs::TextInput
  def input_html_options
    super.merge(data: { role: 'rich-text'})
  end
end