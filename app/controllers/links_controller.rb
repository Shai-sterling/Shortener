class LinksController < ApplicationController


    
    def new
        @link = Link.new
    end




    def create

        @link =  Link.new(link_params)
  
        if @link.save
            redirect_to @link
        else
            render "new"
        end
        
       
    end




    def show
        @link =  Link.find(params[:id])
    end



    def send_to_website

        link = Link.find(params[:id])

        redirect_to link.original_url

        #link.set_click
    end




      private

      def link_params
          params.require(:link).permit(:original_url, :short_url)
      end
  
  
end
