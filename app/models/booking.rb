class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :pub_profile
end
