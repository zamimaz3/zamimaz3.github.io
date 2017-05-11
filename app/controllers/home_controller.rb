class HomeController < ApplicationController
  def index
  end

  def write
    new_post = Post.new
    new_post.title = params[:title]
    new_post.content = params[:content]
    new_post.save
    redirect_to "/list"
  end
  def list
    @tangsooyook = Post.all.order("id desc")
  end
  def destroy
    @one_post = Post.find(params[:post_id])
    @one_post.destroy
    redirect_to "/list"
  end
  def update
    @one_post = Post.find(params[:post_id])
  end
  def update_real
    @one_post = Post.find(params[:post_id])
    @one_post.title = params[:title]
    @one_post.content = params[:content]
    @one_post.save
    redirect_to "/list"
  end
  
end
