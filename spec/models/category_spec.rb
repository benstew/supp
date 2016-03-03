require "rails_helper"

RSpec.describe Category, :type => :model do

 # Using Factory Syntax
 describe "has a valid factory" do
   before { FactoryGirl.create(:category) }
   it { should be_valid }
 end

 it "add name and category" do
   category = create(:category)
   expect(Category.count).to eq 1
   category = create(:category)
   expect(category.name).to eq 'Lose Weight'
   expect(category.description).to eq 'To Lose Weight'
 end

 xit "is invalid without a name" do

 end

 xit "is invalid without a description" do

 end
end
