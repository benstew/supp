FactoryGirl.define do
  factory :user do
    email "test@gmail.com"
    password  "password"
  end

  factory :category do
    name "Lose Weight"
    description "To Lose Weight"
  end

  factory :goal do
    name "Lose Belly Fat"
    description "Lose weight around core and midsection to better expose abdominal muscles"
  end

  factory :product do
    name 'Gold Standard Whey Protein'
    description 'A Whey based protein'
  end

end


# Awesome Syntax w/ faker gem
# require 'faker'
#
# FactoryGirl.define do
#   factory :contact do |f|
#     f.firstname { Faker::Name.first_name }
#     f.lastname { Faker::Name.last_name }
#   end
# end
