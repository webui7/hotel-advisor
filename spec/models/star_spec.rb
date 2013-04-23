require 'spec_helper'

describe User do

  it "user star is valid " do
    FactoryGirl.create(:user).should be_valid
  end



end