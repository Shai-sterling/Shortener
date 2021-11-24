require "rails_helper"



RSpec.describe type: :system do


    it "Displays a form with original url field" do
        visit new_link_path 
        expect(page).to have_content("Original url") 
    end



    it "has invalid originl url" do
        visit new_link_path 
        fill_in "Original url", with: " "
        click_button "Create Link"
        expect(page).to have_content("Original url can't be blank")
    end



end