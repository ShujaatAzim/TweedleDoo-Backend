class ListsController < ApplicationController

  def index
    @lists = List.all
    render json: @lists.to_json()
  end

  def show
    @list = List.find(params[:id])
    render json: @list.to_json()
  end

end
