require 'spec_helper'

describe Hotel do

  it "has a valid factory" do
    FactoryGirl.create(:hotel).should be_valid
  end

  it "is invalid without a title" do
    FactoryGirl.build(:hotel, title: nil).should_not be_valid
  end

  it "is invalid with a title < 7 symbols" do
    FactoryGirl.build(:hotel, title: "seven").should_not be_valid
  end


  it "is invalid without a stars" do
    FactoryGirl.build(:hotel, star_id: nil).should_not be_valid
  end

end