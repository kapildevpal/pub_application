class OffersController < ApplicationController
    def new
        @offer = Offer.new
      end
       
      def index
        @offers = Offer.all
    end

    def show
        @offer = Offer.find(params[:id])
      end

      def create
        @pub_profile = PubProfile.find(params[:pub_profile_id])
        @offer = @pub_profile.offers.create(offer_params)
        redirect_to pub_profile_path(@pub_profile)
      end
      
    private

    def offer_params
        params.require(:offer).permit(:name, :description, :start_date, :end_date)
    end
end
