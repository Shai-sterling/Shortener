class LinksController < ApplicationController

    before_action :set_link, only: [:show]
    
    def index
        @link = Link.all.order(created_at: "DESC")
    end


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
    end



    def send_to_website

        link = Link.where(short_url: "#{params[:short_url]}").first

        redirect_to link.original_url

        link.set_click
    end


    private


    def set_link
        @link =  Link.find(params[:id])
    end

    def link_params

        params.require(:link).permit(:original_url)

    end

  
end
