class ItemsController < ApplicationController
  before_action :set_list

  def index
    @items = @list.items
  end

  def new
    @item = @list.items.new
  end

  def create
    @item = @list.items.create(item_params)
    if @item.save
      redirect_to list_items_path(@list), notice: "Item criado com sucesso!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @item = @list.items.find(params[:id])
    @item.destroy
    redirect_to list_items_path(@list), notice: "Item removido com sucesso!"
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def item_params
    params.require(:item).permit(:content, :status)
  end
end
