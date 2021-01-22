class ItemsController < ApplicationController

	def index
		@items = Item.all
		render json: ItemSerializer.new(@items).to_serialized_json
	end

	def show
		@item = Item.find(params[:id])
		render json: ItemSerializer.new(@item).to_serialized_json
	end

	def create
		@item = Item.new(item_params)
		@item.save
		# render json: ItemSerializer.new(@item).to_serialized_json
	end

	def update
		@item = Item.find(params[:id])
		@item.update(content: params[:content], complete: params[:complete])
		@item.save
		render json: ItemSerializer.new(@item).to_serialized_json
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy
	end

	private

	def item_params
		params.require(:item).permit(:list_id, :content, :complete)
	end

end
