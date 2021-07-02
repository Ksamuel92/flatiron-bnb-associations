class Listing < ApplicationRecord
    belongs_to :host, class_name: 'User'
    belongs_to :neighborhood
    has_many :reservations
    has_many :reviews, through: :reservations
    has_many :guests, through: :reservations, class_name: 'User' 
end

# # has a title (FAILED - 4)
# has a description (FAILED - 5)
# has an address (FAILED - 6)
# has a listing type (FAILED - 7)
# has a price (FAILED - 8)