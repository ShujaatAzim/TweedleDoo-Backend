class ListsController < ApplicationController

  def index
    @lists = List.all
    render json: ListSerializer.new(@lists).to_serialized_json()
  end

  def show
    @list = List.find(params[:id])
    render json: ListSerializer.new(@list).to_serialized_json()
  end
  

end
