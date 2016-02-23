# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  price        :decimal(, )
#  serving_size :integer
#  product_size :integer
#  family       :string
#  goal_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Product < ActiveRecord::Base
end
