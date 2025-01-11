class ListsController < ApplicationController
  def index
    @todos = List.all
  end

  def create
    @todo = List.new(list_params)

    if @todo.save
      respond_to do |format|
        format.html { redirect_to lists_path }
        format.js   
    end
    else
      respond_to do |format|
        format.html { render :index }
        format.js 
      end
    end
  end

  def destroy
    @todo = List.find(params[:id])
    if @todo.destroy
      redirect_to lists_path
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
