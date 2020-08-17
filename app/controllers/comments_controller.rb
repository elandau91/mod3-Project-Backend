class CommentsController < ApplicationController

    def index 
        comments = Comment.all
        render json: comments
    end

    def create
        Comment.create(comment_params)
    end


    private
    def comment_params
      params.require(:comment).permit(:user_id, :post_id, :content, :name)
    end
end