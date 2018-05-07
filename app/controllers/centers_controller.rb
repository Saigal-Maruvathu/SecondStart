class CentersController < ApplicationController

  def index
    @center = Center.all
  end

  def create
    
    @c = Center.new(center_params)
    @c.user_id = current_user.id
      if @c.save
        render '/centers/new'
    else
      puts @c.errors.full_messages
      render '/users/center'
    end
end


  def show
    @center = Center.find(params[:id])
  end

  def edit
    @center = current_user
    @center = Center.find(params[:id])
  end

  def update
    @center = Center.find(params[:id])
    @centerupdate = @center.update(update_params)

    redirect_to center_path(@center)
  end

  def destroy
    @center_delete = Center.find(params[:id])
    if @center_delete.delete
      redirect_to "/centers/new"
    end
  end

  private
    def center_params
      params.require(:center).permit(:name, :location, :description)
    end

end
