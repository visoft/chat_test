describe HomeScreen do
  tests HomeScreen

  def home_screen
    @home_screen ||= HomeScreen.new(nav_bar: true)
  end

  def controller
    home_screen.navigationController
  end

  after { @home_screen = nil }

  it "has a navigationController" do
    home_screen.navigationController.should.be.kind_of(UINavigationController)
  end

  it "has a textbox" do
    home_screen.layout.username_field.should.be.kind_of UITextField
  end
end

