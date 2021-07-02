class Reservation < ApplicationRecord
    belongs_to :guest, class_name: 'User'
    belongs_to :listing
    has_many :reviews
end

# has a checkin time (FAILED - 17)
#   has a checkout time (FAILED - 18)