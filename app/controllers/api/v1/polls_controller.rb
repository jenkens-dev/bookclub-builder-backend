class Api::V1::PollsController < ApplicationController
    def create
        @poll = Poll.create(name: params[:name], bookclub_id: params[:bookclub_id])
        render json: @poll
    end
end
