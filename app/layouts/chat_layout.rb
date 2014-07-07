class ChatLayout < MK::Layout
  view :username_label
  #view :chat_field

  def layout
    root :main do
      add UILabel, :username_label
      add UITextField, :chat_field
    end
  end

  def main_style
    background_color "#F9F9F9".uicolor
  end

  def username_label_style
    size_to_fit
    text_color :black.uicolor
    text_alignment UITextAlignmentCenter
    constraints do
      top_left x: 20, y: 70
      width.equals(view).minus(40)
      height 30
    end
  end

  def chat_field_style
    placeholder 'Chat'
    background_color '#fff'.uicolor
    autocorrectionType UITextAutocorrectionTypeNo
    spellCheckingType UITextSpellCheckingTypeNo
    clearButtonMode UITextFieldViewModeWhileEditing
    # padding
    target.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0)
    constraints do
      top_left x: 20, y: 100
      width.equals(view).minus(40)
      height 50
    end
  end
end
