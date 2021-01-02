class Api::V1::FavoritesController < ApplicationController
    require 'pry'

    def index 
        favorites = Favorite.all 
        option = {
            include: [:user]
        }
        render json: FavoriteSerializer.new(favorites, option)
    end 

    def create
        binding.pry
        favorites = Favorite.new(favorite_params)
        if favorites.save 
            render json: FavoriteSerializer.new(favorites)
        else 
            render json: favorites.errors.full_messages
        end 
    end 

    private 
    
    def favorite_params 
        params.require(:favorite).permit(:title, :date_published, :description, :image, :provider, :url)
    end 
end
