class PostsController < ApplicationController

def index
  @posts = Post.all.sort_by { |post| post.created_at }
  @post = @posts.last
end

def show
  @posts = Post.all.sort_by { |post| post.created_at }.reverse
  @post = Post.find(params[:id])
end

end
