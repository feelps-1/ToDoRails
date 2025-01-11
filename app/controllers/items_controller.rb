  class ItemsController < ApplicationController
    before_action :set_list

    def index
      @items = @list.items
      @item = @list.items.new
      @items = @items.where(status: params[:status]) if params[:status].present?
    end
  
    def filter
      @items = @list.items.where(status: params[:status])
      render :index
    end

    def create
      @item = @list.items.create(item_params)
      if @item.save
        redirect_to list_items_path(@list), notice: "Item criado com sucesso!"
      end
    end

    def destroy
      @item = @list.items.find(params[:id])
      @item.destroy
      redirect_to list_items_path(@list), notice: "Item removido com sucesso!"
    end

    def update_status
      @item = @list.items.find(params[:id])
      if @item.update(status: params[:status])
        respond_to do |format|
          format.html { redirect_to list_items_path(@list), notice: "Status atualizado com sucesso!" }
          format.js   # Renderiza um arquivo JS para manipular o DOM
        end
      else
        respond_to do |format|
          format.html { redirect_to list_items_path(@list), alert: "Erro ao atualizar o status." }
          format.js   # Renderiza um JS com mensagem de erro
        end
      end
    end

    private

    def set_list
      @list = List.find(params[:list_id])
    end

    def item_params
      params.require(:item).permit(:content, :status)
    end
  end
