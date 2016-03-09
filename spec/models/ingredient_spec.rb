require 'rails_helper'

RSpec.describe Ingredient, type: :model do
  it "is invalid without a name" do
    ingredient = build(:ingredient, name: nil)
    expect(ingredient).to_not be_valid
  end
end
