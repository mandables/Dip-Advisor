class ReviewsController < ApplicationController
  def new
    @divingsite = Divingsite.find(params[:divingsite_id])
    @review = Review.new
  end

  def create
    @divingsite = Divingsite.find(params[:divingsite_id])
    @review = @divingsite.reviews.create(review_params)
    byebug
    @review.divingsite_id = @divingsite.id
    @review.user = User.find_by(username: current_user)
    @review.save
    redirect_to @divingsite
  end

  def upvote

    @review = Review.find(params[:review_id])
    @review.upvote_by User.find_by(username: current_user)
    redirect_to @review.divingsite
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end

  def set_divingsite
    @divingsite = Divingsite.find(params[:divingsite_id])
  end
end
