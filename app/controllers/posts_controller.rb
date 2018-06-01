class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update, :delete, :edit]
  before_action :check_authorization, only: [:new, :create, :update, :delete, :edit]

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    post.user_id = params[:user_id]
    if post.save
      redirect_to post_path(post)
    else
      redirect_to new_user_post_path(current_user)
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    if post.update(post_params)
      redirect_to post_path(post)
    else
      redirect_to edit_user_post_path(current_user, post)
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy!
    redirect_to root_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  private

    def post_params
      params.require(:post).permit(:title, :body)
    end

    def check_authorization
      raise ActionController::RoutingError.new('Not Found') unless current_user.id == params[:user_id]
    end
end
