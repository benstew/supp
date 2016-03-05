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
    name "Something"
    description "Something else"
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
