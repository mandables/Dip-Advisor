class DivingsitesController < ApplicationController
  def show
    @divingsite = Divingsite.find(params[:id])
    @reviews = @divingsite.reviews
  end

  def index
    if params[:search]
      @divingsites = Divingsite.search(params[:search]).order("created_at DESC")
    elsif params[:order] == 'alphabetically'
      @divingsites = Divingsite.all.order('name').order("name ASC")
    elsif params[:order] == 'rating'
      @divingsites = Divingsite.all.topfive
    else
      @divingsites = Divingsite.all
    end
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
