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

class Product < ActiveRecord::Base
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "http://cf.ltkcdn.net/vegetarian/images/std/121509-300x300-Gold_Standard_Whey_Protein.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  has_many :ingredients, dependent: :destroy

  validates_presence_of :name, :description
  validates :price_in_cents, :numericality => { :greater_than_or_equal_to => 0 }, :presence => true


  def self.price_convert_from_cents(product)
    cents_value = product.price * 100
    product.price_in_cents = cents_value
    product.save
  end

end
