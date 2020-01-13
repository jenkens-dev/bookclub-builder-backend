class Api::V1::BookclubsController < ApplicationController
    def index
        @bookclubs = shuffle_books
        render json: @bookclubs, include: [:users]
    end

    def shuffle_books
        @bookclubs = Bookclub.all.to_a.shuffle
        @bookclubs.pop
        return @bookclubs
    end
end
