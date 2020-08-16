class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include: [:posts]
    end

    def show 
        user = User.find_by(id: params[:id])
        render json: user, include: [:posts]
    end
end