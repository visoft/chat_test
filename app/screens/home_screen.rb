class HomeScreen < PM::Screen
  title "Home"
  attr_accessor :layout

  def on_load
    # After view is first loaded
    @layout = HomeLayout.new(root: self.view).build

    @layout.on :login do |username|
      open ChatScreen.new(username: username)
    end
  end
end
