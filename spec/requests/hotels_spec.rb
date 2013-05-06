require 'spec_helper'

describe "Hotels" do
  describe 'Show All Top  Hotels' do
    it ' Hotel' do
      visit tophotels_url
      within 'h1' do
        page.should have_content "Top 5 hotels"
      end
    end
  end
end


