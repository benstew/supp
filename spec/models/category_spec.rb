require "rails_helper"

RSpec.describe Category, :type => :model do


it "has a valid factory" do
   category = create(:category)
   expect(category).to be_valid
 end

 it "add name and category" do
   category = create(:category)
  #  expect(Category.count).to eq 1
   expect(category.name).to eq 'Lose Weight'
   expect(category.description).to eq 'To Lose Weight'
 end

 it "is invalid without a name" do
   category = create(:category)
   category.name = nil
   expect(category).to_not be_valid
 end

 it "is invalid without a description" do
   category = create(:category)
   category.description = nil
   expect(category).to_not be_valid
 end
end
