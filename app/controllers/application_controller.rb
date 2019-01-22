class ApplicationController < ActionController::Base



    private 
    def current_user
        session[:username]
    end
end
