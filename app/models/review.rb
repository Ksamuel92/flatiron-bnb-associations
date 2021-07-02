class Review < ApplicationRecord
    belongs_to :guest, class_name: 'User'
    belongs_to :reservation
end


# has a description (FAILED - 21)
# has a rating (FAILED - 22)