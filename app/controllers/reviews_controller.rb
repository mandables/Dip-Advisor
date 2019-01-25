class ReviewsController < ApplicationController
  def new
    @divingsite = Divingsite.find(params[:divingsite_id])
    @review = Review.new
  end

  def create
    @divingsite = Divingsite.find(params[:divingsite_id])
    @review = @divingsite.reviews.create(review_params)
    @review.divingsite_id = @divingsite.id
    @review.user = current_user
    @review.save
    redirect_to divingsite_path(@divingsite)
  end

  def upvote

    @review = Review.find(params[:review_id])
    @review.upvote_by current_user
    redirect_to @review.divingsite
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_divingsite
    @divingsite = Divingsite.find(params[:divingsite_id])
  end
end
