class Admin::Base < ApplicationController
  private def current_administrator
    if session[:administrator_id]
      @current_administrator ||=
        Administrator.find_by(id: session[:adminstrator_id])
    end 
  end  
  helper_method :current_administrator
end  