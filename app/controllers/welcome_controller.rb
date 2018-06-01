class WelcomeController < ApplicationController
  def index
    @post = Post.all.sample
  end
end
