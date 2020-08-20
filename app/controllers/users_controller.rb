class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include: [:posts]
        render index.html
    end

    def show 
        user = User.find_by(id: params[:id])
        render json: user, include: [:posts]
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
    end

    private
    def user_params
        params.require(:user).permit(:name, :email, :avatar)
    end

end
