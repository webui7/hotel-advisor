require 'faker'

FactoryGirl.define do
  factory :address do |f|
    f.country { Faker::Address.country }
    f.state { Faker::Address.state }
    f.city { Faker::Address.city }
    f.street { Faker::Address.street_name }
    f.hotel_id 1
  end
end
