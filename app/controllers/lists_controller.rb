class ListsController < ApplicationController

  def index
    @lists = List.all
    render json: ListSerializer.new(@lists).to_serialized_json
  end

  def show
    @list = List.find(params[:id])
    render json: ListSerializer.new(@list).to_serialized_json
  end
  
  def create
    @list = List.new(list_params)
    @list.save
    # render json: ListSerializer.new(@list).to_serialized_json
  end

  def update
    @list = List.find(params[:id])
    @list.update(name: params[:name])
    @list.save
    render json: ListSerializer.new(@list).to_serialized_json
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
  end

  private 

  def list_params
    params.require(:list).permit(:name)
  end

end
