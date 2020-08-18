class PostsController < ApplicationController

    def index 
        posts = Post.all
        render json: posts, include: [:likes, :comments]
    end

    def show
        post = Post.find(params[:id])
        render json: post, include: [:likes, :comments]
    end

    def destroy
        post = Post.find(params[:id])

        post.destroy
    end
    

end
