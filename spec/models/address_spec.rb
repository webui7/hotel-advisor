require 'spec_helper'

describe Address do

  it "model address is valid " do
    FactoryGirl.create(:address).should be_valid
  end



end