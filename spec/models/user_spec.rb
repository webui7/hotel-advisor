require 'spec_helper'

describe User do

  it "model User is valid " do
    FactoryGirl.create(:user).should be_valid
  end

  it "User is invalid without a password" do
    FactoryGirl.build(:user, password: nil).should_not be_valid
  end

  it "User is invalid without a email" do
    FactoryGirl.build(:user, email: nil).should_not be_valid
  end

  it "is invalid with a password < 8 symbols" do
    FactoryGirl.build(:user, password: "seven").should_not be_valid
  end



end