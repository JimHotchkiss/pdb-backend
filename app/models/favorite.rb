class Favorite < ApplicationRecord

    def self.favorite_search(favorite)
        Favorite.exists?('description': favorite['description'])
    end 
end
