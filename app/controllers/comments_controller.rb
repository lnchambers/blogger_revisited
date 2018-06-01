class CommentsController < ApplicationController
  def create

  end

  def new
    @comment = Comment.new
  end

  def update
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def delete
  end
end
