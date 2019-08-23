class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && User.find_by(password: params[:session][:password])
      log_in user
      redirect_to root_path
    else
      redirect_to login_path, :flash => { :notice => "Invalid email or password combination. try again" }
    end
  end

  def destroy
  end

end
