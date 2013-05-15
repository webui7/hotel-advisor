require 'spec_helper'

describe Comment do

  it "comment is valid " do
    FactoryGirl.create(:comment).should be_valid
  end

  it { should  belong_to(:hotel_rate) }
  it { should  belong_to(:hotel) }
  it { should  belong_to(:user) }
  it { should validate_presence_of(:body) }
  it { should ensure_length_of(:body).is_at_most(500)}

end