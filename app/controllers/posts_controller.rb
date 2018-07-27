class PostsController < ApplicationController

  before_action :user_login, only: [:new, :edit, :show, :destroy]
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  protect_from_forgery :except => [:create]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path(@post.id), notice:"ブツブツブツ・・・"
    else
      render 'new'
    end
  end

  def show
    @favorite = current_user.favorites.find_by(post_id: @post.id)
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post.id), notice:"ぼやき直しました"
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to posts_path(@post.id), notice:"ぼやきを抹消しました"
  end

private
  def post_params
    params.require(:post).permit(:content)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def user_login
    redirect_to new_session_path unless logged_in?
  end

end
