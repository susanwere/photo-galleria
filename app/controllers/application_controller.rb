class ApplicationController < ActionController::Base
  include SessionsHelper

  def current_user
    if session[:user_id]
      current_user = User.find_by(id: session[:user_id])
      unless current_user
        render "users/new"
      end
    end
  end
end
