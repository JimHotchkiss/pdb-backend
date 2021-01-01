class Api::V1::UsersController < ApplicationController
    wrap_parameters :user, include: [:username, :password, :password_confirmation]

    def index 
        users = User.all 
        option = {
            include: [:favorites]
        }
        render json: UserSerializer.new(users, option)
    end 

    def create
        user = User.new(user_params)
        if user.valid?
            user.save
            option = {
            include: [:favorites]
        }
            render json: UserSerializer.new(user)
        else 
            render json: user.errors.full_messages
        end 
    end 

    private 
    
    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end
end
