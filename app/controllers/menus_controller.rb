class MenusController < ApplicationController
      def new
        @menu = Menu.new
      end
       
      def index
        @menus = Menu.all
      end

      def show
        @menu = Menu.find(params[:id])
      end

      def create
        @pub_profile = PubProfile.find(params[:pub_profile_id])
        @menu = @pub_profile.menus.create(menu_params)
        redirect_to pub_profile_path(@pub_profile)
      end
    private

      def menu_params
        params.require(:menu).permit(:name, :price, :item_type)
      end
end
