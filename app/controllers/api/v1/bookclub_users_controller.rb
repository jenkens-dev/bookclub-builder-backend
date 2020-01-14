class Api::V1::BookclubUsersController < ApplicationController
    def create
        @bookclub_user = BookclubUser.create(bookclub_id: params[:bookclub_id], user_id: params[:user_id])
        render json: @bookclub_user
    end

    def destroy 
        @bookclub_user = BookclubUser.find_by(bookclub_id: params[:bookclub_id], user_id: params[:user_id])
        if @bookclub_user 
            render json: {message: 'Left Bookclub'}
        else 
            render json: {error: 'Something went wrong.'}
        end
    end
end
 