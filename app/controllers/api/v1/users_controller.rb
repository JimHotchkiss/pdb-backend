class Api::V1::UsersController < ApplicationController

    def index 
        users = User.all 
        option = {
            include: [:favorites]
        }
        render json: UserSerializer.new(users, option)
    end 

    def create(user_params)
        binding.pry
    end 

    private 
    
    def user_params 
        params.require(:user).permit(:name)
    end 
end
