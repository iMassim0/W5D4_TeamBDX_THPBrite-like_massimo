class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(params_user)
    if @user.errors.full_messages.empty?
      flash[:succes] = 'Profil enregistré, veuillez vous connecter svp.'
      redirect_to login_url
    else
      flash[:error] = 'Rentre bien un pseudo et un mot de passe convenable !'
      redirect_to signup_url
    end
  end

  def show
    @user = User.find(params[:id])
    # @comment = Comment.new
    # @comments = Comment.where(gossip_id: params[:id])
  end

  def edit
    # @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_path
  end

  def update
    # @user = User.find(params[:id])
    # @user.update(params_user)
    # if @user.save
    #   redirect_to gossip_path(@user.id)
    # else
    #   flash[:error] = 'Rentre bien un pseudo et un texte !'
    #   redirect_to edit_gossip_path
    # end
  end

  def index

  end

  private

  def params_user
    params_user = params.require(:user).permit(:name, :password)
  end
end
