require 'spec_helper'

describe Star do

  it "star is valid " do
    FactoryGirl.create(:star).should be_valid
  end

  it { should have_many(:hotels) }


end