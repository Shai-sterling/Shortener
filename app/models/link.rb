class Link < ApplicationRecord
    require "digest/sha2"

    validates :original_url, presence: true, allow_blank: false

    before_create  :generate_code

   




    def set_click
        self.increment!(:clicked, 1)
     end


     def urls
         Link.where(original_url: self.original_url).count
     end

    
    def generate_code
        self.short_url = Digest::SHA256.hexdigest(self.original_url)[0..6]
    end





end
