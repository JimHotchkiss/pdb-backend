class Api::V1::FavoritesController < ApplicationController

    def index 
        favorites = Favorite.all 
        option = {
            include: [:user]
        }
        render json: FavoriteSerializer.new(favorites, option)
    end 

    private 
    
    def favorite_params 
        params.require(:favorite).permit(:title, :date_published, :description, :image, :provider, :url)
    end 
end
