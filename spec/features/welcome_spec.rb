require "rails_helper"

RSpec.describe "Welcome Page", type: :system do

    it "displays a welcome message" do
        visit welcome_path 
        expect(page).to have_content("Hello and welcome")
    end

end