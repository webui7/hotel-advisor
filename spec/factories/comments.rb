require 'faker'

FactoryGirl.define do
  factory :comment do |f|
    f.body "body"
    f.hotel_id 1
    f.user_id 1
    f.hotel_rate_id 1
  end
end
