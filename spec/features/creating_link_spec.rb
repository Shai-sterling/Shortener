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



    it "generates 7 characters for a given original url" do

        link = Link.new(
            original_url: "https://www.rubyguides.com/2015/03/ruby-random/"
        )

        expect(link.generate_code.length).to eq(7)

    end



  
  it "generates characters for an empty original url but dose not save" do

        link = Link.new(
            original_url: " ",
            short_url: " "
        )

       link.short_url = link.generate_code 

        expect(link.save).to eq(false)
    end


    it "has valid original url" do
        visit new_link_path 
        fill_in "Original url", with: "https://www.bachelorsportal.com/search/bachelor"
        click_button "Create Link"
        expect(page).to have_content("localhost:3000/")
    end







    # it "generates 7 different characters for each given original url" do

    #     link_one = Link.new(
    #         original_url: "https://www.example.com/books",
    #         short_url: ""
    #     )

    #     link_two = Link.new(
    #         original_url: "https://www.bachelorsportal.com/search/bachelor",
    #         short_url: ""
    #     )

    #     expect(link_one.generate_code).to_not eq(link_two.generate_code)
    # end


  

    
    # it "increases clicked by 1 " do

    #     link = Link.new(
    #         original_url: "https://www.rubyguides.com/2015/03/ruby-random/",
    #         short_url: "1234567"
    #     )

    #     link.set_click 

    #     expect(link.clicked).to eq(1)
    # end






end