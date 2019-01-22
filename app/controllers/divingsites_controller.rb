class DivingsitesController < ApplicationController
  def show
    @divingsite = Divingsite.find(params[:id])
    @reviews = @divingsite.reviews
  end

  def index
    @divingsites = Divingsite.all
  end

  def new
    @divingsite = Divingsite.new
  end

  def upvote
    @divingsite = Divingsite.find(params[:divingsite_id])
    @divingsite.upvote_by User.find_by(username: current_user)
    redirect_to divingsites_path
  end

  def create
    @divingsite = Divingsite.new(divingsite_params)
    if @divingsite.valid?
      @divingsite.save
      redirect_to @divingsite
    else
      render "new"
    end
  end

  private

  def divingsite_params
    params.require(:divingsite).permit(:name, :country_id, :divesiteimage)
  end
end
