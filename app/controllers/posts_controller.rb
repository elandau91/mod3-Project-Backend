class PostsController < ApplicationController

    def index 
        posts = Post.all
        render json: posts, include: [:likes, :comments]
    end

    def show
        post = Post.find(params[:id])
        render json: post, include: [:likes, :comments]
    end

    def update
        post = Post.find(params[:id])
        post.update(post_params)
    end

    def create
        Post.create(new_post_params)
    end

    def destroy
        post = Post.find(params[:id])

        post.destroy
    end
    
    private
    
    def post_params
        params.require(:post).permit(:content)
    end

    def new_post_params
        params.require(:post).permit(:content, :user_id, :title, :date, :img_url)
    end

end
