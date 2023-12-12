class PubProfile < ApplicationRecord
    belongs_to :pub_owner
    has_many :menus
    has_many :offers
    has_many :bookings
    has_many :users, through: :bookings
        def current_number_of_people
           current_time = Time.now
           active_bookings = bookings.where('check_in_time <= ? AND (check_out_time IS NULL OR check_out_time >= ?)', current_time, current_time)
           total_people = active_bookings.sum(:number_of_people)
        end
end
