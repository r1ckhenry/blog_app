class CommentsController < ApplicationController

  def new 
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def create
    post = Post.find(params[:post_id])
    post.comments << Comment.create(params[:comment].permit(:name, :text))

    redirect_to(post)
  end

end
