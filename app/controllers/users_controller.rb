class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id
      redirect_to divingsites_path
    else
      redirect_to signup_path
    end
  end

  def show
    authorized_for(params[:id])
    @user = User.find(params[:id])
    @reviews = @user.reviews
  end

  private

  def user_params
    params.require(:user).permit(:profilepic, :username, :password, :password_confirmation, :qualification)
  end
end
