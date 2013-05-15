require 'spec_helper'

describe User do

  it "model User is valid " do
    FactoryGirl.create(:user).should be_valid
  end


   it { should have_many(:comments) }
   it { should have_many(:hotels) }
   it { should validate_presence_of(:password) }
   it { should ensure_length_of(:password).is_at_least(8)}
   it { should validate_presence_of(:email) }




end