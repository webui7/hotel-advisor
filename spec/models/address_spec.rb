require 'spec_helper'

describe Address do

  it "address is valid " do
    FactoryGirl.create(:address).should be_valid
  end
  it { should  belong_to(:hotel) }

end