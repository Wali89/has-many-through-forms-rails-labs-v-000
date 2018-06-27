class CommentsController < ApplicationController


  def create
    byebug
    @comment = Comment.create(comment_params)
    @user = User.create(user_attributes)

  end

  private

  def comment_params
    params.require(:comment).permit(:content, :post_id, :user_id, user_attributes:[:username, :email])
  end
end
