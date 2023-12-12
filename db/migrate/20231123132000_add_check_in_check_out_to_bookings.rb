class AddCheckInCheckOutToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :check_in_time, :datetime
    add_column :bookings, :check_out_time, :datetime
    add_column :bookings, :number_of_people, :integer
  end
end
