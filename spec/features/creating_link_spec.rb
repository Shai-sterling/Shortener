require "rails_helper"




RSpec.describe type: :system do
    
    it "Displays a form with original_url field" do
        visit new_link_path 
        expect(page).to have_content("Original url") 
    end



    it "has valid url" do
        visit new_link_path 
        fill_in "Original url", with: "https://www.bachelorsportal.com/search/bachelor"
        click_button "Create Link"
    end



end