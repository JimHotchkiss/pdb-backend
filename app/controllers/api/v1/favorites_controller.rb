class Api::V1:: FavoritesController < ApplicationController

    def index 
        @favorites = Favorite.all
        render json: @favorites
    end

    def create
        @favorite = Favorite.new(favorite_params)
        if @favorite.save
            render json: @favorite
        else
            render json: {error: "Favorite did not save"}
        end
    end 
    
    
    private 
    def favorite_params
        params.require(:favorite).permit(:description, :publishedAt, :title, :urlToImage, :url)
    end
end

