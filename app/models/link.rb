class Link < ApplicationRecord
    require "digest/sha2"

    validates :original_url, presence: true, allow_blank: false

    before_create  :generate_code

   






    
    def generate_code
    self.short_url = Digest::SHA256.hexdigest(self.original_url)[0..6]
    end





end
