class StaticPagesController < ApplicationController
  def index
    @current_user = current_user
  end
  def admin
    @users = User.all
  end
  def about
  end
end
