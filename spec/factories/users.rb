require 'faker'

FactoryGirl.define do
  factory :user do |f|
    #f.email { Faker::Internet.email }
    f.email "example@com.com"
    f.password "8symbols"
  end
end
