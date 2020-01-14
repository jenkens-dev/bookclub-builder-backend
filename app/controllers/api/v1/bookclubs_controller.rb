class Api::V1::BookclubsController < ApplicationController
    def index
        @bookclubs = shuffle_books
        render json: @bookclubs, include: [:users]
    end

    def show 
        @bookclub = Bookclub.find(params[:id])
        render :json => @bookclub, :include => [
            :users,
            :bookclub_users => {:only => :is_admin}
    ]
    end

    def update 
        @bookclub = Bookclub.find(params[:id])
        @bookclub.update(name: params[:name], description: params[:description], picture: params[:picture])
        render :json => @bookclub, :include => [
            :users,
            :bookclub_users => {:only => :is_admin}
    ]
    end

    def shuffle_books
        @bookclubs = Bookclub.all.to_a.shuffle
        @bookclubs = @bookclubs.slice(0,6)
        return @bookclubs
    end
end
