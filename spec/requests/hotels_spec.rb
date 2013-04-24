require 'spec_helper'

describe "Hotels" do
  describe 'Top  Hotels' do
    it 'Show Hotel' do
      visit tophotels_url
      within 'h1' do
        page.should have_content "Top 5 hotels"
      end
    end
  end
end


