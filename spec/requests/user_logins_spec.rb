require 'rails_helper'

RSpec.describe "UserLogins", type: :request do
  let(:user) {create(:user)}

  scenario "takes you to root path after logging in" do
    visit root_path
    click_link "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
    expect(current_path).to eq(root_path)
  end

  scenario "takes you somewhere else after unsuccessful login" do
    visit root_path
    click_link "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: '1234'
    click_button "Log in"
    expect(current_path).to_not eq(root_path)
  end

  scenario "displayes welcome user message after successful login" do
    visit root_path
    click_link "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: user.password
    click_button "Log in"
    expect(page).to have_content("Hi #{user.email}")
  end

  scenario "displayes unsuccessful error message when using incorrect login credentials" do
    visit root_path
    click_link "Login"
    fill_in "Email", with: user.email
    fill_in "Password", with: '1234'
    click_button "Log in"
    expect(page).to have_content("Invalid email or password")
  end




# test@gmail.com test1234


end
