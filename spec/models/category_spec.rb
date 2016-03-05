require "rails_helper"

RSpec.describe Category, :type => :model do

 describe "has a valid factory" do
   FactoryGirl.build(:category)
   it { should be_valid }
 end

 it "add name and category" do
  #  category = create(:category)
  #  expect(Category.count).to eq 1
   expect(category.name).to eq 'Lose Weight'
   expect(category.description).to eq 'To Lose Weight'
 end

 it "is invalid without a name" do
   category.name = nil
   expect(category).to_not be_valid

 end

 xit "is invalid without a description" do

 end
end
