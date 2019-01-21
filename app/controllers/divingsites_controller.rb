class DivingsitesController < ApplicationController

  def show
     @divingsite = Divingsite.find(params[:id])
  end

  def new
    @divingsite = Divingsite.new
  end

  def create

    @divingsite = Divingsite.new(divingsite_params)
    if @divingsite.valid?
      @divingsite.save
      redirect_to @divingsite
    else
      render 'new'
    end
  end

  private

  def divingsite_params
    params.require(:divingsite).permit(:name, :country_id, :divesiteimage)
  end
end
