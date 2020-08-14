class LikesController < ApplicationController

    def index 
        likes = Like.all
        render json: likes
    end

    def create
        Like.create(like_params)
    end


    private
    def like_params
      params.require(:like).permit(:user_id, :post_id)
    end
end
