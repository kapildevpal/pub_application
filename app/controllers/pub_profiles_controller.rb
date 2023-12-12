class PubProfilesController < ApplicationController
  before_action :authenticate_pub_owner!, only: [:create]
  
    def new
      @pub_profile = PubProfile.new
    end

    def index 
      if current_pub_owner
        @pub_profiles = current_pub_owner.pub_profiles
      else
      @pub_profiles = PubProfile.all
      end
    end

    def show
      @pub_profile = PubProfile.find(params[:id])
      @current_number_of_people = @pub_profile.current_number_of_people
    end

    def create
      @pub_profile = current_pub_owner.pub_profiles.build(pub_profile_params)
  
      if @pub_profile.save
        redirect_to pub_profiles_path, notice: 'Pub Profile was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def pub_profile_params
      params.require(:pub_profile).permit(:name, :description, :location, :capacity, :is_smoking_allowed, :average_rating)
    end
  end
