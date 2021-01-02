class Api::V1::SessionsController < ApplicationController

    def create 
        @user = User.find_by(username: login_params[:username])
        if @user && @user.authenticate(login_params[:password])
            session[:user_id] = @user.id
            render json: {user: @user, user_id: session[:user_id]} 
        else 
            render json: {
                error: "Invalid login information"
            }
        end 
    end 

    def current_user
        binding.pry
        @user = User.find_by(id: session[:user_id])
        render json: @user
    end 

        private 

        def login_params
            params.require(:session).permit(:username, :password)
        end 

end
