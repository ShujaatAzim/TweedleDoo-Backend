class ItemsController < ApplicationController


    def index
        @items = Item.all
        render json: @items.to_json()
    end

    def show
        @item = Item.find(params[:id])
        render json: @item.to_json()
    end

    def create
        @item = Item.new(item_params)
        @item.save
    end

    def destroy
        @item = Item.find(params[:id])
        @item.destroy
    end

    private

    def item_params
        params.require(:item).permit(:content)
    end

end
