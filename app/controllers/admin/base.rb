class Admin::Base < ApplicationController
  private def current_administrator
    if session[:adminstrator_id]
      @current_administrator ||=
        Adminstrator.find_by(id: session[:adminstrator_id])
    end 
  end  
  helper_method :current_administrator
end  