class PostsController < ApplicationController

def index
  @posts = Post.order('created_at DESC').all
  @post = @posts.first
end

def new
  @post = Post.new
end

def create
  @post = Post.new(post_params)
  if @post.save
    redirect_to @post
  else
    render :new
  end
end

def show
  @posts = Post.all.sort_by { |post| post.created_at }.reverse
  @post = Post.find(params[:id])
end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  if @post.update(post_params)
    redirect_to @post
  else
    render :edit
  end
end

def distroy
end

private

def post_params
  params.require(:post).permit(:author, :title, :body)
end

end
