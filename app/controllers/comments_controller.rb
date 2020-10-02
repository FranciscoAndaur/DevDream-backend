class CommentsController < ApplicationController
    def index
        render json: Comment.all
    end

    def create
       
        # create a Post in the database
        
        comment = Comment.create(
            content: params[:content],
            user_id: params[:user_id],
            post_id: params[:post_id],
        )
        if comment.valid?
            # return the user in the response
            render json: comment
        else
            # for invalid users, send error messages to the front end
            render json: { message: comment.errors.full_messages }, status: :bad_request
        end
    end
end
