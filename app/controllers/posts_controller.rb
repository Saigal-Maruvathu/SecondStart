class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def create
    p = Post.new
    redirect_to users_home_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = current_user
    @post = Post.find(params[:format])
  end

  def update
    @post = Post.find(params[:id])
    @postupdate = @post.update(update_params)

    redirect_to post_path(@post)
  end

  def destroy
    @post_delete = Post.find(params[:id])
    @post_delete.delete
    if @post_delete.delete
      redirect_to "/users/home"
    end
  end


end
