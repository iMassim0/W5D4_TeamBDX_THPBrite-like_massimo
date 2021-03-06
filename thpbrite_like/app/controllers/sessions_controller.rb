class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:succes] = "Welcome ! Access permitted !"
      redirect_to root_url
    else
      flash[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
