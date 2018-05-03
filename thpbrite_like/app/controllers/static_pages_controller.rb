class StaticPagesController < ApplicationController
  def index
  end
  def admin
    @users = User.all
  end
  def about
  end
end
