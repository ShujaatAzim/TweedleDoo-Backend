class ListsController < ApplicationController

  skip_before_action :authorized, only: [:show] #these are only skipped for now, during development. Will be removed.

  def index
    @lists = List.where(user_id: current_user.id)
    render json: ListSerializer.new(@lists).to_serialized_json
  end

  def show
    @list = List.find(params[:id])
    render json: ListSerializer.new(@list).to_serialized_json
  end
  
  def create
    @list = List.new(list_params)
    @list.save
    render json: ListSerializer.new(@list).to_serialized_json
  end

  def update
    @list = List.find(params[:id])
    @list.update(name: params[:name])
    @list.save
    render json: ListSerializer.new(@list).to_serialized_json
  end

  def destroy
    @list = List.find(params[:id])
    @items = Item.where(list_id: @list.id)
    @items.each do |item|
      item.destroy
    end
    @list.destroy
  end

  private 

  def list_params
    params.require(:list).permit(:name, :user_id, :items)
  end

end
