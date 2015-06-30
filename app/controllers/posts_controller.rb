class PostsController < ApplicationController
  def index
    @lists = Post.all
  end
end
