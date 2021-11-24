class Link < ApplicationRecord

    validates :original_url, presence: true, allow_blank: false

end
