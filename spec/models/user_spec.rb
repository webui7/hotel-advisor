require 'spec_helper'

describe Star do

  it "model star is valid " do
    FactoryGirl.create(:star).should be_valid
  end



end