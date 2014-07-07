class HomeLayout < MK::Layout
  view :username_field

  def layout
    root :main do
      add UITextField, :username_field do
        delegate self
        placeholder 'User Name'
        background_color '#fff'.uicolor
        autocorrectionType UITextAutocorrectionTypeNo
        spellCheckingType UITextSpellCheckingTypeNo
        clearButtonMode UITextFieldViewModeWhileEditing
        # padding
        target.layer.sublayerTransform = CATransform3DMakeTranslation(5, 0, 0)
        constraints do
          top_left x: 20, y: 120
          width.equals(view).minus(40)
          height 50
        end
      end
    end
  end

  def main_style
    background_color "#F9F9F9".uicolor
  end

  def textFieldShouldReturn(textField)
    trigger :login, get(:username_field).text.to_s
    textField.resignFirstResponder
  end
end
