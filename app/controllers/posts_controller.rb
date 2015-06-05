class PostsController < ApplicationController

  def index 
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new params[:post].permit(:title, :author, :content, :img )
    if post.save
      redirect_to post_path(post)
    else
      render 'new'
    end
  end

  def show 
    @post = Post.find(params[:id])
  end
end
