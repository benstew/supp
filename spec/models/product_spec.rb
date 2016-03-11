# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  serving_size       :integer
#  product_size       :integer
#  family             :string
#  goal_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  price_in_cents     :integer
#  price              :decimal(, )
#

require "rails_helper"

RSpec.describe Product, :type => :model do
    it 'is invalid without name' do
      product = build(:product, name: nil)
      expect(product).to_not be_valid
  end
    it 'is invalid without a description' do
      product = build(:product, description: nil)
      expect(product).to_not be_valid
    end
    it 'is invalid without a price' do
      product = build(:product, price: nil)
      expect(product).to_not be_valid
    end

    xit 'is invalid with price_in_cents as decimal value' do
      product = build(:product, price_in_cents: 10.44)
      expect(product).to_not be_valid
    end

    it 'is valid with price_in_cents as integer value' do
      product = build(:product, price_in_cents: 10)
      expect(product).to be_valid
    end


end





# product = create(:product)
# expect(product.name).to eq('Gold Standard Why Protein')
