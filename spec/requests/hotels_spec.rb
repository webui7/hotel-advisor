require 'spec_helper'

describe "Hotels" do

  describe 'Show  Top 5  Hotels' do
    it ' Hotel' do
      visit tophotels_url
      within 'h1' do
        page.should have_content "Top 5 hotels"
      end
    end
  end



  describe 'Show All Hotels' do
    it ' Let visit page /hotels ' do
      visit hotels_url
      within 'h2' do
        page.should have_content "Sign in"
      end
    end


  describe "sign in process & add hotel & add comment" do
    before :each do
      FactoryGirl.create(:user)
      FactoryGirl.create(:star)
      FactoryGirl.create(:hotel_rate)
    end

   it "signs me in , then i add hotel and comment" do
        visit '/users/sign_in'
        within("#new_user") do
          fill_in 'Email', :with => 'example@com.com'
          fill_in 'Password', :with => '8symbols'
        end
        click_button 'Sign in'
        within 'h1' do
          page.should have_content 'Listing hotels'
        end


        find_link('New Hotel').click

        within 'h1' do
            page.should have_content 'New hotel'
        end

        within("#new_hotel") do
                fill_in 'Title', :with => 'Good title'
                select 2, :from => 'hotel[star_id]'
        end
        click_button 'Submit'
        within 'h1' do
                page.should have_content 'Good title'
        end

        within("#new_comment") do
                fill_in 'Body', :with => 'My comment'
                select 5, :from => 'comment[hotel_rate_id]'
        end
        click_button 'Submit'
        within 'h1' do
                page.should have_content 'Good title'
        end
        page.should have_content 'My comment'

      end
    end
  end

end




