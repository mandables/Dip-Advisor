class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: params[:user][:username])

    if @user && @user.authenticate(params[:user][:password])
      session[:username] = @user.username
      #change redirect to homepage?
      redirect_to divingsites_path
    else
      redirect_to login_path
      #look at using flash message to show errors
    end
  end

  def destroy
    session.delete :username
    redirect_to "root"
  end
end
