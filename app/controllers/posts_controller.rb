class PostsController < ApplicationController

  def index
    @post = Post.all
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to user_session_path
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


  def show_meals
    @posts = Post.where(category: "Meals")
    render 'meals'
  end

  def show_supplies
    @posts = Post.where(category: "Supplies")
    render 'supplies'
  end

  def show_shelters
    @posts = Post.where(category: "Shelters")
    render 'shelters'
  end

  def show_jobs
    @posts = Post.where(category: "Jobs")
    render 'jobs'
  end

private
  def post_params
    params.require(:create).permit(:title, :content, :category, :center_id)
  end
end
