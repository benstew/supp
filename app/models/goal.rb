# == Schema Information
#
# Table name: goals
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category    :string
#  category_id :integer
#

class Goal < ActiveRecord::Base
  belongs_to :category
  has_many :products, dependent: :destroy

  def self.most_recent_first
    self.all.order('created_at DESC')
  end

end
