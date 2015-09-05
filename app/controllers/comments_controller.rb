class CommentsController < ApplicationController
	def new
    @review = Review.find_by_id(params[:id])
    if current_user
      @comment = Comment.new
    else
      redirect_to login_path
    end
  end

  def create
    if current_user
      comment = Comment.new(comment_params)
      comment.review_id = params[:id]
      comment.user_id = session[:user_id]
      comment.author = current_user.full_name
      comment.save
      redirect_to review_path(params[:id])
    else
      redirect_to login_path
    end
  end

  def edit
    @comment = Comment.find_by_id(params[:comment_id])
    unless current_user && current_user[:id] == @comment.user_id
      redirect_to login_path
    end
  end

  def update
    comment = Comment.find_by_id(params[:comment_id])
    if current_user && current_user[:id] == comment.user_id
      comment.update_attributes(comment_params)
      redirect_to post_path(params[:id])
    else
      redirect_to login_path
    end
  end

  def destroy
    comment = Comment.find_by_id(params[:comment_id])
    if current_user && current_user[:id] == comment.user_id
      comment.destroy
      redirect_to post_path(comment.post_id)
    else
      redirect_to login_path
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

end
