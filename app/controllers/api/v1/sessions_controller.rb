class Api::V1::SessionsController < ApplicationController

    def create 
        @user = User.find_by(username: session_params[:username])
        if @user && @user.authenticate(session_params[:password])
            session[:user_id] = @user.id
            render json: @user 
        else 
            render json: {
                error: "Invalid login information"
            }
        end 
    end 

    def current_user 
        binding.pry
        # if logged_in?
        #     render json: {message: "Logged in"}
        #   else
        #     render json: {
        #       error: "No one is logged in"
        #     }
        #   end
    end 

        private 

        def session_params
            params.require(:user).permit(:id, :username, :password)
        end 

end
