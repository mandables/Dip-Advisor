class WelcomeController < ApplicationController

  def index
    @user = User.new
    @diving_sites = Divingsite.topthree
  end
end
