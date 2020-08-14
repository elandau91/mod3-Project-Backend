class PostsController < ApplicationController

    def index 
        posts = Post.all
        render json: posts, include: [:likes]
    end
    
end
