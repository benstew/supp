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

class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price
  embed :ids, include: true

  has_many :ingredients
end
