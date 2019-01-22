class CountriesController < ApplicationController

  def show
    country = Country.find(params[:id])
    @divingsites = country.divingsites
  end
end
