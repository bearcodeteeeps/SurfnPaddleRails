class PostsController < ApplicationController

def index
  @posts = Post.all.sort_by { |post| post.created_at }
  @post = @posts.last
end

def show
  @posts = Post.all.sort_by { |post| post.created_at }.reverse
  @post = @posts.detect { |post| post.id == params[:id].to_i }
end

end
