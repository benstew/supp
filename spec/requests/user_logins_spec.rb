require 'rails_helper'

RSpec.describe "UserLogins", type: :request do
  it "User is able to login to their account" do
    # Creating a new user factory
    user = create(:user)
    visit root_path
    click_link "Login"
    fill_in "Email", :with => user.email
    fill_in "Password", :with => user.password
    click_button "Log in"
    current_path.should eq(root_path)
  end
end
