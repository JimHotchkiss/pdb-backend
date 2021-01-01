class Api::V1::SessionsController < ApplicationController

    def create 
        @user = User.find_by(username: login_params[:username])
        if @user && @user.authenticate(login_params[:password])
            session[:user_id] = @user.id
            render json: @user 
        else 
            render json: {
                error: "Invalid login information"
            }
        end 
    end 

        private 

        def login_params
            params.require(:session).permit(:username, :password)
        end 

end
