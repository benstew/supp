# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  price              :decimal(, )
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
#

class Product < ActiveRecord::Base
  has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100>" }, default_url: "http://cf.ltkcdn.net/vegetarian/images/std/121509-300x300-Gold_Standard_Whey_Protein.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  has_many :ingredients

end
