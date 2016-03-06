class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price
  embed :ids, include: true

  has_many :ingredients
end
