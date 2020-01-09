class Api::V1::AuthController < ApplicationController

    def login 
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params{:password})
            token = issue_token(@user)
            render json: {id: @user.id, username: @user.username, jwt: token}
        else 
            render json: {error: "User doesn't exist"}, status: 401    
        end
    end

    def current_user
        @user = User.find_by(id: user_id)
        if logged_in?
          render json: {id: @user.id, username: @user.username}
        else
          render json: {error: 'No user could be found'}, status: 401
        end
      end
end