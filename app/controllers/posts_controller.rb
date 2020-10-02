class PostsController < ApplicationController
    def index
        render json: Post.all
    end

    def show
        post = Post.find_by(id: params[:id])
        render json: post
    end

    def destroy
        
        post = Post.find_by(id: params[:id])
        post.destroy()
        render json: post
    end

    def create
       
        # create a Post in the database
        
        post = Post.create(
            content: params[:content],
            user_id: params[:user_id]
        )
        if post.valid?
            # return the user in the response
            render json: post
        else
            # for invalid users, send error messages to the front end
            render json: { message: post.errors.full_messages }, status: :bad_request
        end
    end

end
