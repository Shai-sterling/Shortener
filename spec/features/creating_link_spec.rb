require "rails_helper"

RSpec.describe type: :system do

    it "Displays a form with url field" do
        visit new_link_path 
        expect(page).to have_content("Original url") 
    end

    it "has invalid url" do
        visit new_link_path 
        fill_in "Original url", with: " "
        click_button "Shorten link"
        expect(page).to have_content("Original url can't be blank")  
    end

    it "has valid url" do
        visit new_link_path 
        fill_in "Original url", with: "https://www.bachelorsportal.com/search/bachelor"
        click_button "Shorten link"
        expect(page).to have_content("https://shai-shorty.herokuapp.com/")
    end

    it "generates 7 characters for a given original url" do

        link = Link.new(
            original_url: "https://www.rubyguides.com/2015/03/ruby-random/"
        )

        expect(link.start_generate_code.length).to eq(7)
    end

    it "generates  characters for an empty original url but dose not save" do

        link = Link.new(
            original_url: " ",
            short_url: " "
        )

       link.short_url = link.start_generate_code 
        expect(link.save).to eq(false)
    end

    it "generates 7 different characters for each given original url before save " do
        
        link_one = Link.new(
            original_url: "https://www.example.com/books",
            short_url: ""
        )

        link_two = Link.new(
            original_url: "https://www.bachelorsportal.com/search/bachelor",
            short_url: ""
        )

        link_one.save
        link_two.save

        expect(link_one.short_url.present?).to eq(true)
        expect(link_two.short_url.present?).to eq(true)
        expect(link_one.short_url).to_not eq(link_two.short_url)
    end
 
    it "increases link clicked by 1 " do
        link = Link.new(
            original_url: "https://www.rubyguides.com/2015/03/ruby-random/",
            short_url: "1234567"
        )

        link.set_click 
        expect(link.clicked).to eq(1)
    end

    it "displays all links" do
        visit links_path 
        expect(page).to have_content("Shortened links") 
    end

    it "returns number of urls with same original url" do

        link_one = Link.new(
            original_url: "https://www.example.com/books",
            short_url: ""
        )
        link_two = Link.new(
            original_url: "https://www.example.com/books",
            short_url: ""
        )
        
        link_one.save
        link_two.save

        expect(link_one.urls).to eq(2)
    end
   
    it "should have only one url with same original url" do

        link = Link.new(
            original_url: "https://www.example.com/books",
            short_url: ""
        )
        
        link.save

        expect(link.urls).to eq(1)
    end



    it "should have two of urls with same original url" do
        
        link_one = Link.new(
            original_url: "https://www.example.com/books",
            short_url: ""
            )
            
            link_two = Link.new(
                original_url: "https://www.example.com/books",
                short_url: ""
                )
                
                link_one.save
                link_two.save
                
                expect(link_one.urls).to eq(2)
            end
            
    it "should have http protocol" do

        # link = Link.new(
        #     original_url: "www.example.com/books",
        #     short_url: ""
        # )
        
        # link.save

        # expect(link.valid?).to eq(true)





        visit new_link_path 
        fill_in "Original url", with: "www.bachelorsportal.com/search/bachelor"
        click_button "Shorten link"
        expect(page).to have_content("Original url is invalid")








        
    end

    it "does not have http or https protocol" do

        link = Link.new(
            original_url: "www.example.com/books",
            short_url: ""
        )
        
        link.save

        expect(link.valid?).to eq(false)

    end

    it "has has http protocol" do

        link = Link.new(
            original_url: "http://www.example.com/books",
            short_url: ""
        )
        
        link.save

        expect(link.valid?).to eq(true)

    end

    it "has has https protocol" do

        link = Link.new(
            original_url: "https://www.example.com/books",
            short_url: ""
        )
        
        link.save

        expect(link.valid?).to eq(true)

    end
    

end