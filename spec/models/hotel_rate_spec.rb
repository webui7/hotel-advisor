require 'spec_helper'

describe HotelRate do

  it "hotel_rate is valid " do
    FactoryGirl.create(:hotel_rate).should be_valid
  end

  it { should have_many(:comments) }


end