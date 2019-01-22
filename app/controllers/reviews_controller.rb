class ReviewsController < ApplicationController

  def new
    @divingsite = Divingsite.find(params[:divingsite_id])
    @review = Review.new
  end

  def create
    byebug
    @divingsite = Divingsite.find(params[:divingsite_id])
    @review =  @divingsite.reviews.create(review_params)
    @review.divingsite_id = @divingsite.id

    # if @review.valid?
    #   @review.save
    #   redirect_to @review
    # else
    #   render 'new'
    # end
     redirect_to @review
  end

  private
  def review_params
    params.require(:review).permit(:content)
  end

  def set_divingsite
      @divingsite = Divingsite.find(params[:divingsite_id])
    end

end
