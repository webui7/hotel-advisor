require 'faker'

FactoryGirl.define do
  factory :hotel do |f|
    f.title "12345678"
    f.star_id 1
    f.breakfast true
    f.roomdescription "dsasfd"
    f.photo "dsafdsfa"
    f.roomprice 10.3
    f.averagerate 10.2
    f.user_id 1
  end
end
