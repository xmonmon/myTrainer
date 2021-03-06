class ReviewsController < ApplicationController
	  def new
    if current_user
      # review = review.new(review_params)
      @review = Review.new
      @review.user_id = params[:id]
    else
      redirect_to login_path
    end
  end

  def create
    if current_user
      review = Review.new(review_params)

        if review.save
          redirect_to "/reviews/#{current_user[:id]}"
        else
          redirect_to new_review_path(review[:user_id]), notice: "hey, your title is a bit too long"
        end
    

    else
      redirect_to login_path
    end

  end

  def show
    @review = Review.find_by_id(params[:id])
  end

  def edit
    @review = Review.find_by_id(params[:id])
    unless current_user && current_user == @review.user
      redirect_to root_path
    end
  end

  def update
    review = Review.find_by_id(params[:id])
    if current_user && current_user[:id] == review[:user_id]
      review.update_attributes(review_params)
      redirect_to "/reviews/#{review[:id]}"
    else
      redirect_to root_path
    end
  end

  def destroy
    review = Review.find_by_id(params[:id])
    if current_user && current_user[:id] == review[:user_id]
      review.destroy
      redirect_to "/reviews/#{session[:user_id]}"
    else
      redirect_to "http://google.com/"
    end
  end

  def index
    @review = Review.new
  end

  private
    def review_params
      params.require(:review).permit(:title, :body, :user_id)
    end

end
