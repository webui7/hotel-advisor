require 'spec_helper'

describe Hotel do

  it "hotel is valid " do
    FactoryGirl.create(:hotel).should be_valid
  end


  it { should have_one(:address) }
  it { should have_many(:comments) }
  it { should  belong_to(:star) }
  it { should  belong_to(:user) }
  it { should validate_presence_of(:title) }
  it { should ensure_length_of(:title).is_at_least(5) }
  it { should  validate_presence_of(:star_id) }
  it { should accept_nested_attributes_for(:address).allow_destroy(true)}
  it { should accept_nested_attributes_for(:comments).allow_destroy(true)}

end