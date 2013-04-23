require 'spec_helper'

describe Comment do

  it "model comment is valid " do
    FactoryGirl.create(:comment).should be_valid
  end



end