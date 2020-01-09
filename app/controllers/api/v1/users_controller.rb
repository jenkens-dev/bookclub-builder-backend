class Api::V1::UsersController < ApplicationController
    def create 
        byebug
        @user = User.new(username: params[:username], password: params[:password])
        if @user.valid?
            @user.save
            token = issue_token(@user)
            render json: {id: @user.id, username: @user.username, jwt: token}
        else  
            render json: {error: 'Something went wrong.'}
        end
    end
end
