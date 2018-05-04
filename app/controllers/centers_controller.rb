class CentersController < ApplicationController

  def index
    @center = Center.all
  end

  def create
      c = Center.new
      c.user_id = session[:user_id]
    if c.save
      redirect_to centers_path
    else
      render '/users/center'
    end
  end

  def show
    @center = Center.find(params[:id])
  end

  def edit
    @center = current_user
    @center = Center.find(params[:format])
  end

  def update
    @center = Center.find(params[:id])
    @centerupdate = @center.update(update_params)

    redirect_to center_path(@center)
  end

  def destroy
    @center_delete = Center.find(params[:id])
    @center_delete.delete
    if @center_delete.delete
      redirect_to "/users/home"
    end
  end


end
