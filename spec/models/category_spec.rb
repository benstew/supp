# == Schema Information
#
# Table name: categories
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "rails_helper"

RSpec.describe Category, :type => :model do
  subject(:category) { build(:category)}

  describe 'validation of factory' do
    it "has a valid factory" do
      expect(category).to be_valid
    end
  end

  describe 'validation of attributes' do
    it "is invalid without a name" do
      category.name = nil
      expect(category).to_not be_valid
    end

    it "is invalid without a description" do
      category.description = nil
      expect(category).to_not be_valid
    end

    it 'add name and category' do
      category.name = 'Lose Weight'
      category.description = 'To Lose Weight'
      expect(category.name).to eq 'Lose Weight'
      expect(category.description).to eq 'To Lose Weight'
    end
  end
  
end
