class CommentsController < ApplicationController
    def index
        render json: Comment.all
    end

    def create
        comment = post.comments.create(comment_params.merge(user_id: current_user.id))
        respond_with post, comment
    end

    def as_json(options = {})
        super(options.merge(include: :user))
      end
end
