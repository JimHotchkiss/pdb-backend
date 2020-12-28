class Api::V1::FavoritesController < ApplicationController

    def index 
        favorites = Favorite.all 
        option = {
            include: [:user]
        }
        render json: FavoriteSerializer.new(favorites, option)
    end 
end
