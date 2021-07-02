class Neighborhood < ApplicationRecord
    belongs_to :city
    has_many :listings
end

# has a name (FAILED - 14)