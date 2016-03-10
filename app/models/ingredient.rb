# == Schema Information
#
# Table name: ingredients
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  location_made :string
#  composition   :text
#  product_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Ingredient < ActiveRecord::Base
  belongs_to :product
  validates_presence_of :name
end
