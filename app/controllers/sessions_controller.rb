class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to divingsites_path
    else
      flash[:errors] = ["invalid username or password"]
  
      redirect_to login_path
    end
  end

  def destroy
<<<<<<< HEAD
    session.delete :username
    redirect_to "/"
=======
    session[:user_id] = nil
    redirect_to login_path
>>>>>>> 18f2fcee2ec9887051ad092a53fa593a77f2620f
  end
end
