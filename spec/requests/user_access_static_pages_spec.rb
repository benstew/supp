require 'rails_helper'

RSpec.describe "User Viewing Static Pages", type: :request do

  scenario "FAQ page accessed from root path" do
      visit root_path
      click_link "About Us"
      click_link "FAQ"
      expect(page).to have_content("Welcome To The FAQs")
  end
end
