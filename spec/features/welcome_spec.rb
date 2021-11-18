require "rails_helper"


RSpec.describe "Welcome Pagae", type: :system do

    it "Displays a welcome message" do
        
        visit welcome_path 

        expect(page).to have_content("Hello")



    end



end