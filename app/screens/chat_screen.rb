class ChatScreen < PM::Screen
  title "Chat"
  attr_accessor :username

  def on_load
    # After view is first loaded
    @layout = ChatLayout.new(root: self.view).build
    @layout.username_label.text = "Welcome #{username[0]}"
  end
end
