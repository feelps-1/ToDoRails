class ListsController < ApplicationController
  before_action :authenticate_user!

  def create
    @list = current_user.lists.build(list_params)
    if @list.save
      redirect_to lists_path, notice: "Lista criada com sucesso!"
    else
      render :new
    end
  end

  def index
    @lists = current_user.lists
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      redirect_to lists_path
    end
  end

  private

  def list_params
    params.require(:list).permit(:name, :user_id)
  end
end
