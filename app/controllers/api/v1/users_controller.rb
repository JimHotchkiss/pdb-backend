class Api::V1::UsersController < ApplicationController
    # wrap_parameters :user, include: [:id,:username, :password, :password_confirmation]

    def index 
        users = User.all 
        option = {
            include: [:favorites]
        }
        render json: UserSerializer.new(users, option)
    end 

    def create
        binding.pry
        @user = User.new(user_params)
        if @user.save 
            login_user
            render json: UserSerializer.new(@user)
        else 
            render json: @user.errors
        end 
    end 

    private 

    def login_user 
        session[:user_Id] = @user.id
    end 
    
    def user_params
        params.require(:user).permit(:id, :username, :password, :password_confirmation)
    end
end
