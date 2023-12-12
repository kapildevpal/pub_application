class BookingsController < ApplicationController
    # before_action :authenticate_user!, only: [:create]
      
        def index
            if current_user
              @bookings = Booking.where(user_id: current_user.id)
            else
              @pub_profile = current_pub_owner.pub_profiles
              @bookings = Booking.where(pub_profile_id: @pub_profile.ids)
            end
        end
    
        def create
          @user = current_user
          @pub_profile = PubProfile.find(params[:pub_profile_id])
          @booking = Booking.create(user: @user, pub_profile: @pub_profile, check_in_time: Time.now)
          if @booking.save
            flash[:notice] = "Booking created successfully."
            redirect_to pub_profile_path(@pub_profile) 
          else
            flash[:alert] = "Failed to create a booking."
            redirect_to pub_profiles_path 
          end
        end
    
        def show
          @booking = Booking.find(params[:id])
        end

        def edit
          @booking = Booking.find(params[:id])
        end

        def update
          if current_pub_owner
            @booking = Booking.find(params[:id])
            if @booking.update(booking_params)
              flash[:notice] = "Booking updated successfully."
              redirect_to bookings_path
            else
              flash[:alert] = "Failed to update booking."
              render :edit
            end
          end
        end
        
        private
        
        def booking_params
          params.require(:booking).permit(:check_out_time, :number_of_people)
        end
        
end
