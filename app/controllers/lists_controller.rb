class ListsController < ApplicationController
  def index
    @todos = List.all
  end
  def create
    @todo = List.create(name: params[:list][:name])
    if @todo.valid?
      redirect_to lists_path 
    end
  end

  def destroy
    @todo = List.find(params[:id])
    if @todo.destroy
      redirect_to lists_path
    end
  end
end
