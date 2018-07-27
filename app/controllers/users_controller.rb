class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  # def index
  #   @user = User.find(params[:id])
  #   @favorites_posts = @user.favorite_posts
  # end

  def show
    @user = User.find(params[:id])
    @favorites_posts = @user.favorite_posts
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
