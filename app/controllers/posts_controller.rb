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
      redirect_to new_post_path
  end

  def show
  end

  def update
  end

  def destroy
  end

  def edit
  end

  private

    def post_params
      params.require(:post).permit(:title, :body)
    end

    def check_authorization
      raise ActionController::RoutingError.new('Not Found') unless current_user.id == params[:user_id]
    end
end
