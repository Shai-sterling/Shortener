class Link < ApplicationRecord
    require "digest/sha2"
    
    validates :original_url, presence: true, allow_blank: false
    before_create  :start_generate_code
    validates :original_url, format: URI::regexp(%w[http https])

    def set_click
        self.increment!(:clicked, 1)
    end


    def urls
        Link.where(original_url: self.original_url).count
    end

    def start_generate_code
        generate_code
    end
     
    private
     
    def generate_code
        self.short_url = Digest::SHA256.hexdigest(self.original_url)[0..6]
    end

end
